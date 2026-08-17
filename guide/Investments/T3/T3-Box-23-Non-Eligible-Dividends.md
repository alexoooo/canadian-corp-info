STATUS: AI GENERATED, REVIEW IN PROGRESS

# T3 Box 23 - Non-Eligible Dividends

See parent document: [T3](T3.md)  

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) who receive a T3 with box 23 amounts

Limitations:
- Covers ETFs structured as a trust; corporation-issued holdings report through a [T5](../T5/T5.md)
- Assumes a CCPC claiming the small business deduction, with no connected payers
- Tax information can change over time; the following is my understanding as of 2026


## Meaning and Tax Treatment

T3 Box 23 is the actual amount of non-eligible dividends (dividends other than eligible) the trust designates.  
The s.104(19) designation preserves the taxable-dividend character, the same flow-through as
[Box 49](T3-Box-49-Eligible-Dividends.md); the eligible/non-eligible split simply follows the underlying payers.  

A dividend is non-eligible when the payer pays it out of income that was not taxed at the general corporate rate.  
That is income tracked in the payer's LRIP (low rate income pool); see
[Dividends — eligible vs non-eligible](../../Paying-Yourself/Dividends/Dividends.md).  
Most TSX-listed companies designate their dividends eligible, so Box 23 is uncommon on a broad-market ETF.  
It does occur (e.g. XCV reported Box 23 amounts in 2024), typically when a held company distributes out of LRIP.  

The corporate treatment mirrors Box 49, with one difference — which pool the Part IV tax fills:
- Include the actual Box 23 amount in income
- Deduct the same amount under [s.112](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-112.html), removing
  it from Part I taxable income
- Pay Part IV tax of 38⅓% on the amount (ITA [s.186(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-186.html))
- The Part IV tax fills NERDTOH rather than ERDTOH (ITA [s.129(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html))
  - NERDTOH is recovered only when the corporation pays a *non-eligible* dividend
  - See [ERDTOH and NERDTOH](../../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md) for the refund formula and the
    year-end ordering rule
- Unlike an eligible dividend received, a non-eligible dividend received adds nothing to GRIP


## Relevant General Ledger Accounts

For the broader ledger tree, see [T3](T3.md#relevant-general-ledger-accounts).  

Accounts typically involved in the Box 23 workflow:
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
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Dividends from Canadian sources - non-eligible</td><td>8096-1</td><td>T3 Box 23, T5 Box 10</td></tr>
  </tbody>
</table>


## Ledger Entries

Direct entry when the classification is already known:  
Debit: `Deposits - investment` (1002-2).  
Credit: `Dividends from Canadian sources - non-eligible` (8096-1).  
If declared in December but paid in January, debit `Investment distributions receivable` (1060-1) instead.  

During the year, distributions are typically parked in `TBD investment distributions` (8090-3).  
See [Preliminary tracking](T3.md#preliminary-tracking-throughout-the-year).  
When the T3 confirms the Box 23 amount, reclassify:
- Debit: `TBD investment distributions` (8090-3)
- Credit: `Dividends from Canadian sources - non-eligible` (8096-1)

The separate 8096-1 sub-account keeps the eligible/non-eligible split visible in the books.  
It matters on payout: the split drives which pool the Part IV tax filled and which dividend recovers it.  
At the GIFI roll-up level both file under 8096.  


## T2 Schedule Mapping

Report on Schedule 3 (S3) / Part 1 the same way as [Box 49](T3-Box-49-Eligible-Dividends.md#t2-schedule-mapping),
using the actual Box 23 amount:
- A = ETF fund name
- Type of Column F = s.112
- F = G = non-eligible dividend amount (Box 23)

The s.112 deduction is taken on line 320 of the T2.  
Make sure the amount is entered as *non-eligible* where the software asks.  
The eligible/non-eligible split determines whether the Part IV tax lands in ERDTOH or NERDTOH on T2 page 7.  


## Related

- [T3](T3.md)
- [T3 Box 49 - Eligible Dividends](T3-Box-49-Eligible-Dividends.md)
- [ERDTOH and NERDTOH](../../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md)
- [Dividends](../../Paying-Yourself/Dividends/Dividends.md)
- [T5](../T5/T5.md) (Box 10 is the corporation-issuer analogue)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.104(19)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html) - trust designation that flows the taxable-dividend character through to beneficiaries
  - [s.112(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-112.html) - deduction for taxable dividends received by a corporation resident in Canada
  - [s.129(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - ERDTOH and NERDTOH definitions; Part IV tax on non-eligible dividends feeds NERDTOH
  - [s.186](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-186.html) - Part IV tax on assessable dividends received by a private corporation
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - eligible dividend, GRIP, and LRIP definitions
- CRA Form T3 - Statement of Trust Income Allocations and Designations: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t3.html
- CRA T2 S3: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch3.html


## TODO

- Add a real (redacted) slip example when one is observed first-hand
  - The treatment here is derived from the Box 49 mechanics and the T5 Box 10 analogue
- Add S3 screenshots and a software workflow example, following the [T3 Box 26](T3-Box-26-Other-Income.md) pattern
