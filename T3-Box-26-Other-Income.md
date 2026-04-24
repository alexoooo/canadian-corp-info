# T3 Box 26 - other income

See parent document: [T3](T3.md)  
**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) who receive a T3 with box 26 amounts.  


# Meaning and tax treatment

T3 Box 26 is `other income` received from Canadian investments:
- For a corporate holder, is treated as passive (non-business) `property income`
- Less tax-efficient than `eligible dividend` or `active business income`
- Distributions can contain a mix of `other income` and other types of income (e.g. `foreign non-business income`)

Property income is tracked in two places:
- General ledger, where it feeds into the income statement as GIFI 8094 (`Interest from other Canadian sources`)
- Schedule 7 Box 32, which is typically calculated from a separate worksheet (proprietary to the specific T2 software used)

There can be other downstream consequences for property income, which are outside the scope of this document:
- Passive-income reduction of the small business limit
- Associated-corporation allocations (when more than one company is involved)


# Relevant general ledger accounts

For description of ledger account tree, see:  
[T3 Bookkeeping and Brokerage Reconciliation](T3-Bookkeeping-and-Reconciliation.md)  

Example tree of accounts that can be used for T3 Box 26 bookkeeping (with account codes aligned with GIFI):
<table>
  <thead>
    <tr><th>Account</th><th>Code</th><th>Description</th></tr>
  </thead>
  <tbody>
    <tr><td>Assets</td><td>2599-valid</td><td></td></tr>
    <tr><td nowrap>&ensp; └ Current Assets</td><td>1599-calc</td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Cash and deposits</td><td>1000</td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Deposits - investment</td><td>1002-2</td><td>Cash sitting in investment account</td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Accounts receivable</td><td>1060-parent</td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Dividends receivable</td><td>1060-1</td><td>Dividends from investments declared in December but paid in January</td></tr>
    <tr><td>Revenue</td><td>8299-valid</td><td></td></tr>
    <tr><td nowrap>&ensp; └ Investment revenue</td><td>8090-parent</td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Investment revenue adjustment</td><td>8090</td><td>Plug when T3 different vs investment account</td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Interest from other Canadian sources</td><td>8094</td><td>Finance income, guaranteed investment certificates interest, interest on overpaid taxes, and loan interest</td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Other investment income</td><td>8094-1</td><td>T3 box 26 Other income</td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ TBD investment distributions</td><td>8094-2</td><td>Unclassified passive income (pending T3 in March) | eligible dividend / foreign / roc / interest income / etc.</td></tr>
  </tbody>
</table>


# Accounting and tax treatment

Throughout the year, as you were receiving investment distributions, you would have classified them in a temporary account.  
For example, `TBD investment distributions` (8094-2) can be used.  

In March of the following year, you will receive a T3 that classifies the distributions that you received for tax purposes.  
A portion of the passive income that you received can be classified as `other income`.  
Past ledger entries for `TBD investment distributions` can be re-classified in-place.  

When filing T2 taxes, T3 Box 26 should be reported in: GIFI 8094 `Interest from other Canadian sources`  
If more granularity is required, then a subaccount can be used: account code 8094-1 `Other investment income` (as presented above)  

CRA requires accrual accounting, the dividend is recorded:
- On the dividend date (prior to the ex-dividend date)
- Not on the payment date (when you receive the money)
- If dividend date and payment date are in the same tax year, then the accrual has no effect and can be skipped


# Ledger entries

On the dividend date:
- Debit: `Dividends receivable` (1060-1)
- Credit: `TBD investment distributions` (8094-2)

When the dividend is paid:
- Debit: `Deposits - investment`(1002-2)
- Credit: `Dividends receivable` (1060-1)

In the dividend date and the pay date are in the same tax year, then the above two can be collapsed (on the payment date):
- Debit: `Deposits - investment`(1002-2)
- Credit: `TBD investment distributions` (8094-2)

When you get the T3 Box 26 amount, re-classify the temporary treatment (can be part of a multi-leg split ledger entry):
- Debit: `TBD investment distributions` (8094-2)
- Credit: `Other investment income` (8094-1)


# T2 schedule mapping

Schedule 125 (Income statement):
- `Other investment income` (GIFI 8094)

Schedule 100 (Balance sheet):
- `Dividends receivable` (GIFI 1060) if declared in December but paid in January, or
- `Deposits - investment` (GIFI 1002, rolls up to 1000) when paid within year

Practical return mapping:

- T2 Schedule 7, Part 1 - Aggregate investment income / Total income from property - Box 32

![T2 Schedule 7 - Part 1 - Box 32](media/T3-Box-27_Schedule-7-Box-32.png)


# Software workflow example - FutureTax 2025.2

For filling out S7 Box 32, some T2 software have a Schedule 7 "Worksheet" for other interest and property income.  

If your software has such a worksheet:
- Label the entry clearly (e.g. "T3 Box 26") to facilitate tracing back to the slip
- Put the Box 26 amount in the property-income area rather than in the dividend or foreign area

In FutureTax the worksheet is brought up by double-clicking on the S7 Box 32, and looks like this:  
![T2 Schedule 7 - Worksheet (FutureTax 2025.2 example)](media/T3-Box-27_Schedule-7-Worksheet_Other-interest-and-property-income.png)


# Related

- [T3](T3.md)
- [T3 Bookkeeping and Brokerage Reconciliation](T3-Bookkeeping-and-Reconciliation.md)
- [T3 Box 49 - Eligible Dividends](T3-Box-49-Eligible-Dividends.md)


# Citations

- CRA T2 Schedule 7: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch7.html
