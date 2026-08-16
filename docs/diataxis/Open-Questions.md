# Open Questions

Decisions only the maintainer can make before or during the [Migration Plan](Migration-Plan.md).
Each carries a recommendation; none blocks Phase 0.

**All eight were decided by the maintainer on 2026-08-16** — each section below records the
decision. Seven follow the recommendation; question 3 (T3 per-box split) goes the other way.
The affected steps in [Migration Plan](Migration-Plan.md) and the owners table in
[Page Kinds](Page-Kinds.md) reflect the decisions.

## 1. Chart of accounts: extract or keep in place?

The ~100-row GIFI chart is the repo's largest reference artifact, currently fused with the
accounting textbook material in
[Ledger-And-Accounts](../../guide/Bookkeeping/Ledger-And-Accounts.md) (416 lines).

- *Option A — extract* a `Chart-Of-Accounts.md` reference page beside it; Ledger-And-Accounts
  stays a concept page and links
- *Option B — keep in place*, treating Ledger-And-Accounts as a sanctioned concept+reference
  hybrid with the chart in a clearly bounded section

*Recommendation*: Option A. The chart is consulted mid-task from all over the guide; a dedicated
reference page gives it a stable link target and a place for the excerpt rule to point, and the
concept half reads better without a hundred table rows in the middle. Cost: one split, link
rewrites, one new in-review page.

*Decision (2026-08-16)*: Option A — extract `Chart-Of-Accounts.md`.

## 2. Canonical home for the filing and payment calendar

Deadline material is split across Concept-Map, Small-Business-Tax,
[Payment](../../guide/Filing-And-CRA/Payment/Payment.md), and CRA-Administration.

- *Option A — Payment.md owns it*: due dates and remittance cadence already live there
- *Option B — a new `Filing-And-CRA/Deadlines.md` reference page*: one calendar covering T2, HST,
  payroll, T5, and instalments, with Payment keeping the how-to-pay mechanics

*Recommendation*: Option B. Payment is a task page (how to pay); the calendar is reference
consulted independently of paying (what is due when). A single dated-basis calendar page also
gives Concept-Map's visual something clean to link to.

*Decision (2026-08-16)*: Option B — create `Filing-And-CRA/Deadlines.md`.

## 3. T3 per-box split

T3.md's own TODO floats splitting into one page per box (two box sub-pages already exist).

*Recommendation*: defer. Phase 2's slip-page reordering fixes the mode-mixing the TODO actually
complains about; per-box pages are a granularity call, not a Diátaxis call, and each new sub-page
multiplies the review surface of a signed-off cluster.

*Decision (2026-08-16)*: split now, against the recommendation — Phase 2 executes the per-box
split alongside the slip-page reordering; each new sub-page starts in review with a `†` entry.

## 4. Sign-off carryover on pure moves

When text is cut verbatim from a signed-off page into a new page (e.g. the chart-of-accounts
extraction — though Ledger-And-Accounts itself is currently in review), does the new page inherit
sign-off?

*Recommendation*: no inheritance by default — the maintainer reviewed the page as a whole, not
the fragment in its new context; a pure-move page starts in review but should be quick to promote.
The maintainer may rule otherwise case by case.

*Decision (2026-08-16)*: no inheritance by default.

## 5. Quick Method rate matrix

HST-Quick-Method's TODO asks whether to reproduce the full RC4058 remittance-rate matrix inline.

*Recommendation*: no. The guide's frame is one known situation (Ontario, service business); the
page states the applicable rates with their as-of basis and cites RC4058 for the matrix.
Reproducing the matrix imports maintenance burden for rows the audience never uses — reference
should mirror the reader's working set, not the form.

*Decision (2026-08-16)*: cite only; no inline matrix.

## 6. Validator support for single-sourcing

Two mechanical checks would keep Phase 1's gains from eroding:

- GIFI excerpt consistency: every account code/name pair appearing in a slip page's account tree
  must match the master chart
- Canonical-figure watch: flag guide pages (outside dated example blocks) that state figures
  registered to another owner page — even a keyword-level heuristic (e.g. "8.8%", "gross-up")
  would catch most drift

*Recommendation*: add the GIFI check to `scripts/Validate-Docs.ps1` (well-defined, low
false-positive); treat the figure watch as a nice-to-have — a heuristic list needs curating and
may not pay for itself at this repo's size.

*Decision (2026-08-16)*: GIFI check only.

## 7. Tutorials: invest or skip?

The tutorial quadrant is empty and the audience is a practitioner, not a student
([Page Kinds — Tutorial](Page-Kinds.md#tutorial)).

*Recommendation*: skip for now; revisit after Phase 3. If the Investments end-to-end example gets
written anyway (its TODO wants one), writing it *as* a tutorial costs little extra and fills the
quadrant with the one artifact a newcomer would actually study.

*Decision (2026-08-16)*: skip for now; revisit after Phase 3.

## 8. Concept-Map's reference matrices

The event → pool effects matrix and the balance-movement matrix live only on
[Concept-Map](../../guide/Overview/Concept-Map.md), a signed-off orientation page.

- *Option A — leave them*: they are arguably orientation views, and the page is the guide's
  "start here"
- *Option B — give them owner pages* (the pool matrix naturally belongs near
  Tax-Integration/Dividends territory; the balance-movement matrix near the tracking pages) and
  keep simplified views on Concept-Map

*Recommendation*: Option A for now. Both matrices synthesize across many pages — synthesis across
topics is exactly what an orientation page is for, and no other single page is a natural owner.
Revisit only if a second consumer needs to link to them as reference.

*Decision (2026-08-16)*: Option A — leave them on Concept-Map.
