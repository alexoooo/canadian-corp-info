STATUS: AI GENERATED, REVIEW IN PROGRESS

# Receivables and Bad Debts

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) that invoices clients and sometimes does not get paid
- Booking the receivable, the doubtful-account reserve, the write-off, and the HST recovery

**TLDR**:
- On the accrual basis, an invoice is income when the work is billed, not when the cash arrives
  - The receivable sits in `Trade accounts receivable` (`1062`)
- *Doubtful* and *bad* are different stages
  - A doubtful debt supports a reserve (ITA s.20(1)(l)) that re-measures every year
  - A bad debt is written off once (s.20(1)(p))
- A write-off requires the amount to have been included in income and the debt to have become bad in the year
  - Document the collection attempts
- Under the regular method, the HST on a written-off invoice comes back through a bad-debt adjustment (ETA s.231)
  - Claimable within four years
  - Under the *Quick Method* there is no bad-debt adjustment for quick-method supplies
  - An ordinary consulting invoice gets none
- A later recovery is income again (s.12(1)(i)), and the HST portion is re-remitted
- A reduced or reversed invoice is a *credit note*, not a bad debt
  - The HST is credited back under ETA s.232 through the credit-note mechanism

Limitations:
- Scope is trade receivables of an operating business
  - Writing off a *loan* or advance is a capital matter (ITA s.50(1)); see [Losses](../Filing-And-CRA/Losses.md#worthless-shares-and-bad-debts)
- Amounts owed by the owner are the shareholder-loan regime, not bad-debt territory; see [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md#shareholder-loans)
- Forgiving a debt (as opposed to failing to collect it) can trigger the debt-forgiveness rules (ITA s.80)
  - Those rules bear on the debtor; out of scope
- The following is my understanding as of 2026


## Accrual Income and the Receivable

Income is recognized when it is earned (ITA [s.9](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-9.html)).  
An amount receivable for work billed is included even though uncollected (ITA [s.12(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html)).  
HST follows its own clock — generally the earlier of the invoice date and payment (see [HST — When tax becomes payable](HST/HST-Bookkeeping.md#when-tax-becomes-payable)).  

Invoicing $5,000 of consulting plus 13% HST:

| Account | Debit | Credit |
|---|---|---|
| `Trade accounts receivable` (`1062`) | 5,650.00 | |
| `Trade sales of goods and services` (`8000`) | | 5,000.00 |
| `HST collected` | | 650.00 |

Collection reverses the receivable: Dr `Cash` (`1001`) 5,650, Cr `Trade accounts receivable` (`1062`) 5,650.  
The gap between these two entries is where this page lives.  
Review the open receivables at every year-end (an *aging* by invoice date) and decide which are current, doubtful, or bad.  


## Doubtful Accounts and the Reserve

A debt that is *doubtful* — collection is uncertain but not yet hopeless — supports a reserve (ITA [s.20(1)(l)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html)):
- Book it through the contra-asset `Allowance for doubtful trade accounts receivable` (`1063`)
  - Dr `Bad debt expense` (`8590`), Cr `1063`
- The reserve is deductible only against amounts that were included in income
  - It must be a reasonable, debt-by-debt estimate, not a formula percentage of all receivables
- The invoice's HST portion was never income
  - So the supportable reserve is the net-of-HST share of the doubtful balance (see TODO)

The reserve is annual, not permanent:
- Last year's reserve is added back to income this year (ITA [s.12(1)(d)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html))
  - A fresh reserve is claimed at the new estimate; only the net change hits the bottom line
- The continuity (opening, closing) is reported on T2 Schedule 13 (see [T2 Schedules](../Filing-And-CRA/T2-Schedules.md#event-driven-schedules))

For a corporation with a handful of clients, the reserve is often skipped.  
An invoice tends to move from current to bad in one step, and the write-off below is the only entry ever needed.  


## Writing Off a Bad Debt

A debt is written off when it is *established to have become bad* in the year (ITA [s.20(1)(p)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html)):
- Becoming bad is a question of fact
  - The client is insolvent, unreachable, or has refused to pay and further collection is not worth its cost
- The judgement is the creditor's to make, but document it
  - The collection emails, the returned mail, the insolvency notice
- The deduction requires the amount to have been included in income (true for any invoice booked as above)

Writing off the $5,650 invoice under the regular method:

| Account | Debit | Credit |
|---|---|---|
| `Bad debt expense` (`8590`) | 5,000.00 | |
| `HST collected` — s.231 adjustment | 650.00 | |
| `Trade accounts receivable` (`1062`) | | 5,650.00 |

Under the Quick Method the s.231 line is unavailable for a quick-method supply.  
The full $5,650 is then `Bad debt expense`.  
If the debt had been through the allowance first, the write-off debits `1063` instead of `8590` for the reserved portion.  
Partial write-offs are fine: write off the portion established to be bad and keep the rest receivable.  


## HST Bad-Debt Adjustment

Under the regular method, the HST remitted on the unpaid invoice is recovered under ETA [s.231](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-231.html) (see [HST — Edge cases](HST/HST.md#edge-cases)):
- Conditions: the tax was reported and remitted on a prior return, and the debt has been written off in the books
  - The sale must also have been to an arm's-length recipient
- The recovery is the tax fraction of the uncollected amount
  - 13/113 of the balance written off for an Ontario HST invoice ($650 on the $5,650 above)
- Claim it as an adjustment on a return filed within four years
  - Counted from the due date of the return for the period in which the debt was written off
- Under the *Quick Method* there is no bad-debt adjustment (and no recovery re-remittance) for quick-method supplies
  - The remittance rate is unaffected by the write-off
  - Relief survives only for supplies not eligible for the quick-method calculation (SOR/91-51 s.17(1); RC4058)
    - Such as sales of capital assets or real property

The income-tax write-off and the HST adjustment travel together.  
Both key off the same books-and-records write-off, so make the ledger entry, then claim both from it.  


## Recovering a Written-Off Debt

Money that arrives after the write-off is income again:
- The recovered portion is included in the year received (ITA [s.12(1)(i)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html)), booked to `Bad debt recoveries` (`8250`)
- The tax fraction of the recovery is re-remitted (ETA s.231(3)), regular method only
  - Under the Quick Method there was no adjustment to reverse, so nothing is re-remitted

Client later pays $2,260 of the written-off $5,650:

| Account | Debit | Credit |
|---|---|---|
| `Cash` (`1001`) | 2,260.00 | |
| `Bad debt recoveries` (`8250`) | | 2,000.00 |
| `HST collected` | | 260.00 |


## Refunds, Credit Notes, and Adjustments

A bad debt is an invoice the client will not pay.  
A *credit note* is an invoice the corporation takes back: a returned product, a cancelled engagement, a price reduced after billing.  
The entries and the HST mechanics differ, so keep the two apart.  

The paper is a credit note issued to the client, or a debit note the client issues, carrying the prescribed information:
- That the document is a credit (or debit) note
- The supplier's name and registration number, the recipient's name, and the date
- The amount of tax being credited, or a statement that the total includes it
- Prescribed by the Credit Note and Debit Note Information (GST/HST) Regulations ([SOR/91-44](https://laws-lois.justice.gc.ca/eng/regulations/SOR-91-44/page-1.html))

ETA [s.232](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-232.html) sets two windows for crediting the tax:
- Tax charged in excess (a billing error): refund or credit within two years after the day it was charged or collected (s.232(1))
- Consideration later reduced (return, cancellation, negotiated discount): within four years after the end of the reporting period in which the reduction occurred (s.232(2))

The note drives both sides' returns (s.232(3)):
- The supplier deducts the credited tax from net tax for the period the note issues (if the tax was already reported)
- The recipient that claimed an ITC on it adds the credited tax back

Crediting $2,000 + $260 HST of a billed engagement against the open receivable (regular method):

| Account | Debit | Credit |
|---|---|---|
| `Trade sales of goods and services` (`8000`) | 2,000.00 | |
| `HST collected` — s.232 adjustment | 260.00 | |
| `Trade accounts receivable` (`1062`) | | 2,260.00 |

If the invoice was already paid, credit `Cash` (`1001`) instead — the client is refunded, not just relieved of the balance.  
Revenue is reversed on its own line, not booked to `Bad debt expense`; nothing here was ever uncollectible.  

Quick Method wrinkle: the remittance was a percentage of tax-included revenue, not tax actually collected.  
A refund therefore reduces the tax-included base the remittance rate applies to in the refund period, rather than running through an actual-tax s.232 deduction (see TODO).  

A forfeited deposit is the mirror case — money kept with no supply made; the [Deferred Revenue](Deferred-Revenue.md) page owns it (ETA s.182).  


## Related

- [HST](HST/HST.md) (tax point, bad-debt adjustment, Quick Method)
- [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md)
- [Deferred Revenue](Deferred-Revenue.md) (the mirror problem: cash before income)
- [T2 Schedules](../Filing-And-CRA/T2-Schedules.md) (Schedule 13 reserves)
- [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md) (amounts owed by the owner)
- [Small Business Tax Overview](../Overview/Small-Business-Tax.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.9](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-9.html) - income from business: profit, on accrual principles
  - [s.12(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html) - amounts receivable included in income
  - [s.12(1)(d)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html) - prior-year reserve added back
  - [s.12(1)(i)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html) - recovery of a bad debt previously deducted
  - [s.20(1)(l)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - reserve for doubtful debts
  - [s.20(1)(p)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - bad debts established to have become bad in the year
  - [s.50(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-50.html) - deemed disposition election for bad capital debts (the loan-side contrast, out of scope)
- Excise Tax Act (R.S.C., 1985, c. E-15):
  - [s.231](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-231.html) - bad-debt adjustment and the recovery-side re-remittance (s.231(3))
  - [s.232](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-232.html) - refund or adjustment of tax: the two-year and four-year windows, the credit-note mechanism
- Credit Note and Debit Note Information (GST/HST) Regulations ([SOR/91-44](https://laws-lois.justice.gc.ca/eng/regulations/SOR-91-44/page-1.html)) - prescribed credit-note content
- Streamlined Accounting (GST/HST) Regulations (SOR/91-51):
  - [s.17(1)](https://laws-lois.justice.gc.ca/eng/regulations/SOR-91-51/section-17.html) - Quick Method net-tax formula
    - Division V bad-debt deductions admitted only for supplies other than specified supplies (variable C(b))
    - The recovery re-remittance is likewise regular-method-only (variable B(b))
- CRA - IT-442R *Bad debts and reserves for doubtful debts* (archived): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it442r.html
- T2 Schedule 13 - Continuity of Reserves: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch13.html


## TODO

- Verify the Quick Method treatment of a refund against RC4058 (reduce the tax-included base in the refund period vs an actual-tax s.232 deduction)
- Verify the s.20(1)(l) reserve base for the HST portion of a receivable
  - The body takes the position that only the net-of-HST share is reservable, since HST collected was never income
  - Confirm against IT-442R / current CRA position
- Verify the four-year limitation wording in s.231(4)
  - Four years from the end of the reporting period in which the write-off adjustment could first be claimed
- Confirm the Schedule 13 lines for a doubtful-debt reserve and name them in the body
