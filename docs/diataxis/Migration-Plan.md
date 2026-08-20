# Migration Plan

Phased application of the [Page Kinds](Page-Kinds.md) taxonomy to the existing guide. The method
follows the Diátaxis workflow doctrine: one small unit at a time, each step independently
complete and publishable, structure improving from the inside. There is no folder restructuring
phase and none is planned.

## Ground rules for every step

- *One page (or one section) per step*: assess it with the compass, make one improvement, run
  `pwsh -NoProfile -File scripts/Validate-Docs.ps1`, and leave the tree ready to commit before
  starting the next step (the maintainer commits)
- *Status markers travel*: a new page created by a split starts at
  `STATUS: AI GENERATED, REVIEW IN PROGRESS` with a `†` README entry, even when its text was cut
  verbatim from a signed-off page (decided — no sign-off inheritance by default; the maintainer
  may rule otherwise case by case); never silently promote
- *Signed-off pages are touched last and least*: where a phase requires editing one (Concept-Map,
  T3, Small-Business-Tax, Tax-Integration, Dividends), the step is proposed to the maintainer
  first rather than executed
- *Moves are complete*: link rewrites, README index (including sub-page indentation), and
  co-located screenshots move in the same step
- *Maintainer channels stay put*: `## TODO` sections and heading review tags never migrate into
  reader-facing content and are preserved verbatim through splits

## Phase 0 — adopt the conventions

Deliverable: process-doc edits only; no guide content changes. *Completed 2026-08-16.*

- Fold the [Page Kinds](Page-Kinds.md) taxonomy into `docs/Style-Guide.md`: extend the two-voice
  rule to the six kinds, add the slip-page canonical section order, and add the examples-page
  invariants (no new rules; dated rate inputs)
- Add a pointer from `AGENTS.md` (Document architecture or Style section) to the taxonomy
- Record the reference canonical-owner table where authoring agents will hit it (Style Guide or
  AGENTS.md)

## Phase 1 — reference single-sourcing

The highest-value, lowest-controversy work: it fixes live duplication hazards without moving any
page. *Completed 2026-08-16*: all steps below are done, including the maintainer-approved edits to
the signed-off pages (Concept-Map's flavour table and calendar view, Small-Business-Tax's trimmed
deadlines section) and the new `Filing-And-CRA/Deadlines.md` reference page. Steps, in order:

- *Ontario 2026 (Bill 97) rate duplication*: pick the canonical owner per the
  [owners table](Page-Kinds.md#reference-single-sourcing), reduce other statements to links or
  dated example inputs
- *Quick Method rates*: HST-Quick-Method owns them; HST-Examples pins them as dated inputs and
  drops any restatement framed as reference. Resolve the HST-Quick-Method TODO in the same step
  as decided: state the applicable rates with their as-of basis and cite RC4058 for the matrix —
  no inline reproduction
- *Gross-up / DTC rates*: Tax-Integration owns them; Dividends-Examples pins dated inputs;
  Concept-Map's dividend-flavours table becomes a view that links to Tax-Integration for the
  numbers (signed-off page — maintainer proposal first)
- *Corporate rates and CPP/YMPE/RRSP limits*: same pattern (owners: Small-Business-Tax, Payroll)
- *GIFI account-tree excerpts*: verify the trees in T3, T3-Box-26-Other-Income, and T5008 against
  the master chart; fix drift; note the excerpt rule beside each tree; add the excerpt-consistency
  check to `scripts/Validate-Docs.ps1` (decided — the canonical-figure heuristic is not built)
- *Filing calendar consolidation*: create `Filing-And-CRA/Deadlines.md` (decided) — one
  dated-basis reference calendar covering T2, HST, payroll, T5, and instalments; consolidate the
  pieces from Payment, CRA-Administration, and Small-Business-Tax into it, and turn Concept-Map's
  calendar into a linking view — the split Filing-And-CRA.md already flags as awkward

## Phase 2 — hybrid cleanups the pages already ask for

Each step here answers an existing page TODO or a known shape defect, so maintainer intent is
already on record. *Completed 2026-08-16*: all steps below are done. Execution notes: the T3
split produced four new sub-pages (Box 49, Box 23 — its own page by maintainer decision, to be
filled out as real slips are observed —, Box 42, Box 21), each in review with a `†` entry, and
T3.md keeps the box table, account tree, matching workflow, preliminary tracking, and a new
per-box T2 summary table; Norberts-Gambit needed no edit — its sections were already in the
target order with the broker list as-of-dated; Bookkeeping-And-Slips also gained its missing
`## Related`; the maintainer approved the T5008 lifecycle move and the two signed-off
description fixes (Concept-Map, Small-Business-Tax) that the Chart-Of-Accounts extraction
required.

- *T3 mode separation and per-box split*: reorder T3.md into the slip-page canonical section
  order and execute the per-box split its TODO floats (decided): each remaining worked box gets a
  sub-page in the pattern of T3-Box-26-Other-Income, indexed under T3 in the README, each starting
  in review with a `†` entry; T3.md keeps the box table, the account tree, and the per-box
  T2-mapping summary, and delegates the walkthroughs
- *T5008, T5, Bookkeeping-And-Slips, Getting-Paid-In-USD*: apply the same slip-page ordering
- *Ledger-And-Accounts extraction* (decided): split the ~100-row chart of accounts into a
  `Chart-Of-Accounts.md` reference page beside it, leaving the accounting-equation textbook
  material as a concept page that links
- *CCA-Examples Example 3*: move the capitalization-remediation rules discussion to the owning
  rules page (Capital-Cost-Allowance or CCA-Classification) and link back
- *Norberts-Gambit*: keep as one page (the topic is small enough) but reorder into
  concept → broker reference → rules → cost comparison → worked bookkeeping, with the volatile
  per-broker fee list marked as-of-date
- *Missing `## Related` sections*: Declaring-And-Paying and T2-Reporting deviate from the
  mandated page shape; restore the section

## Phase 3 — group-by-group compass sweep

*Completed 2026-08-19*: all 94 guide pages were swept without page moves, splits, or status
changes. Corporate-Lifecycle, Overview, Bookkeeping, and Investments needed no content edits, so
the signed-off guide pages stayed untouched. The side groups now link to the canonical CPP,
GST/HST, and T1-calendar owners instead of restating their figures; Payment delegates CPP inputs
to Payroll; and Dividends-Examples keeps only dated scenario inputs and now has its missing
`Related` section. `Booking the Tax Cycle` stays in CRA-Administration as sanctioned embedded task
material, with Period-Close linking to it. Inventory-And-COGS remains one page because its
two-example section has not grown beyond the 594-line condition recorded below.

After phases 1–2 establish the patterns, sweep the remaining pages one group at a time, in
ascending order of expected churn:

1. *Corporate-Lifecycle*: already a clean explanation cluster; verify only
2. *Sole-Proprietorship, Personal-Tax*: explanation-dominant with embedded thresholds; apply the
   single-sourcing pattern to their figures
3. *Overview*: verify Tax-Integration and Small-Business-Tax boundaries; on Concept-Map, the
   event → pool matrix and balance-movement matrix stay put (decided — cross-topic synthesis is
   the orientation page's job), so the sweep only converts its rate table and calendar into
   linking views per Phase 1
4. *Filing-And-CRA*: mostly settled by Phase 1's calendar work; CRA-Administration's embedded
   `Booking the Tax Cycle` journal how-to stays as sanctioned embedded task material, with
   Period-Close linking to it
5. *Bookkeeping*: settled by the Ledger-And-Accounts decision plus Foreign-Currency slip-page
   ordering
6. *Paying-Yourself*: Dividends sub-pages are already close to a clean type split; verify
7. *Operations*: the largest group; Inventory-And-COGS (594 lines, the full house pattern) is the
   main candidate for an examples extraction if its `## Worked Examples` section keeps growing
8. *Investments*: last, because its core pages are signed off and already the repo's best models

Per-page checklist for the sweep:

- Which kind is this page, by the compass? Does its name and shape say so?
- Any rules stated here whose canonical owner is elsewhere? Link instead
- Any procedure inside a concept page, or extended explanation inside an examples page? Relocate
- Rates/figures: owned here, or pinned as dated inputs, or linked?
- `Related` / `Citations` present and conforming?

## Phase 4 (optional) — tutorials

*Completed 2026-08-20*: the tutorial kind is now in use. The Style Guide defines its tutor voice,
bounded exercise shape, and checkpoint convention. The first tutorial recasts the ACB tracker's
existing template and transaction pattern as a safe exercise with a known result. Existing worked
examples remain explanation-by-worked-instance; they are source material, not tutorials merely
because they contain steps or numbers.

The one-ETF-one-year tutorial was considered and remains deferred. It crosses brokerage evidence,
bookkeeping, T3/T5008 reconciliation, Schedule 6, and dividend mechanics; it should be attempted
only with a complete, internally consistent specimen set. The Investments TODO remains its intake
point.

## What this plan deliberately does not do

- No type-first directories, no four top-level buckets — Diátaxis's own anti-pattern
- No mass renames: existing suffix conventions (`-Examples`, `-Tracking`, `-Classification`)
  already communicate kind; new names follow the same pattern
- No new pages created "to fill a quadrant": a page is added only when content demands it
  (the tutorial candidates being the explicit, opt-in exception)
- No promotion or demotion of review status as a side effect of restructuring
