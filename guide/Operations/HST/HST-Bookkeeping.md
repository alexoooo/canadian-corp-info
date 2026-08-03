STATUS: AI GENERATED, REVIEW IN PROGRESS

# HST Bookkeeping

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) recording GST/HST in the corp's books

Two things drive every GST/HST ledger entry: the amount, and the reporting period it belongs to.  
This page covers the *tax point* that dates each entry, the year-end straddle, invoice dating, and the posting patterns.  
For which rate applies to a supply, see [HST Registration and Filing](HST-Registration-And-Filing.md).  
For the period-end net tax, see [HST Regular Method](HST-Regular-Method.md) and [HST Quick Method](HST-Quick-Method.md).  
Scope and limitations are on the [hub](HST.md).  


## When Tax Becomes Payable

The rate and place-of-supply rules fix *how much* HST applies.  
A separate rule fixes *when* the liability arises: the *tax point*.  
HST is payable on the earlier of the day the consideration is paid and the day it becomes *due* (ETA [s.168(1)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html)).  

Consideration becomes due on the earliest of (ETA [s.152(1)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-152.html)):
- The earlier of the *date of the invoice* and the day the supplier *first issues* it (s.152(1)(a))
- The day the supplier *would have* issued the invoice but for undue delay (s.152(1)(b))
- The day the recipient must pay under a *written agreement* (s.152(1)(c))

Take a service CCPC that bills on completion with no earlier payment and no written due date.  
Its tax point is the *invoice date*.  
s.152(1)(a) takes the earlier of the invoice date and the issue date.  
So back-dating an invoice pulls the tax point earlier, and post-dating cannot defer it past the issue date.  
The undue-delay rule (s.152(1)(b)) stops deferring HST by sitting on an invoice for work already complete.  

This tax point dates every entry in the bookkeeping section below.  
`HST collected` is recognized in the reporting period that contains the tax point, not when the cash arrives.  
For a foreign-currency supply, the same tax-point date sets the rate used to convert the HST to CAD (ETA [s.159](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-159.html)).  
See [Foreign Currency](../../Bookkeeping/Foreign-Currency/Getting-Paid-In-USD.md#taxable-usd-supplies-and-hst).  

### Year-End Straddle: Income vs HST Timing

Income tax and HST run on different clocks, so a supply near year-end can fall in two different periods.  
Corporate income is recognized when *earned*, which for completed services is when the work is done.  
The amount becomes receivable under ITA [s.9](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-9.html) and [s.12(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html).  
The HST tax point follows the s.152 rule above instead.  

Work finished on Dec 31 but invoiced in January is the common case:
- *Income*: belongs to the year the work was done (earned Dec 31), whatever the invoice date
- *HST*: if the invoice is dated and issued in January, the tax point is January
  - The HST belongs to the next reporting period

Dating the invoice Dec 31 collapses both into the earlier year through the s.152(1)(a) invoice-date prong.  
That is legitimate when the work was complete that day.  
Dating it in January splits them.  
The books then need a *year-end revenue accrual* to record the income in the year it was earned.  
The HST stays in the next period:

Dec 31, accrue the earned revenue; no HST, because the tax point has not arrived:
- Debit `Accrued/unbilled receivable` (GIFI 1480, *Other current assets*) = net fee
- Credit `Trade sales of goods and services` (GIFI 8000) = net fee

January, issue the invoice; reclassify the receivable and add the HST at its own tax point:
- Debit `Trade accounts receivable` (GIFI 1062) = fee + HST
- Credit `Accrued/unbilled receivable` (GIFI 1480) = net fee
- Credit `HST collected` = HST

The accrual carries *revenue only*.  
`HST collected` is recognized in January with the invoice, because that is when the tax point occurs.  
`HST collected` is a liability, not income.  
Moving it between periods changes only which GST34 return reports it, not taxable income in either year.  
There is no dedicated GIFI line for unbilled service revenue.  
Map it to *Other current assets* (1480) to keep it distinct from billed trade AR.  
Or fold it into *Trade accounts receivable* (1062) when the accrual reverses within days.  
Manufacturing WIP (1125) is a different item — partially completed goods, not earned-but-unbilled service fees.  

### Invoice Dating Convention

A standing dating rule avoids the straddle entirely.  
Date each invoice the last day of the service period, and issue it within the first few business days after.  

What the convention buys:
- *No split periods*: income and HST land together on every invoice, not only the ones away from year-end
- *No year-end exception*: the year's last invoice carries a tax point inside that year, so the accrual above never arises
- *Quick Method spread stays with its fee*: the kept spread (GIFI 8230) falls in the same year as its revenue

The rule only ever accelerates the tax point.  
The invoice date is the earlier of the two dates s.152(1)(a) compares, so it governs.  
The deferral s.152(1)(b) targets cannot arise where every invoice is dated on or before its issue date.  

Three conditions keep it defensible:
- *The work is complete by the date on the invoice*: month-end billing for time worked during that month qualifies
  - A fixed-fee deliverable finished on the 4th is dated the 4th, not the previous month-end
- *Issue within days, not weeks*: an invoice dated three weeks before it is sent stops reading as period-end billing
- *The service period appears on the invoice*: it is what shows the date as a billing convention, not a back-date
  - "Consulting services, July 2026" on the description line

The cost is one period of float.  
The last invoice of the fiscal year is dated inside it, so its HST lands on that year's return rather than the next.  
For an annual filer that is a full year earlier on one month's tax (see [HST Registration and Filing](HST-Registration-And-Filing.md#reporting-periods-and-deadlines)).  
Dating each invoice the day it is issued trades that float for the straddle entries every year-end.  

A foreign-currency invoice dated at month-end can land on a day with no published Bank of Canada rate.  
CRA *GST/HST Memorandum 3-6* accepts an average rate for the month in which tax becomes payable as one alternative.  
That choice binds for at least a year from the end of the reporting period where it was first used.  

The income-side FX rate is a separate question; see [Foreign Currency](../../Bookkeeping/Foreign-Currency/Getting-Paid-In-USD.md).  


## Bookkeeping Accounts

Two ledger accounts run alongside the corp's commercial activity through each reporting period:
- `HST receivable` (asset): every input tax credit (ITC) the corp accrues
  - Closed out against `HST payable` at the period-end net-tax calculation
- `HST collected` or `HST payable` (liability): every dollar of HST the corp charges on a taxable supply
  - Closed out against `HST receivable` at period-end

This account naming is the canonical convention used in [HST Examples](HST-Examples.md) and the worked examples elsewhere.  
Those are on [Inventory](../Cost-Recovery/Inventory-And-COGS.md), [Capital Cost Allowance](../Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md), and [Materials and CIP](../Cost-Recovery/Materials-And-CIP.md).  

Posting pattern on a sale to a Canadian customer (HST-registered Ontario corp):
- Debit `Deposits` or `Trade accounts receivable` = sale price + 13% HST
- Credit `Trade sales of goods and services` (GIFI 8000) = sale price (net of HST)
- Credit `HST collected` = 13% × sale price

Posting pattern on a purchase from an HST-registered supplier:
- Debit the expense or asset account = invoice net of HST
- Debit `HST receivable` = HST on the invoice (the future ITC)
- Credit `Deposits` or `Accounts payable` = gross invoice

Posting pattern at the close of a reporting period (regular method):
- Debit `HST collected` = closing balance
- Credit `HST receivable` = closing balance
- Credit `HST remittance payable` (or debit `HST refund receivable`) = the net of the two

Under the *Quick Method* the posting pattern differs:
- The corp still charges 13% HST (or the applicable rate) on each sale and posts the full gross amount to `HST collected`
- ITCs on operating inputs are *not* claimed
  - `HST receivable` carries only ITCs on capital purchases (see [HST Quick Method](HST-Quick-Method.md))
- At period-end, the difference between `HST collected` and the *Quick Method remittance* is kept
  - It is credited to `Other revenue` (GIFI 8230) rather than netting through `HST receivable`


## Related

- [GST/HST](HST.md): the hub, with scope, the flow diagram, and edge cases
- [HST Examples](HST-Examples.md): two full-year walkthroughs using these accounts
- [HST Regular Method](HST-Regular-Method.md)
- [HST Quick Method](HST-Quick-Method.md)
- [Ledger and Accounts](../../Bookkeeping/Ledger-And-Accounts.md)
- [Deferred Revenue](../Deferred-Revenue.md) (tax point on deposits and prepayments)
- [Receivables and Bad Debts](../Receivables-And-Bad-Debts.md) (incl. credit notes and the ETA s.232 adjustment)
- [Foreign Currency](../../Bookkeeping/Foreign-Currency/Getting-Paid-In-USD.md) (the tax point sets the FX conversion date)


## Citations

- Excise Tax Act (R.S.C., 1985, c. E-15): https://laws-lois.justice.gc.ca/eng/acts/E-15/
  - [s.152](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-152.html) - when consideration becomes due (earlier of the invoice date and the day the invoice is first issued)
  - [s.159](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-159.html) - conversion of foreign-currency consideration to CAD at the tax-point date
  - [s.168](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html) - tax payable on the earlier of payment and consideration becoming due
- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.9](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-9.html) - income from a business is the profit, recognized when earned (accrual)
  - [s.12(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html) - amounts receivable for services rendered
    - Included when the account is rendered, or would have been but for undue delay
- CRA *GST/HST Memorandum 3-6, Conversion of Foreign Currency*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/3-6/conversion-foreign-currency.html
  - Acceptable rate sources, and the average-rate-for-the-month alternative applied consistently for at least a year
- CRA *RC4088 General Index of Financial Information (GIFI)*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088.html


## TODO

- Verify the GIFI rollup codes for `HST receivable` and `HST collected` against the current RC4088
  - Reflect them in the bookkeeping section
