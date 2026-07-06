STATUS: AI GENERATED, REVIEW IN PROGRESS

# Ledger and Accounts

**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) who keep the corporation's double-entry books themselves.  

Every figure on the T2 traces back to the corporation's *books*: the running double-entry record of every transaction in the year.  
This page is the mechanics — how an entry is written, why debits equal credits, how the ledger rolls into a trial balance, and how the chart of accounts maps to the GIFI schedules.  
For *which* line a given cost belongs on (the GIFI code, and whether it is an expense or a capital asset) see [Expense Classification](Expense-Classification.md).  

Limitations:
- Double-entry and the chart of accounts are bookkeeping conventions, not statutory rules, except where a section is cited (the duty to keep books at all is ITA s.230)
- Covers an owner-managed service or consulting CCPC kept on accrual + tax basis; other arrangements are out of scope
- GIFI codes can change; verify a code against the current RC4088 before filing
- The following is my understanding as of 2026


## The Accounting Equation

The whole system rests on one identity:

`Assets = Liabilities + Equity`

Everything the corporation owns (assets) is financed either by what it owes (liabilities) or by the owners' stake (equity).  
The identity holds after *every* transaction, because each transaction is recorded in two places that keep it balanced.  

Equity itself moves with the year's results:

`Equity = share capital + retained earnings`  
`Retained earnings = opening + revenue − expenses − dividends`

So revenue, expenses, and dividends are really sub-balances of equity that the books track separately during the year, then fold into retained earnings at year-end (the *close*).  

A transaction travels the same path every time on its way to the T2:

```mermaid
flowchart LR
    Txn(["Transaction"]) --> JE["Journal entry<br/>(debits = credits)"]
    JE --> GL[("General ledger<br/>posted by account")]
    GL --> TB["Trial balance"]
    TB --> BS["Balance sheet<br/>Schedule 100"]
    TB --> IS["Income statement<br/>Schedule 125"]
```


## Accounts and the Five Types

Every account in the chart of accounts is one of five types.  
The type fixes which financial statement the account lands on and which side increases it:
- *Asset*: something the corporation owns or is owed (cash, accounts receivable, equipment); balance sheet, Schedule 100
- *Liability*: something the corporation owes (a payable, an HST balance, a shareholder loan); balance sheet, Schedule 100
- *Equity*: the owners' residual stake (share capital, retained earnings); balance sheet, Schedule 100
- *Revenue*: amounts earned (sales, investment income); income statement, Schedule 125
- *Expense*: amounts consumed in earning revenue (rent, software, salaries); income statement, Schedule 125

Cost of sales is a sixth label in everyday use, but it is a kind of expense reported in its own income-statement block (`8300`–`8519`); a pure service consultant usually has none.  
See [Inventory and COGS](../Operations/Cost-Recovery/Inventory-And-COGS.md).  

Permanent versus temporary accounts:
- *Permanent* (balance-sheet) accounts — assets, liabilities, equity — carry their balance forward year to year
- *Temporary* (income-statement) accounts — revenue and expenses — start each year at zero; at year-end their net (the year's net income) is closed into retained earnings, and a declared dividend is closed the same way


## Debits and Credits

Every entry has at least one *debit* (left side) and one *credit* (right side), and the two sides are equal.  
Debit and credit mean only "left" and "right" — neither is inherently an increase or a decrease.  
What a debit does depends on the account type:

| Account type | Increased by | Decreased by | Normal balance |
|---|---|---|---|
| Asset | debit | credit | debit |
| Expense | debit | credit | debit |
| Liability | credit | debit | credit |
| Equity | credit | debit | credit |
| Revenue | credit | debit | credit |

The pattern mirrors the equation: assets (left of the `=`) grow with debits; liabilities and equity (right of the `=`) grow with credits.  
Expenses are debits because they reduce equity; revenue is a credit because it builds equity.  

The iron rule: on every entry, total debits = total credits.  
There is no valid one-sided entry; if the two sides differ, the entry is wrong.  

An account's running record is often drawn as a *T-account* — debits on the left, credits on the right, the balance being the net.  
Paying $500 of office rent in cash touches two of them:

```
        Rent (8910)                  Cash (1001)
   Dr        |   Cr            Dr         |   Cr
   500       |                            |   500
```

One debit, one credit, equal sides.  


## Journal Entries and the General Ledger

A *journal entry* records one transaction in the order it happened.  
This guide writes entries as a dated description followed by the debit and credit lines:

Apr 30 — pay April office rent by cheque:
- Debit `Rent` (GIFI 8910) = $500
- Credit `Cash` = $500

*Posting* copies each line to its account in the *general ledger* — the same entries reorganized by account, so every account shows its running balance.  
The journal is chronological; the ledger is by account; they hold the same data two ways.  

A *trial balance* lists every ledger account with its balance in a debit or credit column, and totals the two columns.  
Because every entry had equal debits and credits, the two totals must be equal.  
A trial balance that does not balance signals a posting error, so it is the proof step before anything rolls up to a financial statement.  

At the *year-end close*, the temporary accounts (revenue, expenses, and dividends declared) are zeroed into retained earnings.  
After the close only permanent accounts carry forward, and `Assets = Liabilities + Equity` holds on the closing balance sheet.  


## A Worked Set of Books

A first fiscal year for a one-owner consulting CCPC, regular HST method, 13% HST (Ontario).  
For the Quick Method's effect on the booked amounts, see [HST](../Operations/HST.md#quick-method) and [Expense Classification](Expense-Classification.md#hst-and-the-booked-amount).  

The year's transactions:

1. Incorporate and inject share capital — the owner subscribes for common shares for $10,000 cash:
   - Debit `Cash` (GIFI 1001) = $10,000
   - Credit `Common shares` (GIFI 3500) = $10,000
2. Buy a laptop, $2,000 + $260 HST, from the corporate account (a capital asset, not an expense):
   - Debit `Computer equipment/software` (GIFI 1774) = $2,000
   - Debit `HST receivable` = $260
   - Credit `Cash` = $2,260
3. Invoice a client for $8,000 of services + $1,040 HST, on account:
   - Debit `Accounts receivable` (GIFI 1060) = $9,040
   - Credit `Trade sales of goods and services` (GIFI 8000) = $8,000
   - Credit `HST collected` = $1,040
4. Pay an annual software subscription, $1,000 + $130 HST (an operating expense):
   - Debit `Computer-related expenses` (GIFI 9150) = $1,000
   - Debit `HST receivable` = $130
   - Credit `Cash` = $1,130
5. Collect the client invoice — $9,040 received:
   - Debit `Cash` = $9,040
   - Credit `Accounts receivable` (GIFI 1060) = $9,040
6. Declare a $3,000 dividend, not yet paid:
   - Debit `Dividends declared` (GIFI 3700) = $3,000
   - Credit `Dividends payable` (GIFI 2962) = $3,000

The `Cash` account, posted to its T-account:

```
                       Cash (1001)
   Dr (debit)              |   Cr (credit)
   10,000  (1) capital     |    2,260  (2) laptop
    9,040  (5) collection  |    1,130  (4) software
   --------------------    |   --------------------
   balance 15,650          |
```

The trial balance after all six entries (`Accounts receivable` nets to zero and drops off):

| Account | GIFI | Debit | Credit |
|---|---|------:|-------:|
| Cash | `1001` | 15,650 | |
| HST receivable | — | 390 | |
| Computer equipment/software | `1774` | 2,000 | |
| Computer-related expenses | `9150` | 1,000 | |
| Dividends declared | `3700` | 3,000 | |
| Common shares | `3500` | | 10,000 |
| HST collected | — | | 1,040 |
| Trade sales of goods and services | `8000` | | 8,000 |
| Dividends payable | `2962` | | 3,000 |
| **Total** | | **22,040** | **22,040** |

The two columns tie at $22,040, so the books are internally consistent.  

Reading the result onto the two statements:
- Income statement: revenue $8,000 − expenses $1,000 = net income $7,000
- Retained earnings: $0 opening + $7,000 net income − $3,000 dividend = $4,000
- Balance sheet: assets ($15,650 + $390 + $2,000 = $18,040) = liabilities ($1,040 + $3,000 = $4,040) + equity ($10,000 + $4,000 = $14,000)

`HST collected` ($1,040) net of `HST receivable` ($390) leaves $650 owing to CRA — the net HST the regular-method return remits; see [HST](../Operations/HST.md).  


## Chart of Accounts

A *chart of accounts* is the corporation's own list of named accounts; the names and structure are your choice, but each account must map to a GIFI code for Schedules 100 and 125.  
The tables below are a superset of the accounts used across this guide plus the ones a typical owner-managed service or consulting CCPC commonly needs.  
Titles are from CRA RC4088; the balance sheet (Schedule 100) runs `1000`–`3849`, the income statement (Schedule 125) runs `8000`–`9999`.  
Use the most specific line that fits and keep it stable year to year.  

Internal sub-codes: the guide sometimes splits one GIFI line into per-currency or per-purpose tracking accounts, written `NNNN-N` — for example `8231-1` and `8231-2` for the CAD and USD sides of foreign-exchange gains, or `1062-1` / `1062-2` for CAD and USD trade receivables.  
These are bookkeeping sub-accounts only: they roll up to the official parent line (`8231`, `1062`) for filing and are never themselves GIFI codes.  
See [Foreign Currency](Foreign-Currency.md).  

Assets (Schedule 100):

| Account | GIFI | Notes |
|---|---|---|
| Cash | `1001` | the main operating bank account |
| Deposits in Canadian banks and institutions – Canadian currency | `1002` | a separate CAD savings or second account |
| Deposits in Canadian banks and institutions – foreign currency | `1003` | a USD account held at a Canadian bank |
| Trade accounts receivable | `1062` | amounts billed to clients, not yet collected |
| Allowance for doubtful trade accounts receivable | `1063` | contra-asset for trade receivables unlikely to be collected |
| Inventories | `1120` | rollup; `1121` goods for sale, `1122` parts and supplies, `1125` work in progress, `1126` raw materials |
| Due from shareholder(s)/director(s) | `1300` | shareholder-loan account when the owner owes the corporation |
| Other current assets | `1480` | `1483` taxes recoverable/refundable, `1484` prepaid expenses, `1482` accrued investment income |
| Machinery, equipment, furniture, and fixtures | `1740` | capitalized equipment; accumulated amortization `1741` |
| Motor vehicles | `1742` | accumulated amortization `1743` |
| Computer equipment/software | `1774` | capitalized hardware and systems software; accumulated amortization `1775` |
| Intangible assets | `2010` | `2012` goodwill, `2018` incorporation costs |
| Long-term investments | `2300` | `2303` Canadian shares (a corporate brokerage account) |

Cash-line convention used throughout the guide: `1001` Cash is the main operating chequing account; `1002` / `1003` hold any separate savings, second, or foreign-currency account (a corporate brokerage cash balance sits in a `1002` sub-account — see [Foreign Currency](Foreign-Currency.md)).  
A chequing balance is equally codeable to `1002`, since it is a deposit in a Canadian bank; either mapping is fine, provided it is applied consistently and each account keeps the same code year to year.  

The HST control accounts — `HST receivable` (input tax credits) and `HST collected` — have no dedicated GIFI line; at year-end they net to `1483` Taxes recoverable/refundable, or to `2680` Taxes payable if a net amount is owed.  
See [HST](../Operations/HST.md).  

Liabilities (Schedule 100):

| Account | GIFI | Notes |
|---|---|---|
| Amounts payable and accrued liabilities | `2620` | accounts payable and accrued costs; `2621` trade payables |
| Employee deductions payable | `2627` | source deductions withheld, not yet remitted |
| Taxes payable | `2680` | corporate income tax owing; also a net HST payable |
| Short-term debt | `2700` | `2701` loans from Canadian banks; a line of credit |
| Deferred income | `2770` | retainers and prepayments not yet earned (see [Deferred Revenue](../Operations/Deferred-Revenue.md)) |
| Due to shareholder(s)/director(s) | `2780` | shareholder-loan account when the corporation owes the owner |
| Dividends payable | `2962` | a declared dividend not yet paid |
| Long-term debt | `3140` | the portion of a loan due beyond one year |

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

Revenue (Schedule 125):

| Account | GIFI | Notes |
|---|---|---|
| Trade sales of goods and services | `8000` | operating revenue (consulting fees, product sales) |
| Investment revenue | `8090` | `8094` interest, `8096` Canadian dividends, `8097` foreign dividends |
| Real estate rental revenue | `8141` | rent earned on real property (see [Rental and Property Income](../Operations/Rental-And-Property-Income.md)) |
| Realized gains/losses on disposal of assets | `8210` | gain or loss on selling a capital asset |
| Realized gains/losses on sale of investments | `8211` | gain or loss on selling securities |
| Other revenue | `8230` | miscellaneous income with no more specific line |
| Foreign exchange gains/losses | `8231` | realized FX gains and losses (per-currency `8231-1` / `8231-2`) |
| Subsidies and grants | `8242` | government assistance and grants |
| Bad debt recoveries | `8250` | collections on debts written off in a prior year |

The Quick Method kept spread is booked to `8230` Other revenue; see [HST](../Operations/HST.md#quick-method).  

Cost of sales (Schedule 125):

| Account | GIFI | Notes |
|---|---|---|
| Opening inventory | `8300` | inventory carried in from last year |
| Purchases/cost of materials | `8320` | inventory and direct materials bought in the year |
| Other direct costs | `8450` | direct costs with no more specific line |
| Freight-in and duty | `8457` | inbound shipping and customs on inventory |
| Closing inventory | `8500` | year-end inventory after the count and write-downs |
| Cost of sales | `8518` | the COGS total (a year-end plug; see [Plugs](#plugs-and-plug-accounts)) |
| Gross profit/loss | `8519` | revenue − cost of sales |

Operating expenses (Schedule 125) — the lines a service or consulting CCPC reaches for; the full reference and the capitalize-vs-expense decision are in [Expense Classification](Expense-Classification.md):

| Account | GIFI | Notes |
|---|---|---|
| Advertising and promotion | `8520` | advertising, website, promotional material |
| Donations | `8522` | charitable donations; added back on Schedule 1 and deducted via Schedule 2 (see [Donations](../Operations/Donations.md)) |
| Meals and entertainment | `8523` | client meals (income-tax deduction limited to 50%) |
| Bad debt expense | `8590` | write-offs and the doubtful-account allowance (see [Receivables and Bad Debts](../Operations/Receivables-And-Bad-Debts.md)) |
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

The income statement then totals to `9367` Total operating expenses, `9368` Total expenses, and `9999` Net income/loss; these are computed lines, not accounts you post to.  


## Plugs and Plug Accounts

A *plug* is a figure you derive as the residual needed to make something balance, rather than recording it directly from a source document.  
A *plug account* is an account set up to absorb such a residual.  

Plugs are legitimate and common, as long as the residual is small and you know what it represents:
- *Cost of sales under a periodic system*: with no per-sale inventory update, COGS is plugged at year-end as opening inventory + purchases − closing inventory (from the count); `8518 Cost of sales` is that plug; see [Inventory and COGS](../Operations/Cost-Recovery/Inventory-And-COGS.md)
- *Whole-dollar rounding residual*: rounding each line to the dollar can throw a subtotal off by a dollar or two, so one designated line (retained earnings `3849` on the balance sheet, net income on the income statement) absorbs the residual; see [Whole-dollar rounding](../Filing-And-CRA/Whole-Dollar-Rounding.md)
- *Foreign-exchange bridge*: a realized FX gain or loss is the residual between an amount at the transaction-date rate and the settlement-date rate; it lands in `8231 Foreign exchange gains/losses` (the per-currency `8231-1` / `8231-2` bridges); see [Foreign Currency](Foreign-Currency.md)
- *Suspense / clearing account*: a temporary holding account for an entry you cannot yet classify (an unidentified deposit, a pending distribution), cleared to its real account once known
- *Opening-balance equity*: when first setting up books, the offsetting entry that makes opening assets and liabilities balance lands in an equity plug, then is reclassified to share capital and retained earnings

The discipline: a plug should be small and explained.  
A large or growing plug — a suspense account that never clears, a rounding line carrying real dollars — is a symptom of a posting error or a missing entry, not something to bury.  
Investigate it before it reaches the trial balance.  


## Classifying a Transaction

Writing the entry and choosing the account are two steps.  
This page covers the first: making a balanced entry that posts to the ledger.  
The second — which GIFI line a cost belongs on, and whether it is an operating expense or a capital asset — is [Expense Classification](Expense-Classification.md).  
Decide the accounts there, then record the debits and credits here.  


## Related

- [Expense Classification](Expense-Classification.md)
- [Small Business Tax Overview](../Overview/Small-Business-Tax.md)
- [Cost Recovery](../Operations/Cost-Recovery/Cost-Recovery.md)
- [Inventory and COGS](../Operations/Cost-Recovery/Inventory-And-COGS.md)
- [HST](../Operations/HST.md)
- [Foreign Currency](Foreign-Currency.md)
- [Whole-dollar rounding](../Filing-And-CRA/Whole-Dollar-Rounding.md)
- [Concept map](../Overview/Concept-Map.md)
- [Glossary](../Overview/Glossary.md)


## Citations

- CRA RC4088 - General Index of Financial Information (GIFI): the chart-of-accounts code listing - https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html
- CRA T4012 - T2 Corporation Income Tax Guide: Schedule 100 and Schedule 125 reporting - https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012/t2-corporation-income-tax-guide.html
- CRA T2 SCH 100 - Balance Sheet Information: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch100.html
- CRA T2 SCH 125 - Income Statement Information: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch125.html
- Income Tax Act [s.230](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-230.html) - duty to keep books and records


## TODO

- Verify every chart-of-accounts code against the current RC4088 at sign-off (balance-sheet and equity codes especially)
- Decide whether the chart should show internal sub-codes inline or only the parent lines
