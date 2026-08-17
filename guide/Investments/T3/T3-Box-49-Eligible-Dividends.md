STATUS: AI GENERATED, REVIEW IN PROGRESS

# T3 Box 49 - Eligible Dividends

See parent document: [T3](T3.md)  

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) who receive a T3 with box 49 amounts

Limitations:
- Covers ETFs structured as a trust (e.g. XEI); corporation-issued holdings report through a [T5](../T5/T5.md)
- Assumes a CCPC claiming the small business deduction, with no connected payers
- Tax information can change over time; the following is my understanding as of 2026


## Meaning and Tax Treatment

T3 Box 49 is the actual amount of eligible dividends the trust designates to its beneficiaries.  
The ETF receives dividends from the Canadian public companies it holds and flows them through.  
The designation under ITA [s.104(19)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html) preserves
the dividend character, so the corporation treats the amount as an eligible dividend received.  

A corporation does not gross up the dividend and claims no dividend tax credit.  
Those are individual-T1 mechanics (the T1-side boxes on the slip are ignored).  
The corporate treatment:
- Include the actual Box 49 amount in income
- Deduct the same amount under [s.112](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-112.html), removing
  it from Part I taxable income
- Pay Part IV tax of 38⅓% on the amount (ITA [s.186(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-186.html))
  - The 38⅓% rate is the non-connected-payer rate; a connected payer is a flow-through instead (s.186(1)(b))
- The Part IV tax fills ERDTOH (ITA [s.129(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html)),
  recovered when the corporation pays an eligible dividend
  - See [ERDTOH and NERDTOH](../../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md) for the pools, the refund on
    payout, and the year-end ordering rule
- The received eligible dividend also adds to the corporation's GRIP, its capacity to pay eligible dividends
  - See [Dividends — GRIP](../../Paying-Yourself/Dividends/Dividends.md#grip---capacity-for-eligible-dividends)

The non-eligible counterpart is [T3 Box 23](T3-Box-23-Non-Eligible-Dividends.md): same slip, same s.112 mechanics,
but the Part IV tax flows to NERDTOH instead.  


## Relevant General Ledger Accounts

For the broader ledger tree, see [T3](T3.md#relevant-general-ledger-accounts).  

Accounts typically involved in the Box 49 workflow:
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
    <tr><td>Revenue</td><td>8299-valid</td><td></td></tr>
    <tr><td nowrap>&ensp; └ Investment revenue</td><td>8090-parent</td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Investment revenue - detail accounts</td><td>8090</td><td>Roll up into GIFI 8090</td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ TBD investment distributions</td><td>8090-3</td><td>Unclassified passive income pending the March T3</td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Dividends from Canadian sources</td><td>8096</td><td>Eligible Dividend Income</td></tr>
  </tbody>
</table>


## Ledger Entries

Direct entry when the classification is already known:  
Debit: `Deposits - investment` (1002-2).  
Credit: `Dividends from Canadian sources` (GIFI 8096).  
If declared in December but paid in January, debit `Investment distributions receivable` (1060-1) instead.  

During the year, distributions are typically parked in `TBD investment distributions` (8090-3).  
See [Preliminary tracking](T3.md#preliminary-tracking-throughout-the-year).  
When the T3 confirms the Box 49 amount, reclassify:
- Debit: `TBD investment distributions` (8090-3)
- Credit: `Dividends from Canadian sources` (8096)


## T2 Schedule Mapping

Report on Schedule 3 (S3 - Dividends Received, Taxable Dividends Paid, and Part IV Tax Calculation) / Part 1.  
Part 1 covers dividends received in the tax year.  
Note that the S3 for T2 corporate tax filing is not to be confused with the S3 for personal tax.  
Here is the S3 which is relevant to corporations: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch3.html  

- A = ETF fund name (e.g. "ISHARES S&P/TSX COMPOSITE HIGH DIVIDEND INDEX ETF")
- Type of Column F = s.112
- F = G = eligible dividend amount (Box 49)

The s.112 deduction is taken on line 320 of the T2 to remove the received dividend from Part I taxable income.  
The Part IV tax computed on S3 carries to the ERDTOH continuity on T2 page 7.  

See: CRA T2 Corporation Income Tax Guide (T4012): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html  


## Related

- [T3](T3.md)
- [T3 Box 23 - Non-Eligible Dividends](T3-Box-23-Non-Eligible-Dividends.md)
- [ERDTOH and NERDTOH](../../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md)
- [Dividends](../../Paying-Yourself/Dividends/Dividends.md)
- [T5](../T5/T5.md) (Box 24 is the corporation-issuer analogue)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.104(19)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html) - trust designation that flows the eligible-dividend character through to beneficiaries
  - [s.112(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-112.html) - deduction for taxable dividends received by a corporation resident in Canada
  - [s.121](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-121.html) - federal dividend tax credit, available to individuals only
  - [s.129(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - ERDTOH and NERDTOH definitions
  - [s.186](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-186.html) - Part IV tax on assessable dividends received by a private corporation
- CRA Form T3 - Statement of Trust Income Allocations and Designations: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t3.html
- CRA T2 S3: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch3.html
- CRA T4012 - T2 Corporation Income Tax Guide: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html


## TODO

- Add slip and S3 screenshots and a software workflow example, following the [T3 Box 26](T3-Box-26-Other-Income.md) pattern
