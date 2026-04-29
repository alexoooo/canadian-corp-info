# AGENTS.md

Project guidance for AI coding agents working in this repository.
This is the single source of truth for project context, editorial conventions, and style rules.

---

## Repository nature

This is a **documentation-only** repository. There is no build system, test suite, lint tooling, or package manifest. All artifacts are top-level Markdown files plus screenshots in `media/`. Edits are content edits; "running" the project means previewing Markdown.

The audience is narrow: owners of a Canadian-controlled private corporation (CCPC), typically holding stocks/ETFs in a corporate trading account. Keep that frame — do not generalize content to personal tax, US filers, or other entity types unless the existing document already does.

---

## Document architecture

`README.md` is the topic index. Each top-level `.md` is a standalone guide for one paperwork/tax area, but they form a dependency graph rather than a flat collection:

- **`Adjusted-Cost-Base.md`** — foundational concepts; other guides assume this vocabulary (ACB, ROC, phantom distributions, Book Cost vs ACB)
- **`Adjusted-Cost-Base-Tracking.md`** — operational companion to the above; contains the spreadsheet workflow: row-order assumptions, formulas, transaction-type conventions; ACB-related edits elsewhere must stay consistent with this file
- **`T3.md`, `T5008.md`** — translate brokerage slips into bookkeeping entries, GIFI-aligned ledger accounts, and specific T2 schedule inputs; build on ACB concepts
- **`T3-Box-26-Other-Income.md`** — sub-page of `T3.md`, indexed under it in the README
- **`Capital-Dividend-Account.md`** — depends on capital gains data produced by the ACB/T3/T5008 workflows
- **`Foreign-Currency.md`, `HST.md`, `Payment.md`** — work-in-progress stubs; preserve `STATUS: WORK IN PROGRESS` markers where present

When adding or substantially restructuring a topic, update `README.md` so the index stays current. Sub-pages are indented under their parent in the index (see how `T3-Box-26-Other-Income.md` sits under `T3.md`).

---

## Editorial conventions

These rules encode actual decisions made across the existing guides. Follow them when editing or adding content.

- **Three distinct registers — keep them separate**: CRA/tax rules (what the law and forms require), bookkeeping conventions (how this repo posts entries), and brokerage-specific behavior (what statements actually show, often inconsistently); several documents explicitly contrast official tax treatment with the pragmatic ledger conventions used to reconcile broker statements; preserve that separation rather than collapsing it
- **Cross-link, don't duplicate**: topic pages refer to each other through inline links and a `Related` section near the end; if you find yourself re-explaining ACB inside `T3.md`, link to `Adjusted-Cost-Base.md` instead
- **Citations are concrete and authoritative**: existing pages cite the Income Tax Act, CRA forms/schedules, CRA guides, and Bank of Canada FX rates directly; match that — no vague "per CRA guidance" without a pointer
- **Standard page shape** (where the page is mature): audience/scope at the top, walkthrough sections in the middle, then `Related`, `Citations`, and optionally `TODO` near the end
- **ACB-specific conventions** (load-bearing — do not silently change):
  - Pooled average cost, not FIFO/LIFO
  - Trade-date FX for purchases, sales, and commissions
  - Payment-date FX for distributions
  - "Earliest date of continuous holding" as the acquisition-date convention for pooled securities
- **Bookkeeping vocabulary**: use GIFI-aligned account codes, explicit debit/credit entries, and the established terms — ACB, ROC, phantom distribution, CDA, ERDTOH, NERDTOH, GRIP — consistently with how the existing guides use them
- **Disclaimer stance**: the README states "I am not an accountant, this is not financial or tax advice"; don't soften or remove this framing in new content; the docs are practical guidance, not professional advice

---

## Style

- **Bullet points**: no trailing period; if a point needs to say more than one thing, use a sub-bullet rather than adding a second clause to the same line
- **Schedule names**: spell out on first use within a section (e.g. "Schedule 3"), then abbreviate ("S3"); don't mix forms within the same section
- **Tax-term emphasis**: use *italics* for tax terms being introduced or contrasted; use `code` style only for actual spreadsheet identifiers, formula names, or CRA box labels
- **Inline citations**: anchor ITA section references at the point the rule first appears (e.g. `(ITA s.47(1))`), not only in the Citations block

---

## Media

`media/` holds screenshots referenced inline (CRA portals, brokerage trade confirmations, T2/T3/Schedule 6/Schedule 7 examples, the ACB tracker spreadsheet). Filenames are descriptive and hyphenated. When adding screenshots, redact account numbers, names, and identifying detail — see `T5008-Transaction-Steps-Redacted.png` as the model.

---

## Git hygiene

`.gitignore` excludes `.idea/` and the entire `.github/` directory **except** `copilot-instructions.md`. Don't commit other files under `.github/`.
