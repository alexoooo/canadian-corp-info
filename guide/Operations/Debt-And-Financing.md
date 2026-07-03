STATUS: AI GENERATED, REVIEW IN PROGRESS

# Debt and Financing

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) borrowing through a line of credit, a term loan, or the owner's own money
- Booking the debt, the interest, and the fees, and knowing what is deductible

**TLDR**:
- Interest is deductible when there is a legal obligation to pay it and the borrowed money is used to earn business or property income (ITA s.20(1)(c)); the test traces what the money *bought*, not what secures the loan
- A line of credit books to `Short-term debt` (`2701`); a term loan splits between `2701` (due within a year) and `Long-term debt` (`3140`); each blended payment splits into interest (`8710`) and principal
- The costs *of borrowing* (arrangement, commitment, and related legal fees) are not interest: they deduct at 20% a year over five years (s.20(1)(e)); recurring annual fees deduct currently (s.20(1)(e.1))
- Interest paid to the owner on a `Due to shareholder` balance is deductible like any other, but needs a documented obligation, a reasonable rate, and a T5 to the owner
- Interest owed to the owner but left unpaid too long is added back under the unpaid-amounts rule (s.78)

Limitations:
- Scope is plain bank and owner debt of an operating CCPC; thin capitalization (non-resident lenders), the interest-capitalization election (s.21), and the EIFEL interest-limitation rules (aimed at large groups) are out of scope
- Vehicle-loan interest has its own cap and lives with the vehicle rules in [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md#vehicles)
- Interest owed *to* CRA is the one common non-deductible interest; see [CRA Administration](../Filing-And-CRA/CRA-Administration.md#booking-the-tax-cycle)
- The following is my understanding as of 2026


## Interest deductibility

ITA [s.20(1)(c)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) allows interest on borrowed money used for the purpose of earning income from a business or property, under a legal obligation to pay it.  

The *use* test is the working part:
- Trace the borrowed dollars to what they funded: operating costs, equipment, an investment — all income-earning uses, all deductible
- Security is irrelevant to the test: a loan secured by the owner's house but spent on corporate operations is still deductible to the corp
- A corporate borrowing spent on something that earns no income (funding the owner personally, an asset with no income purpose) fails the test for that portion

Non-deductible interest worth knowing:
- Arrears interest on income tax (ITA s.18(1)(t)) — book it to `8710` and add it back on Schedule 1
- Interest on borrowed money used to earn exempt income or for personal purposes

Compound interest (interest on unpaid interest) is deductible only when actually paid, not when accrued (ITA [s.20(1)(d)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html)).  


## Lines of credit and term loans

*Line of credit*:
- Draws: Dr `Cash` (`1001`), Cr `Short-term debt` (`2701`); repayments reverse
- Interest charged monthly: Dr `Interest and bank charges` (`8710`), Cr `1001` (or Cr `2701` when capitalized to the balance)

*Term loan* — $50,000 over 5 years at 7%, blended monthly payment of $990:

First payment:

| Account | Debit | Credit |
|---|---|---|
| `Interest and bank charges` (`8710`) | 291.67 | |
| `Long-term debt` (`3140`) | 698.33 | |
| `Cash` (`1001`) | | 990.00 |

- The split comes from the lender's amortization schedule: interest = opening balance × 7% ÷ 12, principal is the rest; the interest portion shrinks every month
- Post from the schedule (or reconcile to the lender's annual statement) rather than expensing the whole payment — only the interest is deductible
- At year-end, reclassify the next twelve months' principal from `3140` to `2701` so the balance sheet splits current from long-term (a presentation entry; no tax effect)


## Costs of borrowing

Fees for arranging the financing are not interest and do not deduct outright (ITA [s.20(1)(e)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html)):
- Covered: arrangement and commitment fees, the lender's application fee, legal costs of the loan agreement, appraisal fees required by the lender
- Deduction: 20% per year over five years, prorated for a short year; if the loan is repaid early, the undeducted balance deducts in the repayment year
- Bookkeeping: carry the fee as an asset (a `1480`-series deferred charge) and expense one-fifth to `8710` each year

Recurring annual fees are the exception (ITA s.20(1)(e.1)):
- Standby charges, guarantee fees, and similar amounts payable for just the year deduct in full currently
- The line between a five-year s.20(1)(e) fee and a current s.20(1)(e.1) fee is whether it relates to the borrowing as a whole or to the single year

Example — a $1,500 arrangement fee on the term loan above deducts $300 a year for five years; the bank's $120 annual review fee deducts as paid.  


## Interest paid to the owner

An owner who has lent money in (`Due to shareholder`, `2780`) can charge the corporation interest; the base mechanics are in [Owner-corporation transactions — Owner lends to the corporation](../Paying-Yourself/Owner-Corporation-Transactions.md#owner-lends-to-the-corporation).  

Making the deduction stick:
- *Legal obligation*: a written loan agreement or promissory note stating the rate; an after-the-fact "let's call it interest" fails s.20(1)(c)
- *Reasonable rate*: commercial for the risk; s.67 reasonableness applies to a non-arm's-length rate
- *T5*: the corporation issues one for $50 or more of interest paid in a calendar year (see [Bookkeeping and information slips](../Paying-Yourself/Dividends/Bookkeeping-And-Slips.md)); the owner reports the interest personally
- *Pay it*: interest accrued to a non-arm's-length person but still unpaid at the end of the *second* following tax year is added back to the corp's income (ITA [s.78(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-78.html)), unless an agreement to treat it as paid is filed

Whether to charge interest at all is a compensation-mix question:
- The corp deducts it and the owner pays full personal rates on it — the same shape as salary, but with no CPP contribution, no RRSP room generated, and extra paperwork
- Most owner-managers lend at zero interest and take compensation as salary or dividends instead; charging interest earns its keep mainly when the corp has income to shift and the owner has unused low brackets

Interest the *corporation* receives (on its bank balance or investments) is the other direction entirely: property income, covered in [T5 — Interest Box 13](../Investments/T5/T5.md#interest---box-13).  


## Related

- [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md) (shareholder loans, vehicle-loan interest)
- [Bookkeeping and information slips](../Paying-Yourself/Dividends/Bookkeeping-And-Slips.md) (issuing the T5)
- [CRA Administration](../Filing-And-CRA/CRA-Administration.md) (non-deductible arrears interest)
- [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md)
- [Starting Up](../Corporate-Lifecycle/Starting-Up.md) (capitalizing with a shareholder loan)
- [Small Business Tax Overview](../Overview/Small-Business-Tax.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.20(1)(c)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - interest on borrowed money used to earn income; [s.20(1)(d)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - compound interest when paid
  - [s.20(1)(e)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - financing expenses over five years; s.20(1)(e.1) - annual fees currently deductible
  - [s.18(1)(t)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) - no deduction for amounts under the ITA (tax arrears interest)
  - [s.67](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-67.html) - general reasonableness limitation
  - [s.78(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-78.html) - unpaid amounts owed to a non-arm's-length person added back after the second year
- Income Tax Folio S3-F6-C1 - Interest Deductibility: https://www.canada.ca/en/revenue-agency/services/tax/technical-information/income-tax/income-tax-folios-index/series-3-property-investments-savings-plans/series-3-folio-6-interest/income-tax-folio-s3-f6-c1-interest-deductibility.html
- CRA T4015 - T5 Guide – Return of Investment Income: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4015.html


## TODO

- Verify the s.20(1)(e) five-year mechanics: straight-line 20% with short-year proration, and the full deduction of the undeducted balance on early repayment
- Verify the s.78(1) set-off: the exact deadline (end of the second tax year following the year the expense was incurred) and the s.78(1)(b) election mechanics
- Verify the s.20(1)(e.1) fee list against the provision text
- Confirm the deferred-charge GIFI line for unamortized financing fees (a `1480`-series code vs a long-term asset code) against RC4088
- Add the year-end current-portion reclass to a worked balance-sheet example once a Ledger-And-Accounts example exists to anchor it
