# AGENTS.md

Project guidance for AI coding agents working in this repository.
This is the single source of truth for project context, editorial conventions, and style rules.

---

## Repository nature

This is a **documentation-only** repository. There is no build system, test suite, lint tooling, or package manifest. The root holds `README.md` and `AGENTS.md`, a `docs/` folder (process docs for agents: the [style guide](docs/Style-Guide.md) and the audit playbook), an `audit/` folder, and a `guide/` folder containing all topic content (with screenshots co-located alongside the pages that reference them); Claude Code's entry point `.claude/CLAUDE.md` points to this file. Edits are content edits; "running" the project means previewing Markdown.

The audience is narrow: owners of a Canadian-controlled private corporation (CCPC), typically holding stocks/ETFs in a corporate trading account. Keep that frame — do not generalize content to personal tax, US filers, or other entity types unless the existing document already does. A brief contrast with sole-proprietor or personal-tax treatment is allowed where it clarifies the corporate treatment and stays clearly secondary (see `guide/Paying-Yourself/Owner-Corporation-Transactions.md`); do not let such a contrast grow into general personal-tax coverage.

---

## Document architecture

`README.md` is the topic index. `guide/` is organized into seven thematic group folders — `Overview/`, `Corporate-Lifecycle/`, `Bookkeeping/`, `Operations/`, `Paying-Yourself/`, `Investments/`, and `Filing-And-CRA/` — each opening with a hub page named after the folder (e.g. `Operations/Operations.md`) that introduces and indexes the group. Each page within a group is a standalone topic; the pages form a dependency graph rather than a flat collection. A topic that has multiple files (parent page + sub-page, or page + screenshots) nests in its own subfolder within its group so related files stay co-located.

- **`guide/Overview/Concept-Map.md`** — overarching map of the whole guide: the five aspects it sorts concepts into (kinds of things, running balances, events, effects, and the yearly flow) and which page owns each concept; the orienting "start here" page
- **`guide/Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md`** — foundational concepts; other guides assume this vocabulary (ACB, ROC, phantom distributions, Book Cost vs ACB)
- **`guide/Investments/Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md`** — operational companion to the above; contains the spreadsheet workflow: row-order assumptions, formulas, transaction-type conventions; ACB-related edits elsewhere must stay consistent with this file
- **`guide/Investments/T3/T3.md`, `guide/Investments/T5008/T5008.md`** — translate brokerage slips into bookkeeping entries, GIFI-aligned ledger accounts, and specific T2 schedule inputs; build on ACB concepts
- **`guide/Investments/T3/T3-Box-26-Other-Income.md`** — sub-page of `T3.md`, indexed under it in the README
- **`guide/Investments/Capital-Dividend-Account/Capital-Dividend-Account.md`** — depends on capital gains data produced by the ACB/T3/T5008 workflows
- **`guide/Overview/Glossary.md`** — short definitions of the acronyms and tax terms used across the guide, each cross-referenced to its canonical page
- **`guide/Bookkeeping/Foreign-Currency/Foreign-Currency.md`** — the hub for the foreign-currency sub-pages (FX rates and character, bookkeeping convention, getting paid in USD, bank conversions, Norbert's Gambit, year-end USD deposit), indexed under it in the README
- **`guide/Operations/HST/HST.md`** — the hub for the GST/HST sub-pages (registration and filing, bookkeeping and the tax point, the regular method and ITCs, the Quick Method, worked examples), indexed under it in the README
- **`guide/Filing-And-CRA/Payment/Payment.md`** — a stub for the corporate-tax payment workflow
- **`guide/Paying-Yourself/Dividends/Dividends.md`** — eligible, non-eligible, and capital dividend concepts: which corporate pool each draws on and the T1 gross-up + DTC on the personal side; the hub for the dividend sub-pages
- **`guide/Paying-Yourself/Dividends/Declaring-And-Paying.md`, `guide/Paying-Yourself/Dividends/Bookkeeping-And-Slips.md`, `guide/Paying-Yourself/Dividends/T2-Reporting.md`, `guide/Paying-Yourself/Dividends/Dividends-Examples.md`** — sub-pages of `Dividends.md` covering the paying-side mechanics (resolution, journal entries, T5/NR4, T2 schedules incl. T2054, worked examples), indexed under it in the README
- **`guide/Overview/Tax-Integration.md`** — the integration principle, the dividend gross-up + DTC mechanism, per-flavour gross-up/DTC rates, and the corp-side preference order for choosing among the three flavours

When adding or substantially restructuring a topic, update `README.md` so the index stays current. Sub-pages are indented under their parent in the index (see how `T3-Box-26-Other-Income.md` sits under `T3.md`). When adding a screenshot, place it in the same folder as the page that references it, and reference it with a bare filename rather than a relative path.

---

## Page status

Every page sits in one of three states. `README.md` indexes pages thematically and carries the state as a per-entry marker: no marker for signed-off pages, `†` for AI-generated pages pending review (legend at the top of the Topics section), and a `(work-in-progress stub)` annotation for stubs.

- **Signed off** — no marker; the maintainer has reviewed the page end-to-end; treat the content as authoritative within the disclaimer
- **`STATUS: AI GENERATED, REVIEW IN PROGRESS`** — page shape and detail are mature, but each section still needs the maintainer's verification before its facts can be relied on
- **`STATUS: WORK IN PROGRESS`** — stub or partial draft; not yet near complete

When a marker is present, it is the very first line of the file, followed by a blank line, then the `# Title` heading (see `Operations/Cost-Recovery/Cost-Recovery.md` for the canonical shape).

This separation is load-bearing. The audience uses these pages as practical guidance, and AI-generated content can contain plausible-sounding errors that have not yet been caught. Do not silently promote a page — removing the `STATUS` line and the README `†` marker is a sign-off, and only the maintainer can issue it. When drafting new content from scratch, mark it `AI GENERATED, REVIEW IN PROGRESS` and add its `README.md` entry with a `†`, under the thematic group it belongs to.

### Promotion (sign-off)

Promotion is the maintainer's end-to-end sign-off on a mature page; only the maintainer issues it, and only on the maintainer's explicit say-so for a specific page. The steps:

- Delete the `STATUS: AI GENERATED, REVIEW IN PROGRESS` first line and its trailing blank line, so the file opens on its `# Title` heading
- Strip the per-section `<!-- [done] -->` review tags from every heading — they are section-by-section review scaffolding (the maintainer-only heading tags described under [`docs/Style-Guide.md` — Headings](docs/Style-Guide.md#headings)), and a signed-off page carries none
- Remove the `†` marker from the page's `README.md` entry (the entry stays in its thematic group, indented under its parent hub if it is a sub-page)

The `<!-- [done] -->` tags are how the maintainer tracks review toward sign-off; a page is ready to promote once they cover it end to end.

---

## Editorial conventions

These rules encode actual decisions made across the existing guides. Follow them when editing or adding content.

- **Three distinct registers — keep them separate**: CRA/tax rules (what the law and forms require), bookkeeping conventions (how this guide posts entries), and brokerage-specific behaviour (what statements actually show, often inconsistently); several documents explicitly contrast official tax treatment with the pragmatic ledger conventions used to reconcile broker statements; preserve that separation rather than collapsing it
- **Cross-link, don't duplicate**: topic pages refer to each other through inline links and a `Related` section near the end; if you find yourself re-explaining ACB inside `T3.md`, link to `Adjusted-Cost-Base.md` instead
- **Citations are concrete and authoritative**: existing pages cite the Income Tax Act, CRA forms/schedules, CRA guides, and Bank of Canada FX rates directly; match that — no vague "per CRA guidance" without a pointer
- **Standard page shape** (where the page is mature): audience/scope at the top, walkthrough sections in the middle, then `Related`, `Citations`, and optionally `TODO` near the end
- **Diagrams**: use Mermaid in fenced ```` ```mermaid ```` blocks for conceptual flow diagrams; PNG screenshots are reserved for actual CRA / brokerage forms and tooling, co-located in the same folder as the page that references them
- **ACB-specific conventions** (load-bearing — do not silently change):
  - Pooled average cost, not FIFO/LIFO
  - Trade-date FX for purchases, sales, and commissions
  - Payment-date FX for distributions
  - "Earliest date of continuous holding" as the acquisition-date convention for pooled securities
- **Bookkeeping vocabulary**: use GIFI-aligned account codes, explicit debit/credit entries, and the established terms — ACB, ROC, phantom distribution, CDA, ERDTOH, NERDTOH, GRIP — consistently with how the existing guides use them
- **Disclaimer stance**: the README states "I am not an accountant, this is not financial or tax advice"; don't soften or remove this framing in new content; the docs are practical guidance, not professional advice

---

## Style

Prose style is canonical in [`docs/Style-Guide.md`](docs/Style-Guide.md): the two voices, section rhythm, bullets, sentences, headings, emphasis, citations, page shape, worked examples, and the tells that separate reviewed prose from raw AI drafts. Follow that file when editing or adding content. This section keeps only the two reminders that interact with the rest of this document.

- **Two voices, one per page**: *primer* (third-person factual, concept-oriented; `Small-Business-Tax.md`, `README.md`) and *operational* (second-person imperative, with worked debit/credit and schedule-entry walkthroughs; the per-topic pages)
- **Heading status tags are maintainer-only**: a trailing `\[done]`, `\[meh]`, or HTML-comment tag (`<!-- [done] -->`, `<!-- [wip] -->`) on a heading is an authoring/progress annotation, not heading text — leave it exactly as written and never "clean it up"

---

## Media

Screenshots (CRA portals, brokerage trade confirmations, T2/T3/Schedule 6/Schedule 7 examples, the ACB tracker spreadsheet) live in the same folder as the page that references them. Filenames are descriptive and hyphenated, and the page references them by bare filename. When adding screenshots, redact account numbers, names, and identifying detail — see `guide/Investments/T5008/T5008-Transaction-Steps-Redacted.png` as the model.

---

## Audits

Periodic documentation audits live under `audit/`, one folder per cycle named for the date of the
cycle's first pass (`audit/2026-07-04/`). A cycle's audit, its remediation record, any independent
review, and its follow-up share that folder; `audit/Audit-Summary.md` indexes every pass across all
of them. Filenames follow the pattern
`<YYYY-MM-DD>_Audit_<Model>-<reasoning-effort>.md` for a fresh audit pass, or
`<YYYY-MM-DD>_Audit-Followup_<Model>-<reasoning-effort>.md` for one that primarily verifies
fixes from a prior audit. The date is when that pass was run, the model is the one that ran it,
and the reasoning-effort level is the model's setting (e.g. `Opus-4.7-xhigh`). Both the model and
the reasoning-effort suffix are required; never omit the suffix. Read both tokens programmatically
from the live session (the same `model.display_name`/`effort.level` the status line consumes) —
never guess them; see [Audit Instructions](docs/Audit-Instructions.md) for how. Each audit is a
read-only record of findings; fixes land in separate follow-up commits so the audit and the
response stay separable in git history.

The full process — operating mode, verification discipline, the document skeleton, and the
follow-up review — is in [`docs/Audit-Instructions.md`](docs/Audit-Instructions.md). Follow it when
asked to run an audit.

---

## Git hygiene

`.gitignore` excludes `.idea/` and the entire `.github/` directory **except** `copilot-instructions.md`. Don't commit other files under `.github/`.
