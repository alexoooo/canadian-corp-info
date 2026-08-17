STATUS: AI GENERATED, REVIEW IN PROGRESS

# T3 Box 42 - Return of Capital

See parent document: [T3](T3.md)  

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) who receive a T3 with box 42 amounts

Limitations:
- Covers ETFs structured as a trust; corporation-issued holdings report through a [T5](../T5/T5.md)
- The bookkeeping below addresses the common positive-ROC case; the negative case is linked
- Tax information can change over time; the following is my understanding as of 2026


## Meaning and Tax Treatment

Box 42 is an amount resulting in a cost base adjustment.  
It is normally positive: a Return of Capital (ROC) that reduces your ACB
(ITA [s.53(2)(h)(i.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-53.html)).  
It can also be negative (an over-distribution correction that increases your ACB).  
For the sign rule and the negative case, see [Adjusted Cost Base: What changes the ACB](../Adjusted-Cost-Base/Adjusted-Cost-Base.md#what-changes-the-acb).  

This is the fund giving you back your own money.  
The investment value is reduced by the amount of cash that you receive, so this is not a "real" distribution.  
No income arises now; the effect of the ROC is an increased capital gain when selling.  
The ACB cannot be negative.  
If ROC would reduce it below zero, the excess instead becomes an immediate capital gain
(ITA [s.40(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html)).  


## Relevant General Ledger Accounts

For the broader ledger tree, see [T3](T3.md#relevant-general-ledger-accounts).  

Accounts typically involved in the Box 42 workflow:
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
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Investment distributions receivable</td><td>1060-1</td><td>Declared in December, paid in January</td></tr>
    <tr><td nowrap>&ensp; └ Long-term investments</td><td>2300</td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Canadian shares</td><td>2303</td><td>Investment – Securities</td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Brokerage</td><td>2303-1</td><td>Canadian ETF shares | Book Cost</td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Brokerage - pending</td><td>2303-2</td><td>Not yet recognized by brokerage</td></tr>
  </tbody>
</table>


## Ledger Entries

Debit: `Deposits - investment` (1002-2).  
Credit: `Brokerage` (2303-1), this reduces the value of your investment by the corresponding amount.  
If declared in December but paid in January, debit `Investment distributions receivable` (1060-1) instead.  

When you retroactively classify a portion of the distribution as ROC, it reduces the value of your investment account.  
The book cost will no longer match what was in your historical statements.  
Your brokerage will not immediately reflect the ROC amount in Book Cost.  
Depending on the brokerage you may see the amount reflected in April.  
You want your `Brokerage` (2303-1) account to match what you see in your brokerage statements and website.  
You can add a temporary entry for the first date of the following year (e.g. Jan 1st):  
Debit: `Brokerage` (2303-1)  
Credit: `Brokerage - pending` (2303-2)  
Amount: sum of all ROC distributions  
Description: ROC pending brokerage update in April - to be reversed  

And then in April when your brokerage finally reflects this, you can reverse the above:  
Debit: `Brokerage - pending` (2303-2)  
Credit: `Brokerage` (2303-1)  
Amount: sum of all ROC distributions  
Description: ROC pending brokerage update in April - reversal  


## T2 Schedule Mapping

There is no specific schedule or anything that needs to be specified in the year of the ROC.  
The reduced ACB surfaces later, as a larger capital gain on Schedule 6 when the holding is sold.  
Track the reduction in the ACB spreadsheet; see [Adjusted Cost Base — Tracking](../Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md).  
The s.40(3) exception: where ROC drives the ACB below zero, report the excess as an immediate capital gain on
Schedule 6 in that year.  


## Related

- [T3](T3.md)
- [Adjusted Cost Base](../Adjusted-Cost-Base/Adjusted-Cost-Base.md)
- [Adjusted Cost Base — Tracking](../Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md)
- [T3 Box 21 - Capital Gains Distribution](T3-Box-21-Capital-Gains-Distribution.md) (the other Book Cost pending-adjustment case)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.53(2)(h)(i.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-53.html) - a trust-unit return of capital reduces the unit's ACB
  - [s.40(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html) - deemed capital gain when ACB would be driven below zero
- CRA Form T3 - Statement of Trust Income Allocations and Designations: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t3.html
- CRA T2 S6 - Summary of Dispositions of Capital Property: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch6.html


## TODO

- Add slip and ACB-spreadsheet screenshots, following the [T3 Box 26](T3-Box-26-Other-Income.md) pattern
