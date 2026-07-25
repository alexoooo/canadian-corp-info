STATUS: AI GENERATED, REVIEW IN PROGRESS

# T2 Schedules

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) assembling or reviewing the annual T2 package
- Wanting one map of which schedules exist, when each applies, and where this guide works it

**TLDR**:
- The T2 return is the *jacket* (form T2) plus schedules
  - T2 software selects most schedules from the data entered; the map catches what the software was never told
- A service or consulting CCPC files the same core every year
  - The GIFI statements (S100, S125, S141) and the book-to-tax reconciliation (S1)
  - CCA (S8), shareholder information (S50), and GRIP (S53)
- A corporate investment account adds S3, S6, S7, and S21
  - Events add the rest: S4 in a loss year, S2 for donations, S24 and S101 with the first return
- ERDTOH/NERDTOH continuity is on the jacket itself, not a schedule
- Schedule numbers are stable
  - Line numbers drift between form versions, so verify any line reference against the current-year form

Limitations:
- Coverage is what an owner-managed service or consulting CCPC (with a corporate investment account) plausibly files
  - The full T4012 list runs to some fifty schedules; the rest get one line here
- Ontario is the provincial context
  - Quebec (CO-17) and Alberta (AT1) file separate provincial returns and are out of scope
- This page is the map: the mechanics of each schedule live on the linked pages
- The following is my understanding as of 2026


## Return Assembly

```mermaid
flowchart TB
    GL[("General ledger:<br/>trial balance")]
    GIFI["GIFI statements:<br/>S100 balance sheet<br/>S125 income statement<br/>S141 additional information"]
    S1["S1 net income for tax:<br/>add-backs and deductions"]
    TI["Taxable income:<br/>S4 losses, S2 donations,<br/>S3 dividends received"]
    TAX["Tax calculation:<br/>SBD via S7 and S23,<br/>S21 foreign tax credits,<br/>Ontario tax"]
    FEED{{"Feeder schedules:<br/>S8 CCA<br/>S6 dispositions<br/>S7 investment income"}}
    JACKET(["T2 jacket:<br/>balance due or refund"])

    GL --> GIFI --> S1 --> TI --> TAX --> JACKET
    FEED -.-> S1
    FEED -.-> TAX
```

The return computes in layers, and the schedules are the layers:
- The books produce the *GIFI* financial statements (S100, S125)
  - Paper financial statements are not filed; GIFI is their replacement (see [Bookkeeping, the general ledger, and GIFI](../Overview/Small-Business-Tax.md#bookkeeping-the-general-ledger-and-gifi))
- S1 converts accounting net income to *net income for tax purposes*
  - Add back what the books deducted but tax does not allow; deduct what tax allows but the books did not
- The taxable-income section of the jacket then subtracts carryovers and special deductions
  - Losses, donations, and the s.112 deduction for dividends received
- The tax calculation applies rates and credits, and the jacket nets instalments against the result

Everything on the schedules is in whole dollars (see [Whole-dollar rounding](Whole-Dollar-Rounding.md)).  
T2 software generates the schedule set from the data entered.  
The failure mode is not a mis-filed schedule but a missing one: income or an event the software was never told about.  
A nil or loss year can qualify for the *T2 Short Return*, a two-page jacket with the same GIFI attachments (see [Every-Year Schedules](#every-year-schedules)).  


## The T2 Jacket

The jacket (form T2, nine pages) is the return proper; everything else attaches to it:
- *Identification*: name, BN, year-end, the CCPC box, and the yes/no questions
  - One question asks whether specified foreign property exceeded $100,000, which commits the corporation to a [T1135](../Investments/T1135.md)
- *Taxable income*: the assembly line from S1's net income through the loss and donation deductions
- *Small business deduction*: the SBD calculation sits on the jacket
  - Fed by S7's active/investment split and any S23 allocation
- *Refundable taxes*: the ERDTOH and NERDTOH continuity and the dividend refund are jacket lines, not a schedule
  - Part IV tax feeds in from S3; see [ERDTOH and NERDTOH](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md)
- *Balance*: federal and Ontario tax, minus instalments, gives the balance due or refund
  - See [Filing deadlines and instalments](../Overview/Small-Business-Tax.md#filing-deadlines-and-instalments)


## Every-Year Schedules

Filed with essentially every return of an owner-managed CCPC:

| Schedule | Title | When it applies | Details |
|---|---|---|---|
| S100 | Balance Sheet Information | always | [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md) |
| S125 | Income Statement Information | always | [Expense Classification](../Bookkeeping/Expense-Classification.md), [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md) |
| S141 | GIFI – Additional Information (formerly Notes Checklist) | always, with the GIFI statements | below |
| S1 | Net Income (Loss) for Income Tax Purposes | whenever book and tax differ — in practice always | below |
| S8 | Capital Cost Allowance | any depreciable property on the books | [CCA — Bookkeeping and T2 schedules](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md#bookkeeping-and-t2-schedules) |
| S50 | Shareholder Information | any shareholder holding 10% or more | below |
| S53 | General Rate Income Pool (GRIP) Calculation | eligible dividend paid or GRIP changes | [T2 reporting — S53](../Paying-Yourself/Dividends/T2-Reporting.md#schedule-53---grip-calculation) |

*S1* is the spine of the tax side:
- Recurring add-backs for this guide's scenarios:
  - Book amortization (CCA replaces it) and the non-deductible half of [meals](../Bookkeeping/Expense-Classification.md)
  - Arrears interest and penalties (see [CRA Administration](CRA-Administration.md#booking-the-tax-cycle))
  - The foreign-tax add-back behind [T3 Box 34](../Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md)
- Recurring deductions: CCA from S8, and the book capital gain backed out in full
  - Line 113 adds the taxable half back from S6; see [T5008](../Investments/T5008/T5008.md)
- Tax-basis books keep S1 short; that is much of their appeal (see [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md))

*S50* lists every shareholder holding 10% or more of any class.  
Each row carries the name, SIN (or BN for a corporate shareholder), and percentage of common and preferred shares.  
For a single-owner corporation it is one row that never changes, but it is still filed each year.  

*S141* describes the financial statements behind the GIFI.  
It asks who prepared them (owner, or an accountant on a compilation, review, or audit engagement).  
It also asks about the accountant's involvement.  
Self-prepared statements are a legitimate answer for an owner-managed corporation.  
Answer the questions accurately rather than aspirationally.  

*S140* (Income Statement Summary) joins the GIFI set only when more than one S125 is filed.  
Multiple income statements arise from operating distinct businesses; a single-activity CCPC files one S125 and no S140.  

The *T2 Short Return* is a two-page jacket for the simplest returns:
- Eligibility: a CCPC throughout the year with nil net income or a loss, a permanent establishment in one province, no refundable credits claimed, and no taxable dividends paid or received (see TODO)
- A dormant or first-year corporation is the typical filer
- The GIFI statements (S100, S125, S141) still attach; T2 software often files the full jacket regardless, which is equally valid


## Investment-Income Schedules

Triggered by the corporate investment account (see [Active vs investment income](../Overview/Small-Business-Tax.md#active-vs-investment-income)):

| Schedule | Title | When it applies | Details |
|---|---|---|---|
| S3 | Dividends Received, Taxable Dividends Paid and Part IV Tax | dividends received or paid | [T5](../Investments/T5/T5.md), [T3](../Investments/T3/T3.md); [T2 reporting](../Paying-Yourself/Dividends/T2-Reporting.md#schedule-3---dividends-paid-section) |
| S6 | Summary of Dispositions of Capital Property | any capital disposition | [T5008](../Investments/T5008/T5008.md), [Foreign Currency](../Bookkeeping/Foreign-Currency/Foreign-Currency.md), [T5 Box 18](../Investments/T5/T5-Box-18-Capital-Gains-Dividends.md) |
| S7 | Aggregate Investment Income and Income Eligible for the SBD | investment income | [T5 Box 13](../Investments/T5/T5.md#interest---box-13), [ERDTOH and NERDTOH](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md) |
| S21 | Federal and Provincial Foreign Income Tax Credits | foreign withholding tax to credit | [T3 Box 25 / Box 34](../Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md) |
| S55 | Part III.1 Tax on Excessive Eligible Dividend Designations | designations beyond GRIP | [T2 reporting — S55](../Paying-Yourself/Dividends/T2-Reporting.md#schedule-55---part-iii1-tax-on-excessive-eligible-dividend-designations) |

S6 collects any capital disposition: securities sales, FX on capital account, and capital gains dividends.  
S7 does double duty: it computes the *aggregate investment income* (AII) and the income eligible for the SBD.  
AII drives the refundable tax and the passive-income grind of the business limit.  
The slip-to-schedule mapping (which T3/T5 box lands on which schedule) is diagrammed on [T5](../Investments/T5/T5.md#t5-boxes).  
It is worked box-by-box on the T3 and T5 pages.  


## Event-Driven Schedules

Filed in the years something happens:

| Schedule | Title | When it applies | Details |
|---|---|---|---|
| S4 | Corporation Loss Continuity and Application | a loss arises, carries back, or carries forward | [Losses](Losses.md) |
| S2 | Charitable Donations and Gifts | a donation deduction is claimed | [Donations](../Operations/Donations.md) |
| S13 | Continuity of Reserves | a reserve is claimed | [Receivables and Bad Debts](../Operations/Receivables-And-Bad-Debts.md), [Deferred Revenue](../Operations/Deferred-Revenue.md) |
| S24 | First-time Filer after Incorporation, Amalgamation, or Wind-up | the first T2 | [Starting Up](../Corporate-Lifecycle/Starting-Up.md) |
| S101 | Opening Balance Sheet Information | the first T2's opening GIFI | [Starting Up — Funding the corporation](../Corporate-Lifecycle/Starting-Up.md#funding-the-corporation) |
| S9 | Related and Associated Corporations | a second corporation enters the picture | [Corporate Structure](../Corporate-Lifecycle/Corporate-Structure/Corporate-Structure.md) |
| S23 | Agreement Among Associated CCPCs to Allocate the Business Limit | associated CCPCs | [Small Business Tax](../Overview/Small-Business-Tax.md#what-is-corporate-tax) |
| S44 | Non-Arm's Length Transactions | a non-arm's-length rollover (e.g. s.85) | [Starting Up](../Corporate-Lifecycle/Starting-Up.md#bringing-in-assets), [Business Acquisition](../Corporate-Lifecycle/Business-Acquisition/Business-Acquisition.md) |
| S11 | Transactions with Shareholders, Officers or Employees | certain property transactions | [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md) |

*S2* tracks corporate donations like S4 tracks losses:
- The deduction (not a credit, at the corporate level) is capped at 75% of net income
  - The excess carries forward 5 years (see [Donations](../Operations/Donations.md))

*S13* carries the reserve continuity year over year:
- Reserves let recognized-but-uncollected or received-but-unearned amounts defer:
  - Doubtful accounts receivable: ITA s.20(1)(l), see [Receivables and Bad Debts](../Operations/Receivables-And-Bad-Debts.md)
  - Prepaid-but-undelivered revenue: s.20(1)(m), see [Deferred Revenue](../Operations/Deferred-Revenue.md)
- Each reserve reverses into income the next year and is re-claimed at the new balance
  - The schedule shows opening, closing, and the swing

A wind-up year files the same package one last time, plus the clearance machinery around it (see [Winding Down](../Corporate-Lifecycle/Winding-Down.md)).  


## Ontario Schedules

Ontario corporate tax has been administered by CRA within the T2 since 2009; there is no separate Ontario return:
- *S500* (Ontario Corporation Tax Calculation): the Ontario rates and the Ontario small-business deduction
  - T2 software generates it for any corporation taxable in Ontario
- *S5* (Tax Calculation Supplementary — Corporations): needed only in specific cases
  - A permanent establishment in more than one province, or provincial credits to claim
  - A one-province Ontario corporation without credits typically does not file it
- The old Ontario annual-return schedules (S546/S547) were retired in 2021
  - The corporate-registry annual return is now filed in the Ontario Business Registry, separate from the T2
  - See [Starting Up — First-year clocks](../Corporate-Lifecycle/Starting-Up.md#first-year-clocks)


## Rarely Applicable Schedules

One line each, so the names are recognizable when software or a checklist mentions them:

| Schedule | Title | Why it is rare here |
|---|---|---|
| S10 | Cumulative Eligible Capital Deduction | repealed; replaced in 2017 by Class 14.1 (see [CCA Classification](../Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Classification.md)) |
| S27 | Manufacturing and Processing Profits Deduction | manufacturers only |
| S31 | Investment Tax Credit — Corporations | SR&ED and other ITCs; specialized claims |
| S33 | Taxable Capital Employed in Canada | taxable capital $10M or more; also where the capital-based grind starts |
| S19 | Non-Resident Shareholder Information | a non-resident holds shares |
| S29 | Payments to Non-Residents | rents, royalties, or fees paid to non-residents (withholding territory) |
| S54 | Low Rate Income Pool (LRIP) Calculation | non-CCPCs; the CCPC analogue is GRIP on S53 |
| S88 | Internet Business Activities | income from its websites; a brochure site alone does not appear to trigger it |


## Forms Filed Alongside the T2

Not schedules, but part of the same season:
- *T1135* (Foreign Income Verification Statement): its own return with its own penalty, due with the T2; see [T1135](../Investments/T1135.md)
- *T2054* (capital dividend election): filed when the dividend is elected, not with the T2; see [T2 reporting — Form T2054](../Paying-Yourself/Dividends/T2-Reporting.md#capital-dividend-election---form-t2054)
- *T183 CORP*: authorizes an outside preparer to e-file the return; most corporations are required to file electronically
- *T106* (non-arm's-length transactions with non-residents): out of scope for this guide's scenarios
  - So is *T1134* (foreign affiliates)
- The GIFI itself is documented in CRA guide RC4088, the source of the account names in [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md)


## Related

- [Small Business Tax Overview](../Overview/Small-Business-Tax.md)
- [Investments](../Investments/Investments.md) (the investing cycle behind S3, S6, S7, and S21)
- [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md)
- [Expense Classification](../Bookkeeping/Expense-Classification.md)
- [Whole-dollar rounding](Whole-Dollar-Rounding.md)
- [Capital Cost Allowance](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)
- [Losses](Losses.md)
- [T2 reporting](../Paying-Yourself/Dividends/T2-Reporting.md) (S3, S53, S55 in depth)
- [ERDTOH and NERDTOH](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md)
- [T3](../Investments/T3/T3.md), [T5](../Investments/T5/T5.md), [T5008](../Investments/T5008/T5008.md) (slip-to-schedule mapping)
- [T1135](../Investments/T1135.md)
- [Starting Up](../Corporate-Lifecycle/Starting-Up.md), [Winding Down](../Corporate-Lifecycle/Winding-Down.md)
- [CRA Administration](CRA-Administration.md)


## Citations

- CRA T4012 - T2 Corporation Income Tax Guide (the schedule-by-schedule reference): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html
- CRA - T2 returns and schedules (index of all current schedules): https://www.canada.ca/en/revenue-agency/services/forms-publications/t2-returns-schedules.html
- CRA RC4088 - General Index of Financial Information (GIFI): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088.html
- Individual schedule pages are cited on the linked detail pages:
  - S3/S53/S55 on [T2 reporting](../Paying-Yourself/Dividends/T2-Reporting.md), S4 on [Losses](Losses.md)
  - S8 on [CCA](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md), S100/S125 on [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md)


## TODO

- Verify the Ontario pair: whether S500 is filed by every Ontario-taxable corporation or only in specific cases
  - Also the exact S5 trigger conditions
- Verify the T2 Short eligibility list against the current T2 Short guide (nil/loss, single-province PE, no refundable credits, no taxable dividends; any further conditions)
- Verify the S140 trigger (more than one S125) against RC4088's Schedule 140 description
- Verify the S50 threshold wording (10% of any class of shares) and what identifiers the current form requires
- Verify the S44 trigger list (which rollover provisions require it)
  - Also whether an s.85 incorporation transfer files it in addition to the T2057 election
- Verify S11's current status and trigger conditions; it is the least-documented schedule in this list
- Confirm the jacket's yes/no question line numbers (the T1135 question in particular, coordinating with the [T1135](../Investments/T1135.md) TODO)
- Confirm the mandatory electronic-filing rule and its exceptions for the current year
- Consider a redacted screenshot set (S50, S141) once available
  - Move the page into a `T2-Schedules/` folder when media lands
