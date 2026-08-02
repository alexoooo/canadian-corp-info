# Audit Remediation — 2026-07-31 audit (83 findings)

**Date**: 2026-08-02

**Scope**: applies `2026-07-31_Audit_sol-5.6-xhigh.md` (6 CRITICAL / 40 HIGH / 34 MEDIUM / 3 LOW = 83), as
corrected by `2026-08-02_Audit-Review_Opus-5-xhigh.md`, plus the review's four net-new findings `NEW-1`–`NEW-4`.
The review's four "must not be applied as written" corrections were applied first; its five calibrations shaped the
wording; its three "already done elsewhere" fixes were narrowed rather than duplicated.

**Method**: the review's verdict on each finding was the starting point, not the finding's own suggested text — the
playbook's rule is that whoever applies a fix re-derives it from the primary source. Four gated provisions were
re-pulled first-hand before any edit landed (below). Fixes were applied cluster by cluster and located by grepping
quoted text rather than by line number. `scripts/Validate-Docs.ps1` passes: 88 pages indexed, 1,785 local links,
0 long lines, 0 warnings, exit 0.

Session identity, per [Audit Instructions § Session identity](../../docs/Audit-Instructions.md#session-identity):
model display name `Opus 5 (1M context)`, normalised to `Opus-5`; effort `xhigh` read from
`~/.claude/settings.json` `effortLevel`, the documented fallback, with no session override active.

Disposition legend: `fixed` / `refuted` / `deferred-verify` (held for maintainer check) / `pending` / `n/a`.

**Commits are the maintainer's.** All edits are left in the working tree.

---

## Pre-flight: the gated provisions, re-pulled

Three of the review's four corrections turn on statutory text the review itself could not pull cleanly. Each was
re-fetched before the corresponding page was touched:

- **Reg 1100(1)(b)(i)(B)** — "50 per cent of the amount for the year calculated in accordance with Schedule III".
  Confirms that a Class 13 addition is halved in year one regardless of Reg 1100(2), and therefore that
  `OPS-CCA-3`'s instruction to set the half-year flag to `False` would have caused a first-year over-claim.
- **ITA s.230(5)** — retention runs "until the expiration of six years from the day the return for that taxation
  year is filed" where the return was not filed as required. Confirms `FILE-REC-1`'s rule and its wrong citation:
  s.230(4.1) is the electronic-readable-format rule and says nothing about duration.
- **Reg 1100(11)/(12)/(13)** — pulled from the 2017-01-01 consolidation, because the current section page truncates
  at subsection (2.1). Confirms `OPS-RENT-1`'s principal-business exception and the s.1100(13) carve-back.
- **ITA 13(7)(e) with CRA's non-arm's-length guidance** — pay less than the seller paid and your capital cost is
  the seller's cost, with the difference deemed already claimed as CCA; pay more and it is the seller's cost plus
  half the gain. Confirms `SU-1` in the stronger form the review argued for.

---

## The four corrections the review required

### 1. `OPS-CCA-3` — first suggestion refuted, second applied

The audit's fix said "Set the ordinary half-year flag to `False` for Class 13". Not applied: Reg 1100(1)(b)(i)(B)
halves a Class 13 first-year claim anyway, so `False` would double the allowable first-year deduction.

What landed instead is the audit's *second* suggestion. `CCA-Tracking.md` keeps `Half-year Default` = `True` for
Class 13 and gains a new `First-Year Basis` column recording which provision produces the restriction —
`Reg 1100(2)` for the declining-balance classes, `Reg 1100(1)(b)(i)` for Class 13, `—` for Class 14. The column
documentation explains that two different mechanisms reach the same 50% outcome, and why that matters when
reasoning about AIIP. The table now says, in as many words, that Class 13 is "the right flag for the wrong-looking
reason".

### 2. `FILE-REC-1` — rewritten against ITA s.230(5)

`CRA-Administration.md` already cited s.230(4)(b) correctly for the default clock. s.230(5) now sits beside it, in
the TLDR, in the retention section, and on the transaction-records line, with the practical consequence spelled
out: a return filed two years late keeps its records live two years longer than the calendar suggests. The audit's
s.230(4.1) citation is not used anywhere.

### 3. `R-7` and `LA-4` — both consolidations widened

`R-7` was applied across the audit's eight files **plus** the two the review found missing: the worked
`≈ 12.2% → $12,200` in `Salary-Vs-Dividends.md`'s central remuneration table, and `Capital-Vs-Income-Character.md`.
`LA-4` was applied together with `NEW-1` as one sweep — see below.

### 4. `R-10` — Inventory limb refuted, T5008 limb applied

`T5008.md:98`'s "(a settlement-date rate is also defensible)" is gone; the page now states trade-date translation
as the convention and treats any settlement difference as a separate foreign-exchange result.

The Inventory limb was **refuted** and no edit landed. `Inventory-And-COGS.md:180` is a statement about which
*rate source* is acceptable (Bank of Canada versus the corporation's own bank), not about substituting settlement
date for trade date; and the page already books the FX gain or loss on payable settlement to its own P&L line "not
an adjustment to inventory cost", which is precisely what the fix demanded.

---

## The GIFI bank-account sweep — `LA-4` with `NEW-1`

Applied as one change, per the review's "one commit or neither".

The convention is now settled once, on `Ledger-And-Accounts.md`, matching the hand-written account trees in
`T3.md` and `Bookkeeping-Convention.md`:

- `1002-1` **Deposits** — the main CAD operating chequing account
- `1002-2` **Deposits - investment** — brokerage cash
- `1003` **Deposits - USD** — a USD account at a Canadian bank
- `1001` **Cash** — cash on hand and cash instruments only (petty-cash float `1001-1`, undeposited cheques, money
  orders)

The page now carries RC4088's actual definitions of 1001 and 1002 and drops the "equally codeable / either mapping
is fine" concession that made the split defensible in the first place.

Every `1001` bank-cash instance in the guide was then swept — thirteen files, thirty instances. Beyond the audit's
two-file scope: `Starting-Up.md`, `Losses.md`, `Debt-And-Financing.md`, `Deferred-Revenue.md`,
`Government-Assistance.md`, `Receivables-And-Bad-Debts.md`, `Bookkeeping-And-Slips.md`, `Dividends-Examples.md`,
`Owner-Corporation-Transactions.md`, `Payroll.md`.

**Extended past the finding**: the account was also renamed `Cash` → `Deposits` in ~35 uncoded journal lines across
ten further pages (`Expense-Classification.md`, `CRA-Administration.md`, the four Cost-Recovery pages, the two
remaining HST pages, `Paying-Contractors.md`). Without that, the chart of accounts would say `Deposits` while most
worked entries said `Cash` — the same two-convention defect displaced from code to name. Repo-wide grep confirms no
bank-cash `1001` and no `Cash`-named bank account remain; the only surviving `1001` references are the petty-cash
convention itself and one correct GIFI-code illustration at `Small-Business-Tax.md:204`.

No signed-off page needed changing for this item: `T3.md`, `T3-Box-26-Other-Income.md` and `T5008.md` were already
on `1002-1` / `1002-2`, which is why they defined the target.

---

## Disposition of all 83 findings

### Repo-wide

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| R-1 | CRITICAL | fixed | `Small-Business-Tax.md` diagram node + edge and the dividend bullet list split into taxable / capital tracks; `Concept-Map.md` OUT node now sends T2054 to CRA, with new prose on the capital-dividend route |
| R-2 | CRITICAL | fixed | `Small-Business-Tax.md`, `Foreign-Currency.md`; extended to `HST-Registration-And-Filing.md` and `Getting-Paid-In-USD.md` — s.7(b) exclusion named, s.23 identified as the operative provision, and ETA s.132(2)'s Canadian-PE trap added per the review |
| R-3 | HIGH | fixed | `Concept-Map.md`, `Glossary.md`, `Getting-Paid-In-USD.md`: both tests, their different effective times, and associated-person aggregation |
| R-4 | HIGH | fixed, reframed | Headline narrowed per the review so the fix does not delete the four correct statements the finding cited against itself. `Concept-Map.md`'s "Every purchase eventually becomes a tax deduction" now excepts land, shares and denied outlays; the Schedule 1 bridge is stated on `Concept-Map.md`, `Expense-Classification.md`, `Cost-Recovery.md`, `Capital-Cost-Allowance.md`, `CCA-Classification.md`, `CCA-Examples.md`, `Glossary.md` |
| R-5 | HIGH | fixed | `Small-Business-Tax.md` (prose + the `RE -->|cash|` diagram edges), `Business-Acquisition.md`, `Preferred-Share-Consideration.md`, `Estate-Freeze.md`: retained earnings as an equity measure, with liquidity and the solvency tests stated separately |
| R-6 | HIGH | fixed | `Payment.md`, `Small-Business-Tax.md`, `Concept-Map.md`, `Starting-Up.md`: two months as the default, the full CCPC-throughout / SBD-claimed / preceding-year test, and an explicit first-year warning |
| R-7 | HIGH | fixed, widened | Ten files. Convention stated canonically on `Small-Business-Tax.md`; figures recomputed (see V5 on the verify-checklist) |
| R-8 | MEDIUM | fixed | `T2125-And-Expenses.md`, `Home-Office-And-Principal-Residence.md`: CCA forfeits the administrative concession; the use itself is the change in use |
| R-9 | MEDIUM | fixed | `Further-Reading.md`, `HST-Regular-Method.md`: ETA s.217 excludes exclusive commercial use from *imported taxable supply*, so no Division IV tax arises to be recovered |
| R-10 | HIGH | **fixed (T5008) / refuted (Inventory)** | See correction 4 |
| R-11 | HIGH | fixed | `Dividends.md`, `T2-Reporting.md`, `Dividends-Examples.md`, `Capital-Dividend-Account.md`: capacity tested immediately before the dividend becomes *payable*, with the filing date kept separate |

### Overview

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| SBT-3 | HIGH | fixed | All four s.18(1)(p) categories enumerated; "Only" replaced with "severely restricted" |
| OV-1 | MEDIUM | fixed | `Overview.md`: the arc now names both payout routes, salary pre-tax and dividends after-tax |
| CM-3 | MEDIUM | fixed | Acquisition row creates an AFU-pending balance; available-for-use is the row that feeds UCC, with s.13(26) cited in the notes |
| CM-4 | MEDIUM | fixed | "only" → "usual", plus the excess-ROC s.40(3) deemed gain and deemed dispositions |
| CM-5 | MEDIUM | fixed | Employee inclusion (s.6(1)(b) exceptions) separated from corporate deductibility (s.9, s.18(1)(a), s.67); s.15(1) no longer stated as a no-deduction rule |
| SBT-5 | MEDIUM | fixed | "not tracked" → no ITC on most operating inputs, with capital/real-property ITCs and record retention preserved |
| TI-1 | MEDIUM | fixed | Capital-gain framing qualified; the other CDA sources named and linked |
| GL-1 | MEDIUM | fixed | Available-for-use as the earliest of several events, with the statutory long-stop wording the review supplied (357 days after the *end of the taxation year*) |
| FR-1 | MEDIUM | fixed | Death-benefit proceeds less policy ACB immediately before death, not a taxable/non-taxable split |
| FR-3 | MEDIUM | fixed | s.22 described on actual consideration; the face-value requirement removed |
| OV-2 | LOW | fixed | `What This Covers` → `Guide Scope`; `What Is Corporate Tax` → `Corporate Tax`; `What Is Integration` → `The Integration Principle`. Three inbound anchors updated |

### Corporate Lifecycle

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| SC-1 | CRITICAL | fixed | `Share-Capital.md` (TLDR + PUC section), `Starting-Up.md`, `Winding-Down.md` (diagram, final distribution, worked example with the $100 ACB stated). Coordinated with `DIV-PUC-1`'s formulation of s.84(4), per the review |
| SU-1 | CRITICAL | fixed | `Starting-Up.md`: three-branch s.13(7)(e) / s.85(5) rule with the guide's own $900 laptop worked through ($1,500 capital cost, $600 deemed prior CCA, $900 opening UCC), plus the instruction to obtain the owner's original cost. Mirrored on `Owner-Corporation-Transactions.md` |
| CS-1 | HIGH | fixed | Checklist split into directors' resolutions (financial statements, officers) and shareholder resolutions (elect directors, receive statements, waive the auditor). The auditor bullet was already correct and was kept, per the review |
| AVS-1 | HIGH | fixed | New acquisition-of-control section: s.249(4) deemed year-end, s.111(4) capital-loss consequences, s.111(5) same-or-similar-business conditions, and the "inherits tax pools" claim qualified in the TLDR |
| BA-1 | HIGH | fixed | Three routes now distinct in the diagram and the prose, with the target corporation identified as transferor and recipient on an incorporated-target asset sale; `Preferred-Share-Consideration.md` matched |
| SC-2 | MEDIUM | fixed | "generally the full consideration" plus the CBCA s.26(3) exceptions, and stated capital versus PUC divergence for two independent reasons |
| AVS-2 | MEDIUM | fixed | s.167 gives no tax payable on covered supplies, not a GST/HST-free deal; s.167(1.1) exclusions, GST44, and the registrant condition added |
| PSC-1 | MEDIUM | fixed | Three routes: normal deadline, within-three-year late election with penalty (s.85(7)), and post-three-year ministerial acceptance (s.85(7.1)) |
| EF-1 | MEDIUM | fixed, narrowed | Designated-person limb corrected (s.74.5(5); a trust reaches the rules through s.74.5(9)) and the imputation keyed to the s.74.4(3) outstanding amount. The deemed-interest-base limb needed no change — the page already said the amount is reduced by dividends paid |
| WD-1 | MEDIUM | fixed | "retroactively" removed; unrecorded pre-election loss versus post-election loss distinguished |
| BA-3 | LOW | fixed | `What a Share Represents` → `Share Rights`; `The Scenario` → `Acquisition Scenario`; `Two Forks` → `Purchase Structure and Consideration` |

### Bookkeeping

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| FC-1 | CRITICAL | fixed | `FX-Rates-And-Character.md`, `Foreign-Currency.md`, `Year-End-USD-Deposit.md`: source-and-purpose replaces account-location; operating USD keeps income-account character through its use to buy a security, with the result crystallizing at that use (IT-95R ¶4); debt character made facts-and-use |
| NG-1 | CRITICAL | fixed | `Norberts-Gambit.md`: gain → half to Schedule 1 line 113; loss → full amount to Schedule 4; full book loss added back on Schedule 1; s.111(1)(b)/(1.1) stated, with the explicit conclusion that the loss cannot reduce consulting income |
| YE-1 | HIGH | fixed | The August 15 subscription now debits `Prepaid expenses` (1484), releases 139/365 = CAD 1,028.22 at December 31, and carries CAD 1,671.78 forward; s.18(9)(a)(i)/(b) cited. The FX legs and the CAD 160 result are unchanged |
| GP-1 | HIGH | fixed, narrowed | The categorical "recognizes revenue at the invoice date" is qualified against s.12(1)(b), and the unbilled branch links `HST-Bookkeeping.md § Year-end straddle` — which already contains the workflow in full — rather than duplicating it, per the review |
| GP-2 | HIGH | fixed | Rewritten around the source rule: services performed in Canada are foreign-source and outside chapter 3 withholding; W-8BEN-E as foreign/FATCA documentation; a US-performance branch; the actual validity and 30-day-notice rules |
| LA-4 | MEDIUM | fixed, widened | See the GIFI sweep above |
| BC-1 | MEDIUM | fixed | `Bank-Conversions.md` split into a CAD-fee branch and a USD-fee branch with the bridge legs |
| FXR-1 | MEDIUM | fixed | Four methods attributed to archived IT-95R ¶7–9 and labelled archived; S5-F4-C1 used only for s.261, spot rates, sources and period averages |
| FC-3 | MEDIUM | fixed | Year-end accrual branch for unpaid sweep interest (s.12(3)), with the reversal noted so the payment-date entry does not double-count |
| YE-2 | LOW | fixed | CAD 160 called the total economic FX loss, with the March 1 mid-rate identified as what a spread-versus-movement split would need |

### Operations

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| OPS-T5018-1 | HIGH | fixed | $500 threshold (tested before GST/HST) added ahead of the slip branch; Box 22 kept tax-inclusive, with the different bases called out |
| OPS-HST-1 | HIGH | fixed | Threshold base restated as a displayed rule excluding financial services, capital-property sales and qualifying goodwill, with zero-rated supplies retained |
| OPS-HST-2 | HIGH | fixed | Insurance premium made exempt (Schedule V Part VII) and every downstream figure recomputed: ITCs $832 → $754, net tax $5,018 → $5,096, cash difference $1,363.20 → $1,441.20, tax ≈$166 → ≈$169, net benefit ~$1,197 → ~$1,272 |
| OPS-HST-3 | HIGH | fixed | Fiscal quarters and months, ETA ss.243–244, with a non-calendar example |
| OPS-RENT-1 | HIGH | fixed | Reg 1100(12) principal-business exception and the Reg 1100(13) carve-back added, kept distinct from the s.125(7) employee test |
| OPS-CCA-1 | HIGH | fixed, narrowed | Book expensing does not exit the CCA system; Schedule 8 tracking and the Schedule 1 bridge are the weight. Disposition bullet corrected to recapture-then-capital-gain rather than "simply income" |
| OPS-CCA-2 | HIGH | fixed | `YEAR(...)` replaced with `FY Start` / `FY End` range tests throughout; CCA-history and asset-schedule rows keyed to `Tax Year End`; s.249(1) cited |
| OPS-CCA-3 | HIGH | **fixed (2nd suggestion) / 1st refuted** | See correction 1 |
| OPS-CCA-4 | HIGH | fixed | "leave it and let the pool run down" replaced with: stop the claim, correct open years, get advice on statute-barred years; s.20(1)(b) and Reg 1102(1)(a) cited |
| OPS-CCA-5 | HIGH | fixed, both instances | `Capital-Cost-Allowance.md:394-397` rewritten to standby charge plus operating-expense benefit, and the second instance at `:326` the review found (the home-office/personal-use shorthand) fixed with it |
| OPS-CIP-1 | HIGH | fixed | Cancelled-project write-down turned into a classification branch; s.18(1)(a) as necessary but not sufficient against s.18(1)(b) |
| OPS-INV-1 | MEDIUM | fixed | Sales return restores the original carrying amount, then recomputes the average; the perpetual identity explained |
| OPS-HST-4 | MEDIUM | fixed | s.156 relabelled the closely-related-group election for nil consideration; "zero-rated" removed; principal exclusions named |

### Paying Yourself

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| PAY-COMP-1 | HIGH | fixed | New `Total corporate outlay` row and a lead-in stating the columns are unequal, with the equal-outlay method named |
| PAY-REM-1 | HIGH | fixed | Established (AMWA < $3,000 with history) and new-employer (MWA < $1,000) tests split, with monthly remitting until CRA confirms |
| PAY-BEN-1 | HIGH | fixed | New `Non-Cash Taxable Benefits in the Pay Run` section on `Payroll.md` with the entry, the CPP obligation, the insufficient-cash case and PIER; `Owner-Corporation-Transactions.md` no longer calls the benefit slip-only, and adds box 26 |
| PAY-QM-1 | HIGH | fixed | Deemed ITC qualified as regular-method; Quick Method users routed away from the `HST receivable` posting |
| DIV-PUC-1 | HIGH | fixed | Excess over the PUC reduction is the deemed dividend; the PUC portion reduces ACB (s.53(2)(a)(ii)) and can produce a gain (s.40(3)) |
| DIV-WIND-1 | HIGH | fixed | `Dividends.md` and `ERDTOH-NERDTOH.md`: s.84(2) deemed dividend, designation, dividend refund, and s.87/s.88 continuation, replacing the categorical loss claim |
| PAY-RRSP-1 | MEDIUM | fixed | "using room already available" added, with this year's salary creating next year's room stated separately |
| PAY-PUP-1 | MEDIUM | fixed | PUP conclusion made conditional on actual use (s.54), with the income-producing branch and the s.46 floor's limits |
| DIV-PAY-1 | MEDIUM | fixed | s.15(2) claim removed; the real risk (the dividend not counting as paid in that year) stated, and the direction of s.15(2) explained |

### Investments

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| INV-CDA-1 | HIGH | fixed | s.184(3) presented as the principal alternative with a decision branch, shareholder concurrence and the 90-day window; "rarely preferable" removed |
| INV-S6-1 | HIGH | fixed | Part 8 line 875 replaces the Part 1 deemed-proceeds/nil-ACB fiction. Software flow gated — checklist V2 |
| INV-FEE-1 | HIGH | fixed | Two mutually exclusive branches (gross Box 21 + outlay column; net Box 21 + no outlay), with the omitted Part 1 column 140 and Part 4 column 440 fields added |
| INV-S7-1 | HIGH | fixed | Line 019 and Box 032 take the source amount net of attributable expenses, with the "net equals gross for a portfolio holding" case stated and double-deduction warned against. Worksheet derivation gated — checklist V3 |
| INV-CDA-2 | MEDIUM | fixed | Late-election branch: s.83(3) package, s.83(4) estimated penalty, CRA's 90-day demand, and s.220(3.2) relief |
| INV-LP-1 | MEDIUM | fixed | Fiscal-period-end measurement, covered partners, and the s.40(3.15) excluded-interest exception |
| INV-FA-1 | MEDIUM | fixed | 1%-own plus 10%-with-related-persons test stated; the sub-10% related-group limb called out |

### Filing and CRA

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| FILE-REC-1 | HIGH | **fixed against s.230(5)** | See correction 2 |
| FILE-SHORT-1 | HIGH | fixed | All seven conditions listed, labelled a screening list, with the "first four are not enough" warning |
| FILE-ABIL-1 | HIGH | fixed | Ten-year window and the conversion to a net capital loss stated in the body, the 20-year rule qualified, and the continuity table given a typed ABIL row |
| FILE-S44-1 | MEDIUM | fixed | Trigger narrowed to a non-arm's-length *corporation* under s.85(1)/(2) or s.142.7(3); the starting-up link removed from the row and a prose note added explaining why a proprietorship rollover does not trigger S44 |
| FILE-INT-1 | MEDIUM | fixed | 30-days-after-the-latest rule under s.164(5), with filing identified as one input |
| FILE-COLL-1 | MEDIUM | fixed | Large-corporation 50% exception (s.225.1(7)-(8)) added, and the page's TODO corrected — it had asserted the carve-out cannot reach a CCPC |
| FILE-BOOK-1 | MEDIUM | fixed | One convention: instalments debit `Taxes payable` (2680), with a year-end reclassification to `1483` when the balance is a debit. `Payment.md` now defers to `CRA-Administration.md`. Presentation choice flagged — checklist V6 |

### Sole Proprietorship and Personal Tax

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| SP-HST-1 | HIGH | fixed | Fresh-clock claim removed from both pages; ETA s.148 with s.127(2) associate aggregation stated, with the near-threshold warning |
| SP-EI-1 | MEDIUM | fixed | 60-day rescission window (EIA s.152.02(4)) added ahead of the ordinary December 31 rule |
| T1-1 | HIGH | fixed | New `T4 and T5 to the T1` table on `T1-Filing-Basics.md` with the box-to-line map, and the boxes 10/24-versus-11/25 trap called out explicitly |
| MAC-1 | MEDIUM | fixed | Ordinary three-year rule under s.164(1) stated first; the ten-year window described as discretionary relief the Minister *may* grant |

---

## Net-new findings from the review

| Code | Sev | Disposition | Where it landed |
|---|---|---|---|
| NEW-1 | HIGH | fixed | Applied together with `LA-4` — see the GIFI sweep above |
| NEW-2 | MEDIUM | **deferred-verify** | Held. `8250` "Bad debt recoveries" left as-is pending a first-hand read of RC4088 — checklist V1 |
| NEW-3 | MEDIUM | fixed | `Receivables-And-Bad-Debts.md` now shows why the net-of-HST reserve base and the tax-included Quick Method write-off are both right: revenue $5,000 plus the kept spread passed through income, so the whole $5,650 comes back out |
| NEW-4 | MEDIUM | fixed | `Becoming-A-Sole-Proprietor.md` no longer states the $500 box 048 rule flatly; it defers to `Paying-Contractors.md`, which now names itself the canonical statement of the open question. One decision now governs both pages |

---

## Changes beyond the findings

Each of these came out of applying a finding rather than from a fresh pass:

- **`R-2` extended to two more pages.** `HST-Registration-And-Filing.md` and `Getting-Paid-In-USD.md` carried the
  same defect the finding named on two others. The ETA s.132(2) permanent-establishment trap — the review's
  addition, and the case most likely to cause real undercollection by an Ontario consulting CCPC — landed on all
  four.
- **`OPS-CCA-5`'s second instance.** `Capital-Cost-Allowance.md:326` carried the same personal-use-share shorthand
  the finding cited at `:394-397`.
- **The uncoded `Cash` rename.** Ten further pages, described under the GIFI sweep.
- **Two TODOs discharged.** `Salary-Vs-Dividends.md` and `Incorporation-Vs-Sole-Proprietorship.md` asked the
  maintainer to settle mid-year rate quoting; `R-7` is that decision, so both now read "confirm the convention
  applied here" and point at the canonical statement.
- **One TODO premise corrected.** `CRA-Administration.md`'s TODO asserted the large-corporation 50% carve-out
  "does not apply" to a CCPC. It can.
- **`AGENTS.md:35`.** Still described `Payment.md` as "a stub"; the file carries `STATUS: AI GENERATED, REVIEW IN
  PROGRESS` and README shows no stub annotation. Reported by the review as outside the audit's scope; fixed here
  because it is a one-line index-versus-reality correction.
- **Two new sections.** `Payroll.md § Non-Cash Taxable Benefits in the Pay Run` (`PAY-BEN-1`) and
  `Asset-vs-Share.md § Acquisition of control` (`AVS-1`) are the only genuinely new sections; everything else is a
  correction in place.

---

## Not done, and why

- **Content notes 1 to 12** are expansion priorities, not findings, and were not treated as remediation work. The
  Schedule 1 bridge is now *stated* wherever book and tax diverge (note 1's local half), but the operational
  book-to-tax workflow page it asks for is topic-sized. `G-15` contract revenue (note 2) likewise remains open;
  the review narrowed the gap to contractual entitlement, milestones and retainers, since the unbilled-receivable
  mechanic already exists on `HST-Bookkeeping.md`.
- **The audit document's own defects** (four per-finding formats, five H1s, the dropped-candidate list that never
  reached the deliverable, the untraceable retired codes) are process observations for the next cycle, recorded in
  the review. Audits are historical records and are not edited after the fact.
- **No page was promoted, demoted, or re-statused.** Seven signed-off pages were edited and are flagged for
  re-sign-off on the checklist.

---

## Verification

- `pwsh -NoProfile -File scripts/Validate-Docs.ps1` → 95 files link-checked, 88 guide pages indexed, 1,785 local
  links, 0 long lines, **PASSED with 0 warnings**, exit 0.
- `git status` → 71 guide pages plus `AGENTS.md`, alongside the review file and its `Audit-Summary.md` line from
  the prior pass. Nothing committed.
- Repo-wide greps confirm the two sweeps are complete: no bank-cash `1001` and no `Cash`-named bank account remain;
  no `12.2%` figure survives without a period pinned to it.
- Arithmetic reproduced before it was written: the Ontario blend (9% + 3.2% × 181/365 + 2.2% × 184/365 = 11.696%),
  the `HST-Examples.md` chain after the exempt-premium correction, the `Salary-Vs-Dividends.md` dividend column,
  `Dividends-Examples.md` Example B, and the `Year-End-USD-Deposit.md` prepaid split (139/365 × 2,700 = 1,028.22).

Gated items and the re-sign-off list are in `audit/wip/verify-checklist.md`: one finding held (`NEW-2`), six applied
items to confirm, and eleven CRA-sourced figures applied on secondary evidence.
