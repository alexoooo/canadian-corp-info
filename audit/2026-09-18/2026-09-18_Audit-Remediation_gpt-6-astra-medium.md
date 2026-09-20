# Audit Remediation

**Date:** 2026-09-18 (America/Toronto).

**Scope:** Response to the [September 18 audit](2026-09-18_Audit_gpt-6-astra-medium.md) and [independent review](2026-09-18_Audit-Review_Fable-5.1-medium.md). This records edits in the working tree, not committed changes or maintainer sign-off.

**Session identity:** gpt-6-astra, effort medium, read programmatically from the active Codex rollout's latest turn_context, selected by CODEX_SESSION_ID. Provenance is saved in ignored audit/wip/remediation/session-identity.json. No configuration default or old audit supplied either token.

**Method:** Main agent plus one side agent, within the playbook's concurrency cap. Re-fetched primary sources, read affected contexts, recomputed examples, searched dependent pages and preserved page markers and heading review tags. Existing audit/review files and scratch were retained. This is remediation, not a fresh audit or a post-commit independent follow-up.

## Result

- **46 findings fixed**
- **10 findings deferred-verify** for maintainer-driven evidence on five signed-off pages
- R-2 and R-6 have non-signed-page corrections applied, but remain deferred until their signed-page portions are settled
- Original severities retained for traceability; implementation priority is a separate column
- No finding refuted; ACB-1 remains an optional clarification rather than a priority repair
- No page promoted, no heading status tag removed, no commit created

The signed-page gate is from [Audit Instructions — Remediation](../../docs/Audit-Instructions.md#remediation): “a fix touching a signed-off page is applied only on maintainer-driven evidence”. Agent-fetched evidence and exact proposals are supplied below for that review. The affected pages will require maintainer re-sign-off after any repair.

## Disposition Ledger

Disposition legend: fixed / refuted / deferred-verify / pending / n/a. “Fixed” means changed and checked in this working tree; it is not page sign-off. Original finding codes remain cycle-local.

| Code | Original severity | Disposition | Implementation priority | Affected audit pages | Change and evidence |
|---|---|---|---|---|---|
| R-1 | CRITICAL | fixed | First | [Payroll.md](../../guide/Paying-Yourself/Payroll.md), [Owner-Corporation-Transactions.md](../../guide/Paying-Yourself/Owner-Corporation-Transactions.md) | Annual non-cash-only CPP exception separated from ordinary cash-payroll case; T4 reporting retained. T4130. |
| R-2 | CRITICAL | deferred-verify | Maintainer gate | [ERDTOH-NERDTOH.md](../../guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md), [Dividends.md](../../guide/Paying-Yourself/Dividends/Dividends.md), [T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md](../../guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md) | T3 qualification applied; canonical pool formula and signed summaries await maintainer review. ITA 129(4). |
| R-3 | HIGH | deferred-verify | Maintainer gate | [Dividends.md](../../guide/Paying-Yourself/Dividends/Dividends.md), [ERDTOH-NERDTOH.md](../../guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md) | Exact replacements prepared for both signed dividend pages. ITA 129(1)(a)(ii)(B). |
| R-4 | HIGH | fixed | First | [T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md](../../guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md), [T5.md](../../guide/Investments/T5/T5.md) | Keep carrying expenses in S125; S7 classifies net income, with no duplicate S1 deduction. RC4088; S7 line 019. |
| R-5 | HIGH | fixed | Next | [Capital-Cost-Allowance.md](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md), [Cost-Recovery.md](../../guide/Operations/Cost-Recovery/Cost-Recovery.md), [Materials-And-CIP.md](../../guide/Operations/Cost-Recovery/Materials-And-CIP.md) | Canonical elapsed-day test replaces counting two tax years; companions and Glossary link to it. ITA 13(27)(b)/(28)(c). |
| R-6 | MEDIUM | deferred-verify | Maintainer gate | [T2-Schedules.md](../../guide/Filing-And-CRA/T2-Schedules.md), [Dividends.md](../../guide/Paying-Yourself/Dividends/Dividends.md) | T2-Schedules corrected to AAII; signed Dividends wording awaits review. ITA 125(5.1)/(7); S7. |
| R-7 | HIGH | fixed | Next | [HST-Regular-Method.md](../../guide/Operations/HST/HST-Regular-Method.md), [Inventory-And-COGS.md](../../guide/Operations/Cost-Recovery/Inventory-And-COGS.md) | Federal import GST separated from provincial self-assessment, including regular/Quick Method boundaries. ETA 220.07; CRA imports/RC4058. |
| PAY-1 | CRITICAL | fixed | First | [Payroll.md](../../guide/Paying-Yourself/Payroll.md) | Balanced incremental employee deductions, reduced cash credit and separate employer CPP expense. T4130; arithmetic. |
| DIV-1 | CRITICAL | deferred-verify | Maintainer gate | [Dividends.md](../../guide/Paying-Yourself/Dividends/Dividends.md) | Correct transition direction and current-regime distinction prepared. ITA 89(1)/(8). |
| LOSS-1 | CRITICAL | fixed | First | [Losses.md](../../guide/Filing-And-CRA/Losses.md) | Corporate related-debt exclusion added, distinguished from shares and ordinary capital losses. ITA 39(1)(c)(iii)/(iv). |
| CRA-1 | MEDIUM | fixed | Next | [CRA-Administration.md](../../guide/Filing-And-CRA/CRA-Administration.md) | Both inspection-power links corrected to section 231.1. |
| T1135-1 | MEDIUM | fixed | Next | [T1135.md](../../guide/Investments/T1135.md) | Both foreign-reporting links corrected to section 233.3. |
| T3FX-1 | CRITICAL | fixed | First | [T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md](../../guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md) | Removed optional withholding add-back; declining the credit does not create a deduction. ITA 104(22.1); IT-506 para 11. |
| T3FX-2 | CRITICAL | fixed | Next | [T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md](../../guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md) | Country reconciliation includes Box 21 foreign taxable-gain footnotes and other qualifying income. CRA T3 instructions. |
| T3CG-1 | MEDIUM | fixed | Next | [T3-Box-21-Capital-Gains-Distribution.md](../../guide/Investments/T3/T3-Box-21-Capital-Gains-Distribution.md) | Box 21 defined as full gain before inclusion rate. CRA T3 instructions. |
| ACB-1 | MEDIUM | deferred-verify | Maintainer gate | [Adjusted-Cost-Base.md](../../guide/Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md) | Optional scope clarification prepared; signed glossary context preserved pending review. ITA 69; 86.1. |
| T5-1 | HIGH | fixed | First | [T5.md](../../guide/Investments/T5/T5.md) | Capitalized interest debits GIC carrying value, not brokerage cash; accrual credits retained. No-cash event; RC4088. |
| T5CG-1 | CRITICAL | fixed | Next | [T5-Box-18-Capital-Gains-Dividends.md](../../guide/Investments/T5/T5-Box-18-Capital-Gains-Dividends.md) | Cash/reinvestment branches, investment debit and ACB increase added; opening statement corrected too. Manulife June 22, 2026 release. |
| CCAT-1 | CRITICAL | fixed | First | [CCA-Tracking.md](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Tracking.md) | Replaced universal uplift with bounded per-class calculation, disposition allocation and pre-CCA recapture/terminal-loss tests. ITR 1100(2). |
| CCAT-2 | HIGH | fixed | First | [CCA-Tracking.md](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Tracking.md), [Capital-Cost-Allowance.md](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md) | AIIP/RIIP windows, alternative eligibility routes, ZEV distinction and factor selection separated. ITR 1104(4)/(4.01). |
| CCA-1 | CRITICAL | fixed | First | [Capital-Cost-Allowance.md](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md) | Book floor retained; unsupported blanket tax tolerance/timing election removed; expense add-back and CCA deduction separated. ITA 18(1)(b); 20(1)(a). |
| CCAE-1 | HIGH | fixed | First | [CCA-Examples.md](../../guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Examples.md) | Year-3 S1 includes $400 recapture, separate from book gain removal and CCA/terminal loss. ITA 13(1); arithmetic. |
| INV-1 | HIGH | fixed | First | [Inventory-And-COGS.md](../../guide/Operations/Cost-Recovery/Inventory-And-COGS.md) | Perpetual shrinkage reconciles through lower closing inventory, without another direct-cost addition. RC4088; $100/$10/$90 counterexample. |
| INV-2 | HIGH | fixed | Next | [Inventory-And-COGS.md](../../guide/Operations/Cost-Recovery/Inventory-And-COGS.md) | Exclude others’ goods held here; include owned goods at consignee. CRA audit manual chapter 13. |
| DR-1 | CRITICAL | fixed | Next | [Deferred-Revenue.md](../../guide/Operations/Deferred-Revenue.md) | Substance-based deposit distinction, application and qualifying forfeiture branches, balanced tax-inclusive forfeiture entry. ETA 168(9)/182. |
| HSTR-1 | HIGH | fixed | Next | [HST-Regular-Method.md](../../guide/Operations/HST/HST-Regular-Method.md) | Full line 101 revenue scope and optional electronic split; example label corrected. RC4022. |
| HSTR-2 | HIGH | fixed | Next | [HST-Regular-Method.md](../../guide/Operations/HST/HST-Regular-Method.md) | Separate capital personal-property and real-property acquisition/change-in-use branches. ETA 169/199/200/206; RC4022. |
| HSTR-3 | HIGH | fixed | Next | [HST-Regular-Method.md](../../guide/Operations/HST/HST-Regular-Method.md) | Direct-shipment-date customs FX; ITC uses actual CAD tax charged. CBSA D13-2-3 para 2. |
| HSTE-1 | HIGH | fixed | First | [HST-Examples.md](../../guide/Operations/HST/HST-Examples.md) | Credit moved to 107; 105/106/108/109 recomputed without changing net tax. RC4058. |
| SBT-1 | CRITICAL | deferred-verify | Maintainer gate | [Small-Business-Tax.md](../../guide/Overview/Small-Business-Tax.md) | Four statutory PSB categories and overarching condition prepared for signed page. ITA 18(1)(p). |
| CM-1 | CRITICAL | deferred-verify | Maintainer gate | [Concept-Map.md](../../guide/Overview/Concept-Map.md) | Shareholder’s shares separated from corporate assets in proposed correction. ITA 70(5)(a). |
| CM-2 | CRITICAL | deferred-verify | Maintainer gate | [Concept-Map.md](../../guide/Overview/Concept-Map.md) | Proposed loan-benefit wording excludes principal already included in income. ITA 80.4(3)(b). |
| CM-3 | HIGH | deferred-verify | Maintainer gate | [Concept-Map.md](../../guide/Overview/Concept-Map.md) | Proposed CDA wording preserves cumulative loss history; counterexample included. ITA 89(1). |
| SBT-2 | CRITICAL | deferred-verify | Maintainer gate | [Small-Business-Tax.md](../../guide/Overview/Small-Business-Tax.md) | Proposed wording separates CRA filing from corporate-law financial statements and audit waiver. CBCA 155; Regulations 71. |
| FR-1 | MEDIUM | fixed | Next | [Further-Reading.md](../../guide/Overview/Further-Reading.md) | UHT framed as 2022–2024 historical compliance; no return/tax for 2025 onward. UHTA 1.1; CRA UHTN15. |
| FR-2 | MEDIUM | fixed | Next | [Further-Reading.md](../../guide/Overview/Further-Reading.md) | Insurance citation annotation now matches proceeds-minus-policy-basis rule. ITA 89(1), CDA paragraph (d). |
| AVS-1 | CRITICAL | fixed | First | [Asset-vs-Share.md](../../guide/Corporate-Lifecycle/Business-Acquisition/Asset-vs-Share.md) | Short year consumes rather than resets loss carryforward time. ITA 111(1)(a); 249(4). |
| AVS-2 | CRITICAL | fixed | First | [Asset-vs-Share.md](../../guide/Corporate-Lifecycle/Business-Acquisition/Asset-vs-Share.md) | Loss business must continue; similar-business income is a separate limitation limb. ITA 111(5)(a). |
| WD-1 | CRITICAL | fixed | First | [Winding-Down.md](../../guide/Corporate-Lifecycle/Winding-Down.md) | CDA payable-time test includes intervening loss after early election. ITA 83(2)(a). |
| AVS-3 | MEDIUM | fixed | Next | [Asset-vs-Share.md](../../guide/Corporate-Lifecycle/Business-Acquisition/Asset-vs-Share.md) | Conditional buyer registration and correct election filing deadline. ETA 167(1)(b)/(1.1). |
| WD-2 | CRITICAL | fixed | First | [Winding-Down.md](../../guide/Corporate-Lifecycle/Winding-Down.md) | Final T2 after actual dissolution in prose, diagram and example. T4012 line 078; separate clearance-workflow follow-up below. |
| EF-1 | HIGH | fixed | Next | [Estate-Freeze.md](../../guide/Corporate-Lifecycle/Business-Acquisition/Estate-Freeze.md) | Distinguished s.86, s.84.1 and s.85 PUC limits; companion preferred-share shorthand corrected. ITA 86(2.1); 84.1; 85(2.1). |
| EF-2 | CRITICAL | fixed | Next | [Estate-Freeze.md](../../guide/Corporate-Lifecycle/Business-Acquisition/Estate-Freeze.md) | Qualified attribution offsets, redemption-dividend exclusion and outstanding-amount reduction. ITA 74.4(2)/(3). |
| LP-1 | CRITICAL | fixed | First | [T5013.md](../../guide/Investments/T5013.md) | Period-end deficit test precedes current-period income addition; professional exception and later elective loss distinguished. ITA 40(3.1)–(3.12); 53(1)(e). |
| EC-1 | MEDIUM | fixed | Next | [Expense-Classification.md](../../guide/Bookkeeping/Expense-Classification.md) | Detailed codes mapped to available T1178 aggregates. RC4088 GIFI-Short instructions. |
| HST-1 | HIGH | fixed | Next | [HST.md](../../guide/Operations/HST/HST.md) | Branch accounts share parent reporting periods and Quick Method election. CRA memorandum 2-4. |
| HST-2 | MEDIUM | fixed | Next | [HST.md](../../guide/Operations/HST/HST.md) | Prompted/unprompted VDP distinction and audit/investigation limit. CRA memorandum 16-5-1. |
| DEBT-1 | MEDIUM | fixed | Next | [Debt-And-Financing.md](../../guide/Operations/Debt-And-Financing.md) | Second-following-year unpaid test separated from third-year income inclusion and agreement alternative. ITA 78(1). |
| FXC-1 | MEDIUM | fixed | Next | [Bookkeeping-Convention.md](../../guide/Bookkeeping/Foreign-Currency/Bookkeeping-Convention.md) | Removed universal software-equivalence claim; retained explicit bridge convention and documented Intuit settlement difference. |
| NG-1 | MEDIUM | fixed | Next | [Norberts-Gambit.md](../../guide/Bookkeeping/Foreign-Currency/Norberts-Gambit.md) | Dated manual FX tier/minimum and separate automatic-conversion route. IBKR Canada pricing. |
| TR-1 | HIGH | fixed | Next | [TFSA-And-RRSP-Contributions.md](../../guide/Personal-Tax/TFSA-And-RRSP-Contributions.md) | RRSP refund income, conditional offset deduction, T3012A approval and T746/withholding steps. CRA unused-contribution workflow. |
| DM-1 | HIGH | fixed | Next | [Donation-And-Medical-Credits.md](../../guide/Personal-Tax/Donation-And-Medical-Credits.md) | Prior claims and reimbursement entitlement removed from medical pool, with statutory exception. ITA 118.2; CRA guidance. |
| DM-2 | MEDIUM | fixed | Next | [Donation-And-Medical-Credits.md](../../guide/Personal-Tax/Donation-And-Medical-Credits.md) | Federal medical figures labelled; Ontario separate thresholds/limits noted. Ontario official tax-provision descriptions. |
| SP-CPP-1 | HIGH | fixed | Next | [CPP-And-The-T1.md](../../guide/Sole-Proprietorship/CPP-And-The-T1.md), [T1-Filing-Basics.md](../../guide/Personal-Tax/T1-Filing-Basics.md) | Dates and three instalment methods single-sourced in T1 Filing Basics; circular and hub links repaired. CRA instalment guidance. |
| SP-HST-1 | HIGH | fixed | Next | [HST-For-Sole-Proprietors.md](../../guide/Sole-Proprietorship/HST-For-Sole-Proprietors.md) | Qualifying individual annual-filer balance/return deadlines distinguished. ETA 228(2)(a); 238(1)(a)(ii). |
| SP-EI-1 | MEDIUM | fixed | Next | [CPP-And-The-T1.md](../../guide/Sole-Proprietorship/CPP-And-The-T1.md) | Corrected EIA subsection labels and retained exceptions. EIA 152.02(4)/(6)/(7). |

## Decisions That Differ from the Review

### CCA Factors

The complete [ITR 1100(2)](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-1100.html) A/A.1/B/B.1/C terms were directly readable. A.1 confirms the post-2024 regime's ordinary 0.5 uplift before 2030, Class 12's nil uplift, and the class-specific computer factor. The prior truncation is not an outstanding verification gate. [ITR 1104(4)/(4.01)](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-1104.html) confirms both alternative eligibility routes and RIIP's pre-2034 available-for-use boundary.

The tracker now supplies a bounded one-regime/one-factor calculation with disposition allocation. Mixed AIIP/RIIP, multiple-factor straddle years, assistance and special transfers explicitly require the full regulation. This restriction is deliberate: summing independent per-asset uplifts would recreate the defect.

### Bookkeeping Floor

The bookkeeping policy remains. No primary authority was established for the review's blanket claim that all below-floor items are currently deductible for tax and never reach Schedule 8. That claim was removed rather than treated as a maintainer preference capable of changing tax character. [ITA 18(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) and [20(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) support separate tax classification and CCA. No universal administrative tolerance is asserted.

### Imported Goods

[ETA 220.07(2)(a)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-220.07.html) confirms the exclusive-commercial-use exception but excludes specified motor vehicles and Quick Method users. The corrected regular-method page, Quick Method pointer and inventory import subsection preserve those boundaries. The review's proposed exception alone was incomplete.

## Numerical and Boundary Checks

| Check | Expected result | Result |
|---|---|---|
| Payroll: benefit offset, employee CPP 100, tax 200, employer CPP 100 | Equal debits/credits; cash payment reduced by 300; liability increases 400 | Pass |
| GIC: 2,000 capitalized interest, 504 accrual already booked | GIC rises 2,000; new income 1,496; cash unchanged | Pass |
| Class 12 eligible software, 1,000 cost, nil opening | CCA 1,000; no artificial recapture | Pass |
| Class 8: opening 1,000, eligible 1,000, ordinary 400, dispositions 600 | Adjustment 400; CCA 440; closing 1,360 | Pass |
| Class 50: opening 1,000, eligible additions 2,000 | CCA 2,550 including opening-pool deduction; closing 450 | Pass |
| Class 8: opening 1,000, ordinary additions 400, dispositions 600 | No first-year adjustment; CCA 160; closing 640 | Pass |
| Laptop disposal | Remove 400 book gain and add 400 recapture; taxable amount 400 | Pass |
| Inventory opening 100, shrinkage 10, closing 90 | COGS 10, not 20 | Pass |
| Quick Method | 105: 4,474.80; 106: 520; 107: 300; 108: 820; 109: 3,654.80 | Pass |
| Ontario taxable forfeiture, tax-inclusive 1,130 | Revenue 1,000 plus HST 130 | Pass |
| Ordinary LP: ACB 1,000, distributions 1,200, current-period income 300 | Period-end deemed gain 200 is not cured by the later income addition | Pass |
| Available-for-use: acquisition-year end Dec 31, 2026 | July 1, 2027 start fails 357-day test; Jan 1, 2028 start satisfies it | Pass |
| Non-cash-only remuneration for whole year | No employee withholding/employer CPP under the exception; T4 reporting retained | Pass |
| Foreign credit: nil Box 25, foreign taxable gain in Box 21 footnote | Reconcile country income; do not presume nil credit room | Pass |
| Capital dividend: early election followed by loss before payable time | Loss affects capacity at payable time | Pass |
| HST capital use: 50% commercial use | Personal property: no ITC; real property: proportional, subject to conditions | Pass |

## Verification Sources

Primary sources were fetched during this remediation rather than accepted from the earlier reports. Some Justice URLs required the basic-HTML query variant; Schedule 7 PDFs opened through links on the CRA form page after direct URL attempts failed. Shell network access failed; no successful shell fetch is claimed.

- [CRA T4130](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4130/employers-guide-taxable-benefits-allowances.html): non-cash-only CPP exception and T4 reporting
- [RC4088](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html): financial-statement reporting, GIFI-Short aggregation and inventory presentation
- [Schedule 7, 2025](https://www.canada.ca/content/dam/cra-arc/formspubs/pbg/t2sch7/t2sch7-25e.pdf): AII/AAII and net foreign income
- [ITA 39](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html): corporate ABIL debt exclusion
- [ITA 104](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html) and [IT-506](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it506/archived-foreign-income-taxes-a-deduction-income.html): limited foreign-tax deeming
- [CRA T3 instructions](https://www.canada.ca/en/revenue-agency/services/tax/trust-administrators/t3-slip/complete-t3-slip.html): Box 21 amount and foreign-gain footnotes
- [Manulife June 22, 2026](https://www.newswire.ca/news-releases/manulife-investments-announces-final-reinvested-capital-gains-distributions-for-etf-series-of-manulife-corporate-class-funds-819921186.html): reinvested corporate-class gains and ACB
- [ITA 40](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html?wbdisable=true) and [53](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-53.html): LP deficit timing
- [ITA 13](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html): recapture and available-for-use fallback
- [ITA 78](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-78.html): related-party unpaid expense
- [CRA UHTN15](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/uhtn15/questions-answers-underused-housing-tax.html) and [UHTA](https://laws-lois.justice.gc.ca/eng/acts/U-0.5/page-1.html): historical UHT boundary
- [Intuit multicurrency guide](https://intuitglobal.intuit.com/delivery/cms/prod/sites/default/education.intuit.ca/downloads/qbo/Appendix-B-Multicurrency-in-QuickBooks-Online.pdf): settlement FX
- [IBKR Canada](https://www.interactivebrokers.ca/en/pricing/commissions-spot-currencies.php): manual FX pricing

HST and lifecycle/personal source links are preserved in the companion verification detail below.

## Remaining Work and Limits

- Obtain maintainer-driven evidence for the ten signed-page proposals below, apply accepted corrections and flag those five pages for re-sign-off
- Complete the separate clearance-workflow check exposed while repairing WD-2: reconcile the proposed distribution cutoff, CRA clearance documents and actual dissolution-period return with CRA or the corporation's adviser
- Preserve existing software-only verification gates; no FutureTax return or live Google Sheets tracker was executed
- Run a post-commit independent follow-up against this record's final corrections, including the prior cycle's regressions
- A consolidated book-to-tax tutorial is an optional separate addition, not necessary to close these individual findings

The clearance question does not undo WD-2's verified actual-dissolution-date correction. It prevents treating the entire wind-down sequence as newly certified.

## Validation

The documentation validator passed: 108 current Markdown files, 95 indexed guide pages, 2,044 local links and 117 GIFI account-tree codes; zero warnings and zero changed-line length warnings. Thirteen arithmetic checks passed. A comparison against HEAD confirmed that all 39 changed guide pages were already pending review, their first-line status markers are unchanged, and every protected heading tag remains intact. The ledger contains all 56 finding codes (46 fixed, 10 deferred-verify). No tax-software execution or maintainer sign-off is claimed.


## HST and Deferred-Revenue Verification Detail

### Primary Sources Re-Fetched

- [CRA imports](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/gst-hst-businesses/charge-collect-imports-exports.html): federal border collection and line 405
- [ETA 220.07](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-220.07.html): (2)(a) exception excludes specified motor vehicles and Part IV/V streamlined-method registrants
- [CRA RC4058](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4058/quick-method-accounting-gst-hst.html): line 107 credit, line 108 sum; provincial self-assessment on imported commercial goods under Quick Method
- [CRA RC4022](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4022/general-information-gst-hst-registrants.html): full line 101 instructions directly returned (not search-only), capital real-property table
- [CBSA D13-2-3](https://www.cbsa-asfc.gc.ca/publications/dm-md/d13/d13-2-3-eng.html): paragraph 2 direct-shipment exchange rate
- [CRA 2-4](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/2-4/branches-divisions.html): paragraphs 3–6 and example
- [CRA 16-5-1](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/16-5-1/voluntary-disclosures-program.html): paragraphs 14–20
- [CRA deposits memorandum](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/g300-6-8/deposits-gst-300-6-8.html): paragraphs 5–10; historical 7% examples not reused
- [ETA 168](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html): (9), refundable or not
- [ETA 182](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-182.html): qualifying Canadian taxable non-zero-rated supply, breach/modification/termination, tax-included amount
- [ETA 206](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-206.html): corporate real-property changes and basic tax content
- [ETA 199](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-199.html) and [200](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-200.html): capital personal-property deemed tax based on basic tax content

### Adjacent Corrections and Checks

- Capital-use change language incorrectly said proportional to residual fair market value; changed to statutory basic tax content, directly verified in 199(3)/200(2).
- Regular method's 105/108 summary now includes adjustments, consistent with Quick Method example and CRA return instructions.
- Inventory's unconditional registrant import ITC corrected for Quick Method inventory denial.
- Search of HST pages and Deferred Revenue found no stale date-of-accounting, different-branch-period, pre-contact VDP, or prepayment-from-day-one text.
- Quick Method arithmetic: 50850 × .088 = 4474.80; 520 + 300 = 820; 4474.80 - 820 = 3654.80.
- Cash/income checks: 5850 - 4174.80 = 1675.20; 5096 - 3654.80 = 1441.20; 1675.20 - 234 = 1441.20.
- New forfeiture example: 1130 × 13/113 = 130; 1000 + 130 = 1130, journal balances.
- Import boundary: exclusive commercial use relieves ordinary regular-method registered importer; Quick Method does not inherit that relief.
- Real-property boundary: 50% commercial use gives proportional 50% ITC (subject to eligibility), not automatic denial; personal property 50% stays denied.
- Validator passed with zero warnings after substantive edits; final additions are links and labels, main will run final combined validation.
- No deferred verification for these eight codes.


## Lifecycle and Personal-Tax Verification Detail

### Source URLs Actually Retrieved

- [section 111](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html)
- [section 249](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.html)
- [section 83](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html)
- [section 167](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-167.html)
- [section 85](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.html)
- [section 84.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.1.html)
- [section 86](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-86.html)
- [section 74.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-74.4.html)
- [t2 corporation income tax guide chapter 1 page 1 t2 return](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012/t2-corporation-income-tax-guide-chapter-1-page-1-t2-return.html)
- [withdrawing unused contributions](https://www.canada.ca/en/revenue-agency/services/tax/individuals/topics/rrsps-related-plans/making-withdrawals/withdrawing-unused-contributions.html)
- [lines 33099 33199 eligible medical expenses you claim on your tax return](https://www.canada.ca/en/revenue-agency/services/tax/individuals/topics/about-your-tax-return/tax-return/completing-a-tax-return/deductions-credits-expenses/lines-33099-33199-eligible-medical-expenses-you-claim-on-your-tax-return.html)
- [section 118.2](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.2.html)
- [provisions](https://budget.ontario.ca/2025/fallstatement/provisions.html)
- [section 152.02](https://laws-lois.justice.gc.ca/eng/acts/E-5.6/section-152.02.html)
- [section 238](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-238.html)
- [section 228](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-228.html)
- [options calculate](https://www.canada.ca/en/revenue-agency/services/payments/payments-cra/individual-payments/income-tax-instalments/options-calculate.html)
- [who pays instalments](https://www.canada.ca/en/revenue-agency/services/payments/payments-cra/individual-payments/income-tax-instalments/who-pays-instalments.html)
- [due dates](https://www.canada.ca/en/revenue-agency/services/payments/payments-cra/individual-payments/income-tax-instalments/due-dates.html)
- [Instalment chart fill 26e.pdf](https://www.canada.ca/content/dam/cra-arc/migration/cra-arc/tx/ndvdls/tpcs/ncm-tx/pymnts/nstlmnts/Instalment-chart-fill-26e.pdf)

### Checks and Scope Limits

- Validator passed, zero warnings, following these edits (other main-thread edits also present).
- git diff --check flags intentional Markdown double-space line breaks required by house style.
- No altered numeric worked-example inputs. WD example: 150000 - 20000 - 13043 + 5000 = 121957; 121957 - 100 = 121857.
- Boundary checks: an early capital-dividend election does not protect against a loss before payable time; a loss afterward does not reduce historical capacity.
- Instalment checks: ordinary four quarters total 100%; first August-reminder option 75% + 25% = 100%.
- Searched scope for old loss-clock, same/similar-business, post-election-loss, final-T2 ordering, EI citations and instalment pointers.
- Fixed stale Personal-Tax hub and related descriptions after choosing T1 Filing Basics as canonical owner.
- No deferred source verification among assigned codes.
- Adjacent issue sent to main: T4012 line 078 lists a final T2 assessment among clearance documents, while existing winding-down page uses pre-distribution clearance before dissolution. Actual final-T2 order was fixed; full clearance workflow should receive separate reconciliation before page sign-off.
- Scope extended by main: corrected Preferred-Share-Consideration.md's elected-amount PUC shorthand and citation annotation under EF-1, adding boot and the s.84.1 override with a link to Estate Freeze.


## Signed-Page Proposals

No guide edits applied. Ten findings remain deferred-verify pending maintainer-driven evidence and re-sign-off (docs/Audit-Instructions.md). Old snippets below are extracted from current files. Primary sources were re-fetched in this session. No fresh audit or sign-off is implied.


### R-2 — refundable Part I limits

Verified [ITA 129(4), NERDTOH definition paragraph(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html), all three limbs. The relevant factor is [248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html): 1/(A−B). A = 38% under [123(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-123.html), B = 13% for a 2026 year under [123.4(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-123.4.html), hence 4. Do not confuse s.95 relevant tax factor. [257](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-257.html) floors negative algebraic results.


Page: `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md`

Old:

```markdown
*Refundable Part I tax on AII* (ITA s.129(4)):
- Adds to NERDTOH only, never ERDTOH
- 30⅔% of AII for the year
- AII is interest, foreign income, the taxable portion of capital gains, and most T3 Box 26 amounts
  - The Box 26 amounts come from index ETFs structured as mutual fund trusts (see [T3-Box-26-Other-Income.md](../../Investments/T3/T3-Box-26-Other-Income.md))

AII *adds* to NERDTOH at 30⅔%.  
```

Proposed:

```markdown
*Refundable Part I tax on AII* (ITA s.129(4)):
- Adds to NERDTOH only, never ERDTOH
- For a corporation that was a CCPC throughout the year, the addition is the least of:
  - `MAX(0, 30⅔% × AII − MAX(0, NBFTC − 8% × FII))`
  - `30⅔% × MAX(0, taxable income − SBD base − (100 ÷ 38⅔) × NBFTC − 4 × BFTC)`
  - Part I tax payable for the year
- `NBFTC` and `BFTC` are the federal foreign tax credits deducted under s.126(1) and s.126(2)
- `FII` is foreign investment income as defined in s.129(4)
- `SBD base` is the least of the amounts under s.125(1)(a), (b), and (c), not the SBD tax deduction
- The factor `4` applies to a 2026 year: the s.248(1) relevant factor is `1 ÷ (38% − 13%)`
- AII includes interest, foreign investment income, net taxable capital gains, and most T3 Box 26 amounts
  - See [T3 Box 26](../../Investments/T3/T3-Box-26-Other-Income.md)

The addition equals 30⅔% of AII only when the foreign-credit reduction and other limits do not bind.  
```


Page: `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md`

Old:

```markdown
- AII → NERDTOH (30⅔% refundable Part I); capital gain → taxable ½ into AII, non-taxable ½ → CDA
```

Proposed:

```markdown
- AII → NERDTOH (refundable Part I, subject to limits); capital gain → taxable ½ into AII, non-taxable ½ → CDA
```


Page: `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md`

Old:

```markdown
    AII -->|+30⅔% Part I refundable| NERDTOH
```

Proposed:

```markdown
    AII -->|refundable Part I, subject to limits| NERDTOH
```


Page: `guide/Overview/Small-Business-Tax.md`

Old:

```markdown
    AII -->|refundable 30⅔%| NERDTOH
```

Proposed:

```markdown
    AII -->|refundable Part I, subject to limits| NERDTOH
```


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
    AII -->|+30⅔% Part I| NERDTOH
```

Proposed:

```markdown
    AII -->|refundable Part I, subject to limits| NERDTOH
```


Page: `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md`

Old:

```markdown
    - Refundable Part I tax on AII (30⅔%); destination rule for Part IV tax
```

Proposed:

```markdown
    - Refundable Part I least-of calculation; destination rule for Part IV tax
```


Page: `guide/Paying-Yourself/Dividends/Dividends.md`

Old:

```markdown
- Generates a refundable Part I tax addition to NERDTOH equal to 30⅔% of AII (ITA s.129(4))
```

Proposed:

```markdown
- Generates a refundable Part I addition to NERDTOH, subject to the [least-of calculation](ERDTOH-NERDTOH.md#additions)
```


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
  - Interest and foreign income → NERDTOH (+30⅔%)
```

Proposed:

```markdown
  - Interest and foreign income → AII → refundable Part I addition to NERDTOH, subject to limits
```


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
  - Capital gains → taxable ½ to NERDTOH, non-taxable ½ to CDA
```

Proposed:

```markdown
  - Capital gains → taxable ½ into AII; non-taxable ½ enters the cumulative CDA calculation
```


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
| Earn AII (interest, foreign) | | | | + 30⅔% of AII |
```

Proposed:

```markdown
| Earn AII (interest, foreign) | | | | Refundable Part I addition, subject to limits |
```


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
| Realize capital gain | | + non-taxable ½ | | + 30⅔% of taxable ½ |
```

Proposed:

```markdown
| Realize capital gain | | Recompute cumulative capital-gains component | | Taxable half enters AII; refundable Part I limits apply |
```


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
- A capital gain's taxable half is part of AII, so it also adds to NERDTOH
```

Proposed:

```markdown
- A capital gain's taxable half enters AII; the NERDTOH addition follows the [least-of calculation](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md#additions)
```


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
    - ERDTOH and NERDTOH definitions, 30⅔% Part I on AII, and the 38⅓% pool rates (s.129(4))
```

Proposed:

```markdown
    - ERDTOH and NERDTOH definitions, refundable Part I limits, and the 38⅓% pool rates (s.129(4))
```


Arithmetic: AII = FII = $1,000; NBFTC = $150; BFTC = $0; taxable income = $1,000; SBD base = $0; Part I payable above the other limits. Limb 1 = 306.6667 − 70 = 236.6667. Limb 2 = (1,000 − 150 × 75/29) × 23/75 = 187.7011. Addition $187.70, not $306.67. Non-signed T3 branch already handled separately.


### R-3 — ERDTOH spillover

Verified [ITA 129(1)(a)(ii)(B)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html).


Page: `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md`

Old:

```markdown
Each is recovered through one specific dividend flavour paid out.  
```

Proposed:

```markdown
Eligible dividends recover ERDTOH; non-eligible dividends recover NERDTOH first, then residual ERDTOH.  
```


Page: `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md`

Old:

```markdown
- *ERDTOH*: previously paid corporate tax, recovered when an eligible dividend is paid
```

Proposed:

```markdown
- *ERDTOH*: previously paid corporate tax, recovered by eligible dividends or the non-eligible spillover rule
```


Page: `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md`

Old:

```markdown
- A non-eligible-only payout history can therefore strand ERDTOH on the corporate books (see [Stranding](#stranding) below)
```

Proposed:

```markdown
- Non-eligible dividends can recover ERDTOH once their refund capacity exceeds NERDTOH (see [Stranding](#stranding))
```


Page: `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md`

Old:

```markdown
A corporation can receive eligible dividends but only ever pay non-eligible dividends.  
That strands both GRIP and ERDTOH on the corporate books.  

Stranding doesn't cost anything to the corporation, but the shareholder pays more personal taxes:  
- Either way the corporation recovers the same 38⅓% refund
  - NERDTOH on a non-eligible dividend, ERDTOH on an eligible one
- Shareholder pays more: non-eligible dividends carry a lower gross-up and dividend tax credit
  - The same cash leaves a bigger personal tax bill

How the two pools strand:
- *GRIP*:
  - Eligible dividends received add to GRIP
    - The eligible designation has to be made at or before the time the dividend is paid (ITA [s.89(14)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html))
  - Non-eligible dividends already paid cannot in practice be redesignated
    - A late s.89(14.1) designation needs CRA to agree it is just and equitable, within three years
    - That is documentation relief, not a planning tool
  - An unused GRIP balance accumulates on Schedule 53
- *ERDTOH*:
  - Part IV tax on dividends received populates ERDTOH
  - Ordering rule: non-eligible draws NERDTOH first, ERDTOH only after NERDTOH is exhausted
  - ERDTOH never drains while NERDTOH is non-empty

Stranding scenarios:
- A CCPC receiving Box 49 ETF dividends (e.g. XEI) but only paying non-eligible dividends to the owner-manager:
  - Each year's Part IV tax on the eligible dividends received goes to ERDTOH
  - The year's payout draws only from NERDTOH, which the AII portion of the same ETF distributions keeps filling
  - ERDTOH balance grows and stays
- A CCPC with no GRIP and a stranded ERDTOH balance:
  - Paying an eligible dividend would draw on ERDTOH but requires GRIP capacity to designate the dividend
  - Without GRIP the ERDTOH stays stranded
```

Proposed:

```markdown
A non-eligible-only payout history leaves GRIP unused.  
It does not necessarily leave ERDTOH unused: non-eligible refunds draw on NERDTOH first, then residual ERDTOH.  

- If non-eligible refund capacity is no greater than NERDTOH, that payout recovers no ERDTOH
- If it exceeds NERDTOH, the excess can recover ERDTOH left after the eligible-dividend refund
- Eligible dividends can recover ERDTOH while NERDTOH remains, provided GRIP supports the designation
- Without GRIP, sufficient non-eligible dividends can still recover ERDTOH
  - The shareholder receives the non-eligible gross-up and dividend tax credit

A $7,500 non-eligible dividend with NERDTOH of $0 and ERDTOH of $2,875 recovers all $2,875.  
The same dividend with NERDTOH of at least $2,875 recovers only NERDTOH.  
```


Page: `guide/Paying-Yourself/Dividends/Dividends.md`

Old:

```markdown
A CCPC that receives eligible dividends but only ever pays non-eligible dividends strands both GRIP and ERDTOH.  
```

Proposed:

```markdown
A CCPC that receives eligible dividends but only pays non-eligible dividends leaves GRIP unused.  
Non-eligible dividends can still recover ERDTOH after exhausting NERDTOH.  
```


### R-6 — AAII threshold and timing

Verified [ITA 125(5.1)(b), (7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html?wbdisable=true). T2-Schedules non-signed branch already handled separately.


Page: `guide/Paying-Yourself/Dividends/Dividends.md`

Old:

```markdown
The NERDTOH addition and the SBD grind apply differently depending on the corporation's AII level:
- If AII stays below the $50,000 grind threshold:
  - Active business income remains under the SBD rate
  - Dividends paid are non-eligible by default
  - Pay a non-eligible dividend each year to recover NERDTOH
- If AII is large enough to meaningfully grind the SBD:
  - Active business income above the reduced SBD limit is taxed at the general rate
  - In subsequent years that starts adding to GRIP via Schedule 53
  - This opens the door to paying eligible dividends as well
- In the limiting case of AII ≥ $150,000, the SBD is fully ground to zero
  - *All* active business income is then taxed at the general rate
  - This maximizes the GRIP addition (72% of all ABI flows in via Schedule 53)
  - In subsequent years the corporation can pay eligible dividends out of that GRIP
  - The lower combined corp+personal tax on eligible dividends partially offsets the loss of the SBD rate

For an investment-only holdco with no active business income, the SBD grind is moot (no active income to grind).  
Part I refundable tax on AII still feeds NERDTOH and is still recovered by paying non-eligible dividends.  
A holdco does not escape the grind: the AAII of all associated corporations is pooled for the s.125(5.1) test.  
An investment holdco's AII still grinds the SBD of an associated operating company.  
```

Proposed:

```markdown
The NERDTOH addition uses AII; the federal SBD grind uses AAII.  
For the grind, total AAII for every taxation year ending in the preceding calendar year of the corporation
and corporations associated with it at any time in the current taxation year.  
- At $50,000 or less, this passive-income test does not reduce the business limit
  - Other SBD restrictions, including the taxable-capital reduction, still apply
- Above $50,000, the AAII reduction phases in; at $150,000 it eliminates the federal business limit
- A reduced business limit can leave more active business income taxable at the general rate
  - That can create GRIP capacity under Schedule 53
  - The dividend choice still depends on actual GRIP, refundable-tax pools, and shareholder circumstances

A holdco does not escape the grind: its AAII enters the same test when it is associated with the operating company.  
```


Page: `guide/Paying-Yourself/Dividends/Dividends.md`

Old:

```markdown
- Grinds the SBD limit once it tops $50,000, by $5 per $1 of excess (ITA [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html))
```

Proposed:

```markdown
- AAII reduces the federal SBD limit once the associated-group amount exceeds $50,000 (ITA [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html))
```


### DIV-1 — LRIP direction

Verified [ITA 89(1), (4), (8)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html).


Page: `guide/Paying-Yourself/Dividends/Dividends.md`

Old:

```markdown
The *Low Rate Income Pool* (LRIP, ITA s.89(1)) applies only if the corporation was previously a non-CCPC and crossed over.  
```

Proposed:

```markdown
The *Low Rate Income Pool* (LRIP, ITA s.89(1)) applies to resident corporations that are neither CCPCs nor deposit insurance corporations.  
A corporation leaving CCPC status may have an LRIP addition under s.89(8).  
A corporation becoming a CCPC instead applies the GRIP transition calculation in s.89(4).  
```


### SBT-1 — PSB deductions

Verified [ITA 18(1)(p)(i)–(iv)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html). Closing condition is not a general deduction class.


Page: `guide/Overview/Small-Business-Tax.md`

Old:

```markdown
- Deductions severely restricted under ITA [s.18(1)(p)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html), which preserves only four categories:
  - The incorporated employee's salary and benefits
  - Expenses connected with selling property or negotiating contracts, where the incorporated employee could have
    deducted them under an employment contract
  - Legal expenses incurred to collect amounts owing for services rendered
  - Amounts otherwise deductible in computing the corporation's income from the business, on the same terms
```

Proposed:

```markdown
- Deductions severely restricted under ITA [s.18(1)(p)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html):
  - Salary, wages, or other remuneration paid in the year to an incorporated employee
  - The cost of benefits or allowances provided in the year to an incorporated employee
  - Selling-property or negotiating-contract expenses that the incorporated employee could have deducted
    under an employment contract requiring the employee to pay them
  - Legal expenses paid in the year to collect amounts owing for services rendered
- Each expense must also have been deductible if the business were not a PSB
```


### SBT-2 — financial statements versus T2

Verified [CBCA 155](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-155.html) and [CBCA Regulations 71(1)](https://laws-lois.justice.gc.ca/eng/regulations/SOR-2001-512/section-71.html). Federal corporate-law example, not a generalization to provincial corporations.


Page: `guide/Overview/Small-Business-Tax.md`

Old:

```markdown
A full set of GAAP-compliant statements is only required if a third party (bank, outside shareholder) asks for it.  
```

Proposed:

```markdown
T2 filing requirements are separate from the corporation's financial-statement obligations.  
For a federally incorporated corporation, CBCA s.155 and Regulations s.71 require the prescribed annual financial statements under Canadian GAAP.  
Check the governing corporate statute as well as lender or shareholder requirements.  
```


### CM-1 — shareholder death

Verified [ITA 70(5)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-70.html?wbdisable=true).


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
- A *deemed* disposition (change of use, wind-up, death of a shareholder) produces the same balance movements with no sale  
```

Proposed:

```markdown
- A corporation's *deemed* disposition (for example, on a change of use) can produce tax effects without a sale
- A shareholder's death generally deems a disposition of the shareholder's shares, subject to rollover exceptions
  - It does not itself dispose of the corporation's investments or change the corporation's tax pools
```


### CM-2 — shareholder loan benefit

Verified [ITA 80.4(3)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-80.4.html).


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
- A *Due from* balance that is interest-free or below the prescribed rate also imputes an interest benefit
  - For the period outstanding (ITA s.80.4)
- A *Due to* balance can be interest-free, and its repayment to the owner is tax-free
```

Proposed:

```markdown
- An interest-free or below-prescribed-rate *Due from* balance can produce an interest benefit under ITA s.80.4
  - The s.80.4(3)(b) exception prevents that benefit where the loan or debt is included in income
  - See [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md) for repayment and interest rules
- A *Due to* balance can be interest-free, and its repayment to the owner is tax-free
```


### CM-3 — cumulative capital losses

Verified [ITA 89(1), CDA definition paragraph(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html). Apply together with the R-2 gain-row replacement above.


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
| Realize capital loss | | − non-taxable ½ (floored at 0) | | |
```

Proposed:

```markdown
| Realize capital loss | | Recompute cumulative capital-gains component | | May reduce AII through net taxable capital gains |
```


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
- Cells: the delta (blank means no change)
```

Proposed:

```markdown
- Cells: the effect (blank means no change); capital gains and losses require cumulative calculations
```


Page: `guide/Overview/Concept-Map.md`

Old:

```markdown
- The 72% factor, 30⅔% Part I rate, and 38⅓% Part IV / refund rate are fixed by statute (see Citations)  
```

Proposed:

```markdown
- Keep cumulative non-taxable capital gains and non-deductible capital losses, including losses exceeding gains
  - Floor only the resulting capital-gains component at zero; do not discard excess loss history
  - See [CDA tracking](../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md)
- The refundable Part I addition is subject to limits; the 38⅓% Part IV / refund rate is separate
```


Counterexample: first a $20,000 capital loss, then a $10,000 gain at 50% inclusion. Cumulative non-taxable gains of $5,000 less non-deductible losses of $10,000 leave the component zero, not $5,000. No other CDA components or dividends assumed.


### ACB-1 — optional glossary tightening

Optional LOW. Brokerage-glossary context makes the original finding weak. [ITA 69(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-69.html) confirms FMV can matter on gifts; this proposal narrows scope without expanding the ACB workflow.


Page: `guide/Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md`

Old:

```markdown
- Not used for any tax calculations
```

Proposed:

```markdown
- Current market value does not reset the pooled ACB used for ordinary purchases and sales
```
