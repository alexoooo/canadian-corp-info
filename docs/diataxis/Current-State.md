# Current State

Assessment of the existing guide in Diátaxis terms, from a full survey of `guide/` (87 pages,
nine groups), `README.md`, `AGENTS.md`, and `docs/Style-Guide.md` (2026-08-15). File references
below are the evidence base for the [Page Kinds](Page-Kinds.md) taxonomy and the
[Migration Plan](Migration-Plan.md).

## What already aligns

- *The two voices are half of Diátaxis*: the [Style Guide](../Style-Guide.md) mandates one voice
  per page — *primer* (third-person, concept-oriented, no procedure) and *operational*
  (second-person imperative, worked debit/credit and schedule walkthroughs). That is the
  explanation/how-to boundary under different names, already enforced repo-wide. What the Style
  Guide lacks is any notion of reference or tutorial as page kinds
- *The type split already happens in disguise*: topic subfolders repeatedly produce
  concept / mechanics / examples / tracking splits —
  [Adjusted-Cost-Base](../../guide/Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md) (concepts)
  vs [Adjusted-Cost-Base-Tracking](../../guide/Investments/Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md)
  (mechanics); the HST rules pages vs
  [HST-Examples](../../guide/Operations/HST/HST-Examples.md); the CCA cluster's
  [Capital-Cost-Allowance](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md) /
  [CCA-Classification](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Classification.md) /
  [CCA-Examples](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Examples.md) /
  [CCA-Tracking](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Tracking.md);
  the [Dividends](../../guide/Paying-Yourself/Dividends/Dividends.md) sub-pages. Formalizing this
  pattern is the cheapest path to Diátaxis, and the one its "complex hierarchies" guidance points at
- *Cross-link-don't-duplicate is house policy*: `Related` sections, inline links, and the
  "link into the group rather than growing the contrast in place" rule are the connective tissue
  Diátaxis relies on when it says each kind should link to the others instead of absorbing them

## Purest existing exemplars

- *Reference*: [Glossary](../../guide/Overview/Glossary.md) (one flat lookup list, each term
  cross-linked to its canonical page — the working model);
  [T2-Schedules](../../guide/Filing-And-CRA/T2-Schedules.md) (schedule/applicability tables); the
  GIFI chart of accounts inside
  [Ledger-And-Accounts](../../guide/Bookkeeping/Ledger-And-Accounts.md) (~100 rows); the class/rate
  table in CCA-Classification; the spreadsheet column specs in CCA-Tracking and
  Adjusted-Cost-Base-Tracking; [Further-Reading](../../guide/Overview/Further-Reading.md) (a scope
  register — reference about the guide itself)
- *Explanation*: [Tax-Integration](../../guide/Overview/Tax-Integration.md),
  [Small-Business-Tax](../../guide/Overview/Small-Business-Tax.md) (the guide's textbook chapter),
  [Capital-Vs-Income-Character](../../guide/Investments/Capital-Vs-Income-Character.md), and the
  whole `Corporate-Lifecycle/` group ([Estate-Freeze](../../guide/Corporate-Lifecycle/Business-Acquisition/Estate-Freeze.md),
  [Asset-vs-Share](../../guide/Corporate-Lifecycle/Business-Acquisition/Asset-vs-Share.md),
  [Share-Capital](../../guide/Corporate-Lifecycle/Corporate-Structure/Share-Capital.md)) — no
  tables, no journal entries, conceptual headings throughout
- *How-to*: [Declaring-And-Paying](../../guide/Paying-Yourself/Dividends/Declaring-And-Paying.md)
  (procedure plus two document templates);
  [Period-Close](../../guide/Bookkeeping/Period-Close.md) (the monthly and year-end routine, an
  ordered 11-step year-end sequence, and the repo's only checklist — a *sequencer* page that owns
  order but almost no rules); section-scale procedures elsewhere (`How to Classify an Asset` in
  CCA-Classification, `Election Mechanics` in
  [HST-Quick-Method](../../guide/Operations/HST/HST-Quick-Method.md), `Systematic Methods` in
  [Whole-Dollar-Rounding](../../guide/Filing-And-CRA/Whole-Dollar-Rounding.md))
- *Tutorial*: none. Nothing teaches by guided, safe, guaranteed-outcome exercise. The nearest
  candidates — the tracker walkthrough in Adjusted-Cost-Base-Tracking and the
  `Software Workflow Example` in
  [T3-Box-26-Other-Income](../../guide/Investments/T3/T3-Box-26-Other-Income.md) — are written for
  someone already mid-task. The `Investments.md` TODO ("worked end-to-end example: one ETF through
  one year") is the maintainer independently reaching for something tutorial-shaped

## The dominant hybrid: the slip-to-schedule chain

Most mode-mixing follows one template:

> concept intro (explanation) → box or code list (reference) → GIFI-aligned account tree
> (reference) → dated debit/credit journal entries (how-to) → T2 schedule and line mapping
> (reference) → software note (how-to)

Seen in [T3](../../guide/Investments/T3/T3.md), its box sub-pages,
[T5008](../../guide/Investments/T5008/T5008.md), [T5](../../guide/Investments/T5/T5.md),
[Bookkeeping-And-Slips](../../guide/Paying-Yourself/Dividends/Bookkeeping-And-Slips.md),
[Getting-Paid-In-USD](../../guide/Bookkeeping/Foreign-Currency/Getting-Paid-In-USD.md), and
[Norberts-Gambit](../../guide/Bookkeeping/Foreign-Currency/Norberts-Gambit.md). The chain is not
an accident: it answers the reader's real question ("this slip arrived — what do I do with it?"),
which is a how-to journey that needs compact reference en route. T3's own TODO already diagnoses
the problem ("clean up split between CRA rules, brokerage-specific behaviour, accounting
conventions, and T2-software specifics") — the fix is ordering and separating the modes within the
page, not necessarily splitting the page. See [Page Kinds — Task pages](Page-Kinds.md#task-page-how-to).

## Reference scatter

Reference material has no canonical owners today; the same facts appear in multiple places:

- *Rates and thresholds*: combined Ontario corporate rates in Small-Business-Tax,
  Salary-Vs-Dividends, Dividends-Examples, and HST-Examples; dividend gross-up/DTC percentages in
  Tax-Integration, Concept-Map, and Dividends-Examples; the 2026 Ontario (Bill 97) changes stated
  in at least two places; CPP/YMPE/RRSP limits in Salary-Vs-Dividends and Payroll; Quick Method
  remittance rates in HST-Quick-Method and restated in HST-Examples
- *GIFI codes*: the master chart in Ledger-And-Accounts, with partial HTML account trees
  duplicated into T3, T3-Box-26-Other-Income, and T5008 — excerpts that can drift from the master
- *Deadlines*: pieces in Concept-Map (`Filing Calendar`), Small-Business-Tax
  (`Filing Deadlines and Instalments`), [Payment](../../guide/Filing-And-CRA/Payment/Payment.md),
  and [CRA-Administration](../../guide/Filing-And-CRA/CRA-Administration.md);
  `Filing-And-CRA.md` itself notes the deadlines live elsewhere — the split is already documented
  as awkward
- *Box and line numbers*: per-slip box tables live on the slip pages (fine — reference structured
  by the thing described); T2 schedule/line references are spread across T2-Schedules,
  T2-Reporting, T3, Norberts-Gambit, and CCA-Examples

## Genres Diátaxis has no slot for

- *Hubs*: nine group hubs plus five sub-hubs (HST, Foreign-Currency, Capital-Cost-Allowance,
  Dividends, Payment) are orientation + annotated index. Diátaxis classifies content, not
  navigation; hubs are information architecture and stay as they are
- *Worked-examples pages*: [HST-Examples](../../guide/Operations/HST/HST-Examples.md),
  CCA-Examples, [Dividends-Examples](../../guide/Paying-Yourself/Dividends/Dividends-Examples.md),
  plus `## Worked Examples` sections on a dozen pages. Not tutorials (no learning arc), not
  how-to (no goal the reader brought), not reference (narrative, dated). They serve cognition:
  showing how the rules compose on concrete numbers. Classified as explanation-by-worked-instance
  in [Page Kinds](Page-Kinds.md#examples-page-explanation-by-worked-instance)
- *[Concept-Map](../../guide/Overview/Concept-Map.md)*: the repo's most mixed page — four Mermaid
  overviews (orientation) interleaved with genuine reference artifacts (the event → pool effects
  matrix, the balance-movement matrix, the filing calendar, per-flavour dividend rates). It is
  signed off, load-bearing, and the de-facto home of reference that belongs to owner pages

## Constraints any migration must respect

- *Status machinery*: 76 of 87 pages carry `STATUS: AI GENERATED, REVIEW IN PROGRESS` as line 1,
  mirrored by `†` in the README; 11 pages are signed off. Splitting a page multiplies the review
  surface; only the maintainer promotes. Signed-off pages (Concept-Map, T3, Dividends,
  Adjusted-Cost-Base, Tax-Integration, Small-Business-Tax among them) are exactly where several
  reference artifacts live, so reference consolidation touches reviewed text
- *Validation*: `scripts/Validate-Docs.ps1` enforces local link validity, README coverage of
  `guide/`, and status-marker shape; every move or split must be link-rewrite-complete and
  README-complete in the same change
- *Screenshots*: 12 PNGs co-located with 6 pages, referenced by bare filename — they pin
  T3-Box-26-Other-Income, T5008, Adjusted-Cost-Base-Tracking, Capital-Dividend-Account, and
  Payment to their folders
- *Maintainer-facing channels*: `## TODO` (on 48 pages) and heading review tags are already
  separated from reader content and must not migrate into any reader-facing kind
