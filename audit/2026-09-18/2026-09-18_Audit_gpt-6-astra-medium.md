# Accuracy and Correctness Audit

**Date:** September 18, 2026 (America/Toronto).

**Scope:** README and all 95 Markdown topic pages across the nine guide groups, including 12 co-located PNGs. This is a fresh full-content audit weighted toward tax correctness, executable bookkeeping and filing instructions, formula arithmetic, source support, and consistency. Process/style documents informed the review; historical audits were reviewed as the regression baseline, not rewritten.

**Method:** Followed `docs/Audit-Instructions.md`, `AGENTS.md` and the style guide. Main agent plus one checkpointed side agent; no guide edits. Read the pages, traced dependencies, recomputed worked examples, compared account codes with CRA RC4088 Appendix A, and checked substantive claims against legislation, CRA forms/guides and other relevant primary sources. Every CRITICAL/HIGH finding and claimed citation discrepancy received a second targeted check. Findings are deduplicated by underlying defect; several list multiple affected pages.

Session identity was read programmatically from the active Codex session's `turn_context` metadata: **gpt-6-astra**, reasoning effort **medium**. Its provenance was saved in ignored `audit/wip/session-identity.json`. The earlier planning effort was not substituted for the execution setting. Baseline: **666731659aa9b5ed955657cfd737877d576d7468**, initially clean.

CRA HTML and current form PDFs were often directly accessible in this session despite the playbook's historical 403 warning. Justice pages generally displayed consolidation current to July 21, 2026, last amended June 18, 2026. Current CRA, Ontario and issuer publications supplied additional effective-date checks. Primary-source links appear with each finding; full statutory/index links are navigation sources, not a claim to have audited every statement in the external document.

Limits: the linked live Google Sheets tracker could not be fetched; its documented formulas, local screenshot and tutorial were checked. FutureTax captures were inspected, but no installed tax-software return was executed. Xero's relevant direct page returned no text, so its search-index evidence is identified explicitly. An Ontario dissolution PDF and several shortcut URLs failed; alternate official pages/indexed passages were distinguished from direct reads. No finding is based solely on a transient fetch failure. This report is not a certification of every external URL, broker workflow or tax-software calculation.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

**56 findings: 21 CRITICAL, 20 HIGH, 15 MEDIUM, 0 LOW.**

The highest-impact issues concern corporate versus shareholder events, allowable deductions, capital-dividend timing, refundable-tax pools, loss eligibility and continuity, and executable CCA/payroll instructions. Several earlier corrections survived, but some fixes introduced new errors or left contradictory instructions elsewhere. Structural validation passes; that does not establish factual correctness.

## Disposition of prior audits

The immediate baseline is the [July 31 audit](../2026-07-31/2026-07-31_Audit_sol-5.6-xhigh.md), its [August 2 independent review](../2026-07-31/2026-08-02_Audit-Review_Opus-5-xhigh.md), and [remediation](../2026-07-31/2026-08-02_Audit-Remediation_Opus-5-xhigh.md): 83 original findings plus four review findings. The table covers those codes, grouping related retained corrections. “Retained” means the repaired statement remains in the current source and no defect was confirmed in that repair; it is not page sign-off or a claim that the entire page is now correct. Specific software gates remain open where indicated.

| Prior code(s) | Current disposition and evidence |
|---|---|
| R-1 | Retained: T2054 goes to CRA; resident capital dividend is not a T5 dividend. ITA83/184 and current dividend workflow. |
| R-2 | Retained: general exported-services exclusion, consulting provision and Canadian-PE condition are distinguished. ETA ScheduleVI PartV7/23 and132(2). |
| R-3 | Retained: both small-supplier tests, effective times and associates. ETA127/148. |
| R-4; OPS-CCA-1 | Partial: book/tax distinction added, but the threshold still claims to accelerate tax deductions. Current CCA-1. |
| R-5 | Retained: retained earnings distinguished from cash and solvency. Corporate-law distribution conditions remain. |
| R-6 | Retained: two-month balance default and conditions for three months, including first-year warning. ITA157/248. |
| R-7 | Retained: dated2025, calendar2026 blend and post-July 1 rates are separated. Official Ontario enacted rates checked; blend recalculated. |
| R-8 | Retained: CCA disqualifies the principal-residence administrative concession; use is the underlying change. CRA FolioS1-F3-C2 paragraph 2.60. |
| R-9 | Retained: exclusively commercial imported services excluded by ETA217; no unnecessary DivisionIV tax-and-ITC loop. |
| R-10 | T5008 trade-date correction retained; Inventory limb remains refuted as the independent review explained. |
| R-11 | Payable-time rule retained on dividend/CDA pages, but Winding-Down still uses the incompatible election-time shortcut. Current WD-1. |
| SBT-3 | Regression: PSB deduction fix invented an unrestricted category. Current SBT-1. |
| OV-1; CM-3; CM-5; SBT-5; TI-1 | Specific fixes retained: salary/dividend distinction, AFU gate, benefit-versus-deductibility distinction, QuickMethod capital ITCs/records, other CDA sources. Current overview findings concern different statements. |
| CM-4 | Excess-ROC qualification retained; the added shareholder-death example is wrong. Current CM-1. |
| GL-1 | Glossary correction retained, but other AFU summaries omit the short-year limit. Current R-5. |
| FR-1 | Body corrected; citation annotation remains stale. Current FR-2. |
| FR-3 | Retained: s.22 election based on agreed consideration, not mandatory face value. |
| OV-2; BA-3 | Heading edits retained; maintainer-only progress tags were not treated as defects. |
| SC-1; SC-2; SU-1; CS-1 | Retained: PUC/ACB distinction, stated-capital exceptions, contributed-property tax cost/UCC, director/shareholder resolution distinction. ITA13/53/84 and CBCA26/155/163. |
| AVS-1 | Added section introduces loss-expiry reset and continuity errors. Current AVS-1/AVS-2. |
| AVS-2 | Covered-supply qualification improved; unconditional recipient-registration condition remains wrong. Current AVS-3. |
| BA-1; PSC-1 | Retained: three transfer routes and s.85 late-election distinctions. |
| EF-1 | Designated-person/outstanding-base correction retained. Dividend-offset sentence was incorrectly cleared by the earlier response; current EF-2. |
| WD-1 | Prior suggested election-time dividing line was wrong. Current WD-1 re-derives payable-time test from ITA83. |
| FC-1; FXR-1 | Retained: income/capital character follows source/use, and archived method guidance is identified as archived. IT-95R paragraphs2-4,7-9 checked directly. |
| NG-1 | Retained: capital loss routed to Schedule 4 rather than deducted from consulting income; full book loss reversal preserved. |
| YE-1; YE-2 | Retained: prepaid subscription split and economic-loss terminology. $1,028.22/$1,671.78 and FX arithmetic recalculated. |
| GP-1; GP-2; FC-3 | Retained: earned/unbilled-income qualification, US-service-source/W-8 distinction, accrued sweep-interest branch. |
| LA-4; NEW-1 | Retained: bank deposits versus petty cash and associated code/name sweep. RC4088 AppendixA checked; structural account-tree consistency also passes. |
| BC-1 | Retained: separate CAD-fee and USD-fee currency legs; arithmetic checked. |
| OPS-T5018-1 | Retained: threshold excludes GST/HST, Box 22 includes it. Corporate T4A administrative uncertainty remains deliberately separate. |
| OPS-HST-1; OPS-HST-2; OPS-HST-3 | Retained: threshold exclusions, exempt insurance and recomputed amounts, fiscal reporting periods. New HSTE-1 concerns return-line placement, not the prior net-tax arithmetic. |
| OPS-HST-4 | Body's nil-consideration correction retained; citation-tail wording should be made consistent during routine remediation, not counted separately here. |
| OPS-RENT-1 | Retained: principal-business CCA exception is separate from the SIB employee test. ITR1100(11)-(13). |
| OPS-CCA-2 | Retained: tax-year date-range selectors replaced calendar-year selectors. Separate formula defects are current CCAT-1/CCAT-2. |
| OPS-CCA-3 | Independent review's correction retained: Class 13 first-year50% restriction exists under ITR1100(1)(b), outside ordinary1100(2). Do not apply the original contrary suggestion. |
| OPS-CCA-4; OPS-CCA-5; OPS-CIP-1 | Retained: improper incorporation-cost capitalization requires correction; car benefit is not merely personal-use percentage; abandoned CIP requires classification. |
| OPS-INV-1 | Retained: sale return restores original carrying cost before recomputing average. Current INV-1 concerns a different shrinkage/GIFI bridge. |
| PAY-COMP-1; PAY-REM-1; PAY-QM-1 | Retained: unequal corporate-outlay comparison disclosed; remitter tests split; QuickMethod reimbursement ITC caveat. |
| PAY-BEN-1 | Regression: new journal is unbalanced and omits the non-cash-only CPP exception. Current PAY-1/R-1. |
| DIV-PUC-1; DIV-WIND-1; DIV-PAY-1 | Specific corrections retained: excess-over-PUC distribution, wind-up dividend refund/designation, unpaid dividend timing. Stranding overstatements remain elsewhere: current R-3. |
| PAY-RRSP-1; PAY-PUP-1 | Retained: existing RRSP room distinguished from next-year room; actual use controls PUP classification. |
| INV-CDA-1; INV-CDA-2 | Retained: s.184(3) alternative and late-election package/relief are stated. |
| INV-S6-1 | Statutory/form correction retained: excess ROC uses Schedule 6 Part 8 line 875. FutureTax automatic flow was not executed; retain software verification gate. |
| INV-FEE-1 | Retained: mutually exclusive gross/net proceeds branches prevent commission double counting; screenshot and column140/440 mapping agree. |
| INV-S7-1 | Net property-income rule retained, but new S125 warning is wrong: current R-4. Software worksheet calculation still not executed. |
| INV-LP-1 | Measurement-date correction retained; current-period allocation assurance remains wrong. Current LP-1. |
| INV-FA-1 | Retained: own1% plus related-group10% foreign-affiliate test. |
| FILE-REC-1 | Corrected s.230(5) late-return retention basis retained. Do not restore prior mistaken230(4.1) attribution. |
| FILE-SHORT-1; FILE-ABIL-1; FILE-S44-1 | Retained: seven short-return conditions, ABIL10-year window, corporation-transfer S44 trigger. Current LOSS-1 is a separate corporate-debt exclusion. |
| FILE-INT-1; FILE-COLL-1; FILE-BOOK-1 | Retained: refund-interest latest-event timing, large-corporation collection exception, tax-instalment control account. Tax-debit reclassification is a disclosed presentation convention, not a tax-rule error. |
| SP-HST-1 | Associate aggregation on incorporation retained. Current SP-HST-1 concerns a different annual-filer deadline gap. Codes are cycle-local. |
| SP-EI-1 | Rescission substance retained; subsection references are wrong. Current SP-EI-1. |
| T1-1; MAC-1 | Retained: T4/T5 box-to-line map and ordinary versus discretionary refund windows. |
| NEW-2 | Refuted/verification gate resolved:8250 is expressly Bad debt recoveries in current RC4088 AppendixA. No renumbering warranted. |
| NEW-3 | Gross QuickMethod write-off rationale is present. No independent finding on that explanation; this pass did not establish a replacement computation for its administrative edge case. |
| NEW-4 | Retained: T4A administrative uncertainty single-sourced to Paying-Contractors; no statutory-duty finding raised solely against the qualified practical contrast. |

Earlier-cycle regression checks retained the maintainer's progress tags, the1062 trade-receivable detail code, Ontario dissolution consent handled through the registry, corporate pooled ACB, trade-date purchase/sale FX, payment-date distribution FX, and the distinction between ordinary and suspended corporate capital losses. Historical audits' proposed fixes were not treated as authority. The July 25 coverage cycle's larger expansion ideas remain content priorities rather than automatically reopened factual findings.

## Repo-wide findings

### [CRITICAL] R-1 Non-cash-only remuneration needs the CPP exception

**Files:** `guide/Paying-Yourself/Payroll.md:185-186`; `guide/Paying-Yourself/Owner-Corporation-Transactions.md:152-153`.

> the employer still owes and remits its own share

Both pages state this without excluding a year with only non-cash benefits. CRA exempts both employee deductions and employer remittances in that case, while still requiring pensionable earnings reporting. The partial-cash case must be kept separate. **Fix:** add the non-cash-only exception and preserve T4 boxes 14/26. **Source:** [CRA T4130, non-cash benefits and CPP](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4130/employers-guide-taxable-benefits-allowances.html), directly rechecked, including its exceptions. This is a defect in the July 31 PAY-BEN-1 remediation.

### [CRITICAL] R-2 The refundable Part I addition is not always 30⅔% of AII

**Files:** `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md:100-106`; `guide/Paying-Yourself/Dividends/Dividends.md:289`; `guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md:48`.

> AII *adds* to NERDTOH at 30⅔%.

The canonical computation omits the foreign-credit reduction and taxable-income/Part I tax ceilings. Foreign withholding is central to the linked T3 workflow. **Fix:** label the percentage an unrestricted-case result and give the statutory least-of calculation once on the pool page. **Source:** [ITA s.129(4), NERDTOH definition paragraph (a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html), formula and all three limits reread. Losses.md already recognizes the least-of rule.

### [HIGH] R-3 ERDTOH can be refunded through non-eligible dividends

**Files:** `guide/Paying-Yourself/Dividends/Dividends.md:268`; `guide/Paying-Yourself/Dividends/ERDTOH-NERDTOH.md:224-231`.

> Without GRIP the ERDTOH stays stranded

These statements contradict the same pages' NERDTOH-first spillover rule. Non-eligible dividends can recover ERDTOH after the NERDTOH refund limit is exhausted; GRIP is not a prerequisite. **Fix:** qualify the stranding examples by payout size and NERDTOH priority. **Source:** [ITA s.129(1)(a)(ii)(B)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html), directly rechecked.

### [HIGH] R-4 Schedule 7 classification does not replace a booked expense on Schedule 125

**Files:** `guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md:162`; `guide/Investments/T5/T5.md:253`.

> do not also deduct them on Schedule 125

S125 reports the financial statements, including carrying expenses. S7 separately classifies net property income; this is not a second deduction from taxable income. Omitting the expense from S125 overstates book income. **Fix:** retain it in S125, allocate it when computing S7, and warn against duplicate deductions within the taxable-income reconciliation instead. **Sources:** [RC4088, level of detail](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html); [2025 Schedule 7, line 019](https://www.canada.ca/content/dam/cra-arc/formspubs/pbg/t2sch7/t2sch7-25e.pdf). Both directly checked; line 019 explicitly uses net related expenses. July 31 INV-S7-1's netting fix introduced this warning.

### [HIGH] R-5 Available-for-use summaries omit the short-year protection

**Files:** `guide/Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md:179,184`; `guide/Operations/Cost-Recovery/Cost-Recovery.md:240,245`; `guide/Operations/Cost-Recovery/Materials-And-CIP.md:75-79`.

> Beginning of the second tax year after the acquisition year

Calling this the 357-day rule does not state its operative limit. Short years ending before 357 days after the acquisition-year end are excluded from counting the two years. A short-year corporation can otherwise start CCA too soon. **Fix:** use the corrected Glossary wording and link to one canonical explanation. **Source:** [ITA s.13(27)(b), (28)(c)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html), rechecked. July 31 GL-1 was repaired locally but these summaries remain incomplete.

### [MEDIUM] R-6 AII is still substituted for AAII in the SBD-grind instructions

**Files:** `guide/Filing-And-CRA/T2-Schedules.md:139`; `guide/Paying-Yourself/Dividends/Dividends.md:299-308`.

> AII drives the refundable tax and the passive-income grind of the business limit.

> In the limiting case of AII ≥ $150,000, the SBD is fully ground to zero

The grind uses AAII, including Canadian portfolio dividends and excluding certain active-asset gains. The nearby correct explanation does not cure the conflicting thresholds. **Fix:** use AAII throughout the grind discussion, preserving AII for refundable tax. **Source:** [Schedule 7, Parts 1 and 2](https://www.canada.ca/content/dam/cra-arc/formspubs/pbg/t2sch7/t2sch7-25e.pdf), and [ITA s.125(5.1), (7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html).

### [HIGH] R-7 Commercial imports need separate federal and provincial tax treatment

**Files:** `guide/Operations/HST/HST-Regular-Method.md:97-107`; `guide/Operations/Cost-Recovery/Inventory-And-COGS.md:197-204`.

> import HST is recoverable as an ITC

The surrounding instructions describe HST collected at the border. Commercial goods ordinarily attract the federal GST component there; provincial HST self-assessment is separate and subject to exceptions. **Fix:** distinguish border GST, provincial self-assessment and its commercial-use exceptions, then apply the appropriate ITC rules. **Source:** [CRA GST/HST on imports and exports](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/gst-hst-businesses/charge-collect-imports-exports.html), commercial-import section directly checked twice.

## Page-by-page findings

### [CRITICAL] PAY-1 Non-cash benefit adjustment does not balance

**File:** `guide/Paying-Yourself/Payroll.md:177-183`.

> `Deposits` (`1002-1`): reduced net pay

The table places this amount in the credit column along with the employee CPP payable, after equal benefit debit/credit offsets. For extra CPP of $100, credits exceed debits by $200. Reduced cash paid requires a debit adjustment to the original cash credit. **Fix:** show a balanced incremental entry and a separate employer CPP expense/payable entry, applying R-1's exception. **Verification:** debit/credit arithmetic; [CRA T4130](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4130/employers-guide-taxable-benefits-allowances.html). The July 31 PAY-BEN-1 remediation introduced this table.

### [CRITICAL] DIV-1 LRIP transition is described backwards

**File:** `guide/Paying-Yourself/Dividends/Dividends.md:172`.

> applies only if the corporation was previously a non-CCPC and crossed over

LRIP is the current non-CCPC regime. The CCPC-to-non-CCPC transition is addressed by s.89(8), not the reverse described here. **Fix:** distinguish current CCPC GRIP from non-CCPC LRIP and identify the transition direction. **Source:** [ITA s.89(1), LRIP definition, and s.89(8)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html), directly rechecked.

### [CRITICAL] LOSS-1 Corporate ABIL guidance omits related-corporation debt exclusion

**File:** `guide/Filing-And-CRA/Losses.md:73-86`.

> An interest-bearing loan qualifies

For a corporate claimant, a debt owed by a non-arm's-length corporation is expressly excluded from the business-investment-loss debt category. Interest-bearing status does not overcome this restriction. **Fix:** add the corporate-creditor exclusion before discussing income-earning-purpose requirements; distinguish any ordinary capital loss. **Source:** [ITA s.39(1)(c)(iv)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html), operative exclusion checked twice.

### [MEDIUM] CRA-1 Audit-power citation points to definitions

**File:** `guide/Filing-And-CRA/CRA-Administration.md:183,315`.

> s.231.1

Both links target section231.html, which supplies definitions rather than the cited inspection power. **Fix:** use [ITA s.231.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-231.1.html). Wrong and correct targets were fetched and compared.

### [MEDIUM] T1135-1 Foreign-reporting citation points to the demand provision

**File:** `guide/Investments/T1135.md:35,171`.

> s.233.3

The links target section233.html, concerning information demands, rather than the foreign-property definitions and reporting requirement. **Fix:** use [ITA s.233.3](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-233.3.html). Both targets were fetched and compared.

### [CRITICAL] T3FX-1 Declining an FTC does not make trust withholding deductible

**File:** `guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md:218`.

> If you claim neither the S21 credit nor the S1 add-back, the foreign tax stays a plain expense

The trust allocation is deemed paid for s.126, not s.20(12). A booked withholding expense still needs the tax add-back when no credit is claimed or available. **Fix:** remove the optional-add-back branch. **Sources:** [ITA s.104(22.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html); [CRA IT-506 paragraph 11](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it506/archived-foreign-income-taxes-a-deduction-income.html), checked directly against the current statute.

### [CRITICAL] T3FX-2 Nil Box 25 does not establish nil foreign tax credit room

**File:** `guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md:250-252`.

> the foreign non-business income (the Box 25 amount)

Foreign taxable capital gains identified in Box 21 footnotes also support the country-specific credit calculation. Other qualifying same-country income can matter too. **Fix:** reconcile the country footnotes and all relevant income before concluding the Box 34 tax is unusable. **Sources:** [CRA T3 completion instructions, Box 21 foreign-gain footnotes](https://www.canada.ca/en/revenue-agency/services/tax/trust-administrators/t3-slip/complete-t3-slip.html); [ITA s.126(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-126.html), directly checked and reread.

### [MEDIUM] T3CG-1 Box 21 is the full gain, not its taxable half

**File:** `guide/Investments/T3/T3-Box-21-Capital-Gains-Distribution.md:18`.

> Box 21 is the trust's net taxable capital gains designated to the beneficiary

CRA instructs the issuer to multiply the designated taxable gain by two for this box. The later half-inclusion workflow is correct. **Fix:** correct the opening definition. **Source:** [CRA T3 Box 21 instructions](https://www.canada.ca/en/revenue-agency/services/tax/trust-administrators/t3-slip/complete-t3-slip.html), checked twice.

### [MEDIUM] ACB-1 Market value is used in specified tax calculations

**File:** `guide/Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md:37`.

> Not used for any tax calculations

This is too broad: gifts, certain non-arm's-length dispositions and specified corporate actions use FMV. **Fix:** limit the statement to ordinary unrealized market fluctuations in the guide's capital-property scenario. **Sources:** [ITA s.69](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-69.html), [s.86.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-86.1.html).

### [HIGH] T5-1 Compound GIC capitalization is posted as cash

**File:** `guide/Investments/T5/T5.md:214-217`.

> the issuer credits the first year's $2,000 into the GIC balance

> Debit `Deposits - investment` (1002-2) = $2,000

The stated event increases the GIC investment, not brokerage cash. The entry balances but invents available cash and understates the GIC. **Fix:** debit the GIC carrying-value account; retain the split credits relieving $504 accrued income and recognizing $1,496 additional interest. **Verification:** the page's own no-cash event and [RC4088 asset classifications](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html).

### [CRITICAL] T5CG-1 Corporate-class capital-gains dividends can be reinvested

**File:** `guide/Investments/T5/T5-Box-18-Capital-Gains-Dividends.md:89`.

> There is no phantom (non-cash) portion and no ACB adjustment

Corporate-class ETFs can distribute capital gains through reinvestment and immediate consolidation, increasing ACB without cash or a lasting share-count increase. The cash-only instruction would omit that basis increase. **Fix:** branch by actual cash/reinvestment mechanics and issuer tax information. **Source:** [Manulife's June 22, 2026 issuer release](https://www.newswire.ca/news-releases/manulife-investments-announces-final-reinvested-capital-gains-distributions-for-etf-series-of-manulife-corporate-class-funds-819921186.html), directly fetched and checked against its corporate-class fund names and express ACB treatment.

### [CRITICAL] CCAT-1 Generic first-year formulas can exceed the asset's cost

**File:** `guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Tracking.md:70,265-280,298-305`.

> `+0.5 × Net Additions` if AIIP-eligible

Class 12 application software is listed as 100% declining-balance with a half-year restriction. For $1,000 qualifying software, the generic uplift produces $1,500 CCA and then a fictitious $500 recapture. Class 12 does not receive that generic uplift. The mixed-addition expression also omits disposition allocation; the full-expensing expression omits normal CCA on opening UCC. **Fix:** derive class-specific factors and disposition ordering from the regulation, cap the appropriate deduction, and test both opening balances and mixed additions. **Source:** [ITR s.1100(2), A/A.1/B/B.1/C](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-1100.html), full formula read and targeted clauses rechecked; counterexample independently calculated.

### [HIGH] CCAT-2 Accelerated-property eligibility is narrowed incorrectly

**Files:** `guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Tracking.md:124-127`; `guide/Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md:156-158`.

> True if acquired after 2024 and available for use before 2030

> Previously-owned property qualifies only if no CCA or terminal loss was claimed on it before.

RIIP's available-for-use boundary is before 2034, with phaseout factors after 2029. The no-prior-deduction and qualifying-transfer tests are alternatives: ordinary arm's-length used property can qualify despite past CCA, and never-deducted property is not categorically excluded merely by related ownership. **Fix:** implement the two statutory routes and separate eligibility from the applicable year's factor; distinguish AIIP from RIIP. **Source:** [ITR s.1104(4), (4.01)](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-1104.html), both definitions rechecked.

### [CRITICAL] CCA-1 Book capitalization policy is again presented as a tax-timing election

**File:** `guide/Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md:341-370`.

> A higher floor merely pulls the deduction earlier

> a high floor forces immediate expensing even in a loss year

The page now correctly calls the threshold book-only, but these remaining claims still make it control tax deductions and expiring tax losses. **Fix:** remove the claimed tax advantage and loss-year compulsion; reconcile capital book expenses through Schedule 1 and determine CCA independently. **Source:** [ITA s.18(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html), with [s.20(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html). July 31 R-4/OPS-CCA-1 remediation is incomplete.

### [HIGH] CCAE-1 Laptop reconciliation omits its $400 recapture

**File:** `guide/Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Examples.md:82-86`.

> Add back: book amortization and any book loss on disposal

The next instruction removes the book gain, but the promised year3 Schedule 1 reconciliation never adds the $400 recapture just computed. **Fix:** include recapture explicitly, separately from removing the book gain and deducting CCA/terminal loss. **Source:** [ITA s.13(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html); numerical bridge checked independently.

### [HIGH] INV-1 Shrinkage can be counted twice in the GIFI bridge

**File:** `guide/Operations/Cost-Recovery/Inventory-And-COGS.md:274,340,368`.

> a dedicated `Inventory shrinkage` line under `Other direct costs` (GIFI 8450)

The posting reduces inventory, then the stated S125 identity adds8450 while also subtracting the lower closing inventory. With opening100, no purchases, shrinkage10 and closing90, it yields20 COGS instead of10. **Fix:** reconcile the perpetual ledger to the periodic GIFI presentation without adding shrinkage a second time. **Source:** [RC4088 cost-of-sales codes](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html); direct arithmetic counterexample. This is about the bridge, not whether a shrinkage expense may be booked.

### [HIGH] INV-2 Consignment wording excludes inventory the corporation still owns

**File:** `guide/Operations/Cost-Recovery/Inventory-And-COGS.md:501-503`.

> goods on the corp's premises but legally owned by another party (or vice versa)

> They are *not* on the corp's books

The vice-versa case is the corporation's own inventory held elsewhere; it remains its inventory. The next sentence contradicts the exclusion. **Fix:** split consignor and consignee treatment. **Source:** [CRA Income Tax Audit Manual, chapter13, verification of inventory](https://www.canada.ca/en/revenue-agency/services/tax/technical-information/income-tax-audit-manual-domestic-compliance-programs-branch-dcpb-13.html), which checks owned inventory on consignment at other locations; directly rechecked.

### [CRITICAL] DR-1 Future application against a price does not make every deposit a prepayment

**File:** `guide/Operations/Deferred-Revenue.md:16,50-56,67-69`.

> Money that will be applied against invoices is a prepayment from day one

A genuine performance-security deposit may eventually be applied to the price and may be refundable or non-refundable. The quoted test defeats the statutory deferral it purports to explain. The separate statement that HST applies only on application also omits taxable forfeiture. **Fix:** distinguish security from consideration by substance; add the s.182 forfeiture branch rather than leaving it only as a TODO. **Sources:** [ETA s.168(9)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html), [s.182](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-182.html), [CRA deposits memorandum paragraphs5-10](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/g300-6-8/deposits-gst-300-6-8.html). Current statutes rechecked; historical memorandum's old7% examples were not adopted.

### [HIGH] HSTR-1 Line101 is not limited to taxable supplies

**File:** `guide/Operations/HST/HST-Regular-Method.md:18`.

> Line 101: total revenue from taxable supplies

The regular-method total includes exempt supplies and other revenue. Electronic reporting may populate it from lines90 and91. **Fix:** describe the full revenue total and the optional electronic split. **Source:** [CRA RC4022, line 101](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4022/general-information-gst-hst-registrants.html), directly checked against both paper and electronic instructions.

### [HIGH] HSTR-2 Capital-purchase decision tree wrongly applies 50% to real property

**File:** `guide/Operations/HST/HST-Regular-Method.md:61-70,75-91`.

> Business use 50% or less on personal-use-eligible property (passenger vehicles, residences): ITC denied entirely

The all-or-nothing capital-personal-property rule is generalized to capital purchases and expressly includes residences. Capital real property instead follows proportional commercial-use rules; the later exception conflicts with the executable two-path instruction. **Fix:** scope that tree to capital personal property and supply a separate real-property branch. **Sources:** [ETA s.169](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-169.html), [s.206](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-206.html), read with its corporation scope.

### [HIGH] HSTR-3 Customs FX uses direct-shipment date

**File:** `guide/Operations/HST/HST-Regular-Method.md:123`.

> converted at the *date of accounting* per the *Customs Act*

CBSA's prescribed conversion uses the rate on the direct-shipment date. **Fix:** replace the date and preserve the distinction between customs valuation and the ledger's FX convention. **Source:** [CBSA Memorandum D13-2-3, paragraph 2](https://www.cbsa-asfc.gc.ca/publications/dm-md/d13/d13-2-3-eng.html), directly fetched and reread.

### [HIGH] HSTE-1 Quick Method credit is put on the wrong return line

**File:** `guide/Operations/HST/HST-Examples.md:107-111`.

> Line 105 (Quick Method tax): $4,174.80

The $300 first-$30,000 credit belongs on107, not netted against105. Here line 105 should be $4,474.80, line 106 $520, line 107 $300, line 108 $820 and line 109 $3,654.80. Net tax is unchanged, but the filed lines are wrong. **Fix:** correct the mapping without altering the cash comparison. **Source:** [CRA RC4058, lines103-109](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4058/quick-method-accounting-gst-hst.html), instructions and worked example rechecked.

### [CRITICAL] SBT-1 PSB deduction list turns a condition into an unrestricted category

**File:** `guide/Overview/Small-Business-Tax.md:404-410`

> Amounts otherwise deductible in computing the corporation's income from the business, on the same terms

This fourth bullet is not an allowed category under s.18(1)(p). The statute separately lists remuneration, employee benefits/allowances, qualifying selling/contract-negotiation expenses, and legal collection costs. Its closing otherwise-deductible condition qualifies those four categories; it does not admit ordinary business expenses. The page combines the first two categories and misreads the closing condition as the fourth, contradicting its following exclusion of rent and professional fees. The 2026-08-02 remediation marked the old SBT-3 resolved; this is a regression in that fix.

**Source:** [ITA s.18(1)(p)(i)-(iv)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html), fetched and re-opened September 18, 2026.

**Suggested fix:** Separate remuneration and benefits/allowances into the first two categories; retain the selling/negotiation and legal-collection categories; make ordinary deductibility a shared condition and preserve the statute's paid/provided-in-year limits.

### [CRITICAL] CM-1 Shareholder death is presented as disposing of corporate assets

**File:** `guide/Overview/Concept-Map.md:316`

> A *deemed* disposition (change of use, wind-up, death of a shareholder) produces the same balance movements with no sale

The surrounding section describes the corporation's asset ACB/UCC and CDA/NERDTOH movements. A shareholder's death generally deems disposition of that individual's shares, not the corporation's underlying assets, and does not generate those corporate pool movements. This also contradicts Further Reading's correct distinction between the deemed share disposition and the double-tax problem.

**Source:** [ITA s.70(5)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-70.html), fetched and re-opened; applies to capital property of the deceased taxpayer.

**Suggested fix:** Remove shareholder death from the corporate-asset examples; link the separate shareholder-level event to Further Reading.

### [CRITICAL] CM-2 Interest benefit is incorrectly stacked on an income-included shareholder loan

**File:** `guide/Overview/Concept-Map.md:252-255`

> A *Due from* balance not repaid by the end of the corporation's next tax year is added to the owner's income
> A *Due from* balance that is interest-free or below the prescribed rate also imputes an interest benefit

The unconditional "also" stacks the interest benefit on the principal inclusion immediately above. Section 80.4(3)(b) expressly excludes the portion already included in income. The benefit normally matters when a principal-inclusion exception applies, including timely repayment.

**Source:** [ITA s.80.4(3)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-80.4.html), directly fetched and inspected twice.

**Suggested fix:** State that the benefit applies to the outstanding low-interest loan only insofar as its principal is not included in income; link the canonical shareholder-loan workflow.

### [HIGH] CM-3 CDA delta table discards the loss history needed for the next gain

**File:** `guide/Overview/Concept-Map.md:269-281`

> Realize capital loss | | − non-taxable ½ (floored at 0)

The table defines each cell as a delta to the running balance and shows every later gain as an unconditional addition. Flooring that running balance after each loss loses the deficit that later gains must absorb. Starting from nil, a $20,000 loss followed by a $10,000 gain still leaves no capital-gains CDA component, whereas literal application of these deltas creates $5,000. The canonical CDA page correctly retains the negative running total. The statutory non-negative CDA and the signed history used to calculate it are different quantities.

**Sources:** [ITA s.89(1), CDA paragraph (a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html); [CRA Folio S3-F2-C1 paragraphs 1.45 and Example 3](https://www.canada.ca/en/revenue-agency/services/tax/technical-information/income-tax/income-tax-folios-index/series-3-property-investments-savings-plans/series-3-property-investments-savings-plan-folio-2-dividends/income-tax-folio-s3-f2-c1-capital-dividends.html). Both directly fetched; component floor and future-gain absorption rechecked.

**Suggested fix:** State that losses remain in the cumulative gains/losses component and future gains first absorb that deficit; the capacity, not each running delta, is floored. Link the existing CDA example.

### [CRITICAL] SBT-2 GAAP obligations are reduced to a third-party request

**File:** `guide/Overview/Small-Business-Tax.md:199-201`

> A full set of GAAP-compliant statements is only required if a third party (bank, outside shareholder) asks for it.

This conflates the CRA's T2/GIFI filing requirements with corporate-law financial-statement obligations. For a federal corporation, CBCA s.155(1)(a) requires prescribed annual comparative statements and regulation 71(1) requires Canadian GAAP. No bank or outside-shareholder request is a condition. The page expressly includes federal corporations; a narrow T2 statement cannot support this universal claim.

**Sources:** [CBCA s.155](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-155.html); [Canada Business Corporations Regulations s.71(1)](https://laws-lois.justice.gc.ca/eng/regulations/SOR-2001-512/section-71.html). Direct fetch and second inspection of operative text.

**Suggested fix:** Limit the T2 claim to CRA filing requirements; identify separate financial-statement duties under the governing corporate statute. Do not equate an audit waiver with waiver of statement preparation.

### [MEDIUM] FR-1 UHT pointer omits enacted elimination for 2025 onward

**File:** `guide/Overview/Further-Reading.md:51-55`

> Underused Housing Tax (UHT): an annual federal filing that can reach a corporation on title of residential property
> The requirement for Canadian-controlled corporations narrowed after the first filing years

The scope register still frames UHT as a current annual filing whose application needs resolving. Enacted March 26, 2026 amendments remove tax and filing for all owners for 2025 onward. The relevant remaining topic is historical 2022-2024 compliance. A caution to verify the current rule is not a substitute for the now-settled effective-year distinction.

**Sources:** [UHTA s.1.1](https://laws-lois.justice.gc.ca/eng/acts/U-0.5/page-1.html); [CRA UHTN15 update](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/uhtn15/questions-answers-underused-housing-tax.html), directly fetched and compared after initial search verification.

**Suggested fix:** Mark the topic historical (2022-2024), note no return/tax for 2025 onward, and link the current notice.

### [MEDIUM] FR-2 Life-insurance citation retains the superseded taxable/non-taxable description

**File:** `guide/Overview/Further-Reading.md:106`

> Includes the non-taxable portion of life-insurance proceeds at paragraph (d)

The body now correctly describes death proceeds less policy adjusted cost basis, but the citation annotation still describes a taxable/non-taxable split. Paragraph (d) uses the proceeds-minus-policy-basis computation with adjustments. This is a leftover from the July 31 FR-1 finding, not a new defect in the corrected body.

**Source:** [ITA s.89(1), CDA paragraph (d)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html), directly inspected twice, including its proceeds and adjusted-cost-basis terms.

**Suggested fix:** Make the citation annotation match the corrected body: qualifying death proceeds less policy adjusted cost basis, subject to adjustments.

### [CRITICAL] AVS-1 Acquisition-of-control losses do not get a new expiry clock

**File:** `guide/Corporate-Lifecycle/Business-Acquisition/Asset-vs-Share.md:68`

> The year-end also restarts loss-expiry clocks

An additional deemed tax year consumes a carryforward year; it does not reset the age of existing losses. The new sentence introduced by the prior AVS-1 remediation implies the opposite and can overvalue acquired losses.

**Sources:** [ITA s.111(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) counts preceding taxation years; [s.249(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.html) creates the deemed year-end. Directly fetched and operative clauses rechecked.

**Suggested fix:** Say the shortened taxation year can accelerate expiry of surviving losses; it does not restart their carryforward period.

### [CRITICAL] AVS-2 Loss-business continuity is replaced with a same-or-similar-business alternative

**File:** `guide/Corporate-Lifecycle/Business-Acquisition/Asset-vs-Share.md:66-67`

> the same or a similar business must be carried on with a reasonable expectation of profit, and they can then shelter only income from that business

The loss business itself must continue throughout the deduction year under s.111(5)(a)(i). The similar-business test separately expands eligible offset income under (ii); it does not substitute for continuing the loss business. The sentence reverses those roles.

**Source:** [ITA s.111(5)(a)(i)-(ii)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html), directly fetched and reread.

**Suggested fix:** Distinguish mandatory continuation of the loss business from permitted use against its income and qualifying similar-business income.

### [CRITICAL] WD-1 Capital loss between election and payable date is wrongly dismissed

**File:** `guide/Corporate-Lifecycle/Winding-Down.md:94-98`

> A loss realized *after* the election affects only the later balance; nothing reaches back

The page correctly adds a payable-date check, then nullifies it by saying any post-election loss is irrelevant. If an election precedes the payable date, a loss in between reduces the CDA capacity for this dividend. The earlier audit's WD-1 fix used election time despite its own repo-wide R-11 finding selecting payable time; both incompatible formulations survived remediation.

**Source:** [ITA s.83(2)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) tests CDA immediately before the dividend becomes payable, and [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) defines the time-dependent balance; rechecked against both.

**Suggested fix:** Distinguish losses before versus after the payable time, regardless of election-filing time. Preserve checking the filed estimate through the payable time.

### [MEDIUM] AVS-3 GST44 conditions require buyer registration unconditionally

**File:** `guide/Corporate-Lifecycle/Business-Acquisition/Asset-vs-Share.md:78-80`

> The buyer must be a registrant
> It is filed on Form *GST44* by the recipient, with the return for the period in which the supply is made

Section 167(1)(b) prevents the election when the supplier is registered and the buyer is not. It permits both parties to be unregistered, subject to the exclusions. Section 167(1.1) makes the recipient's filing requirement conditional on registration and uses the first period when tax would have become payable, not necessarily the supply date. This conflicts with the page's own non-registrant real-property exclusion.

**Source:** [ETA s.167(1)(b), (1.1)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-167.html), directly fetched and clauses re-opened.

**Suggested fix:** Qualify registration and filing conditions exactly; describe filing by the relevant return's due date, not attaching the election to the return.

### [CRITICAL] WD-2 Final T2 is ordered before the dissolution that determines its year-end

**File:** `guide/Corporate-Lifecycle/Winding-Down.md:39-43`, `:174`

> File the final T2 to the dissolution date (trivial: no income), then articles of dissolution

The diagram has the same order. A final return up to dissolution uses the actual dissolution date shown on the articles; the corporation must already have been permanently dissolved. The page's own final-T2 prose correctly says the year ends at dissolution, so its executable sequence contradicts both that text and CRA line 078 instructions.

**Source:** [CRA T4012 Chapter1, line 078](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012/t2-corporation-income-tax-guide-chapter-1-page-1-t2-return.html), fetched and operative paragraph reread.

**Suggested fix:** Distinguish preparatory/sweep-year filings used for clearance from the actual final dissolution-period T2. Place the latter after dissolution and keep its six-month filing deadline.

### [HIGH] EF-1 Holdco-freeze PUC rule is attributed to the wrong provision

**File:** `guide/Corporate-Lifecycle/Business-Acquisition/Estate-Freeze.md:55-57`

> The PUC grind caps that paid-up capital at the old shares' PUC less any boot.
> ... s.85(2.1) on the s.85 route.

Section85(2.1) uses tax cost less non-share consideration, not old-share PUC, and expressly excludes dispositions to which s.84.1 applies. The individual's non-arm's-length holdco-share transfer described here normally invokes s.84.1; its ceiling uses the greater of PUC and qualifying ACB, less boot. Treating both routes as the same old-PUC formula obscures a material distinction.

**Sources:** [ITA s.85(2.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.html), [s.84.1(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.1.html), [s.86(2.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-86.html); directly fetched and operative formulas rechecked.

**Suggested fix:** Keep the s.86 old-PUC rule separate; describe the s.85 holdco route as subject to s.84.1 where applicable and link the later anti-surplus-stripping section.

### [CRITICAL] EF-2 Attribution offset incorrectly includes all dividends, including redemption dividends

**File:** `guide/Corporate-Lifecycle/Business-Acquisition/Estate-Freeze.md:177`

> The deemed amount is reduced by dividends actually paid out.

Section74.4(2)(f) expressly excludes dividends deemed under section84 from the dividend offset. The page's core retirement mechanism is redemption of freeze shares under s.84(3), so its unqualified offset can make a reader assume those redemption dividends eliminate the imputed interest. The permitted offset has additional recipient/share conditions and uses taxable included amounts, not every cash distribution.

**Source:** [ITA s.74.4(2)(e)-(g)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-74.4.html), directly fetched and reread.

**Suggested fix:** Restrict the description to the statutory offsets, expressly exclude section84 deemed dividends from paragraph(f), and keep cash redemptions' effect on the outstanding base distinct.

### [CRITICAL] LP-1 Current-period income does not cure the ordinary limited-partner year-end deficit

**File:** `guide/Investments/T5013.md:88-95`.

> an intra-year distribution that dips the ACB below zero and is restored by the year-end income allocation does not trigger the gain

For the ordinary portfolio LP described here, the s.40(3.1) test is at fiscal-period end, while s.53(1)(e)(i) adds income for periods ending before the measurement time. The special current-period addition in s.40(3.11)(B)(c) is for professional partnerships. **Fix:** remove the blanket assurance; show the measurement immediately at period end separately from subsequent income additions, and distinguish possible later s.40(3.12) relief. **Sources:** [ITA s.40(3.1), (3.11), (3.111), (3.12)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html), [s.53(1)(e)(i)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-53.html), exact timing and professional exception rechecked. July 31 INV-LP-1 fixed the measurement date but this assurance remains wrong.

### [MEDIUM] EC-1 GIFI-Short can require a different aggregate line

**File:** `guide/Bookkeeping/Expense-Classification.md:31`.

> the line you pick here is the same either way

T1178 collapses detailed codes into broader lines. Sharing the code system does not mean every detailed expense code is a GIFI-Short line. **Fix:** distinguish detailed classification from its T1178 aggregate. **Source:** [RC4088, GIFI-Short and level-of-detail instructions](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html), directly checked. Do not copy the inconsistent labels in RC4088's introductory examples over its AppendixA code definitions.

### [HIGH] HST-1 Branch accounts do not create independent reporting periods or Quick Method elections

**File:** `guide/Operations/HST/HST.md:102`.

> Separate accounts allow different reporting periods or different Quick Method statuses per branch

Branches of one registrant keep the parent's reporting periods and Quick Method election. Separate accounts facilitate reporting, not separate tax identities. **Fix:** state the shared period/election and retain the separate-books requirement. **Source:** [CRA GST/HST Memorandum2-4, paragraphs5-6 and example](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/2-4/branches-divisions.html), fetched after search verification; reporting-period rule also checked in current RC4022.

### [MEDIUM] HST-2 Voluntary-disclosure pointer retains the old no-contact boundary

**File:** `guide/Operations/HST/HST.md:113`.

> if the corp comes forward before CRA initiates contact

The policy for applications from October 1, 2025 distinguishes prompted and unprompted applications. Prior contact does not invariably prevent relief. **Fix:** link the current eligibility test, distinguishing compliance contact from disqualifying enforcement action. **Sources:** [CRA GST/HST Memorandum16-5-1](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/16-5-1/voluntary-disclosures-program.html), [CRA review-and-decision guidance](https://www.canada.ca/en/revenue-agency/programs/about-canada-revenue-agency-cra/compliance/voluntary-disclosures-program/review-decison-vdp.html), directly fetched. The income-tax administration page already recognizes the new regime.

### [MEDIUM] DEBT-1 Unpaid-related-party expense needs its inclusion year stated

**File:** `guide/Operations/Debt-And-Financing.md:104`.

> Unpaid at the end of the *second* following tax year, it is added back to the corp's income

The unpaid-status test is at that second year-end, but the inclusion is in the third following taxation year, unless the statutory alternative applies. The sentence does not distinguish those dates. **Fix:** name the third-year inclusion and link the agreement alternative. **Source:** [ITA s.78(1)(a)-(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-78.html), directly checked. This is a timing clarification rather than a claim that the second-year unpaid test is wrong.

### [MEDIUM] FXC-1 The custom FX bridge is incorrectly attributed to all three software products

**File:** `guide/Bookkeeping/Foreign-Currency/Bookkeeping-Convention.md:98-109`.

> It is what GnuCash, Xero, and QuickBooks Multi-Currency produce

The described convention defers FX recognition to revaluation and carries permanent currency bridges. Intuit's own guide instead records an exchange gain/loss on payment; Xero documents realized differences between invoice and payment dates. Native-currency account support does not establish this particular posting architecture. **Fix:** retain the guide's chosen convention but remove unsupported product equivalence; document software-specific behavior separately. **Sources:** [Intuit's Canadian multicurrency training guide](https://intuitglobal.intuit.com/delivery/cms/prod/sites/default/education.intuit.ca/downloads/qbo/Appendix-B-Multicurrency-in-QuickBooks-Online.pdf), directly read; [Xero's account documentation](https://central.xero.com/0/article/Foreign-currency-accounts-in-the-chart-of-accounts-AU), search-index evidence only because its direct page returned no text. No live software session was tested.

### [MEDIUM] NG-1 IBKR conversion commission is overstated

**File:** `guide/Bookkeeping/Foreign-Currency/Norberts-Gambit.md:49`.

> ~1 basis point with a ~$2 minimum

The broker's first manual spot-currency tier is0.20 basis point with a US$2 minimum, with lower rates at larger monthly volumes. Automatic conversion has a separate pricing rule. **Fix:** date the comparison and distinguish the manual commission, minimum currency and automatic-conversion route. **Source:** [Interactive Brokers Canada spot-currency commissions](https://www.interactivebrokers.ca/en/pricing/commissions-spot-currencies.php), directly fetched after search verification.

### [HIGH] TR-1 RRSP excess withdrawal workflow omits the offsetting deduction

**File:** `guide/Personal-Tax/TFSA-And-RRSP-Contributions.md:82-83`

> The fix is withdrawing the excess; Form T3012A lets the issuer refund it without withholding tax
> Without the form, the issuer withholds, and the withheld amount reconciles on the T1

The page explicitly promises help fixing an over-contribution but omits the income inclusion and conditional offsetting deduction. Withholding reconciliation alone does not remove the taxable withdrawal: even an approved T3012A refund goes on line 12900 and needs line 23200; without prior approval T746 calculates the deductible refund, subject to conditions and timing. Missing this step can tax the return of undeducted contributions.

**Sources:** [CRA, Withdrawing unused contributions](https://www.canada.ca/en/revenue-agency/services/tax/individuals/topics/rrsps-related-plans/making-withdrawals/withdrawing-unused-contributions.html), directly read; [ITA146(8.2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-146.html), operative statutory conditions rechecked.

**Suggested fix:** Add the income/offsetting-deduction steps, T746 route, approval requirement for T3012A, and the eligibility/timing boundary by linking the CRA workflow.

### [HIGH] DM-1 Medical-expense workflow omits reimbursement and prior-claim exclusions

**File:** `guide/Personal-Tax/Donation-And-Medical-Credits.md:63-66,72-75`

> The claim covers any 12-month period ending in the taxation year; pick the period that clusters the spending
> Common eligible costs for an owner-manager household: prescriptions, dental and orthodontics, vision,
> paramedical practitioners, and premiums for a private health plan paid personally.

The page discusses private coverage and selecting a 12-month expense pool but never says to remove insured/reimbursable amounts or amounts already claimed. Those are essential eligibility controls for the common situations the page covers: paying an invoice initially does not make the insured share claimable, and overlapping claim periods cannot reuse last year's expense.

**Sources:** [ITA118.2(1),(3)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.2.html), direct operative text; [CRA lines33099/33199](https://www.canada.ca/en/revenue-agency/services/tax/individuals/topics/about-your-tax-return/tax-return/completing-a-tax-return/deductions-credits-expenses/lines-33099-33199-eligible-medical-expenses-you-claim-on-your-tax-return.html), independently rechecked, explicitly states both limitations.

**Suggested fix:** Build the pool from eligible paid costs not previously claimed and net of reimbursement entitlement, retaining the statutory exception for taxable reimbursements not deducted elsewhere.

### [MEDIUM] DM-2 Ontario credit bases are not identical to federal bases

**File:** `guide/Personal-Tax/Donation-And-Medical-Credits.md:32`

> Ontario runs a parallel credit at its own rates on the same bases

Medical credits use different provincially indexed thresholds, and Ontario retains a limit for other-dependant expenses. The page goes on to give only federal floors without that distinction. This is a modest precision issue because software computes the provincial return.

**Sources:** [Ontario official tax-provision descriptions](https://budget.ontario.ca/2025/fallstatement/provisions.html) confirms the separate Ontario threshold and other-dependant cap; [CRA federal indexation table](https://www.canada.ca/en/revenue-agency/services/tax/individuals/frequently-asked-questions-individuals/adjustment-personal-income-tax-benefit-amounts.html) gives a different federal threshold for the same year. Both fetched directly; no 2026 Ontario figure is inferred.

**Suggested fix:** Replace same bases with a qualification that Ontario uses parallel credits with its own thresholds/limits; label medical figures as federal and leave provincial computation to ON428/software.

### [HIGH] SP-CPP-1 Personal instalment instructions disappear into a circular cross-reference

**Files:** `guide/Sole-Proprietorship/CPP-And-The-T1.md:80-81`; `guide/Personal-Tax/T1-Filing-Basics.md:36`

> The ordinary personal instalment threshold, due dates, and computation options apply to a sole proprietor.
> They live on [T1 Filing Basics]...

The destination says the due dates and computation options are worked on CPP and the T1. Neither page actually gives the dates or the options. This breaks both pages' express operational promise and the canonical-owner rule: a reader cannot determine when/how much to pay by following the links.

**Sources:** Both linked sections read end-to-end and text-searched; [CRA required personal instalments](https://www.canada.ca/en/revenue-agency/services/payments/payments-cra/individual-payments/income-tax-instalments.html) confirms March 15, June 15, September 15 and December 15; [ITA156](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-156.html) governs calculation. This is an internal material-consistency finding, not a missing optional expansion.

**Suggested fix:** Restore the dates and three computation approaches to one canonical page and point the other page there. Preserve the next-business-day rule and no-calculation reminder option.

### [HIGH] SP-HST-1 The differences page omits the principal annual-filer deadline difference

**File:** `guide/Sole-Proprietorship/HST-For-Sole-Proprietors.md:23-31,84-89`

> Everything on the corporate HST pages applies, reading *you* for *the corp*
> This page states only what differs for an unincorporated registrant.

The linked corporate deadline is three months after year-end for both return and balance. An annual individual filer with calendar fiscal year who carries on a business and qualifies for June 15 T1 filing instead pays GST/HST by April 30 and files by June 15. This page neither supplies nor links that exception despite its stated purpose of providing the unincorporated differences. Its instalment cross-link does not cure the annual balance/filing omission.

**Sources:** [ETA238(1)(a)(ii)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-238.html), [ETA228(2)(a)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-228.html), direct text independently rechecked against [CRA reporting deadlines](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/gst-hst-businesses/file-gst-hst-return/reporting-requirements-deadlines.html). Corporate linked page line 181 inspected.

**Suggested fix:** Add the bounded individual annual-filer April 30/June 15 exception, its qualifying conditions and fallback; distinguish it from quarterly instalments.

### [MEDIUM] SP-EI-1 All three EI termination subsection labels are wrong

**File:** `guide/Sole-Proprietorship/CPP-And-The-T1.md:60-64`

> Within 60 days ... (EIA s.152.02(4))
> effective December 31 ... (s.152.02(5))
> Once benefits have been paid ... (s.152.02(7))

The substantive correction from the July 31 audit remains useful, but the new specific labels misdirect verification. Section152.02(7) is the60-day rescission; subsection(6) is ordinary December 31 termination; subsection(4) restricts termination after benefits (subject to prescribed circumstances). Subsection(5) addresses deemed termination under regulations.

**Source:** [EIA152.02(4)-(7)](https://laws-lois.justice.gc.ca/eng/acts/E-5.6/section-152.02.html), directly fetched and reopened to reverify the citation discrepancy.

**Suggested fix:** Correct the three subsection labels and preserve the qualified 'effectively permanent' wording.

## Content notes beyond the findings

The strongest next addition remains one operational book-to-tax reconciliation worked example: S125 net income through S1 adjustments, S6/S8, taxable income and the refundable-tax pools. Current R-4, PAY-1, CCAT-1 and CCAE-1 show why prose reminders alone do not make the workflow executable. Keep its source rules on their canonical owner pages.

Contract-revenue coverage could still use a bounded worked example for contractual entitlement, milestones and retainers. The existing unbilled-receivable/year-end HST mechanic already exists; it should be linked rather than duplicated. Existing specialist exclusions do not call for expanding personal benefits, general employment tax, complex succession planning or US tax coverage.

For remediation, prioritize the CRITICAL findings and then the contradictory return/form instructions. Derive fixes from the primary sources anew, as the playbook requires. Use concrete minimal counterexamples for CCA and payroll, and verify the final rendered tables/diagrams as well as prose. No guide repair is included in this audit.

## What was NOT flagged

- Protected heading progress annotations, signed-off status and the README disclaimer were preserved. No automated promotion is appropriate.
- Ontario's2026 small-business rate and2027 non-eligible DTC change are enacted. The2026 calendar-year blended corporate rate is approximately11.696%; dated2025 examples can retain12.2%.
- Current RC4088 AppendixA confirms8250 for bad-debt recoveries,1062 for trade receivables,1483 for taxes recoverable,1484 for prepaids,9281 for vehicle expenses and9283 for withholding. Its inconsistent introductory examples do not override those definitions. Internal `NNNN-N` accounts remain guide conventions, not official extra GIFI codes.
- Class 13's separate first-year50% limitation was confirmed; the previous audit's suggestion to remove it was not revived. Explicitly hypothetical plain-half-year illustrations were not treated as current accelerated-incentive claims.
- Current ITA89 puts post-September 15, 2016 trust capital-gain allocations into the cumulative capital-gains CDA component. The historical standalone paragraph(f) treatment is not a current correction.
- ITA50(1.1)'s reversal uses the specified original adjusted cost basis; the initial suspicion that it must use later FMV was dropped.
- Operating USD used to buy a capital investment can retain income-account FX character on that payment: archived IT-95R paragraph 4 expressly supports the repaired example. Moving money to a brokerage alone does not establish capital character.
- The candidate “compound GIC must always receive an annual T5” was dropped after checking ITA12(11)(i), which excludes obligations whose income is otherwise included annually. T4015's generic investment-contract wording alone is not enough for that finding in a corporate guide. T5-1 concerns the separate cash-versus-GIC posting error.
- The statutory information-return penalty tier differs from CRA's small-return administrative treatment. A page expressly citing the statutory tier was not labelled factually wrong for that reason alone.
- A retained-earnings-based dividend comparison need not imply backdating a declaration. No finding was raised without text authorizing backdating.
- Corporate T4A non-enforcement is explicitly an administrative/open-question convention on the canonical page, not a claim that the statute exempts all corporate recipients. The $500 boundary and implementation changes should be rechecked at sign-off.
- A property-use change, rather than the CCA claim itself, is the substantive principal-residence event. The corrected concession wording holds. Statutory spousal donation pooling also holds.
- Bare-trust2026 reporting dates agree with current CRA guidance subject to the page's stated exemptions; no blanket all-arrangements filing rule was inferred from the headline. UHT is different and has a confirmed update in FR-1.
- Annual SaaS/insurance purchases were not declared prepaid-expense errors without an explicit coverage period proving the disputed year-end allocation. Suspicions about optional small balances and ambiguous fee labels were not promoted into tax findings.
- Not every dated broker workflow was reproduced in a logged-in corporate account. NG-1 has direct issuer pricing support; unsupported guesses about broker journaling were excluded.

Arithmetic checks included ACB tutorial and screenshot cost allocation, ledger trial balance and closing balance sheet, period-close reconciliation, FX settlement/revaluation and prepaid splits, dividend refund/gross-up/DTC examples, the loss carryback, inventory averages/returns, and CCA examples. Confirmed arithmetic or posting defects appear above. The local screenshots support their illustrated fields and historical UI; they do not prove current automatic software behavior. Redacted identifying details were not transcribed into this report.

## Status of WIP / pending-review pages

All 95 guide pages were read. Current file markers yield **84 AI-generated pages pending review, 11 signed-off pages, and no work-in-progress stubs**. These are maintainer states, not conclusions granted by this audit.

| Group | Pages reviewed | Pending AI review | Signed off | Stubs |
|---|---:|---:|---:|---:|
| Overview | 6 | 3 | 3 | 0 |
| Corporate Lifecycle | 9 | 9 | 0 | 0 |
| Bookkeeping | 12 | 12 | 0 | 0 |
| Operations | 21 | 21 | 0 | 0 |
| Paying Yourself | 10 | 8 | 2 | 0 |
| Investments | 18 | 12 | 6 | 0 |
| Filing and CRA | 7 | 7 | 0 | 0 |
| Sole Proprietorship | 6 | 6 | 0 | 0 |
| Personal Tax | 6 | 6 | 0 | 0 |
| **Total** | **95** | **84** | **11** | **0** |

The previous remediation's request for maintainer re-sign-off of affected signed-off pages is not discharged by this audit. Current findings on signed-off pages likewise require maintainer-driven evidence before repair under the established process. `audit/wip/` retains the coverage checklist, identity provenance, reasoning checkpoints and assembly artifacts, all ignored by git.

## Validation and closeout

`pwsh -NoProfile -File scripts/Validate-Docs.ps1` passed with 0 warnings: 108 current Markdown files, 95 guide pages, 2,034 local links and 117 GIFI account-tree codes checked; no changed reader-facing lines exceeded the soft limit. Final git inspection confirms only this report and the Audit-Summary History addition are deliverables.

The deliverable is this single report and its History entry in `audit/Audit-Summary.md`. No guide page or status marker was changed and no commit was created.
