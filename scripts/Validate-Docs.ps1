#Requires -Version 7.0

[CmdletBinding()]
param(
    [switch]$AllLineLengths,
    [ValidateRange(1, 1000)]
    [int]$MaxLineLength = 120
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$errors = [System.Collections.Generic.List[object]]::new()
$warnings = [System.Collections.Generic.List[object]]::new()
$linkCount = 0
$lineLengthCount = 0

function ConvertTo-RepoPath {
    param([Parameter(Mandatory)][string]$Path)

    return $Path.Replace('\', '/')
}

function Add-ValidationIssue {
    param(
        [Parameter(Mandatory)][ValidateSet('Error', 'Warning')][string]$Severity,
        [Parameter(Mandatory)][string]$Path,
        [Parameter(Mandatory)][int]$Line,
        [Parameter(Mandatory)][string]$Message
    )

    $issue = [pscustomobject]@{
        Path = $Path
        Line = $Line
        Message = $Message
    }

    if ($Severity -eq 'Error') {
        $errors.Add($issue)
    }
    else {
        $warnings.Add($issue)
    }
}

function Invoke-Git {
    param([Parameter(Mandatory)][string[]]$Arguments)

    $output = @(& git -C $repoRoot @Arguments 2>&1)
    if ($LASTEXITCODE -ne 0) {
        throw "git $($Arguments -join ' ') failed:`n$($output -join "`n")"
    }

    return $output
}

function Get-RepositoryFiles {
    $files = Invoke-Git -Arguments @(
        'ls-files', '--cached', '--others', '--exclude-standard'
    )

    return @($files | Where-Object { $_ } | ForEach-Object { ConvertTo-RepoPath $_ })
}

function Get-MarkdownLines {
    param([Parameter(Mandatory)][string]$RepoPath)

    $localPath = Join-Path $repoRoot ($RepoPath.Replace('/', [System.IO.Path]::DirectorySeparatorChar))
    return [System.IO.File]::ReadAllLines($localPath)
}

function ConvertTo-GitHubAnchor {
    param([Parameter(Mandatory)][string]$Heading)

    $anchor = [regex]::Replace(
        $Heading,
        '!?\[([^\]]*)\]\((?:[^()]|\([^()]*\))*\)',
        '$1'
    )
    $anchor = [regex]::Replace($anchor, '<!--.*?-->', '')
    $anchor = [regex]::Replace($anchor, '<[^>]+>', '')
    $anchor = $anchor -replace '\\([\[\]])', '$1'
    $anchor = $anchor.ToLowerInvariant()
    $anchor = [regex]::Replace($anchor, '[^\p{L}\p{Nd}\p{Pc}\-\s]', '')
    $anchor = [regex]::Replace($anchor.Trim(), '\s', '-')
    return $anchor
}

function Get-MarkdownAnchors {
    param([Parameter(Mandatory)][string]$RepoPath)

    $anchors = [System.Collections.Generic.HashSet[string]]::new(
        [System.StringComparer]::Ordinal
    )
    $baseAnchorCounts = @{}
    $insideFence = $false

    foreach ($line in (Get-MarkdownLines -RepoPath $RepoPath)) {
        if ($line -match '^\s*```') {
            $insideFence = -not $insideFence
            continue
        }
        if ($insideFence -or $line -notmatch '^#{1,6}\s+(.+?)\s*$') {
            continue
        }

        $baseAnchor = ConvertTo-GitHubAnchor -Heading $Matches[1]
        if (-not $baseAnchorCounts.ContainsKey($baseAnchor)) {
            $baseAnchorCounts[$baseAnchor] = 0
            [void]$anchors.Add($baseAnchor)
            continue
        }

        $baseAnchorCounts[$baseAnchor]++
        [void]$anchors.Add("$baseAnchor-$($baseAnchorCounts[$baseAnchor])")
    }

    Write-Output -NoEnumerate $anchors
}

function ConvertTo-ReaderVisibleLine {
    param([Parameter(Mandatory)][string]$Line)

    $visible = [regex]::Replace(
        $Line,
        '!?\[([^\]]*)\]\((?:[^()]|\([^()]*\))*\)',
        '$1'
    )
    $visible = [regex]::Replace($visible, '<!--.*?-->', '')
    $visible = [regex]::Replace($visible, '<[^>]+>', '')
    $visible = $visible -replace '^#{1,6}\s+', ''
    $visible = $visible -replace '[`*_~]', ''
    return $visible.TrimEnd()
}

function Test-ReaderFacingMarkdown {
    param([Parameter(Mandatory)][string]$RepoPath)

    return $RepoPath -eq 'README.md' -or $RepoPath.StartsWith('guide/')
}

function Test-LinkCheckedMarkdown {
    param([Parameter(Mandatory)][string]$RepoPath)

    if ($RepoPath.StartsWith('docs/examples/')) {
        return $false
    }
    if ($RepoPath.StartsWith('audit/') -and $RepoPath -ne 'audit/Audit-Summary.md') {
        return $false
    }
    return $true
}

function Get-AddedReaderLines {
    param([switch]$Cached)

    $arguments = @('diff', '--no-color', '--unified=0', '--no-prefix')
    if ($Cached) {
        $arguments += '--cached'
    }
    $arguments += @('--', 'README.md', 'guide')

    $diff = Invoke-Git -Arguments $arguments
    $currentPath = $null
    $newLineNumber = 0

    foreach ($line in $diff) {
        if ($line -match '^\+\+\+ (.+)$') {
            $currentPath = ConvertTo-RepoPath $Matches[1]
            continue
        }
        if ($line -match '^@@ -\d+(?:,\d+)? \+(\d+)(?:,\d+)? @@') {
            $newLineNumber = [int]$Matches[1]
            continue
        }
        if (-not $currentPath -or $currentPath -eq '/dev/null') {
            continue
        }
        if ($line.StartsWith('+') -and -not $line.StartsWith('+++')) {
            [pscustomobject]@{
                Path = $currentPath
                Line = $newLineNumber
                Text = $line.Substring(1)
            }
            $newLineNumber++
            continue
        }
        if ($line.StartsWith(' ')) {
            $newLineNumber++
        }
    }
}

function Get-LineLengthCandidates {
    param([Parameter(Mandatory)][string[]]$MarkdownFiles)

    if ($AllLineLengths) {
        foreach ($repoPath in ($MarkdownFiles | Where-Object { Test-ReaderFacingMarkdown $_ })) {
            $lineNumber = 0
            $insideFence = $false
            foreach ($line in (Get-MarkdownLines -RepoPath $repoPath)) {
                $lineNumber++
                if ($line -match '^\s*```') {
                    $insideFence = -not $insideFence
                    continue
                }
                if ($insideFence) {
                    continue
                }
                [pscustomobject]@{
                    Path = $repoPath
                    Line = $lineNumber
                    Text = $line
                }
            }
        }
        return
    }

    $seen = [System.Collections.Generic.HashSet[string]]::new(
        [System.StringComparer]::Ordinal
    )
    $candidates = @(
        Get-AddedReaderLines
        Get-AddedReaderLines -Cached
    )

    $untracked = Invoke-Git -Arguments @(
        'ls-files', '--others', '--exclude-standard', '--', 'README.md', 'guide'
    )
    foreach ($repoPath in ($untracked | ForEach-Object { ConvertTo-RepoPath $_ })) {
        if (-not (Test-ReaderFacingMarkdown -RepoPath $repoPath)) {
            continue
        }
        $lineNumber = 0
        foreach ($line in (Get-MarkdownLines -RepoPath $repoPath)) {
            $lineNumber++
            $candidates += [pscustomobject]@{
                Path = $repoPath
                Line = $lineNumber
                Text = $line
            }
        }
    }

    foreach ($candidate in $candidates) {
        $key = "$($candidate.Path):$($candidate.Line):$($candidate.Text)"
        if ($seen.Add($key)) {
            $candidate
        }
    }
}

function Get-FencedLineKeys {
    param([Parameter(Mandatory)][string[]]$MarkdownFiles)

    $keys = [System.Collections.Generic.HashSet[string]]::new(
        [System.StringComparer]::Ordinal
    )
    foreach ($repoPath in ($MarkdownFiles | Where-Object { Test-ReaderFacingMarkdown $_ })) {
        $lineNumber = 0
        $insideFence = $false
        foreach ($line in (Get-MarkdownLines -RepoPath $repoPath)) {
            $lineNumber++
            if ($line -match '^\s*```') {
                [void]$keys.Add("${repoPath}:$lineNumber")
                $insideFence = -not $insideFence
                continue
            }
            if ($insideFence) {
                [void]$keys.Add("${repoPath}:$lineNumber")
            }
        }
    }

    Write-Output -NoEnumerate $keys
}

$repositoryFiles = Get-RepositoryFiles
$markdownFiles = @($repositoryFiles | Where-Object { $_.EndsWith('.md') })
$guidePages = @($markdownFiles | Where-Object { $_.StartsWith('guide/') })
$linkCheckedMarkdownFiles = @($markdownFiles | Where-Object { Test-LinkCheckedMarkdown $_ })

$repoFileByCaseInsensitivePath = @{}
foreach ($repoPath in $repositoryFiles) {
    $repoFileByCaseInsensitivePath[$repoPath.ToLowerInvariant()] = $repoPath
}

$anchorsByMarkdownPath = @{}
foreach ($repoPath in $markdownFiles) {
    $anchorsByMarkdownPath[$repoPath] = Get-MarkdownAnchors -RepoPath $repoPath
}

$linkPattern = [regex]'!?\[[^\]]*\]\((?<target>(?:[^()]|\([^()]*\))*)\)'
foreach ($repoPath in $linkCheckedMarkdownFiles) {
    $lines = Get-MarkdownLines -RepoPath $repoPath
    $insideFence = $false

    for ($index = 0; $index -lt $lines.Count; $index++) {
        $line = $lines[$index]
        if ($line -match '^\s*```') {
            $insideFence = -not $insideFence
            continue
        }
        if ($insideFence) {
            continue
        }

        $lineWithoutCodeSpans = [regex]::Replace($line, '`[^`]*`', '')
        foreach ($match in $linkPattern.Matches($lineWithoutCodeSpans)) {
            $target = $match.Groups['target'].Value.Trim()
            if (-not $target) {
                continue
            }
            if ($target.StartsWith('<') -and $target.EndsWith('>')) {
                $target = $target.Substring(1, $target.Length - 2)
            }
            if ($target -match '^[A-Za-z][A-Za-z0-9+.-]*:') {
                continue
            }

            $linkCount++
            $fragmentIndex = $target.IndexOf('#')
            $fragment = ''
            if ($fragmentIndex -ge 0) {
                $fragment = $target.Substring($fragmentIndex + 1)
                $target = $target.Substring(0, $fragmentIndex)
            }
            $queryIndex = $target.IndexOf('?')
            if ($queryIndex -ge 0) {
                $target = $target.Substring(0, $queryIndex)
            }

            $target = [System.Uri]::UnescapeDataString($target)
            if (-not $target) {
                $targetRepoPath = $repoPath
            }
            elseif ($target.StartsWith('/')) {
                $targetRepoPath = $target.TrimStart('/')
            }
            else {
                $sourceDirectory = [System.IO.Path]::GetDirectoryName($repoPath)
                $combined = if ($sourceDirectory) {
                    Join-Path $sourceDirectory $target
                }
                else {
                    $target
                }
                $fullTargetPath = [System.IO.Path]::GetFullPath((Join-Path $repoRoot $combined))
                $repoRootPrefix = $repoRoot.TrimEnd(
                    [System.IO.Path]::DirectorySeparatorChar
                ) + [System.IO.Path]::DirectorySeparatorChar
                if (-not $fullTargetPath.StartsWith(
                    $repoRootPrefix,
                    [System.StringComparison]::OrdinalIgnoreCase
                )) {
                    Add-ValidationIssue -Severity Error -Path $repoPath -Line ($index + 1) `
                        -Message "Local link escapes the repository: $target"
                    continue
                }
                $targetRepoPath = ConvertTo-RepoPath (
                    [System.IO.Path]::GetRelativePath($repoRoot, $fullTargetPath)
                )
            }

            $targetKey = $targetRepoPath.ToLowerInvariant()
            if (-not $repoFileByCaseInsensitivePath.ContainsKey($targetKey)) {
                Add-ValidationIssue -Severity Error -Path $repoPath -Line ($index + 1) `
                    -Message "Local link target does not exist: $targetRepoPath"
                continue
            }

            $actualTargetPath = $repoFileByCaseInsensitivePath[$targetKey]
            if ($actualTargetPath -cne $targetRepoPath) {
                Add-ValidationIssue -Severity Error -Path $repoPath -Line ($index + 1) `
                    -Message "Local link path has the wrong case: $targetRepoPath (actual: $actualTargetPath)"
            }

            if (-not $fragment -or -not $actualTargetPath.EndsWith('.md')) {
                continue
            }
            $decodedFragment = [System.Uri]::UnescapeDataString($fragment)
            if (-not $anchorsByMarkdownPath[$actualTargetPath].Contains($decodedFragment)) {
                Add-ValidationIssue -Severity Error -Path $repoPath -Line ($index + 1) `
                    -Message "Heading anchor does not exist in ${actualTargetPath}: #$decodedFragment"
            }
        }
    }
}

$readmeIndex = @{}
$readmeLines = Get-MarkdownLines -RepoPath 'README.md'
$readmeGuideLinkPattern = [regex]'\[[^\]]+\]\((?<target>guide/[^#?)]+\.md)(?:#[^)]*)?\)'
for ($index = 0; $index -lt $readmeLines.Count; $index++) {
    foreach ($match in $readmeGuideLinkPattern.Matches($readmeLines[$index])) {
        $target = ConvertTo-RepoPath $match.Groups['target'].Value
        if (-not $readmeIndex.ContainsKey($target)) {
            $readmeIndex[$target] = [System.Collections.Generic.List[object]]::new()
        }
        $readmeIndex[$target].Add([pscustomobject]@{
            Line = $index + 1
            Text = $readmeLines[$index]
        })
    }
}

foreach ($repoPath in $guidePages) {
    if (-not $readmeIndex.ContainsKey($repoPath)) {
        Add-ValidationIssue -Severity Error -Path $repoPath -Line 1 `
            -Message 'Guide page is not indexed in README.md'
        continue
    }
    if ($readmeIndex[$repoPath].Count -ne 1) {
        Add-ValidationIssue -Severity Error -Path 'README.md' `
            -Line $readmeIndex[$repoPath][0].Line `
            -Message "Guide page is indexed more than once: $repoPath"
        continue
    }

    $firstLine = (Get-MarkdownLines -RepoPath $repoPath)[0]
    $indexEntry = $readmeIndex[$repoPath][0]
    $hasDagger = $indexEntry.Text.Contains('†')
    $hasStubMarker = $indexEntry.Text.Contains('(work-in-progress stub)')

    switch ($firstLine) {
        'STATUS: AI GENERATED, REVIEW IN PROGRESS' {
            if (-not $hasDagger -or $hasStubMarker) {
                Add-ValidationIssue -Severity Error -Path 'README.md' -Line $indexEntry.Line `
                    -Message "AI-generated page must have only the † marker: $repoPath"
            }
        }
        'STATUS: WORK IN PROGRESS' {
            if (-not $hasStubMarker -or $hasDagger) {
                Add-ValidationIssue -Severity Error -Path 'README.md' -Line $indexEntry.Line `
                    -Message "Work-in-progress page must have only the stub annotation: $repoPath"
            }
        }
        default {
            if ($firstLine.StartsWith('STATUS:')) {
                Add-ValidationIssue -Severity Error -Path $repoPath -Line 1 `
                    -Message "Unknown page status: $firstLine"
            }
            elseif ($hasDagger -or $hasStubMarker) {
                Add-ValidationIssue -Severity Error -Path 'README.md' -Line $indexEntry.Line `
                    -Message "Signed-off page must not have a status marker: $repoPath"
            }
        }
    }
}

# GIFI account-tree excerpt consistency: every code in a guide page's HTML account tree must
# appear in the master chart of accounts, and trees must agree on the account name per code.
# Codes carrying the structural -valid / -calc / -parent markers are tree scaffolding, not accounts.
$masterChartPath = 'guide/Bookkeeping/Ledger-And-Accounts.md'
$gifiTreeCodeCount = 0
if ($markdownFiles -contains $masterChartPath) {
    $masterCodes = [System.Collections.Generic.HashSet[string]]::new(
        [System.StringComparer]::Ordinal
    )
    foreach ($line in (Get-MarkdownLines -RepoPath $masterChartPath)) {
        foreach ($match in [regex]::Matches($line, '`(\d{4}(?:-\d+)?)`')) {
            [void]$masterCodes.Add($match.Groups[1].Value)
        }
    }

    $treeRowPattern = [regex]'<tr><td[^>]*>(?<name>.*?)</td><td>(?<code>[0-9]{4}(?:-[0-9A-Za-z]+)?)</td>'
    $treeNamesByCode = @{}
    foreach ($repoPath in $guidePages) {
        $lineNumber = 0
        foreach ($line in (Get-MarkdownLines -RepoPath $repoPath)) {
            $lineNumber++
            foreach ($match in $treeRowPattern.Matches($line)) {
                $code = $match.Groups['code'].Value
                if ($code -match '-(valid|calc|parent)$') {
                    continue
                }
                $name = [regex]::Replace($match.Groups['name'].Value, '&ensp;|└', '').Trim()
                $gifiTreeCodeCount++
                if (-not $masterCodes.Contains($code)) {
                    Add-ValidationIssue -Severity Error -Path $repoPath -Line $lineNumber `
                        -Message "Account-tree code $code is not in the master chart ($masterChartPath)"
                }
                if (-not $treeNamesByCode.ContainsKey($code)) {
                    $treeNamesByCode[$code] = [pscustomobject]@{
                        Name = $name
                        Path = $repoPath
                        Line = $lineNumber
                    }
                }
                elseif ($treeNamesByCode[$code].Name -cne $name) {
                    $first = $treeNamesByCode[$code]
                    Add-ValidationIssue -Severity Error -Path $repoPath -Line $lineNumber `
                        -Message "Account-tree name for ${code} (""$name"") differs from $($first.Path):$($first.Line) (""$($first.Name)"")"
                }
            }
        }
    }
}

$fencedLineKeys = Get-FencedLineKeys -MarkdownFiles $markdownFiles
foreach ($candidate in (Get-LineLengthCandidates -MarkdownFiles $markdownFiles)) {
    if ($fencedLineKeys.Contains("$($candidate.Path):$($candidate.Line)")) {
        continue
    }
    if (-not $candidate.Text -or $candidate.Text -match '^\s*```' -or $candidate.Text -match 'https?://') {
        continue
    }
    $visible = ConvertTo-ReaderVisibleLine -Line $candidate.Text
    if ($visible.Length -le $MaxLineLength) {
        continue
    }

    $lineLengthCount++
    Add-ValidationIssue -Severity Warning -Path $candidate.Path -Line $candidate.Line `
        -Message "Reader-visible line is $($visible.Length) characters (soft maximum: $MaxLineLength)"
}

$maxDisplayedIssues = 50
foreach ($issue in ($errors | Select-Object -First $maxDisplayedIssues)) {
    Write-Host "ERROR $($issue.Path):$($issue.Line) - $($issue.Message)"
}
if ($errors.Count -gt $maxDisplayedIssues) {
    Write-Host "ERROR ... $($errors.Count - $maxDisplayedIssues) more errors omitted"
}

foreach ($issue in ($warnings | Select-Object -First $maxDisplayedIssues)) {
    Write-Host "WARN  $($issue.Path):$($issue.Line) - $($issue.Message)"
}
if ($warnings.Count -gt $maxDisplayedIssues) {
    Write-Host "WARN  ... $($warnings.Count - $maxDisplayedIssues) more warnings omitted"
}

Write-Host ''
Write-Host "Current Markdown files link-checked: $($linkCheckedMarkdownFiles.Count)"
Write-Host "Guide pages indexed and status-checked: $($guidePages.Count)"
Write-Host "Local links checked: $linkCount"
Write-Host "GIFI account-tree codes checked: $gifiTreeCodeCount"
$lineLengthScope = if ($AllLineLengths) { 'all reader-facing lines' } else { 'changed reader-facing lines' }
Write-Host "Long lines found ($lineLengthScope): $lineLengthCount"

if ($errors.Count -gt 0) {
    Write-Host "FAILED with $($errors.Count) error(s) and $($warnings.Count) warning(s)."
    exit 1
}

Write-Host "PASSED with $($warnings.Count) warning(s)."
