STATUS: AI GENERATED, REVIEW IN PROGRESS

# T3 Box 21 - Capital Gains Distribution

See parent document: [T3](T3.md)  

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) who receive a T3 with box 21 amounts

Limitations:
- Covers ETFs structured as a trust; the corporation-issuer analogue is [T5 Box 18](../T5/T5-Box-18-Capital-Gains-Dividends.md)
- Assumes the 50% capital gains inclusion rate as of 2026
- Tax information can change over time; the following is my understanding as of 2026


## Meaning and Tax Treatment

Box 21 is the trust's net taxable capital gains designated to the beneficiary
(ITA [s.104(21)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html)).  
The designation preserves the capital-gain character: half is taxable, and the non-taxable half adds to the
corporation's Capital Dividend Account (CDA).  

Box 21 comes in two flavours:
- Cash: which appears in your `Deposits - investment` (1002-2) account
- Phantom: non-cash amount, which is counted as a capital gain and increases ACB
- Both amounts may be lumped into a single Box 21
  - You can work out the split by looking at what shows up in `Deposits - investment` vs the T3 Box 21 amount
  - Or reconcile with CDS; see [T3 — Matching ledger vs brokerage account](T3.md#matching-ledger-vs-brokerage-account)


## Relevant General Ledger Accounts

For the broader ledger tree, see [T3](T3.md#relevant-general-ledger-accounts).  

Accounts typically involved in the Box 21 workflow:
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
    <tr><td>Revenue</td><td>8299-valid</td><td></td></tr>
    <tr><td nowrap>&ensp; └ Realized gains/losses on disposal of assets</td><td>8210</td><td>Gain/loss or profit/loss on disposal/sale of capital assets</td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Realized gains/losses on sale of investments</td><td>8211</td><td>Profit/loss on disposal of investments</td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Capital gains distributions</td><td>8211-2</td><td>Comes from T3 - Box 21 (Capital gains)</td></tr>
  </tbody>
</table>


## Ledger Entries

Debit for Box 21:
- Cash: `Deposits - investment` (1002-2)
  - Or `Investment distributions receivable` (1060-1) if declared in December but paid in January
- Phantom: `Brokerage` (2303-1)

Credit (in either case): `Capital gains distributions` (8211-2)  

When you enter a phantom capital gains distribution, it increases the value of your investment account.  
This causes the book cost to diverge from the end-of-year statement.  
Add a temporary entry for the first date of the following year (Jan 1st):  
Debit: `Brokerage - pending` (2303-2)  
Credit: `Brokerage` (2303-1)  
Description: phantom capital gains distribution pending brokerage update in April - to be reversed  

And then in April when your brokerage finally reflects this, reverse the above:  
Debit: `Brokerage` (2303-1)  
Credit: `Brokerage - pending` (2303-2)  
Description: phantom capital gains distribution pending brokerage update in April - reversal  


## T2 Schedule Mapping

In addition to the above ledger entries, enter the Box 21 amount in the T2:
- Schedule 6 (S6: Summary of Dispositions of Capital Property) / Part 4 (Other properties)  
  "Capital gains distribution - ETF trust T3 Box 21"  
  Report the amount as a capital gain  
  Half of it will be taxed instead of the full amount (based on the capital gains inclusion rate)  
  This is reported under "Dispositions" even though no actual disposition occurred (capital gains from a trust)  
- Schedule 1 (S1: Net Income (Loss) for Income Tax Purposes)  
  Line 113 (Taxable capital gains from Schedule 6) carries the taxable half; FutureTax fills it from S6 automatically  
  Page 4 / Other deductions (Description 705 / Amount 395)  
  "Cap gain dist T3 Box 21 - booked to income, taxed via S6"  
  Deduct the full Box 21 amount that the ledger booked to `Capital gains distributions` (8211-2)  
  Only line 113's taxable half then remains in taxable income  
  Deducting only the non-taxable half would double-count once line 113 is filled  
- Schedule 7 picks the gain up on its own
  - Part 2 line 705 counts the taxable half in adjusted aggregate investment income
  - Part 6 amount V (from S1 line 113) backs it out of the income eligible for the small business deduction

Track the non-taxable portion (50%) of the Box 21 amount in the Capital Dividend Account.  
See [Capital Dividend Account](../Capital-Dividend-Account/Capital-Dividend-Account.md).  


## Related

- [T3](T3.md)
- [T3 Box 42 - Return of Capital](T3-Box-42-Return-Of-Capital.md) (the other Book Cost pending-adjustment case)
- [T5 - Box 18 Capital Gains Dividends](../T5/T5-Box-18-Capital-Gains-Dividends.md)
- [Capital Dividend Account](../Capital-Dividend-Account/Capital-Dividend-Account.md)
- [Adjusted Cost Base](../Adjusted-Cost-Base/Adjusted-Cost-Base.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.104(21)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html) - trust designation of net taxable capital gains to beneficiaries
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - capital dividend account definition (the non-taxable half)
  - [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - reduction of the business limit when adjusted aggregate investment income exceeds $50,000
- CRA Form T3 - Statement of Trust Income Allocations and Designations: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t3.html
- CRA T2 S6: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch6.html
- CRA T2 S7: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch7.html


## TODO

- Add slip and S6/S1 screenshots and a software workflow example, following the [T3 Box 26](T3-Box-26-Other-Income.md) pattern
