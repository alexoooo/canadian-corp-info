STATUS: AI GENERATED, REVIEW IN PROGRESS

# Chart of Accounts

See parent document: [Ledger and Accounts](Ledger-And-Accounts.md)

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) looking up the account and GIFI code an entry posts to

**TLDR**:
- The master chart: every account used across this guide, with its GIFI code for Schedules 100 and 125
- Account trees and codes elsewhere in the guide are excerpts of this chart and must match it

Limitations:
- A lookup reference: how an entry is written and posted is on [Ledger and Accounts](Ledger-And-Accounts.md)
- Covers the accounts used across this guide plus the ones a typical service or consulting CCPC needs
- Titles are from CRA RC4088; GIFI codes can change, so verify a code against the current RC4088 before filing
- As of 2026


## The Chart and the GIFI

A *chart of accounts* is the corporation's own list of named accounts.  
The names and structure are your choice, but each account must map to a GIFI code for Schedules 100 and 125.  
The balance sheet (Schedule 100) runs `1000`–`3849`; the income statement (Schedule 125) runs `8000`–`9999`.  
Use the most specific line that fits and keep it stable year to year.  

The guide sometimes splits one GIFI line into per-currency or per-purpose *internal sub-codes*, written `NNNN-N`:
- `8231-1` and `8231-2` for the CAD and USD sides of foreign-exchange gains
- `1062-1` / `1062-2` for CAD and USD trade receivables

These are bookkeeping sub-accounts only, never themselves GIFI codes.  
They roll up to the official parent line (`8231`, `1062`) for filing.  
See [Foreign Currency](Foreign-Currency/Foreign-Currency.md).  

This chart is the canonical list.  
The account trees on the slip pages ([T3](../Investments/T3/T3.md), [T5](../Investments/T5/T5.md),
[T5008](../Investments/T5008/T5008.md)) are excerpts of it: same codes, same names.  


## Assets

Assets (Schedule 100):

| Account | GIFI | Notes |
|---|---|---|
| Cash | `1001` | cash on hand and cash instruments only — a petty-cash float is a `1001` sub-account (e.g. `1001-1`) |
| Deposits | `1002-1` | the main CAD operating chequing account; RC4088 `1002` is deposits in Canadian banks, CAD |
| Deposits - investment | `1002-2` | cash sitting in a corporate brokerage account |
| Deposits - USD | `1003` | a USD account held at a Canadian bank |
| Trade accounts receivable | `1062` | amounts billed to clients, not yet collected |
| Allowance for doubtful trade accounts receivable | `1063` | contra-asset for receivables unlikely to be collected |
| Inventories | `1120` | rollup; `1121` goods for sale, `1122` parts, `1125` work in progress, `1126` raw materials |
| Due from shareholder(s)/director(s) | `1300` | shareholder-loan account when the owner owes the corporation |
| Other current assets | `1480` | `1483` taxes recoverable, `1484` prepaid expenses, `1482` accrued investment income |
| Machinery, equipment, furniture, and fixtures | `1740` | capitalized equipment; accumulated amortization `1741` |
| Motor vehicles | `1742` | accumulated amortization `1743` |
| Computer equipment/software | `1774` | capitalized hardware and systems software; accumulated amortization `1775` |
| Intangible assets | `2010` | `2012` goodwill, `2018` incorporation costs |
| Long-term investments | `2300` | `2303` Canadian shares (a corporate brokerage account) |

Cash-line convention, used throughout the guide:
- `1002-1` Deposits is the main CAD operating chequing account
- `1002-2` holds a corporate brokerage cash balance; `1003` holds a USD account at a Canadian bank
- `1001` Cash is reserved for cash on hand and cash instruments — a petty-cash float (`1001-1`), undeposited
  cheques, money orders

RC4088 defines `1001` Cash as bank drafts, bank notes, cheques, coins, currency, money orders, postal notes, and
post-dated cheques, and defines `1002` as deposits in Canadian banks and institutions in Canadian currency.  
A chequing balance is a deposit in a Canadian bank, and a generic line is only for items no specific line matches,
so `1002` is the exact code rather than an equally good alternative.  
The same tree is used by [Bookkeeping convention](Foreign-Currency/Bookkeeping-Convention.md) and
[T3](../Investments/T3/T3.md).  

The HST control accounts (`HST receivable` for input tax credits, `HST collected`) have no dedicated GIFI line.  
At year-end they net to `1483` Taxes recoverable/refundable, or to `2680` Taxes payable if a net amount is owed.  
See [HST](../Operations/HST/HST.md).  


## Liabilities

Liabilities (Schedule 100):

| Account | GIFI | Notes |
|---|---|---|
| Amounts payable and accrued liabilities | `2620` | accounts payable and accrued costs; `2621` trade payables |
| Credit card payable | `2620` sub-account | the card balance (e.g. `2620-2`), reconciled monthly to the statement |
| Employee deductions payable | `2627` | source deductions withheld, not yet remitted |
| Taxes payable | `2680` | corporate income tax owing; also a net HST payable |
| Short-term debt | `2700` | `2701` loans from Canadian banks; a line of credit |
| Deferred income | `2770` | retainers not yet earned; see [Deferred Revenue](../Operations/Deferred-Revenue.md) |
| Due to shareholder(s)/director(s) | `2780` | shareholder-loan account when the corporation owes the owner |
| Dividends payable | `2962` | a declared dividend not yet paid |
| Long-term debt | `3140` | the portion of a loan due beyond one year |


## Equity

Equity (Schedule 100):

| Account | GIFI | Notes |
|---|---|---|
| Common shares | `3500` | issued common share capital |
| Preferred shares | `3520` | issued preferred share capital |
| Contributed surplus | `3541` | capital contributed beyond share subscriptions |
| Retained earnings/deficit | `3600` | accumulated after-tax profit not yet distributed |
| Dividends declared | `3700` | reduces retained earnings; `3701` Cash dividends is the detail line |
| Retained earnings/deficit — End | `3849` | the closing balance carried to next year's opening |

The retained-earnings continuity runs `3660` Start + `3680` Net income/loss − `3700` Dividends declared = `3849` End.  


## Revenue

Revenue (Schedule 125):

| Account | GIFI | Notes |
|---|---|---|
| Trade sales of goods and services | `8000` | operating revenue (consulting fees, product sales) |
| Investment revenue | `8090` | `8094` interest; `8091` foreign interest; `8096` Canadian, `8097` foreign dividends |
| Real estate rental revenue | `8141` | see [Rental and Property Income](../Operations/Rental-And-Property-Income.md) |
| Realized gains/losses on disposal of assets | `8210` | gain or loss on selling a capital asset |
| Realized gains/losses on sale of investments | `8211` | gain or loss on selling securities |
| Other revenue | `8230` | miscellaneous income with no more specific line |
| Foreign exchange gains/losses | `8231` | realized FX gains and losses (per-currency `8231-1` / `8231-2`) |
| Subsidies and grants | `8242` | government assistance and grants |
| Bad debt recoveries | `8250` | collections on debts written off in a prior year |

The Quick Method kept spread is booked to `8230` Other revenue; see [HST](../Operations/HST/HST-Quick-Method.md).  

The investment pages carry further internal sub-codes under these lines:
- `8090-1` investment revenue adjustment plug, `8090-2` other investment income, `8090-3` TBD distributions
- `8096-1` non-eligible Canadian dividends (T3 box 23, T5 box 10)
- `8211-1` dispositions of capital property, `8211-2` capital gains distributions, `8211-3` capital gains dividends
- `2303-1` brokerage (Book Cost), `2303-2` brokerage pending; `1060-1` investment distributions receivable
- The conventions are on [T3](../Investments/T3/T3.md), [T5](../Investments/T5/T5.md), and
  [T5008](../Investments/T5008/T5008.md); the codes roll up to their official parent lines


## Cost of Sales

Cost of sales (Schedule 125):

| Account | GIFI | Notes |
|---|---|---|
| Opening inventory | `8300` | inventory carried in from last year |
| Purchases/cost of materials | `8320` | inventory and direct materials bought in the year |
| Other direct costs | `8450` | direct costs with no more specific line |
| Freight-in and duty | `8457` | inbound shipping and customs on inventory |
| Closing inventory | `8500` | year-end inventory after the count and write-downs |
| Cost of sales | `8518` | the COGS total, a year-end plug; see [Plugs](Ledger-And-Accounts.md#plugs-and-plug-accounts) |
| Gross profit/loss | `8519` | revenue − cost of sales |

A pure service consultant usually has none of these.  
See [Inventory and COGS](../Operations/Cost-Recovery/Inventory-And-COGS.md).  


## Operating Expenses

The lines below are the ones a service or consulting CCPC reaches for.  
The full reference and the capitalize-vs-expense decision are in [Expense Classification](Expense-Classification.md).  

Operating expenses (Schedule 125):

| Account | GIFI | Notes |
|---|---|---|
| Advertising and promotion | `8520` | advertising, website, promotional material |
| Donations | `8522` | added back on Schedule 1, deducted via Schedule 2; see [Donations](../Operations/Donations.md) |
| Meals and entertainment | `8523` | client meals; income-tax deduction limited to 50% (ITA s.67.1) |
| Bad debt expense | `8590` | write-offs and the allowance; [Receivables and Bad Debts](../Operations/Receivables-And-Bad-Debts.md) |
| Amortization of tangible assets | `8670` | book depreciation; tax uses CCA instead (`8570` for intangibles) |
| Insurance | `8690` | commercial general and professional liability, property |
| Interest and bank charges | `8710` | interest, bank fees, merchant charges; `8715` bank charges |
| Business taxes, licences, and memberships | `8760` | business licences, professional dues |
| Office expenses | `8810` | general office costs; `8811` office stationery and supplies |
| Professional fees | `8860` | `8861` legal, `8862` accounting, `8863` consulting |
| Management and administration fees | `8871` | management or admin fees to another party |
| Rental | `8910` | `8911` real estate rental, `8914` equipment rental |
| Repairs and maintenance | `8960` | repairs to business property and equipment |
| Salaries and wages | `9060` | `9064` directors fees, `9065` management salaries, `9066` employee salaries |
| Sub-contracts | `9110` | arm's-length contract labour |
| Supplies | `9130` | consumable supplies; `9131` small tools |
| Computer-related expenses | `9150` | software and SaaS subscriptions, hosting; `9152` internet |
| Property taxes | `9180` | property tax on business real estate |
| Travel expenses | `9200` | business travel, lodging; `9201` meetings and conventions |
| Utilities | `9220` | electricity, water, heat, fuel; `9225` telephone and telecommunications |
| Other expenses | `9270` | catch-all; a reviewer reads a large balance here as miscoding |
| Vehicle expenses | `9281` | fuel, insurance, repairs of a business vehicle |
| Withholding taxes | `9283` | foreign withholding tax on investment income |


## Income Taxes

Income taxes (Schedule 125):

| Account | GIFI | Notes |
|---|---|---|
| Current income taxes | `9990` | the year's corporate tax provision, booked against `2680` |

The provision-and-payment cycle is on
[CRA Administration](../Filing-And-CRA/CRA-Administration.md#booking-the-tax-cycle).  

The income statement then totals to `9367` Total operating expenses and `9368` Total expenses.  
The bottom line is `9999` Net income/loss after taxes and extraordinary items.  
These are computed lines, not accounts you post to.  
The balance sheet's `3680` Net income/loss must equal `9999`.  


## Related

- [Ledger and Accounts](Ledger-And-Accounts.md)
- [Expense Classification](Expense-Classification.md)
- [Period Close](Period-Close.md)
- [Foreign Currency](Foreign-Currency/Foreign-Currency.md)
- [T2 Schedules](../Filing-And-CRA/T2-Schedules.md)
- [HST](../Operations/HST/HST.md)
- [Inventory and COGS](../Operations/Cost-Recovery/Inventory-And-COGS.md)


## Citations

- CRA RC4088 - General Index of Financial Information (GIFI): the chart-of-accounts code listing - https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html
- CRA T4012 - T2 Corporation Income Tax Guide: Schedule 100 and Schedule 125 reporting - https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012/t2-corporation-income-tax-guide.html
- CRA T2 SCH 100 - Balance Sheet Information: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch100.html
- CRA T2 SCH 125 - Income Statement Information: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch125.html
- Income Tax Act [s.67.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-67.1.html) - 50% limit on the deduction for meals and entertainment


## TODO

- Verify every chart-of-accounts code against the current RC4088 at sign-off (balance-sheet and equity codes especially)
- Decide whether the chart should show internal sub-codes inline or only the parent lines
