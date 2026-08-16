# Page Kinds

The target taxonomy: what each page in `guide/` should be, in Diátaxis terms adapted to this
repo's audience (a CCPC owner-operator at work) and its existing conventions. The structural
premise, per the [Framework Primer](Framework-Primer.md#application-doctrine): topic-first
foldering stays; the kinds repeat within topics.

Page kind is encoded in the page's name and shape, never in reader-visible metadata — guide pages
address the reader only, and a type badge would be scaffolding. The kind taxonomy lives here and,
since Phase 0 (2026-08-16), in [Style Guide — Page Kinds](../Style-Guide.md#page-kinds), which
extends the two-voice rule.

## The six kinds

### Hub (navigation)

- *Diátaxis alignment*: none — Diátaxis classifies content, not navigation; hubs are information
  architecture
- *Role*: orient the reader in a group and index its pages; the existing shape (who-for → TLDR →
  one orienting section → `## Sub-Pages` → Related) is already right
- *Boundary*: a hub introduces no rules (several hubs already state this in their Citations
  placeholder — keep that convention); orienting prose stays short of a concept page's depth.
  [Dividends](../../guide/Paying-Yourself/Dividends/Dividends.md) is currently a hub fused with a
  full concept page; that is acceptable as a hub-plus-concept page, but the kind it must declare
  through its shape is concept-first, index-second

### Concept page (explanation)

- *Diátaxis alignment*: explanation; passes the "about-ness" test
- *Voice*: the Style Guide's *primer* voice, unchanged
- *Shape*: conceptual noun-phrase headings; Mermaid for conceptual flow; no numbered procedures,
  no spreadsheet mechanics; small inline numeric illustrations are fine when they serve the
  concept (the $1,000 integration example in
  [Tax-Integration](../../guide/Overview/Tax-Integration.md) is the model)
- *Boundary with reference*: a concept page may quote a rate to make a point, but the number's
  canonical home is its owner page (see [single-sourcing](#reference-single-sourcing)); a concept
  page never becomes the lookup location
- *Existing exemplars*: Tax-Integration, Small-Business-Tax, the Corporate-Lifecycle group,
  Capital-Vs-Income-Character, Adjusted-Cost-Base (concepts half)

### Task page (how-to)

- *Diátaxis alignment*: how-to guide; serves the competent reader mid-task
- *Voice*: the Style Guide's *operational* voice, unchanged
- *Shape*: goal-titled ("Declaring and Paying a Dividend", "Period Close"); ordered where order
  matters; conditional imperatives for real-world branching; worked debit/credit entries as the
  payload, not as decoration
- *Sanctioned embedded reference*: a task page may carry the compact lookup material the task
  needs at hand (a box list, an account-tree excerpt, a schedule-line mapping) — Diátaxis how-to
  guides link out to reference, but for a reader with a slip on their desk the working set belongs
  on the page. The discipline is layout, not exile: embedded reference sits in its own clearly
  bounded sections, in a canonical order (see [slip pages](#the-slip-page-shape)), and never
  introduces facts whose canonical owner is elsewhere without linking to that owner
- *Existing exemplars*: Declaring-And-Paying, Period-Close, the mechanics halves of the tracking
  pages and slip pages

### Reference page

- *Diátaxis alignment*: reference; austere, consistent, structured like the thing it describes
- *Voice*: neither primer nor operational — descriptive; tables and lists over prose; no opinion,
  no instruction, no digression
- *Shape*: the [Glossary](../../guide/Overview/Glossary.md) and
  [T2-Schedules](../../guide/Filing-And-CRA/T2-Schedules.md) are the models: predictable entry
  format, every entry cross-linked to the canonical page that explains or uses it
- *Volatility note*: reference is where drift bites (line numbers change between form versions,
  rates change by budget year); a reference page states its as-of basis once, near the top, the
  way T2-Schedules' TLDR already does
- *Existing and decided instances*: Glossary; T2-Schedules; Further-Reading (a scope register);
  `Chart-Of-Accounts.md` (decided extraction from
  [Ledger-And-Accounts](../../guide/Bookkeeping/Ledger-And-Accounts.md));
  `Filing-And-CRA/Deadlines.md` (decided — the consolidated filing and payment calendar); the
  spreadsheet column specs inside the tracking pages

### Examples page (explanation by worked instance)

- *Diátaxis alignment*: explanation — the reader studies how the rules compose on concrete
  numbers; secondarily a pattern template consulted mid-task. The genre is this repo's own and it
  stays
- *Shape*: the established pattern — setup → dated journal entries → schedule entries → year-end
  or comparison view ([HST-Examples](../../guide/Operations/HST/HST-Examples.md),
  [CCA-Examples](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Examples.md),
  [Dividends-Examples](../../guide/Paying-Yourself/Dividends/Dividends-Examples.md))
- *Invariants, promoted from convention to rule*:
  - an examples page introduces no rules; every rule it exercises is cited on a rules page, and
    the examples page points back rather than restating
  - rates used as inputs are pinned to a date and labelled as inputs ("rates as of…"), not
    presented as current reference — the Dividends-Examples rate block is the model, minus its
    duplication of reference the owner pages hold
  - when an example must digress into rules (the remediation discussion inside CCA-Examples'
    Example 3), that material moves to the owning rules page and the example links to it

### Tutorial

- *Diátaxis alignment*: tutorial; the empty quadrant, deliberately deferred
- *Why deferred*: the audience is a practitioner at work; the guide is consulted, not studied
  through. The quadrant is worth filling only where a safe, reproducible, guaranteed-outcome
  exercise exists
- *The two credible candidates*:
  - *ACB tracker set-up*: start from the Google Sheets template, enter one contrived ETF's year
    (buy, distribution with ROC, phantom distribution, sell), and end with the tracker agreeing
    with a known answer — building on
    [Adjusted-Cost-Base-Tracking](../../guide/Investments/Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md)
  - *One ETF through one year*: the end-to-end arc the `Investments.md` TODO already asks for —
    trade confirmations → ledger → T3/T5008 → Schedule 6 — as a guided exercise with checkpoints
- *Style Guide carve-out required*: tutorials need the tutor's voice ("we"), expected-output
  checkpoints, and a learning narrative — all currently outside the two sanctioned voices, and in
  tension with the ban on meta-commentary; adopting the kind means adding a third voice to the
  Style Guide, scoped to tutorial pages only

## The slip-page shape

The slip-to-schedule chain ([Current State](Current-State.md#the-dominant-hybrid-the-slip-to-schedule-chain))
becomes a *sanctioned hybrid*: a task page with embedded reference, in a canonical section order
every slip page follows:

1. What this slip is and when it arrives (brief concept framing; deeper concepts link out)
2. Boxes (reference: the box table, one entry format across all slip pages)
3. Accounts (reference: the account-tree excerpt, consistent with the master chart)
4. Posting (how-to: per-box journal entries)
5. T2 reporting (reference-mapping: schedule and line per box)
6. Software notes (how-to: clearly fenced as software-specific and version-dated)

The three registers AGENTS.md already mandates (CRA rules, bookkeeping convention,
brokerage-specific behaviour) map onto these sections instead of interleaving — which is what the
T3 TODO asks for. The same ordering discipline applies to the tracking pages
(spec sections = reference, posting sections = how-to).

## Reference single-sourcing

Every reference artifact gets exactly one canonical owner; every other appearance is a link, an
excerpt marked as such, or a dated example input. Proposed owners:

| Artifact | Canonical owner |
|---|---|
| GIFI chart of accounts | `Chart-Of-Accounts.md`, extracted from Ledger-And-Accounts (decided — [Open Questions](Open-Questions.md) Q1) |
| Per-slip box tables | The slip's own page (T3, T5, T5008) |
| T2 schedule map and line references | T2-Schedules |
| CCA classes and rates | CCA-Classification |
| Quick Method remittance rates | HST-Quick-Method |
| Dividend gross-up / DTC rates | Tax-Integration |
| Corporate rate figures (federal/Ontario, SBD) | Small-Business-Tax |
| CPP / YMPE / RRSP limits | Payroll (Salary-Vs-Dividends links) |
| Filing and payment calendar | `Filing-And-CRA/Deadlines.md`, new (decided — [Open Questions](Open-Questions.md) Q2); Concept-Map keeps its visual as an orientation view that links |
| Terminology | Glossary |
| Scope register | Further-Reading |

Excerpt rule for GIFI trees: slip pages keep their per-topic account trees (reference mirrors the
working set), but an excerpt must match the master chart code-for-code; a consistency check joins
`Validate-Docs.ps1` in Phase 1 (decided — [Open Questions](Open-Questions.md) Q6).

## Classification procedure for new pages

When adding a page, apply the compass before choosing shape:

- Does the page inform action or cognition? Does it serve study or work?
- Pick the kind; take its voice and shape from this file
- If the honest answer is "both", check whether the topic wants the concept/task/examples split
  its subfolder neighbours already use, or the sanctioned slip-page shape — an unplanned hybrid is
  the one outcome this taxonomy exists to prevent
