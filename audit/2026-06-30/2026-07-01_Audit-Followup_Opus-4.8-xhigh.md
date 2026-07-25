# Documentation Audit — Follow-up

**Date**: 2026-07-01
**Scope**: Verify that the fixes for every finding in the 2026-06-30 audit at
[2026-06-30_Audit_Opus-4.8-max.md](2026-06-30_Audit_Opus-4.8-max.md) landed correctly in the current
source, independently re-verify the load-bearing factual claims behind those fixes against primary
sources (rather than trusting the prior pass), and — per the maintainer's request this cycle — judge
whether each original finding was itself sound, flag anything the fixes introduced or left behind, and
note content worth adding. The prior pass raised 61 findings (0 CRITICAL / 6 HIGH / 34 MEDIUM / 21 LOW)
across all 38 `guide/` pages.
**Method**: The fixes landed across four commits — `bfcd843` ("audit", which also *added the audit
document*), `d60571f` ("audit changes"), `3aedde3` ("audit edits"), and `c9330b5` ("filing
adjustments"). Each finding was traced to its current line(s) by content grep (the audit's line numbers
shifted after the edits), and the claim re-checked against the primary source. Statutes verified by
direct fetch from laws-lois.justice.gc.ca: ITA s.6, s.13(26)/(27)/(28), s.20(14.2), s.40(3), s.53(1)(f),
s.74.4(2)/74.5(5), s.83(2), s.84(4)/(4.1), s.84.1(2.31)/(2.32), s.88(1)(d), s.89(1), s.125(3)/(5.1),
s.129(1)/(4), s.162(7.01), s.185.1(1), s.186(1), s.256(1); ETA s.148(1)/(2)/(4), s.227, s.240(2.1);
Regulation 1100(2). CRA forms/folios/guides (canada.ca, 403 to fetchers) and the Bill C-15 / Budget 2025
manufacturing-and-processing rate were confirmed through the search index and practitioner sources, with
no asserted canada.ca fetch. Every worked example's arithmetic was recomputed. Repo-wide greps confirmed
whether each corrected string survives anywhere else in `guide/`.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

- **59 of 61 findings are fully resolved** in the current source, including all **6 HIGH** (R-1, AVS-1,
  CEX-2, T5-1, CDA-1, FC-1). Every statutory pinpoint was re-verified verbatim against laws-lois and
  every worked example recomputed to the dollar; all held.
- **One finding is only partially resolved — BAS-1.** The corrected "$10/day for the whole T5 filing
  (**not per slip**)" landed on `Bookkeeping-And-Slips.md`, but a repo-wide grep exposes the *opposite*
  (wrong) "per slip" claim surviving on two **signed-off** pages — `Concept-Map.md:313` and
  `Small-Business-Tax-Overview.md:392` — which now contradict the fix and s.162(7.01).
- **One finding is deferred by the maintainer — T3-2** (the five "Note:"/"Note that…" pointer sentences
  on the signed-off `T3.md`), exactly as the audit anticipated ("pre-existing; maintainer's call").
- **The audit itself was accurate.** No mis-findings: all 61 stand up to primary-source re-verification.
  The severity counts (6/34/21 = 61) reconcile with the body. The one nuance is a mild overstatement in
  **EF-2** (the original "malformed" phrasing actually gestured at the real "later of 60 months and the
  final sale time" test).
- **The single most load-bearing judgment call — CLS-1 — was resolved in the correct direction.** Under
  current 2026 law (Bill C-15 / Budget 2025 "productivity super-deduction"), post-2025 M&P machinery in
  Class 43 **does** get 100% first-year expensing (via the enhanced-allowance factor of 2⅓: 30% × 3⅓ =
  100%) for property available before 2030; the 55% figure that appears in some sources is the
  pre-reinstatement schedule Bill C-15 overrode. The guide's "full-expensing" label is right.
- **Two new items for a separate fix commit (this cycle):** **NEW-1 (MEDIUM)** — the BAS-1 "per slip"
  leftover above; **NEW-2 (MEDIUM, needs a spot-check)** — an *uncommitted* working-tree note in
  `CCA-Tracking.md` describes FutureTax's Schedule 8 "Half Rule" checkbox in a way that contradicts the
  vendor's own FAQ, in the direction that could over-claim first-year CCA.
- **No regressions.** No new broken links or anchors (CTR-1 now resolves to `#special-cases`; the SBO-2
  and FC-5 Mermaid edits are cosmetic with no edge dropped; SBO-3's relabelled link resolves). The
  2026-06-11 NEW-1 fix (the coined "CAD" for the Commercial Accounting Declaration) is still clean.
- **One process observation (O-1):** the audit document was committed in the same commit (`bfcd843`) as
  its first wave of fixes, a repeat of the read-only-record deviation flagged as O-1 last cycle.

---

## Disposition of the 2026-06-30 findings

Status key: **✓** resolved · **◑** partially resolved · **▷** deferred by maintainer.

### Repo-wide

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| R-1 | HIGH | ✓ | s.129(4) defines ERDTOH/NERDTOH; s.89(1) defines GRIP/CDA/EEDD (both fetched). All four spots re-pointed (`ERDTOH-NERDTOH.md:52/:250`, `T3.md:240`, `Concept-Map.md:389/:392`); GRIP/CDA/0.72 kept on s.89(1). Grep-clean. |
| R-2 | MED | ✓ | s.13(26) fetched ("no amount shall be included … before … available for use"). Both pages now read "does not enter the … UCC until … available for use" (`Cost-Recovery.md:198`, `Capital-Cost-Allowance.md:132`). |
| R-3 | MED | ✓ | RC4088 (search index): 1740 = machinery/equipment/furniture/fixtures, 1900 = other tangible. All uses now 1740; grep finds **zero** `1900` in `guide/`. |

### Dividends hub + sub-pages

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| EN-2 | MED | ✓ | s.129(1) fetched: refund computation is 129(1)(a) (non-eligible (a)(ii)); (1)(b) is the administrative "on written application" rule. Re-pointed on `ERDTOH-NERDTOH.md:135/:249` and `Dividends.md:197-198`. Grep-clean of "129(1)(b)". |
| BAS-1 | MED | ◑ | s.162(7.01) fetched: penalty is per return **type** ($10/day, max 100 days, min $100 for <51 returns; slip count only tiers the rate). Fixed on `Bookkeeping-And-Slips.md:92`, **but** "per slip" survives on `Concept-Map.md:313` and `Small-Business-Tax-Overview.md:392` — see NEW-1. |
| EN-3 | MED | ✓ | `# Related`/`# Citations` → `##` (`ERDTOH-NERDTOH.md:232/:243`); one H1 remains. |
| T2R-1 | MED | ✓ | s.185.1(1) fetched ("paragraph (c) of the definition excessive eligible dividend designation in subsection 89(1)"). Citation `T2-Reporting.md:103` now names the EEDD definition; body `:64` still says bare "s.89(1) definition" (see Content notes). |
| EN-4 | MED | ✓ | "72% of the general-rate income" (`ERDTOH-NERDTOH.md:35`); matches the hub and the 0.72 after-tax factor. Grep-clean of "post-tax addition". |
| DIV-2 | LOW | ✓ | Em-dash appositive → colon (`Dividends.md:287`). |
| EN-5 | LOW | ✓ | "Note that…" recast to a plain statement (`ERDTOH-NERDTOH.md:94`); grep-clean of "Note" across `guide/Dividends/`. |
| DIV-3 | LOW | ✓ | "Note:" lead-in removed (`Dividends.md:139`); T2 line 784 now hedged (`:202`) to match the sub-pages. |
| BAS-2 | LOW | ✓ | Inline "(ITA s.82(1); s.121)" added under the gross-up/DTC tables (`Bookkeeping-And-Slips.md:75`). |

### Corporate Structure + Business Acquisition

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| AVS-1 | HIGH | ✓ | laws-lois section-14 = "[Repealed, 2016, c. 12, s. 4]". Live s.14 entry replaced by Class 14.1 authority (`Asset-vs-Share.md:100`); "repealed effective 2017" is an accurate effective-date framing. |
| EF-1 | MED | ✓ | s.74.4(2)/74.5(5) fetched. New "Corporate attribution trap" stanza (`Estate-Freeze.md:86-90`): deemed prescribed-rate interest for a designated person (spouse / minor-beneficiary trust); adult children not caught. |
| EF-2 | MED | ✓ | s.84.1(2.32) fetched (60-month involvement/control from the disposition). Reworded to "retain control … for at least five years after the transfer" (`Estate-Freeze.md:72`). Original finding mildly overstated (see Observations). |
| AVS-2 | MED | ✓ | ETA s.167 (search index / GST/HST Memo 14-4): joint going-concern election added (`Asset-vs-Share.md:51`); share sale correctly exempt. |
| AVS-3 | MED | ✓ | s.88(1)(d) fetched (excludes depreciable property + inventory). "No step-up" softened to *depreciable* assets + a bump sub-bullet (`Asset-vs-Share.md:41-42`). |
| AVS-4 | MED | ✓ | s.256(1)/125(3)/(5.1) fetched. Associated-CCPC / shared $500k SBD / AAII-aggregation consequence added (`Asset-vs-Share.md:54-56`); correctly uses AAII (consistent with SBO-1). |
| SC-1 | LOW | ✓ | s.84(4) ("corporation resident in Canada") / s.84(4.1) (public corp) fetched. "by a private corporation" dropped (`Share-Capital.md:143`). Same scoping survives at `Dividends.md:279` — see NEW-1 list. |
| PSC-1 | LOW | ✓ | s.85(2.1) citation now hyperlinked (`Preferred-Share-Consideration.md:108`). |
| BA-1 | LOW | ✓ | Soft headings → noun phrases ("## Professional advice", "## The target's status"). |

### Primers (Small-Business-Tax-Overview, Tax-Integration, Concept-Map)

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| TI-1 | MED | ✓ | Arithmetic recomputed ($554 / $541 / $535, all tying to $1,000). Reconciling clause added (`Tax-Integration.md:108-109`): the non-eligible path's lower total reflects the SBD rate, not a flavour preference. |
| SBO-1 | MED | ✓ | s.125(5.1) fetched (E = adjusted AII; "5(E − $50,000)"). First mention now AAII on both flagged pages (`Small-Business-Tax-Overview.md:233`, `Concept-Map.md:356/:391`). "AII grind" survives on five *unflagged* pages — see NEW-1 list. |
| SBO-2 | MED | ✓ | Diagram split so only the capital-gain node feeds CDA (`Small-Business-Tax-Overview.md:66-79`); cosmetic per house rule, no edge dropped/merged; interest no longer reaches CDA. |
| SBO-3 | LOW | ✓ | Link relabelled "Dividends - worked examples" (`:230`, `Tax-Integration.md:74`); `#worked-examples` anchor resolves. |

### Cost-Recovery core

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| CR-2 | MED | ✓ | "moves at a carryover or FMV basis depending on the direction" (`Cost-Recovery.md:16`); matches the body's two directions. |
| INV-1 | MED | ✓ | Full six-term identity "8300 + 8320 + 8340 + 8360 + 8450 + 8457 − 8500 = 8518" now stated consistently (`Inventory-And-COGS.md:76/:274/:294`), with 8340/8360 noted zero for resale-only. |
| MAT-1 | MED | ✓ | AIIP caveat added to shed Example 1 (`Materials-And-CIP.md:212`), parallel to Example 2. |
| CR-3 | LOW | ✓ | "either term" (singular) + scoped to the tax deduction (`Cost-Recovery.md:79`). The un-landed 2026-06-10 CR-11 grammar half finally landed. |
| INV-2 | LOW | ✓ | Freight entry now balances unconditionally; HST shown as a balanced conditional add-on (`Inventory-And-COGS.md:384-386`). |
| MAT-2 | LOW | ✓ | s.13(27)/(28) fetched (building → s.13(28)). Body re-pointed (`Materials-And-CIP.md:54`); Citations list still omits s.13(28) — see Content notes. |

### Capital Cost Allowance

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| CEX-2 | HIGH | ✓ | Recomputed: 1.5 × $1,200 × 5% = **$90**, UCC $1,110, short-year ≈ $44.88 (`CCA-Examples.md:122-126`). Examples 1/2/4 apply the same AIIP 150% base and tie out. |
| CLS-1 | MED | ✓ | Reg 1100(2) + Bill C-15 sources: post-2025 M&P → Class 43, 100% first-year via the 2⅓ factor (Class 53 window "before 2026"). "Full-expensing" label **correct** for current law. See Independent verification. |
| CLS-2 | MED | ✓ | Reconciled: Class 13 is exempt from Reg 1100(2) but Schedule III imposes a first-year limit (`Capital-Cost-Allowance.md:104-105`), so "exempt" and the tracking "True" agree. |
| CTR-1 | MED | ✓ | Broken `#out-of-scope` → `#special-cases` (`CCA-Tracking.md:62`); target heading exists; grep finds no stale `out-of-scope` in `guide/`. |
| CEX-3 | LOW | ✓ | "$4,000 − $3,300 CCA = $700 (with the AIIP deduction)" (`CCA-Examples.md:41`) — roles now unambiguous. |
| CEX-4 | LOW | ✓ | Incorporation costs → GIFI 2018 (`CCA-Examples.md:114`), consistent with Ledger/Tracking. |
| CCA-2 | LOW | ✓ | Class 15 added to the half-year-exempt list (`Capital-Cost-Allowance.md:104`). |

### Information slips (T3, T5, T5008)

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| T5-1 | HIGH | ✓ | Running example changed to a GIC / ISA *deposit* (`T5.md:6/:18/:212`); the HISA *ETF* now appears only as a T3 trust (`:9`). Grep-clean of the HISA-ETF-as-T5 example. |
| T5-2 | MED | ✓ | s.186(1) fetched (non-connected 38⅓% in (a), connected flow-through in (b)). Now cites s.186(1)(b) (`T5.md:142`); grep-clean of "flow-through … s.129(4)". |
| T58-1 | MED | ✓ | FX-in-CAD note + Foreign-Currency link added (`T5008.md:88`). |
| T58-2 | MED | ✓ | New "Taxable half and the CDA" section (`T5008.md:126-130`): 50% taxable, S1 back-out, CDA addition. Could name the specific S1 line to fully parallel siblings — see Content notes. |
| T5-3 | LOW | ✓ | s.20(14.2) fetched ("Sales of linked notes"). Gloss now keys on "sold or matures … accrued to that disposition" (`T5.md:35`). |
| T3-2 | LOW | ▷ | Five "Note:"/"Note that…" sentences remain (`T3.md:46/:128/:135/:173/:218`) — deferred by maintainer, as the audit anticipated. |

### ACB + CDA

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| CDA-1 | HIGH | ✓ | s.83(2) fetched ("at or before the particular time [becomes payable] or the first day … paid if … earlier"). Body `:41` and Citations `:90` corrected; grep-clean of "payment date". |
| CDA-2 | MED | ✓ | s.40(3) fetched (excess deemed a gain). New bullet for s.40(3) deemed gains from negative ACB (`Capital-Dividend-Account.md:24`). |
| ACT-1 | MED | ✓ | s.53(1)(f) fetched. Note added that the ACB bump lands wherever the substituted property is held (affiliated account/person) (`Adjusted-Cost-Base-Tracking.md:186`). |
| CDA-3 | LOW | ✓ | "T5 Box 18" added alongside T3 Box 21 (`Capital-Dividend-Account.md:23`). |

### Foreign-Currency + HST

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| FC-1 | HIGH | ✓ | RC4058 (search index): ineligible list is narrow (legal/accounting/actuarial/bookkeeping/financial/tax). Reframed to the zero-rating benefit point (`Foreign-Currency.md:354`); grep-clean of "most service consultants". |
| HST-1 | MED | ✓ | Recomputed: 13/113 − 8.8% = **2.70% of inclusive** (≈3.0% of net). Now stated (`HST.md:253`); grep-clean of "4.2%". |
| HST-2 | MED | ✓ | Close entry balances at $5,850 and clears the $520 receivable (`HST.md:441`). |
| HST-3 | MED | ✓ | ETA s.148(1)/(2), s.240(2.1) fetched. Single-quarter vs four-quarter grace split; s.240(2.1) moved to the application-deadline bullet (`HST.md:38-41`). |
| HST-4 | MED | ✓ | ETA s.148 fetched. Single-quarter test now s.148(2); associate aggregation s.148(4) (`HST.md:35/:44`); grep-clean of "s.148(1)(b)"/"s.148(2)(c)". |
| HST-5 | MED | ✓ | ETA s.227 fetched (no dollar threshold; (4) = Revocation). Threshold/rates re-attributed to the Streamlined Accounting (GST/HST) Regulations (SOR/91-51), added to Citations (`HST.md:231/:499`). |
| HST-6 | MED | ✓ | Recomputed: ($1,675.20 − $312) × (1 − 0.122) = **$1,197** (`HST.md:448-449`). |
| FC-2 | MED | ✓ | Recomputed: held USD +200, AR +100, total +300 (`Foreign-Currency.md:425-427`); the fabricated −200/+400 split is gone. |
| FC-3 | LOW | ✓ | Single blank line after the STATUS marker (`Foreign-Currency.md:1-3`). |
| FC-4 | LOW | ✓ | "USD 50,000"; "~12× cheaper" (`Foreign-Currency.md:244/:249`); grep-clean of "24×". |
| FC-5 | LOW | ✓ | Mermaid label "collect in USD"; the `AR → USD` edge preserved (label-only, per house rule). |

### Bookkeeping mechanics + Glossary

| Code | Sev | Status | Re-verified against / note |
|---|---|---|---|
| OCT-1 | MED | ✓ | s.6 fetched: s.6(2.2) is COVID-19 relief (2020-2021), not the operating-cost benefit. Now s.6(1)(k) + Reg 7305.1 (`Owner-Corporation-Transactions.md:104/:324`); grep-clean of "s.6(2.2)". |
| LA-1 | LOW | ✓ | H1 → "# Ledger and Accounts" (`Ledger-And-Accounts.md:3`), matching the README index. |

---

## Independent verification detail

Re-checked from primary sources rather than trusting the prior pass:

- **s.129(4) vs s.89(1) (R-1)** — s.129(4) ("The definitions in this subsection apply in this section")
  contains "eligible refundable dividend tax on hand" and "non-eligible refundable dividend tax on hand";
  s.89(1) defines GRIP, LRIP, CDA, "eligible dividend", and "excessive eligible dividend designation",
  and does **not** define either RDTOH pool. The fix's split (pools → s.129(4); GRIP/CDA/0.72 → s.89(1))
  is correct on all four pages.
- **s.129(1) (EN-2)** — paragraph (a) is the refund *computation* (eligible (a)(i), non-eligible (a)(ii));
  paragraph (b) is the administrative "Minister shall … make the dividend refund … if an application …
  has been made in writing". The re-pointed cites are right.
- **s.162(7.01) (BAS-1)** — "Every person … who fails to file … one or more information returns of a type
  prescribed … is liable to a penalty equal to the greater of $100 and (a) where the number of those
  information returns is less than 51, $10 multiplied by the number of days, not exceeding 100 …". The
  penalty is per return *type*; the slip count only selects the daily-rate tier ($10/$15/$25/$50/$75).
  The `Bookkeeping-And-Slips.md` fix matches verbatim; the two surviving "per slip" statements do not.
- **s.185.1(1) (T2R-1)** — the additional Part III.1 rate applies where the excessive designation
  "arises because of the application of paragraph (c) of the definition excessive eligible dividend
  designation in subsection 89(1)". Paragraph (c) belongs to the EEDD definition, not the GRIP definition.
- **s.83(2) (CDA-1)** — the election is made "at or before the particular time [the day the dividend
  becomes payable] or the first day on which any part of the dividend was paid if that day is earlier".
  The corrected "becomes payable (or first day any part is paid, if earlier)" is verbatim-accurate; the
  old "payment date" pointed to a deadline as-late-or-later than the true one — the dangerous direction.
- **s.13(26) (R-2), s.13(27)/(28) (MAT-2)** — s.13(26) forbids including capital cost in UCC before the
  property is available for use; s.13(27) opens "property (other than a building or part thereof)…" and
  s.13(28) "property that is a building or part thereof…", so a shed (building) is governed by s.13(28).
  Both fixes correct.
- **s.84(4)/(4.1) (SC-1), s.88(1)(d) (AVS-3), s.256(1)/125(3)/(5.1) (AVS-4), s.74.4(2)/74.5(5) (EF-1),
  s.84.1(2.31)/(2.32) (EF-2)** — each fetched and each matches the fix (s.84(4) applies to any resident
  corporation; the s.88(1)(d) bump excludes depreciable property and inventory; association turns on
  control with a shared $500k limit and AAII aggregation; corporate attribution needs a designated person
  and excludes adult children; the intergenerational tests run 36/60 months from the disposition).
- **s.186(1) (T5-2), s.40(3) (CDA-2), s.53(1)(f) (ACT-1), s.20(14.2) (T5-3), s.6(1)(k)/6(2.2) (OCT-1)** —
  all fetched and confirmed; the connected-payer flow-through is 186(1)(b), s.6(2.2) is COVID-19 relief.
- **ETA s.148(1)/(2)/(4), s.227, s.240(2.1) (HST-3/4/5)** — s.148(1) gives the four-quarter small-supplier
  grace ("throughout … and the following month"), s.148(2) is the single-quarter blow-out, s.148(4)
  defines "associate"; s.227 is "Election for streamlined accounting" with no dollar figure (the $400k cap
  and 8.8%/4.4% rates live in SOR/91-51); s.240(2.1) governs the application deadline. All fixes correct.
- **CLS-1 — the one that needed judgment.** Regulation 1100(2) implements the enhanced first-year
  allowance for post-2025 Class 43 M&P through a factor of **2⅓** (the general accelerated factor being
  1½), so 30% × (1 + 2⅓) = 30% × 3⅓ = **100%** in the first year. Bill C-15 / Budget 2025 (the
  "productivity super-deduction", enacted 2026-03-26) reinstated 100% immediate expensing for M&P
  (Class 53 and Class 43), clean-energy (43.1/43.2), and ZEV (54/55/56) for property available for use
  through 2029, then a 2030–2033 step-down (75%, then 55%). Class 53's window remains "after 2015 and
  before 2026", so a 2026 acquisition is Class 43. The **55%** first-year figure that appears in several
  sources is the *pre-reinstatement* 2018 phase-out (identifiable by its "reverts after 2027" framing),
  which Bill C-15 overrode. The guide's "full-expensing (100%)" label for post-2025 Class 43 M&P is
  correct for current law, and internally consistent across all four cluster pages. (The amended
  Schedule II Class 53 window could not be quoted verbatim — the laws-lois Schedule II URL 404s headlessly
  — but the result is corroborated by Reg 1100(2) and every practitioner/CRA-index source; a maintainer
  browser spot-check closes the residual gap.)
- **Arithmetic** recomputed and tied to the dollar: TI-1 ($554/$541/$535 → $1,000); HST-1 (2.704% of
  inclusive / 3.056% of net); HST-2 (close entry balances at $5,850, clears $520); HST-6 ($1,196.89 ≈
  $1,197); FC-2 (+200/+100/+300); CEX-2 ($90/$1,110/$44.88) and CCA Examples 1/2/4 ($3,300/$540/$450).

---

## New findings this cycle

Recorded for a separate fix commit (this follow-up does not edit guide content).

### [MEDIUM] NEW-1 The BAS-1 "per slip" correction did not propagate; two signed-off pages now contradict it

- `Small-Business-Tax-Overview.md:392` — "Late-filing penalties are calculated *per slip* (not per
  filing), so a single missed slip can carry a meaningful penalty"
- `Concept-Map.md:313` — "*T4 and T5 slips*: to CRA and the recipient by Feb 28; penalty charged per slip"

s.162(7.01) assesses one penalty per information-return **type** (min $100; $10/day × up to 100 days for
under 51 returns; the slip count only tiers the daily rate), which is exactly what the corrected
`Bookkeeping-And-Slips.md:92` now says ("$10 per day for the whole T5 filing (not per slip)"). Both
statements above are the reverse: `Concept-Map.md` says the penalty is charged per slip, and
`Small-Business-Tax-Overview.md` says it is "per slip (not per filing)" — the wrong direction. The
"a single missed slip can carry a meaningful penalty" half is defensible (the $100 minimum), but the
"per slip / not per filing" framing should be rewritten to the per-return-type batch framing. Because both
pages are signed off, the guide is currently internally contradictory on a point it corrected elsewhere.
Fix: rephrase both to "one penalty per T4/T5 filing (not per slip); $10/day, minimum $100, capped at 100
days; higher daily rates at higher slip counts (ITA s.162(7.01))." (This also means the original BAS-1
finding was under-scoped — the audit named only `Bookkeeping-And-Slips.md`; see Observations.)

### [MEDIUM] NEW-2 Uncommitted `CCA-Tracking.md` "Half Rule" note contradicts the FutureTax FAQ

The working tree carries an uncommitted addition at `CCA-Tracking.md:159-163` describing FutureTax's
Schedule 8 *Half Rule* checkbox: "The name misleads: it does not toggle the half-year reduction (that
reduction is mandatory whenever you claim on additions, so there is nothing to opt out of). It controls
whether the year's additions enter the current-year base at all: checked, they join the base … unchecked,
they stay in the pool but are excluded from this year's claim…". FutureTax's own FAQ says the opposite:
"To enable the half (50%) rule on Schedule 8 in FutureTax, click the column H beside Column 8 … otherwise
column 13 will [multiply] by 0.5 automatically." By the vendor's description the checkbox **does** toggle
the half-year (50%) reduction on additions; it does not exclude additions from the year's base. The risk
direction matters: a reader who unchecks the box to "defer additions" (as the note suggests) would, in
FutureTax, instead drop the 50% haircut and **over-claim** first-year CCA on non-AIIP additions. Also,
"that reduction is mandatory whenever you claim on additions" is not right — AIIP additions and
half-year-exempt classes carry no half-year reduction at all. This is not an audit-fix regression (it is
net-new content), and it is still uncommitted, so it is the ideal moment to correct it. Consistent with
the standing rule to verify software/platform behaviour before stating it as fact, the recommendation is
to check the box against the live FutureTax UI (and current version, since the FAQ notes the mechanism
moved from column H to an automatic column 13) before committing. Rated MEDIUM pending that spot-check.

### Fixes that landed on the named page but not repo-wide (LOW, consistency)

- **SC-1 spillover** — `Dividends.md:279` ("s.84(4) on private-corp PUC reduction") and `:72` retain the
  "private corporation" scoping the SC-1 fix removed from `Share-Capital.md`. Defensible in a CCPC-reader
  context, but `:279`'s citation gloss mirrors the exact SC-1 defect and is worth the same trim.
- **SBO-1 spillover** — "AII grind" / "$50,000 AII threshold" survives on `T5-Box-18…:26/:112`,
  `T3-Box-26…:96`, `Dividends.md:284`, `Dividends-Examples.md:89/:172`, and `Capital-Cost-Allowance.md:231`.
  The audit scoped SBO-1 to the two primer pages (both fixed); this is a repo-wide uniformity nit, softened
  because several of those pages state the AAII≈AII distinction elsewhere.
- **MAT-2 citation gap** — `Materials-And-CIP.md` now cites s.13(28) in the body but omits it from the
  Citations list (still 13(26)/13(27)), and its CIP-flow diagram node reads "s.13(26)–(27)".

---

## Observations on the prior audit

The 2026-06-30 audit was strong and holds up under re-verification:

- **No mis-findings.** All 61 findings survive a primary-source re-check; every statutory pinpoint the
  audit asserted was confirmed verbatim against laws-lois (or, for CRA/ETA-Regulation items, corroborated
  through the search index and flagged as such, per discipline). This is the cautionary contrast to the
  2026-05-28 pass's `\[done]`-tag mis-finding.
- **The severity count is accurate.** 6 HIGH + 34 MEDIUM + 21 LOW = 61, matching the body; a re-count by
  cluster reconciles.
- **CLS-1's hedge was well-judged and resolved correctly.** The audit explicitly flagged that the 2026 M&P
  first-year rate (100% vs 55%) turned on Bill C-15's exact terms and "could not be pinned down
  headlessly"; the fix resolved it in the correct direction (100%).
- **EF-2 — mild overstatement.** The audit called the original "the later of five years or completion of
  the transfer" *malformed*. It was awkward, but it actually gestured at the real statutory test — "the
  later of 60 months after the disposition time **and the final sale time**" (s.84.1(2.32)). The fix's
  "at least five years after the transfer" is a correct floor but silently drops the upper limb; a reader
  gradually reducing equity over up to ten years keeps the involvement requirement running to the final
  sale. Optional: restore "(or until the transfer is complete, if later)".
- **Two findings were under-scoped** (not wrong, just narrow): **BAS-1** named one page while the same
  misconception sat on two others (NEW-1), and **SC-1** named one page while `Dividends.md:279` carried
  the identical gloss. A repo-wide grep at audit time would have caught both; the follow-up's grep pass did.

### O-1 The audit document was committed together with its first fixes

`bfcd843` both added `audit/2026-06-30_Audit_Opus-4.8-max.md` and edited eight `guide/` pages (the first
wave of fixes for AVS-1, CDA-1, R-1, CEX-2, T5-1, FC-1, and the Concept-Map cites); later fixes followed
in `d60571f`, `3aedde3`, and `c9330b5`. AGENTS.md / Audit-Instructions treats an audit as an immutable
read-only record with fixes landing in separate commits so the record and the response stay separable in
git history; the closeout expects a delivered audit to be untouched afterward. This is the same deviation
recorded as O-1 in the 2026-06-11 follow-up. Not a content problem — the audit text is accurate — but if
the cycle is re-run cleanly, the audit and its fixes should land as separate commits.

---

## Content notes beyond the findings

- **Repo-wide propagation** of three corrected points would remove the residual inconsistencies above:
  the s.162(7.01) "per slip" framing (NEW-1), the s.84(4) private-corp scoping (SC-1), and the AAII-not-AII
  naming (SBO-1).
- **Small precision polish the fixes leave open:** name the "excessive eligible dividend designation"
  definition in the `T2-Reporting.md` body (`:64/:72`), not just the Citations; add the specific Schedule 1
  line to the new `T5008.md` CDA section to parallel the sibling gain pages; add s.13(28) to the
  `Materials-And-CIP.md` Citations list; broaden AVS-2's "acquires ownership" to "ownership, possession, or
  use" (the ETA s.167 test); optionally pinpoint Reg 1100(1)(a)(xii.1) for the Class 14.1 5% rate.
- **CLS-1 framing** is correct but bundles two distinct measures under one "AIIP/full-expensing" umbrella:
  the general accelerated incentive (1½ factor, ~150% first-year base) and the enhanced first-year
  allowance for M&P/clean-energy/ZEV (which reaches 100% via the 2⅓ factor). A one-line distinction would
  future-proof the page for the 2030–2033 step-down, when the two diverge. `Inventory-And-COGS.md:476` and
  `Materials-And-CIP.md:369` still name "Class 53" as the M&P destination in forward-looking TODO bullets
  without the "/43 for post-2025" nuance — worth updating when those examples are written.
- **Standing content gaps** (carried, unchanged): the salary-vs-dividend / payroll-T4 topic remains the
  largest net-new gap, with `Payment.md`'s empty "Payroll remittance" heading; Glossary still lacks AAII,
  the CIP-cluster terms, and the FX terms; the operating-account GIFI convention (`1001` Cash vs `1002`
  Deposits) is worth aligning.
- **Verification debt** (canada.ca 403 / auth walls): the T2 form-line numbers (line 784 / instalment
  lines / S3 Box 450/500), T5008 S6 columns, T3/T5 S1/S7 line references, exact RC4088 GIFI label wording,
  and the amended Schedule II Class 53 window still want a maintainer browser spot-check against
  current-year forms; the `Adjusted-Cost-Base-Tracking.md` Google-Sheets URL again redirects to sign-in
  headlessly.

---

## What was NOT re-flagged this pass

For traceability:

- **No regressions from the fixes.** CTR-1's link now resolves to `#special-cases`; the SBO-2 income-flow
  and FC-5 Mermaid edits are label/structure-only with no edge merged or dropped; SBO-3's relabelled link
  and its `#worked-examples` anchor resolve; EN-3's heading demotion leaves a single H1. A repo-wide grep
  for every corrected string ("per slip" excepted — see NEW-1) found the fixes fully in place.
- **Prior-cycle fixes still hold.** The 2026-06-11 NEW-1 (coined "CAD" for the Commercial Accounting
  Declaration) is clean — the guide spells out "Commercial Accounting Declaration" everywhere, and every
  remaining "CAD" means Canadian dollars. The 21 fixes from the 2026-06-10 cycle, re-confirmed in the
  2026-06-30 audit's own disposition table, were not independently re-traced here but no regression
  surfaced in any page touched this cycle.
- **Regression baseline consistent:** the capital-gains inclusion rate (1/2, with the 2/3 increase framed
  as cancelled), the eligible/non-eligible gross-ups (1.38/1.15) and DTC rates (15.0198%/9.0301%), the
  30⅔%/38⅓% pool rates, the 72% GRIP factor, and the 2026 figures re-checked incidentally while tracing
  findings — all correct and consistent.
- **T3-2 not counted as unresolved** — the audit itself flagged the "Note:" sentences as the maintainer's
  call; their survival is expected, not a miss.

---

## Status of WIP / pending-review pages

- **Signed off (Topics)** — the R-1, CDA-1, SBO-1/2, T2R-1, TI-1, and Dividends-cluster fixes all landed
  on these authoritative pages and re-verify correctly. The one residual on signed-off pages is the NEW-1
  "per slip" contradiction (`Concept-Map.md`, `Small-Business-Tax-Overview.md`); a two-line rephrase
  clears it.
- **Pending review (AI generated)** — the bulk of the fixes concentrated here (Business-Acquisition,
  Corporate-Structure, T5, T5008, CCA, HST, Foreign-Currency) and all resolve cleanly. The only open item
  is the uncommitted `CCA-Tracking.md` "Half Rule" note (NEW-2), which should be verified against the live
  software before commit. The CCA cluster's prior CRITICAL fix continues to hold; its CLS-1 staleness is
  now correctly resolved to Class 43 / 100%.
- **Work in progress** — `Payment.md` (stub, unchanged; empty Payroll section consistent with its marker).
