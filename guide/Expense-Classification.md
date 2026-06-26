STATUS: AI GENERATED, REVIEW IN PROGRESS

# Expense Classification

**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) who post the corporation's costs to GIFI codes for the books and the T2.  

Every cost the corporation incurs lands on a *GIFI* code — the *General Index of Financial Information*, CRA's standardized chart of accounts (RC4088).  
Operating expenses are reported on Schedule 125 (the income statement); capital assets sit on Schedule 100 (the balance sheet) and are deducted over time through capital cost allowance.  
This page covers the income-statement side: deciding whether a cost is a current expense or a capital asset, and which Schedule 125 line it belongs on.  
For the definition of GIFI itself see [Glossary](Glossary.md); for the balance-sheet and CCA side see [Capital Cost Allowance](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md).  

Limitations:
- Covers the operating-expense lines an owner-managed service or consulting CCPC actually uses; the full RC4088 listing has hundreds of codes for industries out of scope here
- GIFI codes and CRA rules can change; verify a code against the current RC4088 before filing
- The following is my understanding as of 2026


## GIFI and Schedule 125

- *Schedule 125* (S125): the income statement — revenue (codes 8000–8299) and expenses (8300–9899)
- *Schedule 100* (S100): the balance sheet — assets, liabilities, and equity (codes 1000–3849)
- Operating expenses occupy the 8500–9899 band; cost of sales sits separately at 8300–8519 (see [Cost of sales is separate](#cost-of-sales-is-separate))
- *GIFI-Short* (Form T1178): a condensed return for smaller corporations; it uses the same code numbers, so the line you pick here is the same either way
- Codes come in rollup and detail pairs: `9150` Computer-related expenses is a rollup, `9152` Internet a detail beneath it; reporting at the rollup level is fine for a small corp

Pick the most specific line that fits, and use the same line for the same kind of cost every year.  
Consistency matters more than the choice between two defensible lines.  


## Capitalize or expense

The first decision for any cost is whether it is consumed now or delivers an enduring benefit:

- *Current expense*: consumed within the year (rent, subscriptions, supplies, professional fees) → Schedule 125, deducted in full this year (ITA s.18(1)(a))
- *Capital asset*: lasting benefit beyond the year (a laptop, equipment, a perpetual software licence) → Schedule 100, deducted over time as CCA (ITA s.18(1)(b), s.20(1)(a))

A small corp typically sets a *capitalization floor* (commonly $500): purchases below it are expensed even if they last, to avoid tracking trivial assets.  
The floor is a bookkeeping policy applied consistently, not a statutory threshold.  

```mermaid
flowchart TD
    Start(["A cost is incurred"]) --> COGS{"Direct cost of<br/>goods or services sold?"}
    COGS -->|yes| CS["Cost of sales<br/>8300-8519"]
    COGS -->|no| Cap{"Enduring benefit<br/>beyond the year?"}
    Cap -->|"no, or below floor"| Op["Operating expense<br/>Schedule 125 line"]
    Cap -->|yes| Asset["Capital asset<br/>Schedule 100 + CCA"]
    Op --> Pick["Pick the Schedule 125<br/>line by category"]
```

For how a capital cost is then deducted (CCA classes, the half-year rule, the Accelerated Investment Incentive), see [Capital Cost Allowance](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md).  
For what gets folded into the cost of an asset or inventory rather than expensed, see [Cost Recovery](Cost-Recovery/Cost-Recovery.md).  


## Operating-expense reference (Schedule 125)

The lines an owner-managed service or consulting CCPC reaches for, with what belongs on each.  
Titles are from RC4088; the full index has many more.  

| Code | Title | What goes here |
|------|-------|----------------|
| `8520` | Advertising and promotion | advertising, website and ad spend, promotional material |
| `8523` | Meals and entertainment | client meals and entertainment (income-tax deduction limited to 50%) |
| `8690` | Insurance | commercial general liability, professional liability (errors and omissions), property insurance |
| `8710` | Interest and bank charges | interest, bank fees, credit-card merchant charges (`8715` Bank charges is the detail line) |
| `8760` | Business taxes, licences, and memberships | business licences, professional dues, association memberships |
| `8810` | Office expenses | general office costs with no more specific line |
| `8811` | Office stationery and supplies | paper, printer supplies, postage |
| `8860` | Professional fees | outside professionals; details: `8861` Legal fees, `8862` Accounting fees, `8863` Consulting fees |
| `8871` | Management and administration fees | management or admin fees paid to another party |
| `8910` | Rental | rent for office or equipment (`8911` Real estate rental, `8914` Equipment rental) |
| `8960` | Repairs and maintenance | repairs to business property and equipment |
| `9060` | Salaries and wages | employee pay; details: `9064` Directors fees, `9065` Management salaries, `9066` Employee salaries |
| `9110` | Sub-contracts | contract or sub-contract labour (an independent contractor, not an employee) |
| `9130` | Supplies | consumable supplies; `9131` Small tools for tools below the capitalization floor |
| `9150` | Computer-related expenses | software and SaaS subscriptions, hosting, expensed peripherals (`9152` Internet for connectivity) |
| `9180` | Property taxes | property tax on business real estate |
| `9200` | Travel expenses | business travel, lodging, transportation (`9201` Meetings and conventions) |
| `9220` | Utilities | electricity, water, heat, fuel; `9225` Telephone and telecommunications is the detail line for phone and connectivity |
| `9270` | Other expenses | costs with no more specific line; a catch-all, not a default |
| `9281` | Vehicle expenses | fuel, insurance, repairs, and running costs of a business vehicle |

Placement notes:
- *Salary vs sub-contract vs management fee*: pay to an employee → `9060`; to an arm's-length contractor → `9110`; a management or admin fee to a related service entity → `8871`. The distinction drives source-deduction and T4 / T4A obligations, not just the code.
- *Telephone and internet*: a standalone connectivity cost can sit at `9225` (telecom) or `9152` (internet, under computer-related); pick one and keep it there.
- *Other expenses*: use `9270` only when nothing more specific fits; a reviewer reads a large "Other" balance as miscoding.


## Computer and software costs

This is where owner-managers most often hesitate.  
The split follows the capitalize-or-expense fork:

- *SaaS and cloud subscriptions* (Microsoft 365, GitHub, an AI-assistant subscription, hosting): a recurring service consumed as you go → operating expense, `9150` Computer-related expenses; never capitalized, regardless of annual cost
- *Expensed hardware and peripherals* below the capitalization floor (a $120 keyboard, a $300 monitor): `9150`, or `9131` Small tools under Supplies — pick a convention
- *Capitalized hardware* (a laptop, a workstation): a capital asset → Schedule 100 `1774` Computer equipment/software, then CCA as Class 50
- *Standalone application software* bought outright (a perpetual licence): capital → Class 12 (100% rate, but the half-year rule applies); systems software bundled with hardware follows the hardware into Class 50

So a recurring software subscription — a month-to-month or annual SaaS — is `9150`; the laptop you run it on is `1774` and depreciates.  
`8810` Office expenses is a defensible alternative home for software for a corp that prefers to keep all software there, but `9150` is the more precise line.  
For the asset-side mechanics (Class 50, Class 12, the half-year rule, the AIIP), see [Capital Cost Allowance](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md).  


## HST and the booked amount

The GIFI line a cost goes on never changes with the HST method; the *amount* booked to that line does.

- *Regular method*: post the expense net of HST and claim the HST as an input tax credit; the HST sits in `HST receivable`, not in the expense
- *Quick Method*: no input tax credit is claimed on operating purchases, so the HST stays in the cost — post the tax-included total to the expense line (capital purchases keep their ITC even under the Quick Method)

Worked example — an annual software subscription billed in CAD at $1,000 + 13% HST = $1,130 (Ontario):

Regular method:
- Debit `Computer-related expenses` (GIFI 9150) = $1,000
- Debit `HST receivable` = $130
- Credit `Cash` = $1,130

Quick Method:
- Debit `Computer-related expenses` (GIFI 9150) = $1,130
- Credit `Cash` = $1,130

Under the Quick Method the deductible expense is $1,130 instead of $1,000 — the unclaimed HST rides along in the expense, the trade-off for keeping the remittance spread on the revenue side.  
For the method rules, eligibility, and the revenue-side mechanics, see [HST](HST.md#quick-method).  


## Cost of sales is separate

Costs that go directly into producing the goods or services sold are *cost of sales*, reported in a distinct Schedule 125 block (8300–8519: opening and closing inventory, purchases, direct wages, sub-contracts, freight-in) and rolled to `8518` Cost of sales.  
They are not operating expenses.  
A pure service consultant with no inventory usually has nothing here.  
For inventory costing, the COGS identity, and which channel a cost belongs to, see [Inventory and COGS](Cost-Recovery/Inventory-And-COGS.md) and [Cost Recovery](Cost-Recovery/Cost-Recovery.md).  


## Related

- [Ledger and Accounts](Ledger-And-Accounts.md)
- [Cost Recovery](Cost-Recovery/Cost-Recovery.md)
- [Capital Cost Allowance](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)
- [Inventory and COGS](Cost-Recovery/Inventory-And-COGS.md)
- [HST](HST.md)
- [Foreign Currency](Foreign-Currency.md)
- [Small Business Tax Overview](Small-Business-Tax-Overview.md)
- [Glossary](Glossary.md)


## Citations

- CRA RC4088, *General Index of Financial Information (GIFI)*: the complete code listing
- CRA T4012, *T2 Corporation Income Tax Guide*: Schedule 125 and Schedule 100 reporting
- CRA T2 *Schedule 125*, Income Statement Information; Form *T1178*, GIFI-Short
- Income Tax Act [s.18(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) (current expense), [s.18(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) (capital outlay), [s.20(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) (CCA)
- Excise Tax Act [s.227](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-227.html) (Quick Method)


## TODO

- Verify every code against the current RC4088 at sign-off
- Confirm the 8910-area rent boundary (8910 Rental vs 8911 Real estate rental vs 8912 Occupancy costs) against how the corp's lease is structured
- Settle a house convention for telephone and internet (`9225` vs `9152`) and apply it across the worked examples in other pages
