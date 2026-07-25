# Coverage Review — 2026-07-25 (Fable-5-high)

**Date**: 2026-07-25

**Scope**: independent review of
[`2026-07-25_Coverage_Opus-5-xhigh.md`](2026-07-25_Coverage_Opus-5-xhigh.md) (15 gaps in three
tiers, 7 thin items, 6 boundary candidates, a disposition of the 2026-07-01 review) — the coverage
analogue of an Audit-Review: are its gaps real, are its statutory characterizations faithful, do its
repo-claims reproduce, and did it miss gaps of its own. Run by a different model than the one that
produced it. Read-only; no `guide/` page is touched.

**Method**: every "appears nowhere / appears N times" claim was reproduced by grep and then
context-read; every anchor and relative link was resolved against the tree; the tallies and the
disposition table were recomputed. Eleven provisions were re-pulled live from `laws-lois.justice.gc.ca`
and compared against the pass's text and its `audit/wip/citations.md` trail (ITA s.18(9), s.53(2)(k),
s.150(1.3)/(1.31)(a), s.249.1(7); Reg 238; ETA s.221(2), s.228(4), s.211.1, s.232; CBCA s.21.1,
s.21.21); the post-cutoff bare-trust dates were re-checked on the open web. An independent gap sweep
ran roughly twenty candidates of my own; the survivors are the NG findings, and the candidates that
died are recorded so the next pass does not re-run them. The trail is in
`audit/wip/review-citations.md`; the pass's own wip files were kept in place, since this cycle is
still open.


## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

Findings on the Coverage document carry a severity from this legend; net-new gaps carry tier and
placement in the Coverage pass's own format so they merge into the cycle's work queue.


## TL;DR

- **Accept the Coverage pass.** All 15 gaps are real, the tiering is sensible, the boundary stance is
  correctly applied, and the disposition of the 2026-07-01 review checks out row by row. Every
  statute I re-pulled supports the finding it grounds, the bare-trust dates corroborate on the open
  web, and of roughly thirty grep-claims, all but one reproduce exactly
- **One finding fails reproduction**: X-7 says the FX and GST/HST Glossary term batches "are still
  absent" — the FX batch is in fact substantially present (BoC, functional currency, FX gain/loss
  with income/capital character, monetary item, Norbert's Gambit are all entries), and "trial
  balance", which X-7 proposes adding, is already an entry (CR-1)
- **Seven smaller defects**: a citation that bundles the T5018 deadline into the wrong subsection,
  a miscount of the pass's own verification trail, three findings that miss existing passing mentions
  contrary to the pass's stated method, an incomplete s.18(9) category list, and the
  Coverage/Coverage-Review pass-type naming drift (fixed at this review's closeout)
- **Two of the pass's three unverified items now close affirmatively**: ITA s.53(2)(k) is the ACB
  analogue G-5 hoped for, and Reg 238(3) does let a T5018 filer elect a fiscal-period reporting
  period. OBCA s.140.2 stays unverified (Ontario e-Laws is unfetchable)
- **Net-new: one real gap and three smaller extensions.** The guide covers renting out property but
  not buying it: on a taxable purchase of real property by a registrant, the vendor does not collect
  and the purchaser must self-assess (ETA s.221(2), s.228(4)) — directly adjacent to the co-owned
  property case the guide already works (NG-1). Plus the non-resident-contractor branch of G-4, the
  ABIL branch of G-13, and the s.20(10) convention limit (NG-2 to NG-4)


## What was verified independently vs taken on the pass's sources

Re-checked against a primary source or reproduced by me:

- **Grep-claims** — all reproduced except X-7 (see CR-1): bank reconciliation nowhere; "credit card"
  exactly once (`Foreign-Currency.md:87`); T5018 zero; T4A three, never procedural; "credit note",
  "worthless", "bankrupt", "annual resolution", s.12(4)/s.12(11), "T2 Short", "Schedule 140", petty
  cash — all nowhere; `9990` posted in two pages and absent from the `Ledger-And-Accounts.md` chart;
  `1484`/`8242`/`8871` in the chart; the Payment.md dangling "canonical page" reference at
  `Payment.md:16`
- **Structural claims**: 71 guide pages, README carries 71 `guide/` links, and the set-diff is empty
  — "no drift in either direction" holds; the Glossary has exactly 75 top-level entries; the eight
  pages without the header block are precisely the six `Foreign-Currency/` sub-pages, `Glossary.md`,
  and `Payment.md`, as X-1 characterizes; every section anchor the pass links resolves (twelve
  checked, including `#interest---box-13` and `#co-owned-and-mixed-use-property`)
- **Statutes** (laws-lois, live): ITA s.150(1.3)/(1.31)(a) and the page's currency note; ITA s.18(9);
  s.249.1(7) (quote is verbatim); s.53(2)(k); Reg 238 in full; ETA s.232 (both time limits and the
  credit-note mechanics); ETA s.211.1 (the definition wording matches); ETA s.221(2)/s.228(4) (for
  NG-1); CBCA s.21.1 (exemptions are s.21.1(7): reporting issuers, listed, prescribed classes) and
  s.21.21 (annual send on the Director's schedule + 15 days after a recorded change)
- **Post-cutoff facts** (open web): bare trusts relieved for 2023–2025; filings resume for tax years
  ending on or after 2026-12-31, first returns due 2027-03-31 — G-11's dates hold. The carve-outs
  include a small-value exemption (all assets ≤ $50,000 FMV throughout the year) worth naming in the
  G-11 must-cover
- **Disposition table**: each "landed" row traced to its page; section headings confirm the claimed
  content for `Payroll.md` (including s.78(4) at :214), `T1135.md`, `Losses.md` (S4 continuity and
  carryback), `CRA-Administration.md` (all seven claimed sections plus records retention),
  `Starting-Up.md`, `Winding-Down.md`, `Owner-Corporation-Transactions.md#employee-benefits`,
  `T2-Schedules.md`, and the four `Further-Reading.md` entries

Taken on the pass's trail without a fresh pull (consistent with reviewer knowledge): ITA s.12(1)(x),
s.13(7.1), s.50(1), s.227.1; ETA s.323 — long-standing provisions whose characterizations match the
`citations.md` trail. Listed under [Residual verification debt](#residual-verification-debt).


## Findings on the Coverage document

### [MEDIUM] CR-1 X-7 fails reproduction: the Glossary batches are substantially present

X-7 claims "The FX and GST/HST batches named in the `Foreign-Currency.md` and `HST.md` TODOs are
still absent from the 75-entry Glossary" and proposes "adding G-1's vocabulary (reconciling item,
adjusting entry, closing entry, trial balance)".

Against the `Foreign-Currency.md` TODO's own term list, the Glossary already carries: *BoC* (:37),
*Functional currency* (:88), *FX gain/loss* with the income-account/capital-account character split
(:92–98), *Monetary item* with the non-monetary contrast (:131–135), and *Norbert's Gambit* (:141).
From the GST/HST side it carries *HST*, *ITC* (:117), and *Tax point* (:200). And *Trial balance* is
already an entry. Still genuinely absent: multi-currency bookkeeping convention, FX trading account,
journal (broker), settlement-date rate, realized/unrealized FX as named terms, and the HST batch's
zero-rated, exempt, place of supply, registrant, small supplier, Quick Method, and net tax.

The defect that survives verification is nearly the inverse of the finding: the `Foreign-Currency.md`
TODO batch is largely *delivered* and the TODO went unpruned. X-7 appears to have repeated the page
TODOs (and the 2026-07-01 review's item) without checking the current Glossary — the same
trust-the-prior-document failure the pass's own method section warns about.

- *Fix*: restate X-7 as two smaller items — prune the stale FX-batch TODO lines in
  `Foreign-Currency.md`, and add the genuinely missing terms (mostly the GST/HST batch plus G-1's
  reconciling item, adjusting entry, closing entry — not trial balance)

### [LOW] CR-2 G-4 cites the T5018 deadline against the wrong subsection

G-4: "Income Tax Regulations s.238(2) requires an information return … filed within six months after
the end of the reporting period." Re-pulled live: 238(2) imposes the duty with the "derived
primarily" trigger, 238(3) sets the calendar-or-fiscal reporting-period choice, and the six-month
deadline is 238(4). The substance is right; the repo's citation discipline is exact attribution, and
the page that gets written from this finding should cite 238(2) for the duty and 238(4) for the
deadline. (238(5)'s three exceptions — goods for sale or lease, s.212 amounts, services rendered
outside Canada by non-residents — are also worth the new page's attention.)

### [LOW] CR-3 The verification-trail count is wrong

"Notes and raw observations": "eleven provisions were pulled from `laws-lois` before their findings
were written; the trail is in `audit/wip/citations.md`." The trail lists thirteen provision rows
pulled from laws-lois (plus the secondary-source bare-trust row) — the pass's own method section
counts the CBCA as a laws-lois source, so the two CBCA rows belong in the count. A miscount in a
self-describing tally is the class of error the audit playbook says to flag.

### [LOW] CR-4 G-9 misses an existing passing mention of s.249.1(7)

The findings preamble promises "passing mentions are named where they exist." G-9 ("Changing the
fiscal year-end … the guide does not answer it") names none, but `Starting-Up.md:67` states "After
that it is fixed; a change needs CRA's concurrence (s.249.1(7))", and the page's citations list the
subsection. The gap is real — the request mechanics and the short-year knock-ons are worked nowhere —
but the finding overstates the absence, and the existing line is itself the argument for G-9's first
placement option (a subsection under `Starting-Up.md#choosing-the-fiscal-year-end`).

### [LOW] CR-5 G-13 misses an existing passing mention of s.50(1)

Same defect: `Receivables-And-Bad-Debts.md:25` ("Writing off a *loan* or advance is a capital matter
(ITA s.50(1)) with different mechanics and is out of scope") and its citation at :146 already name
the election as the declared out-of-scope contrast. G-13's literal claim ("worthless" and "bankrupt"
appear nowhere) is true, but the s.50(1) hook exists — and the new `Losses.md` section should be
cross-linked *from* `Receivables-And-Bad-Debts.md`, which currently points readers at s.50(1) with
nowhere to go.

### [LOW] CR-6 B-4 misses the s.22 mention in Estate-Freeze

B-4 says the s.22 receivables election is "absent"; `Estate-Freeze.md:73` mentions it in passing
("Receivables usually pass at face with a joint s.22 election, which preserves the corporation's
bad-debt deductions"). A boundary log, so the stakes are low, but the mention exists and the same
naming rule applies.

### [LOW] CR-7 G-3's s.18(9) paraphrase drops the fourth category

G-3 describes s.18(9) as denying deductions for services, interest/taxes/rent/royalties, and
insurance for a later period. The provision has a fourth branch — consideration for a *designated
employee benefit* to be provided after year-end — which the pass's own `citations.md` row records but
the deliverable's sentence omits. Presented as a statutory paraphrase, the list reads as exhaustive;
and the omitted branch is the one that reaches a PHSP premium, which this audience actually pays.
Add it to G-3's must-cover.

### [LOW] CR-8 Pass-type naming drift: `_Coverage_` vs "Coverage-Review"

The file is named `2026-07-25_Coverage_Opus-5-xhigh.md`, its title is "Coverage Review", and the
`Audit-Summary.md` History line labels it "Coverage-Review" — while the summary's pass-type legend
defines *Coverage-Review* as the gap pass itself (the sense the 2026-07-01 file used). With this
review joining the cycle, the two senses collide. Resolved at this review's closeout: the legend
gains a *Coverage* type (the gap pass) and *Coverage-Review* becomes the independent check of a
coverage pass, mirroring *Audit* / *Audit-Review*; the 2026-07-25 History line is relabelled
"Coverage".


## Net-new gaps

In the Coverage pass's format — tier, then placement. One real gap; three extensions to findings the
pass already carries.

### NG-1 Buying real property: the s.221(2)/s.228(4) self-assessment (Tier 2)

[Rental and Property Income](../../guide/Operations/Rental-And-Property-Income.md#hst) works the
*operating* side — commercial rent taxable, residential exempt, ITC apportionment — and flags
self-supply and change-in-use as professional-advice territory. The *acquisition* event is absent,
and it is the one HST event on real property that is not intuitive: on a taxable sale of real
property to a registrant recipient, ETA
[s.221(2)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-221.html) relieves the vendor from
collecting (with individual-recipient carve-outs), and ETA
[s.228(4)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-228.html) makes the purchaser
self-assess — in its regular return where the property is acquired primarily for commercial
activities (where the offsetting ITC usually nets the cash to zero), otherwise on a prescribed
return due by the end of the following month. Both provisions were pulled live for this review. A
corporation buying its premises, or the co-ownership case the page already works (a corporation and
its owners on title together, where the corporation is a registrant and the individuals may not be),
meets this at closing, and getting it backwards means paying tax to a vendor who should not collect
it, or missing a return with interest running.

- *Placement*: a `## Buying the Property` subsection under `Rental-And-Property-Income.md#hst`, or a
  section on `HST-Regular-Method.md` cross-linked from there
- *Must cover*: when the vendor does not collect; who self-assesses on which return (regular GST34
  line versus the prescribed GST60 route) and the deadlines; the commercial-use ITC offset that
  makes the common case cash-neutral; the co-ownership wrinkle where registrant and non-registrant
  purchasers share title; and the residential-complex exception
- *Note*: the existing self-supply/change-in-use deferral stands; this is the purchase event only

### NG-2 The non-resident contractor branch of G-4 (extension)

G-4's new page covers paying contractors through the T4A and T5018. The non-resident case is a third
branch with opposite traps: Reg 105 imposes a 15% withholding on fees for services rendered *in
Canada* by a non-resident (reported on a T4A-NR), and — the half this audience actually meets — a
remote US freelancer working from outside Canada triggers neither the withholding nor the slip.
Owners either withhold wrongly or worry needlessly; one bullet pair on the G-4 page settles it, with
the full non-resident regime staying behind the declared cross-border boundary.

- *Placement*: a short subsection on the G-4 page (`Paying-Contractors.md`), plus a
  `Further-Reading.md` line beside the existing cross-border entries
- *Verify first*: Reg 105(1) and the T4A-NR trigger — not pulled during this review

### NG-3 The ABIL branch of G-13 (extension)

G-13's scenario — shares or debt of a private corporation gone bad — is precisely where the loss may
not be an ordinary capital loss at all: where the issuer is a small business corporation, s.39(1)(c)
makes it a *business investment loss*, deductible against any income source rather than only against
capital gains. The s.50(1) election G-13 works is the same gateway for both characterizations, so the
new `Losses.md` section should decide the character question, not just the timing one.

- *Placement*: inside G-13's planned `## Worthless Shares and Bad Debts` section
- *Verify first*: the s.39(1)(c) conditions and the ABIL interaction with the CDA and the
  capital-loss continuity — none pulled during this review

### NG-4 Convention and conference expenses (thin)

`9201` Meetings and conventions sits in both chart tables
(`Expense-Classification.md:90`, `Ledger-And-Accounts.md:327`) with no rule behind it — the
account-without-treatment pattern the pass itself named. ITA s.20(10) allows the cost of attending at
most two conventions a year, subject to a territorial-scope condition, and nothing in the guide says
so. Small, but a consulting CCPC attending conferences posts to this account every year.

- *Placement*: a short item under `Expense-Classification.md`'s operating-expense reference, or a row
  in its reference table's notes
- *Verify first*: s.20(10) — not pulled during this review


## The pass's three unverified items

The Coverage flagged three claims it could not verify. This review closes two:

- **ITA s.53(2)(k) — confirmed** (pulled live): government assistance reduces the ACB of
  non-depreciable property — "grant, subsidy, forgivable loan, deduction from tax … investment
  allowance or … any other form of assistance", net of repayments, with exclusions including
  s.12(1)(x)-adjacent amounts. G-5's must-cover can assert it, citing s.53(2)(k) directly
- **T5018 fiscal-period election — confirmed** (pulled live): Reg 238(3) lets the filer report on a
  calendar-year or fiscal-period basis, binding once chosen absent ministerial authorization
- **OBCA s.140.2 — still unverified**: Ontario's e-Laws serves a script shell to headless fetchers,
  matching the known 403-wall pattern. This reviewer's knowledge says Ontario requires *maintaining*
  the transparency register and producing it on request, with no annual provincial filing — the
  opposite emphasis from the CBCA — but that must not be asserted in the guide without pulling the
  statute or a firm summary of it


## What was NOT flagged

Candidates this review checked and cleared, so the next pass does not re-litigate them.

Gap candidates of my own that died on inspection:

- **GST/HST instalments are covered** — `HST-Registration-And-Filing.md:144` (annual filers, $3,000
  net-tax threshold, quarterly, ETA s.237 cited) and `HST.md:27`; the duty-calendar frame held
- **TX19 clearance certificate is covered** — `Winding-Down.md` works it in the sequence, the
  timing rule, and the worked example
- **My Business Account and representative authorization are covered** — `Starting-Up.md:60`
  (register early), `CRA-Administration.md:153` (authorizing a representative)
- **s.15(1) shareholder benefits are covered** — `Owner-Corporation-Transactions.md:35,190` and the
  Concept-Map entry
- **Arrears interest and penalties non-deductibility is covered** — s.18(1)(t) at
  `CRA-Administration.md:90` and `Debt-And-Financing.md:45` with the Schedule 1 add-back
- **Vehicle leasing is covered** — lease payments among operating costs and the two-thirds standby
  reduction for leased cars (`Owner-Corporation-Transactions.md:98,125`)
- **Club dues (s.18(1)(l)), political contributions, sponsorship-vs-donation, spin-offs, CPP2,
  zero-emission vehicle classes, crypto** — each covered or deliberately touched where it belongs
  (`Owner-Corporation-Transactions.md:283`, `Donations.md:19,111,54`,
  `Adjusted-Cost-Base-Tracking.md:206`, `Payroll.md:90`, `CCA-Classification.md:49–50,90`,
  `T1135.md:70` with a sign-off TODO)
- **Functional currency (s.261) and acquisition-of-control loss streaming (s.111(4)–(5.5))** —
  declared out of scope in place (`Foreign-Currency.md:28`, `Losses.md:22`); LCGE/QSBC oriented in
  `Asset-vs-Share.md:87` with professional-advice framing; Record of Employment belongs to B-1's
  first-employee boundary, where the pass already logged it

Claims of the pass that reproduce and need no re-check: the severity legend is verbatim; the tier
arithmetic (4+6+5, 7 thin, 6 boundary) and the "14 of 14" disposition all recount correctly; the
"two thin items re-raised" sentence is consistent read as instalment computation plus the Payment
page; the four construction out-of-scope declarations and their absence from `Further-Reading.md`
hold; the G-2 hub quotation is verbatim at `Paying-Yourself.md:20`; the G-6 deposit-forfeiture TODO,
the G-10 single wind-up mention, and the S23 / ETA s.156 / T2200 / s.78(4) / registry-return
clearances all check out. The pass's style is clean against the repo conventions (no americanisms,
labelled bullets take colons, noun-phrase headings).


## Residual verification debt

- ITA s.12(1)(x), s.13(7.1), s.50(1), s.227.1 and ETA s.323: taken on the pass's trail plus reviewer
  knowledge, not re-pulled — five of the pass's thirteen laws-lois pulls were trusted rather than
  reproduced
- OBCA s.140.2: unverifiable by fetch from either pass; needs a maintainer-side pull or a firm
  summary before G-8's Ontario paragraph is written
- Reg 105 / T4A-NR (NG-2), ITA s.20(10) (NG-4), s.39(1)(c) and its CDA interaction (NG-3): raised
  here with verify-first flags, deliberately not asserted as statutory paraphrase
- The bare-trust dates rest on corroborating secondary sources plus the amended s.150 text; the
  pass's own instruction stands — re-pull the status at writing time, since the rule has been
  deferred three times before
