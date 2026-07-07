STATUS: AI GENERATED, REVIEW IN PROGRESS

# T5 Box 18 - Capital Gains Dividends

See parent document: [T5](T5.md)  
**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) who receive a T5 with a Box 18 amount.  

A *capital gains dividend* is called a dividend and reported on a dividend slip, but is taxed as a capital gain, not as a taxable dividend.  
Treating it as a taxable dividend would wrongly apply the s.112 deduction and Part IV tax, and miss the addition to the Capital Dividend Account.  

Limitations:
- Covers a capital gains dividend paid by a *mutual fund corporation* (a corporate-class fund or a public fund structured as a corporation) to a corporate shareholder
- A capital gains dividend from a *mortgage investment corporation* (MIC) instead arises under ITA [s.130.1(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-130.1.html) and is out of scope
- Tax information can change over time (e.g. the capital gains inclusion rate was going to increase to 2/3, before the proposal was cancelled)
- The following is my understanding as of 2026


## Meaning and Tax Treatment

A mutual fund corporation realizes capital gains inside the fund and flows them out by electing to pay a capital gains dividend.  
Under ITA [s.131(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-131.html), the amount is deemed to be a capital gain of the shareholder from the disposition of capital property in the year.  

The label is misleading; in substance it is a capital gain:
- It is not a taxable dividend, so it does not go on Schedule 3, takes no s.112 deduction, and attracts no Part IV tax
- Only the taxable half is taxed (the capital gains inclusion rate under ITA [s.38](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-38.html))
- The taxable half is a taxable capital gain: it forms part of Aggregate Investment Income (AII), feeds NERDTOH through ITA [s.129(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html), and counts toward the $50,000 adjusted-aggregate-investment-income (AAII) threshold that grinds the small business deduction (ITA [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html))
- The non-taxable half is added to the Capital Dividend Account (CDA) under ITA [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html), exactly as with an ordinary capital gain

A capital gains dividend does not change the ACB of your fund shares; it is a current-year gain, not a return of capital.  


## Three-Way Contrast

Three slips can all put a capital gain on Schedule 6, and they are easy to confuse:

| Slip | Issuer | What happened | Authority |
| --- | --- | --- | --- |
| T5 Box 18 capital gains *dividend* | Mutual fund corporation | No disposition; the fund flows out its internal gains | s.131(1) |
| T3 Box 21 capital gains *distribution* | Mutual fund trust | No disposition; the trust allocates its gains | s.104(21) |
| T5008 *disposition* | Broker | A real sale; gain = proceeds − ACB | s.40(1) |

- T5 Box 18 and T3 Box 21 are economically the same (the fund's gains pushed out to you); the difference is only the issuer's legal structure, corporation versus trust
- For the trust version and its cash-vs-phantom split, see [T3 capital gains distribution - Box 21](../T3/T3.md#capital-gains-distribution---box-21)
- For an actual sale of a holding, see [T5008](../T5008/T5008.md)


## Relevant General Ledger Accounts

For the broader ledger tree, see [T5](T5.md#relevant-general-ledger-accounts).  

Accounts typically involved in the Box 18 workflow:
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
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Investment distributions receivable</td><td>1060-1</td><td>Declared in December but paid in January</td></tr>
    <tr><td>Revenue</td><td>8299-valid</td><td></td></tr>
    <tr><td nowrap>&ensp; └ Realized gains/losses on disposal of assets</td><td>8210</td><td>Gain/loss on disposal/sale of capital assets</td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Realized gains/losses on sale of investments</td><td>8211</td><td>Profit/loss on disposal of investments or marketable securities</td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Capital gains dividends</td><td>8211-3</td><td>Comes from T5 Box 18</td></tr>
  </tbody>
</table>


## Ledger Entries

A capital gains dividend from a mutual fund corporation is normally paid in cash, so there is no phantom (non-cash) portion and no ACB adjustment (unlike a T3 Box 21 distribution).  

For the Box 18 amount:
- Debit: `Deposits - investment` (1002-2), or `Investment distributions receivable` (1060-1) if declared in December but paid in January
- Credit: `Capital gains dividends` (8211-3)

During the year the amount can be parked in `TBD investment distributions` (8090-3) and reclassified to `Capital gains dividends` (8211-3) once the T5 confirms the Box 18 figure.  


## T2 Schedule Mapping

Schedule 6 (S6 - Summary of Dispositions of Capital Property): report the full Box 18 amount as a capital gain.  
- Use Part 1 (Shares), since a mutual fund corporation issues shares; like T3 Box 21, this is reported as a gain even though no disposition occurred
- Proceeds = Box 18 amount, adjusted cost base = 0, so the full amount is the gain (it is a flow-through of the fund's gain, not a sale of your shares)
- The capital gains tax is the same regardless of which S6 part is used

Schedule 1 (S1 - Net Income (Loss) for Income Tax Purposes): line 113 (Taxable capital gains from Schedule 6) carries the taxable half — FutureTax fills it from S6 automatically — and an Other-deductions entry (Description 705 / Amount 395) backs out the full Box 18 amount booked to `Capital gains dividends` (8211-3), leaving the 50% inclusion in taxable income.  
Deducting only the non-taxable half would double-count once line 113 is filled.  

There is no Schedule 3 entry, no s.112 deduction, and no Part IV tax: a capital gains dividend is a capital gain, not a taxable dividend.  

Track the non-taxable half in the Capital Dividend Account; see [Capital Dividend Account](../Capital-Dividend-Account/Capital-Dividend-Account.md).  


## Related

- [T5](T5.md)
- [T3](../T3/T3.md) (T3 Box 21 capital gains distribution, the trust counterpart)
- [T5008](../T5008/T5008.md) (an actual disposition)
- [Capital Dividend Account](../Capital-Dividend-Account/Capital-Dividend-Account.md)
- [Small Business Tax Overview](../../Overview/Small-Business-Tax.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.38](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-38.html) - taxable capital gain is one-half of the capital gain (the inclusion rate)
  - [s.40(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html) - capital gain on an actual disposition (the T5008 case, for contrast)
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - capital dividend account definition; the non-taxable half of a capital gain is added
  - [s.104(21)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html) - trust designation of net taxable capital gains (the T3 Box 21 counterpart, for contrast)
  - [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - SBD grind on AAII over $50,000
  - [s.129(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - AII and NERDTOH definitions
  - [s.131(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-131.html) - capital gains dividend from a mutual fund corporation, deemed a capital gain of the shareholder
- CRA Form T5 - Statement of Investment Income: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t5.html
- CRA T2 S6 - Summary of Dispositions of Capital Property: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch6.html
