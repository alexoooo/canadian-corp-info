# Documentation Audit — Follow-up

**Date**: 2026-06-11
**Scope**: Verify that the fixes for every finding in the 2026-06-10 audit at
[2026-06-10_Audit_Fable-5-high.md](2026-06-10_Audit_Fable-5-high.md) landed correctly in the
current source, and independently re-verify the load-bearing factual claims behind those fixes
(ITA/ETA sections, Regulations, the rounding rule, the IT-102R2 / *CAE Inc* positions) against
primary sources rather than trusting the prior pass. A fresh-eyes pass over the changed text is
included to catch anything the fixes introduced. This is a targeted resolution-and-verification
follow-up, not a fresh full-content read.
**Method**: The fixes are present in the working tree (uncommitted) across the Cost-Recovery
cluster, `HST.md`, `Glossary.md`, `T5008.md`, `Whole-Dollar-Rounding.md`, and `README.md`; each was
diffed line-by-line against its finding code. Every finding was traced to its current line(s), and
the factual claim re-checked against the primary source. Statutes verified by direct fetch from
laws-lois.justice.gc.ca: ITA s.10(2)/(2.1), s.13(7)/(27)/(28), s.20(16.1), s.117.1(3); ETA s.199,
s.200; Regulation 1100(2) (element F). The IT-102R2 administrative position and the *CAE Inc*
(2013 FCA 92) reading were confirmed through the search index (canada.ca and CanLII return 403 to
headless fetchers). Repo-wide greps confirmed no stale instances survive in any `guide/` page.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

- **All 21 findings** from the 2026-06-10 audit are resolved in the current source, including the
  **CRITICAL** change-of-use re-grounding (CR-4) and the **HIGH** anti-replacement terminal-loss
  fix (CCA-5). No exceptions.
- Every load-bearing factual claim behind the fixes was independently re-verified against primary
  sources and held up: the s.13(27)(b)/(28)(c) "beginning of the year" timing and buildings limb,
  the narrow s.20(16.1)(b) former-property rule, s.10(2) continuity vs s.10(2.1) method-consistency,
  s.117.1(3) round-half-up, ETA s.199(3)/s.200(2) for capital personal property, and Regulation
  1100(2) element F leaving Class 12 software subject to the half-year rule. The IT-102R2 /
  *CAE Inc* framing the CR-4 rewrite adopts is correct (CRA treats *CAE* as obiter and assesses on
  IT-102R2/IT-218R).
- **No regressions.** No new broken links or anchors (the three `\[done]`-anchor fixes resolve;
  `#change-of-use` and `#capital-purchases` are intact); both change-of-use edges survive the
  Mermaid label edit; the rebuilt CR-10 worked example ties out to the dollar.
- **Two new findings**, both introduced by otherwise-correct fixes: **NEW-1 (MEDIUM)** — the CR-8
  fix coins "CAD" for the *Commercial Accounting Declaration* on a page that already uses "CAD" for
  Canadian dollars; **NEW-2 (LOW)** — the R-3 README entry capitalizes "And" against the index's
  lowercase-"and" convention.
- **One process observation (O-1):** the 2026-06-10 audit file was itself edited in the working
  tree (67 lines) alongside the fixes; the edits are improvements and one corrected a factual error
  in the audit (CR-12's non-existent T4A "box 283"), but revising a committed audit deviates from
  the read-only-record convention. The audit's TL;DR severity count is accurate this cycle.

---

## Disposition of the 2026-06-10 findings

| Finding | Sev | Status | Verified against |
|---|---|---|---|
| **R-3** `Ledger-And-Accounts.md` absent from README | MEDIUM | resolved — added under *Work in progress → Page stubs* (`README.md:44`). See NEW-2 on the link-text casing | README index vs `guide/` files |
| **R-4** Three anchors broken by the `\[done]` tag | MEDIUM | resolved — `Cost-Recovery.md:55`, `Capital-Cost-Allowance.md:167`, `Inventory-And-COGS.md:116` now point to `#acquisition-cost-what-gets-capitalized-done`; grep finds no un-suffixed target left | GitHub heading-anchor rendering |
| **CR-4** Inventory↔fixed-asset conversion on wrong provisions/mechanics | CRITICAL | resolved — `Cost-Recovery.md` *Change of use* rewritten to lead with IT-102R2 (re-classification; inventory value as capital cost; gain measured at conversion, recognized on sale); s.45/s.13(7) kept for income↔personal; *CAE Inc* tension flagged; echoes on `Inventory-And-COGS.md:62` and `Materials-And-CIP.md:59-62` and the TLDR (`:16`) match; citations re-pointed (IT-102R2, IT-218R, *CAE Inc*) | ITA s.45(1), s.13(7) (fetched); IT-102R2 para 8 and *CAE Inc 2013 FCA 92* (search index) |
| **CR-5** Four s.10 subsections mis-attributed | MEDIUM | resolved — commodity pools → Reg 1801 (`:21/:411`); WIP → s.10(5)(a) with s.10(4)(a) for FMV (`:22/:404`); dealer inventory → s.142.5 (`:411`); art rule → s.10(6) (`:414`); `Cost-Recovery.md:21` WIP → s.10(5)(a) | ITA s.10(5)(a)/(6)/(11)/(15) (fetched) |
| **CR-6** s.10(2) over-attributed | MEDIUM | resolved — write-down recovery reframed as re-applied s.10(1) at year-end (`Inventory-And-COGS.md:97/:261`, `Cost-Recovery.md:250`); method consistency → s.10(2.1) (`:14/:78/:101`, `Cost-Recovery.md:67`); at-sale reversal rewritten as a year-end event (`:357`); citations gloss split s.10(2) continuity vs s.10(2.1) (`:436`) | ITA s.10(2) (continuity), s.10(2.1) (method + Minister's concurrence) (fetched) |
| **CR-7** ETA s.206 cited for capital *personal* property | MEDIUM | resolved — `Cost-Recovery.md:230`, `Materials-And-CIP.md:62`, `HST.md:175/:257` re-pointed to s.199(3)/s.200(2); s.206 retained for capital *real* property with the 10%–90% proration; citations updated (`HST.md:439-442`) | ETA s.199(3) (deemed acquisition), s.200(2) (deemed sale); s.206 real property (fetched) |
| **CR-8** Import accounting on retired Form B3 | MEDIUM | resolved — `Inventory-And-COGS.md:148` and `HST.md:235/:245` now name the Commercial Accounting Declaration (CARM, Oct 2024; Customs Notice 24-29 added to citations). See NEW-1 on the "CAD" abbreviation | CBSA Customs Notice 24-29 (search index) |
| **CR-9** Available-for-use time point + buildings limb | MEDIUM | resolved — "beginning of the second tax year after the acquisition year" on all three pages (`Cost-Recovery.md:199`, `Capital-Cost-Allowance.md:144`, `Materials-And-CIP.md:54`); buildings s.13(28)(c) limb added (`Cost-Recovery.md:204`, `Capital-Cost-Allowance.md:149`) | ITA s.13(27)(b), s.13(28)(c) (fetched verbatim) |
| **CR-10** Example 1 write-down pool drift | LOW | resolved — write-down rebuilt as $3,813.34 − (88 × $30.00) = $1,173.34; closing $2,640.00; COGS $10,160.00; year-2 figure agrees | recomputed end-to-end |
| **CR-11** "either terms" + over-broad CRA-vocabulary claim | LOW | resolved — `Cost-Recovery.md:76` rewritten: the T2 deduction is CCA, the GIFI income statement keeps `Amortization of tangible assets` (8670) | GIFI line 8670 (RC4088, prior cycles) |
| **CR-12** Shareholder appropriation pointed at wrong slips | LOW | resolved — `Inventory-And-COGS.md:399` now reports on T4A code 028 (Other income), or T4 if qua employee; T5 removed | T4A code 028; see O-1 on the audit's own correction here |
| **CCA-5** Non-existent general 24-month anti-replacement rule | HIGH | resolved — `Capital-Cost-Allowance.md:196` rewritten to the narrow s.13(4.3)/(4)/(4.2) former-property rule with an explicit "not a general bar" sentence; citations gloss corrected (`:443`) | ITA s.20(16.1)(b) (fetched verbatim) |
| **CCA-6** Class 12 software wrongly exempt from half-year | MEDIUM | resolved — `:52`, `:202` add application software and films to the half-year list; the `:293` example states software is subject to the half-year rule with the AIIP suspension noted for 2026 | Regulation 1100(2) element F (fetched) |
| **CCA-7** Example 2 long-tail figures off-schedule | LOW | resolved — `:368` now reads ~$664 (year 5) / ~$217 (year 10), matching the example's own $1,620 year-1 close | $1,620 × 0.8⁴ = $663.55; × 0.8⁹ = $217.43 |
| **CCA-8** Reg 1101(1af) mislabelled an election | LOW | resolved — citations now read "separate class prescribed for each Class 10.1 vehicle" (`:453`) | Regulation 1101(1af) (prior cycle, verbatim) |
| **CCA-9** Heading "Edge cases worth a short note" | LOW | resolved — renamed `## Edge cases` (`:414`) | AGENTS.md heading style |
| **HST-4** Stale `$30`/`$150` citation gloss | MEDIUM | resolved — `HST.md:458` now reads "$100 and $500 thresholds" | Input Tax Credit Information (GST/HST) Regulations, Budget 2021 (prior cycle) |
| **WDR-1** False banker's-rounding example | MEDIUM | resolved — sentence rewritten so bracket indexation is round-half-up (s.117.1(3) cited inline and in Citations) (`Whole-Dollar-Rounding.md:50/:122`) | ITA s.117.1(3) (fetched verbatim) |
| **WDR-2** Two blank lines after the STATUS marker | LOW | resolved — one blank line on both `Whole-Dollar-Rounding.md:1-2` and `HST.md:1-2` | AGENTS.md page-shape rule |
| **GL-2** "FMV sets the write-down ceiling" | LOW | resolved — Glossary FMV entry now "the value an inventory item is written down to when FMV falls below cost" (`Glossary.md:24`) | reads against `Inventory-And-COGS.md` LCM section |
| **T5-1** "capitalised" | LOW | resolved — `T5008.md:83` now "capitalized"; grep finds no other `-ised` spelling in `guide/` | repo `-ize` convention |

---

## Independent verification detail

Re-checked from primary sources rather than trusting the prior pass:

- **s.13(27)(b) and s.13(28)(c) (CR-9)** — s.13(27)(b) deems a non-building available "at the time
  that is immediately after the **beginning** of the first taxation year of the taxpayer that
  begins more than 357 days after the end of the taxation year … in which the property was
  acquired"; s.13(28) carries paragraphs (a)–(e), and (c) is the identical 357-day rolling rule for
  buildings. The corrected time point and the added buildings limb are both right.
- **s.20(16.1)(b) (CCA-5)** — denies the terminal loss only "in respect of a property that was a
  former property deemed by paragraph 13(4.3)(a) or (b) to be owned by the taxpayer", with a
  *similar* property acquired within 24 months "in respect of the same fixed place" and still owned
  at year-end. It is not a general same-class bar; the rewrite's "narrow rule … not a general bar"
  framing is accurate. Paragraph (c) is the Class 14.1 cessation exception, as the page states.
- **s.10(2) vs s.10(2.1) (CR-6)** — s.10(2) is the continuity rule ("the inventory at the
  commencement of the year shall be valued at the same amount as … the end of the preceding
  taxation year"); s.10(2.1) is the same-method requirement and the provision requiring the
  Minister's concurrence to change methods. The fix puts continuity on s.10(2) and consistency on
  s.10(2.1) throughout.
- **s.10(5)(a)/(6)/(11)/(15) (CR-5)** — s.10(5)(a) makes professional WIP inventory; s.10(6) is the
  artistic-endeavour election (individuals); s.10(11) is the loss-restriction adventure-deeming
  rule; s.10(15) excludes derivatives from inventory. Each re-attribution is correct, and dealer
  mark-to-market correctly moved to s.142.5.
- **s.117.1(3) (WDR-1)** — indexed amounts are "rounded to the nearest multiple of one dollar or,
  where it is equidistant from two such consecutive multiples, to the **higher** thereof": round
  half up, no banker's rounding. The corrected example and the new citation are right.
- **ETA s.199(3) / s.200(2) (CR-7)** — s.199(3) deems a registrant that begins to use capital
  personal property primarily in commercial activities to have received a supply by sale (deemed
  acquisition → ITC); s.200(2) deems a registrant that ceases such use to have made a supply by
  sale and collected tax equal to the basic tax content (deemed sale → claw-back). Both are
  distinct from s.206, which governs capital *real* property. The page's "proportional to the
  residual fair-market value" gloss is an acceptable description of basic tax content.
- **Regulation 1100(2) element F (CCA-6)** — element F excludes from the half-year adjustment only
  Class 12 paragraphs (a)–(c), (e)–(i), (k), (l), and (p)–(s); paragraph (o) computer software is
  **not** excluded and is therefore subject to the half-year rule (as are (d), (j), and the film
  items). The corrected example and bullets are right; the AIIP suspension makes the 2026 outcome
  100% as the example shows.
- **IT-102R2 and *CAE Inc* (CR-4)** — IT-102R2 ("Conversion of property, other than real property,
  from or to inventory") references s.9, s.45, s.13(7), s.248(1), and paragraphs 13(21)(c)/54;
  its position is that conversion is not a disposition, with inventory→capital taking inventory
  value and capital→inventory setting the opening inventory value at FMV on the conversion date
  (gain recognized on actual sale). In *CAE Inc* (2013 FCA 92) the Federal Court of Appeal read the
  change-of-use rules to apply to such a conversion as a deemed disposition; CRA has stated it
  treats those comments as obiter and continues to apply IT-102R2 / IT-218R. The rewrite follows
  IT-102R2 and flags the *CAE* tension — exactly the posture the source record supports.

---

## Observations on the prior audit

The 2026-06-10 audit was strong: the CR-4 CRITICAL was correctly the single load-bearing finding,
its severity count is accurate (1 CRITICAL / 1 HIGH / 10 MEDIUM / 9 LOW = 21, matching the body,
unlike the 2026-05-28 pass's miscount), and every claim re-checked here survived. One process note:

### O-1 The audit file was revised in the working tree

`audit/2026-06-10_Audit_Fable-5-high.md` carries 67 changed lines in the same uncommitted working
tree as the fixes. AGENTS.md treats an audit as an immutable read-only record, with fixes landing
in separate commits so the audit and the response stay separable in git history; the closeout step
expects a delivered audit to be untouched afterward. The revisions here are all improvements — they
sharpen CR-4's *CAE Inc* nuance (the version verified above), retitle CR-6 to name the s.10(2)
over-attribution, and broaden WDR-2 to both `Whole-Dollar-Rounding.md` and `HST.md`. One of them
**corrected a factual error in the audit itself**: CR-12 originally pointed the appropriation
benefit at a non-existent T4A "box 283", and now reads "code 028 (Other income)", which is what the
fix implemented (T4A code 028 is the correct slip box for an other-income shareholder benefit). The
correction is right; the only note is that editing a committed audit in place, rather than recording
the correction in this follow-up, departs from the immutable-record convention. If the cycle is
re-run cleanly, the audit and its fixes should land as two separate commits.

---

## New findings

Caught with fresh eyes on the changed text; both were introduced by otherwise-correct fixes and are
recorded for a separate fix commit (this follow-up does not edit guide content).

### [MEDIUM] NEW-1 The CR-8 fix coins "CAD" for the Commercial Accounting Declaration, colliding with "CAD" = Canadian dollars

- `Inventory-And-COGS.md:148`: "the *Commercial Accounting Declaration* (CAD; replaced Form B3 when
  CARM became the system of record in October 2024)"
- `HST.md:235`: "(the CAD replaced Form B3 when CARM became the system of record …)"
- `HST.md:471` (citation): "the Commercial Accounting Declaration (CAD) replacing the B3"

"CAD" is used throughout the guide to mean **Canadian dollars** — pervasively in `Foreign-Currency.md`,
`Adjusted-Cost-Base-Tracking.md`, and on the very page that now also abbreviates the form: Example 2
of `Inventory-And-COGS.md` writes "trade-date BoC FX = 1.34 CAD/USD; CAD equivalent = $13,400",
"CAD $13,400", and "CAD-denominated" (lines 363–384), roughly fifteen lines below the new form
abbreviation at `:148`. A reader meeting "(CAD; …)" and then "CAD $13,400" on one page has to hold
two meanings of the same three letters. The HST import section already side-stepped the conflict
correctly — it changed "the CAD figure on the B3" to "the dollar figure on the Commercial Accounting
Declaration" and uses "Canadian dollars" for currency — which is the right instinct, but the coined
abbreviation still appears at `:235` and in the citation.

Suggested fix: drop the coined "CAD" abbreviation everywhere. The prose already spells out
"Commercial Accounting Declaration" in most places, so removing the `(CAD; …)` parenthetical at
`Inventory-And-COGS.md:148`, the `(the CAD …)` at `HST.md:235`, and the `(CAD)` in the `HST.md:471`
citation leaves the meaning intact with no collision. (CBSA does use "CAD" for the form, but in a
guide whose worked examples are dense with currency figures the abbreviation is not worth the
ambiguity.)

### [LOW] NEW-2 README index entry capitalizes "And"

`README.md:44`: "- [Ledger And Accounts](guide/Ledger-And-Accounts.md)". Every other multi-word
entry in the index lower-cases the conjunction — "Inventory and cost of goods sold", "Materials and
CIP", "ERDTOH and NERDTOH". The capital "And" matches the page's own H1 (`# Ledger And Accounts`),
so the entry is not wrong against the file, only against the index convention. Cleanest fix:
normalize both the index entry and the stub's H1 to "Ledger and Accounts". Not load-bearing; the
link resolves either way.

---

## Content notes beyond the findings

- **New citations not headlessly verifiable**: the CR-4 rewrite adds IT-102R2, IT-218R (both
  canada.ca, 403 to fetchers), and *CAE Inc 2013 FCA 92* (CanLII). Their substance was confirmed
  through the search index (above), and the statutory backbone they sit on (s.45, s.13(7), s.13(1),
  s.20(16)) was fetched directly. A maintainer spot-check of the two folio URLs and the case cite in
  a browser closes the residual gap, consistent with how prior audits handled the canada.ca 403.
- **Verification debt carried forward** (unchanged from the prior two cycles): the T2 form-location
  numbers (Page 7 / line 784 / S3 Box 450/500) and GST34 line numbers still want confirmation
  against current-year forms; the Google Sheets ACB-tracker URL again redirects to a sign-in page
  when fetched headlessly.
- **Biggest open content gap**: the salary-vs-dividend / payroll-T4 topic, with `Payment.md`'s
  empty "Payroll remittance" heading, remains the highest-value net-new addition — unchanged from
  the 2026-06-10 backlog.

---

## What was NOT re-flagged this pass

For traceability:

- **No new broken links or anchors.** The three `\[done]`-anchor fixes now resolve to
  `#acquisition-cost-what-gets-capitalized-done`; the CR-4 rewrite's `#change-of-use` self-link and
  the `../HST.md#capital-purchases` cross-link both still resolve; the new external citation links
  are well-formed. A scripted anchor check found no mismatch introduced by the fixes.
- **Both change-of-use edges survive the Mermaid edit.** The diagram change was label-only
  ("re-classify at FMV" → "re-classify"); both `CofU -.-> Inv` and `CofU -.-> Fixed` edges remain —
  no edge merged or dropped.
- **CR-10 example ties out.** Re-traced: opening pool $3,900 → shrinkage $86.66 → $3,813.34 →
  write-down $1,173.34 → closing $2,640.00; Schedule 125 COGS $10,160.00 matches the per-unit ledger
  ($2,400 + $6,500 + $86.66 + $1,173.34); year 2 opens at the same $2,640.00. No residual drift.
- **The CCA-6 example outcome is still correct.** Application software now correctly carries the
  half-year rule, and the AIIP suspension for a 2026 in-service acquisition keeps the worked
  first-year claim at 100%.
- **Signed-off Topics pages untouched** by the fix set; the only edit to a signed-off page is the
  one-word `T5008.md` spelling fix (T5-1). No regression introduced elsewhere.

---

## Status of WIP / pending-review pages

- **Pending review (AI generated)**: `Cost-Recovery.md`, `Inventory-And-COGS.md`,
  `Materials-And-CIP.md`, `Capital-Cost-Allowance.md`, `Foreign-Currency.md`, `HST.md`,
  `ERDTOH-NERDTOH.md`, `Shareholder-Dividends.md`, `Owner-Corporation-Transactions.md`,
  `Glossary.md`, `Whole-Dollar-Rounding.md`. With this follow-up, every finding from the 2026-06-10
  audit is cleared; the residual items before sign-off are NEW-1 (the "CAD" collision), the
  maintainer spot-checks under Content notes, and the standing verification debt — not content
  errors.
- **Work in progress**: `Payment.md` (stub, unchanged) and `Ledger-And-Accounts.md` (outline-only
  stub, now carrying its README index entry per R-3; see NEW-2 on the link-text casing). Both
  consistent with their markers.
