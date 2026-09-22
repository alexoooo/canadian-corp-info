STATUS: AI GENERATED, REVIEW IN PROGRESS

# Getting Started With Bookkeeping

**Who this is for**:
- Owners of a CCPC setting up a books repository alongside this guide
- Owners using Codex CLI or Claude Code CLI to work with those repositories

**TLDR**:
- Give each corporation its own workspace and document archive
- Save CLI directory-access settings so ordinary launches can read the guide
- Keep corporation-specific records in the books repository and general instructions in the guide

Limitations:
- Repository names and layout are organizational choices, not CRA-prescribed formats
- CLI settings are supported by the linked documentation; this is not a tested bookkeeping automation system
- I am not an accountant; this is not financial or tax advice


## Set Up the Workspace

Use one private books repository per corporation and a shared local checkout of this guide.  
The CLI settings below follow the linked vendor documentation as of September 2026.  
For manual bookkeeping, skip the CLI configuration.  

### Arrange the Repositories

Create a private repository named `books-<company>`, such as `books-acme-consulting`.  
Clone it beside `canadian-corp-info`, keeping both repositories in the same parent folder.  
The `books-` prefix groups the corporations' bookkeeping repositories together when sorted by name.  

For example:

```text
C:/work/
  canadian-corp-info/
  books-acme-consulting/
  books-pine-lake-resort/
```

Use your existing guide checkout if it is already beside the books repository.  
Otherwise, clone the guide into the parent folder:

```powershell
git clone https://github.com/alexoooo/canadian-corp-info.git
```

Keep the books repository's root small:

```text
books-<company>/
  README.md
  AGENTS.md
  .gitignore
  .codex/
    config.toml
  .claude/
    CLAUDE.md
    settings.local.json
  context/
  years/
    YYYY/
      Bank-Statement_yyyy-mm-dd.md
```

Keep working context in `context/`, leaving the root for the README and tool entry points.  
Use the year in which the fiscal year ends for `YYYY`, such as `years/2026/`.  
For a December 31 year-end, `years/2026/` holds the 2026 calendar year's work.  
Name each workpaper for its source, using the statement's closing date for `yyyy-mm-dd`.  
Keep workpapers directly in that folder and record their exact periods inside each file.  
Add subfolders only when your own workflow needs them.  

Start with existing records and add context notes when they help with the work at hand.  
Choose their filenames and contents as you use the workspace.  
Put links to those notes, workpapers, and the document archive in the books README.  
Keep original statements, receipts, and live application files in a separate archive with its own backup.  

Keep credentials outside Git and reference source documents by filename and page or transaction reference.  
Follow [Records Retention](../../Filing-And-CRA/CRA-Administration.md#records-retention) for the archive.  
Maintain records in Canada as required by [CRA's location rules](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/keeping-records/where-keep-your-records-long-request-permission-destroy-them-early.html).  

### Share Agent Instructions

Use the books repository's `AGENTS.md` as the common instruction file for both CLIs.  
Codex reads project instructions from that file ([AGENTS.md documentation](https://developers.openai.com/codex/guides/agents-md)).  
Start with a short pointer to the guide:

```markdown
## Shared Accounting Guide

- The guide is at ../canadian-corp-info/
- Read its README.md to find the relevant accounting procedures
- Use the corporation's recorded facts and the owner's explicit confirmations
- Do not ask again about a confirmed fact unless conflicting evidence materially affects the current task
- Identify the specific conflict when clarification is necessary
- Do not edit the shared guide during bookkeeping
- Append proposed guide improvements to context/Guide-Feedback.md for a separate guide-editing session
```

Add corporation-specific instructions as you establish them through actual work.  
Create `context/Guide-Feedback.md` when the first issue arises.  
For each issue, identify the guide page or section and describe the problem or proposed correction.  

For Claude Code, create `books-<company>/.claude/CLAUDE.md` with this content:

```markdown
@../AGENTS.md
```

Claude resolves this import relative to `.claude/CLAUDE.md`, so it loads the books repository's root `AGENTS.md`.  
See [Claude's file imports](https://code.claude.com/docs/en/memory#import-additional-files).  
Keep the accounting instructions in that shared file rather than maintaining separate copies for each CLI.  

### Configure Directory Access

Save directory access in each tool's project configuration so normal launches can reach the guide.  
Replace `C:/work/canadian-corp-info` below with the guide's actual absolute path.  
Merge the settings into existing files if present.  

For Codex, create `books-<company>/.codex/config.toml`:

```toml
sandbox_mode = "workspace-write"

[sandbox_workspace_write]
writable_roots = ["C:/work/canadian-corp-info"]
```

Trust the books project when Codex prompts; untrusted projects do not load project configuration.  
This uses Codex's workspace-write configuration, as documented in [Advanced Configuration](https://learn.chatgpt.com/docs/config-file/config-advanced).  

For Claude Code, create `books-<company>/.claude/settings.local.json`:

```json
{
  "permissions": {
    "additionalDirectories": [
      "C:/work/canadian-corp-info"
    ]
  }
}
```

This persists the extra directory across sessions ([Claude directory permissions](https://code.claude.com/docs/en/permissions#working-directories)).  
Use `.claude/settings.json` instead if the setting should be shared through Git.  
The local file is for this machine's setup ([settings scopes](https://code.claude.com/docs/en/settings)).  

For the machine-specific configuration shown above, add these lines to the books repository's `.gitignore`:

```gitignore
.codex/config.toml
.claude/settings.local.json
```

Keep `AGENTS.md` and `.claude/CLAUDE.md` in version control.  
Repeat the local configuration on another machine after cloning the books repository.  

These settings permit edits to the guide too; they do not enforce read-only access.  
Use the agent instructions to reserve guide edits for a separate task.  
An instruction file describes how to use an accessible directory; it does not grant filesystem permissions.  

### Start and Check Access

Open a terminal in the books repository and run the CLI you want:

```powershell
codex
```

Or:

```powershell
claude
```

No `--add-dir` launch flag is needed with the saved configuration.  
Ask the agent to check the setup before starting bookkeeping:

```text
Read this repository's AGENTS.md and ../canadian-corp-info/README.md.
Report the working directory, guide commit ID, and where the bookkeeping instructions are.
Do not change any files during this check.
```

Confirm that the working directory is the books repository and that the agent can read the guide.  
Record the guide's path and commit ID in your workspace notes.  
If access fails, check the configured absolute path, project trust, and the CLI's reported permission settings.  

### Coordinate Books and Guide Changes

For this setup, use a bookkeeping session in the books repository with access to the guide.  
Save corporation-specific facts, decisions, and unresolved questions in the books repository.  
Use a separate guide-editing session when a general instruction needs improvement.  

Pass a documentation gap between sessions through `context/Guide-Feedback.md`:
1. Record the affected guide page or section and the problem in that file
2. Keep the feedback free of private business details
3. Start the guide-editing session in `canadian-corp-info` and provide the relevant feedback entry
4. Review the resulting guide change and record the adopted commit ID in your workspace notes
5. Resume bookkeeping and apply the procedure to the corporation's facts

Use either CLI for either task; two continuously running agent sessions are unnecessary.  
Keep changes and commits separate by repository.  
Check the recorded guide revision before using updates, including any effect on earlier entries.  


## Related

- [Ledger and Accounts](../Ledger-And-Accounts.md): accounting structure
- [Period Close](../Period-Close.md): monthly reconciliation and the year-end sequence
- [Expense Classification](../Expense-Classification.md): treatment of costs
- [CRA Administration](../../Filing-And-CRA/CRA-Administration.md): assessments and retained records

## Citations

- [Codex AGENTS.md](https://developers.openai.com/codex/guides/agents-md) - project instruction discovery
- [Codex advanced configuration](https://learn.chatgpt.com/docs/config-file/config-advanced) - project configuration and additional writable directories
- [Claude directory permissions](https://code.claude.com/docs/en/permissions#working-directories) - persistent additional directories
- [Claude settings](https://code.claude.com/docs/en/settings) - project and local configuration files
- [Claude file imports](https://code.claude.com/docs/en/memory#import-additional-files) - shared instructions through a relative import
- [CRA record location and retention](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/keeping-records/where-keep-your-records-long-request-permission-destroy-them-early.html) - location requirements and retention rules
