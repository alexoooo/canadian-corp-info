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

The repo has two registers — keep them consistent within a page.

### Two voices

- **Primer voice** (`Small-Business-Tax-Overview.md`, `README.md`): third-person factual, concept-oriented, no procedure
- **Operational voice** (per-topic pages: `Adjusted-Cost-Base.md`, `T3.md`, `T5008.md`, `Capital-Dividend-Account.md`): second-person imperative, procedure-oriented, concrete debit/credit and schedule-entry walkthroughs with worked numerical examples

Surface rules below apply to both voices unless noted.

### Section rhythm

- A section is a stack of short stanzas separated by blank lines
- A stanza is either:
  - 1–3 short factual sentences, each on its own line ending with two trailing spaces (`  `) so they render as separate lines without a paragraph break
  - A colon lead-in followed by a bullet group
- Stanzas appear in sequence without connective tissue ("broadly speaking", "in turn", "in essence", "the takeaway is", "consequently") — let facts stand and trust the reader

### Bullet structure

- No trailing period on bullets
- One fact per bullet; if a point needs more, use a sub-bullet rather than extending the parent line
- Each bullet group is preceded by a short lead-in line ending in a colon ("GST/HST comes in two forms:", "By jurisdiction:", "Things that increase your ACB:")
- Lead-ins are sentence-fragment labels, not narrative ("Here are the…" / "The following lists…")

### Sentences

- Short, declarative, one fact per sentence
- Avoid multi-clause em-dash chains — break into a lead-in + bullets instead
- Caveats fold inline as parentheticals or sub-bullets, not as separate "Note in particular X" pointer-sentences
- State rules as facts (`ACB cannot be negative.`), not as design intent ("the system is designed so…")

### Headings

- Noun phrases or concrete operations: `T3 boxes`, `Trading fees`, `Foreign assets and FX conversion to CAD`, `Sources of law`
- Never rhetorical or marketing-style: avoid `Why X matters`, `Understanding Y`, `What you need to know about Z`
- Short — 2–6 words is typical

### Voice and pronouns

- **Primer voice**: third-person factual ("A corporation is…", "Active business income is taxed at…")
- **Operational voice**: second-person imperative for the reader-as-bookkeeper ("Debit X", "Maintain a running total", "Enter the order…"); first-person plural sparingly for shared bookkeeping conventions ("we want to roll up to GIFI codes")
- Disclaimers and uncertainty are first-person ("my understanding as of 2026", "I am not an accountant")
- Avoid hedge stacking ("generally", "typically", "approximately", "for the most part") — use one hedge per claim if any

### Examples and concreteness

- **Primer voice**: small parenthetical groundings (`(e.g. an ETF)`, `(FutureTax, TaxCycle, ProFile)`, `(industry jargon for the main return)`)
- **Operational voice**: explicit worked examples with concrete dollar values and a `Year 1 / Year 2 / Year 3` progression where state evolves; show debits/credits as labeled ledger lines

### Tax-term emphasis

- *Italics* for tax terms being introduced or contrasted; ITA, CRA, GST, HST, T1, T2, etc. are unitalicized once they are common-noun-like
- `code` style only for actual spreadsheet identifiers, formula names, GIFI account codes, or CRA box labels
- Schedule names: spell out on first use within a section ("Schedule 3"), then abbreviate ("S3"); don't mix forms within the same section

### Citations

- Inline parenthetical at the point a rule first appears: `(ITA [s.47(1)](…))`, linked to laws-lois
- Comprehensive `# Citations` section near the end of every mature page; each entry has a short hyphen-explanation of what the section covers (`s.40(3) - deemed capital gain when ACB would be driven below zero`)
- Citations are concrete and authoritative — no vague "per CRA guidance" without a pointer

### Page shape

For mature pages:
1. `**Who this is for**:` line
2. Optional `**TLDR**:` line or block
3. `Limitations:` block
4. Walkthrough sections (the body)
5. `# Related` — list of sibling pages
6. `# Citations` — ITA sections, CRA forms, external resources
7. `# Links` (optional) — informal external references
8. `# TODO` (optional)

Stub pages keep `STATUS: WORK IN PROGRESS` at the top.

---

## Media

`media/` holds screenshots referenced inline (CRA portals, brokerage trade confirmations, T2/T3/Schedule 6/Schedule 7 examples, the ACB tracker spreadsheet). Filenames are descriptive and hyphenated. When adding screenshots, redact account numbers, names, and identifying detail — see `T5008-Transaction-Steps-Redacted.png` as the model.

---

## Git hygiene

`.gitignore` excludes `.idea/` and the entire `.github/` directory **except** `copilot-instructions.md`. Don't commit other files under `.github/`.
