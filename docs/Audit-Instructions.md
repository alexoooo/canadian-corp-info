# Audit Instructions

The reusable process for auditing this guide and running its follow-up review.
The load-bearing conventions every agent must know — filename pattern, read-only discipline — live in [AGENTS.md](../AGENTS.md#audits). This file is the full playbook.

## Invocation

"Perform an audit" means a fresh full pass over the guide, with the result placed in `audit/` (similar to the existing files). Focus areas:

- Factual errors — tax/bookkeeping rules, ITA/ETA section attributions, rates, dollar limits (current-year figures), GIFI codes, dates
- Citation verification — confirm each cited primary source actually says what the page claims
- Missing citations — load-bearing claims stated without an inline cite or a `# Citations` entry
- Missing content — in-scope concepts a page promises or implies but doesn't cover
- Confusing or misleading statements
- Consistency — within a page (contradictions, duplicate explanations) and between pages (same rule stated differently, GIFI usage, FX-date conventions, cross-link integrity, Glossary versus canonical pages, README index versus actual files)
- Wording, style, grammar, spelling, nitpicks — against the conventions in AGENTS.md

A follow-up review is the second half of the cycle: after the audit's fixes land, confirm each one held and nothing regressed. See [Follow-up review](#follow-up-review).

## Operating mode

Work resumably, in bounded checkpointed increments — the audit must survive a context reset:

- Run side agents to keep the main thread clean: bulky reads, citation fetches, and dead-ends belong in an agent, not in the main context. Only one additional agent may run in parallel (`main` + one more) — but parallelism here serves context management, never throughput. Each agent owns a separable unit (a single page or a tight cluster) and checkpoints its findings to `audit/wip/` as it returns, so page-by-page resumability still holds. The cap is the loss bound: if tokens run out or the context resets mid-audit, only the few in-flight units are lost rather than the whole pass. Don't launch the next batch until the finished one is checkpointed
- Start from a clean slate: before reading content, delete any existing `audit/wip/` so a prior pass's leftovers can't leak in, then write the audit plan as a checklist and save it under `audit/wip/`; iterate the checklist as work proceeds
- Keep the findings as a live document: open a running file in `audit/wip/` (e.g. `findings.md`) in the final document's section shape and append each finding the moment it survives verification, rather than holding findings in context for a write-up at the end; a fresh session then resumes from a good state — the loss is a single finding, and producing the deliverable is concatenation, not reconstruction
- Persist thinking artifacts, not just findings: when a page needs extended reasoning — a rate reconciliation, a citation trail, a half-formed suspicion to revisit — write it to `audit/wip/` as you go; in-progress reasoning is exactly what a token-exhausted session cannot rebuild, so treat it as recoverable state rather than scratch that lives only in context
- Leave `audit/wip/` in place when the audit finishes — deleting it is the maintainer's call, and the next audit's clean-slate step clears it if forgotten

`audit/wip/` is scratch space (git-ignored). Nothing in it is the deliverable; the deliverable is the single dated audit file.

## Verification discipline

The standing rule is no false positives — a wrong finding wastes the maintainer's time and erodes trust in the record:

- Re-verify every CRITICAL and HIGH finding, and every claimed citation discrepancy, against the primary source before including it; drop candidates that don't survive the check
- `laws-lois.justice.gc.ca` (ITA, ETA, Regulations) is reachable by headless fetch; `canada.ca` and `web.archive.org` return HTTP 403 to fetchers, so confirm CRA forms/folios/guides through the search index or mark them unverified — never assert a fetch that didn't happen
- Treat the maintainer's authoring tags as content, not scaffolding: `\[done]` and `\[meh]` heading annotations are intentional progress markers (AGENTS.md protects them). The 2026-05-28 audit's R-1 flagged them for stripping and was a mis-finding — that is the cautionary tale for this discipline
- Verify GIFI codes and account-table structure against RC4088 and the hand-written convention pages (`T3.md` defines the indented account-tree shape and the sub-code rules), never against sibling AI-generated pages — consistency with unreviewed pages is not evidence of correctness. The 2026-07-04 audit's FX-5 endorsed renumbering trade receivables to `1060-x` sub-codes because the unreviewed Investments pages used `1060`, when the correct line was `1062` (per RC4088, `1060` is the aggregate); the independent follow-up review reproduced the same blind spot, and the wrong fix was applied before the maintainer caught it (see `audit/2026-07-06_Audit-Remediation_Opus-4.8-xhigh.md`)
- Record candidates that were checked and deliberately dropped under "What was NOT flagged", so the next pass doesn't re-litigate them

## Full-audit document

Filename: `<YYYY-MM-DD>_Audit_<Model>-<effort>.md` under `audit/`. The date is when the audit ran. Both `<Model>` and `<effort>` describe the live session and must be read programmatically — never guessed. They are the same two values the status line prints: Claude Code feeds the `statusLine` command a JSON payload whose `model.display_name` and `effort.level` are exactly these tokens (see `~/.claude/statusline.py`). Read the effort from `~/.claude/settings.json` `effortLevel`; take the model from the session's model identity, normalised to its hyphenated short form (`Fable 5` → `Fable-5`, dropping any `(1M context)` qualifier). A session-only effort override reaches the status line but may not be written to settings.json — if the two could disagree, confirm the live value rather than assuming. Cautionary tale: a prior run named its file `Fable-5-xhigh` from a guessed suffix when the session was running at `high` — the correct name was `Fable-5-high`.

Section skeleton:

1. Header — `**Date**`, `**Scope**` (pages covered and what this pass weights), `**Method**` (how citations were verified, what was re-checked)
2. Severity legend (verbatim — see below)
3. TL;DR — findings summarised, counted accurately by severity (a miscount here is itself a finding)
4. Disposition of prior audits — table tracking earlier findings still in scope, plus the regression baseline; include when the pass builds on earlier audits
5. Repo-wide findings — cross-cutting issues, coded `R-1`, `R-2`, …
6. Page-by-page findings — coded per page (`CR-1`, `HST-2`, `SD-3`, …)
7. Content notes beyond the findings — missing-content observations and net-new topics
8. "What was NOT flagged" — candidates checked and cleared, for traceability
9. Status of WIP / pending-review pages

Severity legend (reproduce exactly):

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

Each finding carries:

- A heading `### [SEVERITY] CODE Short title`
- The `file:line` reference(s)
- The quoted text at issue
- The explanation of what is wrong or missing
- The primary source it was verified against
- A suggested fix, where one is clear

Coding scheme: a per-page letter prefix plus a sequential number (`CR-1`, `CR-2`, …); repo-wide findings use `R-n`. Codes persist across the cycle so the follow-up can reference them.

## Follow-up review

Filename: `<YYYY-MM-DD>_Audit-Followup_<Model>-<effort>.md` — same `<Model>`/`<effort>` rule as the full audit (read programmatically, never guessed). Run it after the audit's fixes have landed (typically a separate commit), to confirm they held and nothing regressed.

Section skeleton:

1. Header — `**Date**`, `**Scope**` (verify fixes from the named prior audit), `**Method**`
2. Severity legend (the same verbatim block)
3. TL;DR — how many prior findings resolved, any exceptions, any regressions or new issues
4. Disposition table — each prior code, its status in the current source, and the primary source it was re-verified against
5. Independent verification detail — load-bearing claims re-checked from scratch, not trusted from the prior audit
6. Observations on the prior audit — mis-findings or miscounts, flagged explicitly and corrected
7. Content notes beyond the findings
8. "What was NOT re-flagged" — confirms no regressions and that the fixes didn't break links
9. Status of WIP / pending-review pages

Verify, don't trust: trace each prior finding to its line(s), re-check the factual claim against the primary source, and run repo-wide greps to catch stale instances left anywhere in the guide.

## Closeout

- Add one index line to the `## Audit` section of `README.md` pointing at the new file
- Confirm `git status` shows only the new audit file plus that README line — no `guide/` page is touched (audits are read-only; fixes land separately)
