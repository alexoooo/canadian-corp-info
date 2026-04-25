# T3 Box 26 - other income

See parent document: [T3](T3.md)  
**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) who receive a T3 with box 26 amounts.  

Limitations:
- This document only covers ETFs structured as a trust, other types of investments (real estate, etc.) are out of scope and might have different or additional rules
- It is assumed that you are a Canadian resident, and the trust which issued the T3 is a vanilla ETF (e.g. VCN)
- Tax information can change over time, the below is my understanding as of 2026


# What does it look like

![T3 Box 26 example](media/T3-Box-26_T3-Slip.png)

In the tax package from your brokerage, you might also find per-distribution details:  
![T3 Box 26 details example](media/T3-Box-26_T3-Details.png)

If you need the underlying breakdown and did not receive it from your brokerage, you may also be able to find it here:  
https://ctbsext.posttrade.cds.ca/ctbsExt/external-landing  
You can also use this to calculate expected values to validate the T3 amounts.  


# Meaning and tax treatment

T3 Box 26 is `other income` allocated to a beneficiary of a trust.  
`Other income` can sit alongside other T3 income types in a single cash distribution.  

For example:
- If: your company holds an ETF structured as a trust, such as VCN
- When: the company receives a passive income distribution
- Then: a portion of that could be designated as T3 Box 26

In some contexts, `other income` is referred to as `property income`:
- Real estate rentals do generate T3 Box 26 `other income` (e.g. REIT ETF)
- However, generally it can come from sources unrelated to real estate, `property income` is a tax term

Broadly speaking, income can be classified in different ways:
- `active` business, vs `passive` non-business (i.e. investments or property rental)
- `ordinary` taxed at 100%, vs `preferential` as capital gain (inclusion rate) or dividend (gross-up and credit)
- `resident` domestic recipient, vs `non-resident` foreign recipient (outside the scope of this document)
- `Canadian-source` domestic payer, vs `foreign-source` foreign payer
- `trust` issuer with T3, vs `corporation` that issues T5

T3 Box 26 is used for `passive` investment income from a `trust` that is 100% taxable as `ordinary income` from a `Canadian-source`.  
Note that the type of slip you receive depends on the type of issuer, a `corporation` paying `passive` `ordinary income` from a `Canadian-source` results in a T5 (rather than T3).  

There are a few types of income that can show up in T3 Box 26, some examples:
- Canadian Bonds - Canadian-sourced interest
- Canadian REITs - Primarily rental/property income
- Securities Lending - Fee the ETF earns by lending out its shares

Unlike other boxes on the T3, Box 26 does not receive preferential tax treatment:
- It does not benefit from the Capital Gains Inclusion Rate (Box 21)
- It does not have a dividend tax treatment (Box 49)
- It does not change the Adjusted Cost Base (Box 42)

Passive income is taxed at a significantly higher rate than active business income (which is eligible for the Small Business Deduction):
- T3 Box 26 income is subject to Part I tax (unlike dividends, which are subject to Part IV tax)
- Interest and `other income` are lumped into the general corporate income calculation
- The combined tax rate on AII can be around 50%, whereas the SBD rate is as lower
- To prevent double taxation when you eventually pay yourself a dividend, a portion of 50.17% tax is added to your Non-Eligible Refundable Dividend Tax on Hand (NERDTOH) account

In terms of specific tax treatment, there are several concepts:
- Income Tax Act: the legal rules - what counts as income, dividends, capital gains, property income, etc.
- T2 return + schedules: reporting mechanism for the tax rules
- Bookkeeping + financial statements: your underlying records and classifications
- GIFI: CRA standardized coding for filing financial statements (income statement, balance sheet) with the T2

T3 Box 26 tax treatment for a vanilla index ETF (e.g. VCN):
- Include in corporate income: roll up to GIFI 8299 on "Schedule 125 - Income statement information"
- Incorporate it as net income from property: Box 32 in Part 1 of Schedule 7 to calculate "Aggregate Investment Income" (AII)

When dealing with a T3 that is not from a vanilla index ETF, different AII rules can apply.  
T3 Box 26 often behaves like property income, but not every Box 26 amount necessarily feeds AII / Schedule 7 Part 1 Box 32 in the same way.

For the GIFI code:
- GIFI 8299 (Revenue) is a calculation, CRA does not mandate a specific GIFI code
- The following are reasonable bookkeeping choices: GIFI 8090 (Investment revenue), or GIFI 8230 (Other revenue)
- This document uses GIFI 8094 (Interest from other Canadian sources), which rolls up to GIFI 8090 (Investment revenue)

For the Schedule 7 Box 32:
- Your T2 tax software will typically calculate this number
- CRA does not specify a standardized way to enter the information that goes into calculating S7 Box 32
- T2 software packages will typically have a "Schedule 7 Worksheet", which is proprietary and specific to each T2 software
- You will need to enter the T3 Box 26 amount in this worksheet, and the T2 software should pick it up


# Relevant general ledger accounts

For the broader ledger tree, see:  
[T3 Bookkeeping and Brokerage Reconciliation](T3-Bookkeeping-and-Reconciliation.md)  

Accounts typically involved in the T3 Box 26 workflow:
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


# Ledger entries

Since CRA does not require specific ledger entries, here we adopt a particular bookkeeping convention that would generally be considered as reasonable.  

During the year, distributions can be parked in a temporary account such as `TBD investment distributions` (8094-2).  
When the T3 arrives, the temporary entries can be reclassified to the final treatment for each box.  

If a distribution is properly receivable before year-end but the cash is paid in the following year, a receivable entry can be used for an accrual.  

If the amount is receivable before year-end and paid later:
- On the receivable date:
  - Debit: `Dividends receivable` (1060-1)
  - Credit: `TBD investment distributions` (8094-2)
- When the cash is paid:
  - Debit: `Deposits - investment` (1002-2)
  - Credit: `Dividends receivable` (1060-1)

If receipt and final classification are all within the same tax year, a simpler temporary entry can be used:
- Debit: `Deposits - investment` (1002-2)
- Credit: `TBD investment distributions` (8094-2)

When the T3 confirms the Box 26 amount, reclassify the temporary treatment:
- Debit: `TBD investment distributions` (8094-2)
- Credit: `Other investment income` (8094-1)


# T2 schedule mapping

Income statement (Schedule 125) convention:
- `Other investment income` (GIFI 8094, ledger account code 8094-1)

Balance-sheet (Schedule 100) convention:
- `Dividends receivable` (GIFI 1060) if receivable at year-end; or
- `Deposits - investment` (GIFI 1002, rolling up to 1000) once paid

Schedule 7:
- T2 Schedule 7, Part 1 Box 32: Aggregate investment income / Total income from property
- Can be performed via a proprietary "Worksheet" provided by T2 filing software

![T2 Schedule 7 - Part 1 - Box 32](media/T3-Box-26_Schedule-7-Box-32.png)


# Software workflow example - FutureTax 2025.2

For Schedule 7 Box 32, some T2 software provides a worksheet for other interest and property income.  

If your software has such a worksheet:
- Label the entry clearly (for example "T3 Box 26") so it is easy to trace back to the slip
- Put the T3 Box 26 amount in the property-income area rather than in the dividend or foreign-income area

In FutureTax, the worksheet can be opened by double-clicking the Schedule 7 field, and looks like this:  
![T2 Schedule 7 worksheet - FutureTax 2025.2 example](media/T3-Box-26_Schedule-7-Worksheet_Other-interest-and-property-income.png)


# Related

- [T3](T3.md)
- [T3 Bookkeeping and Brokerage Reconciliation](T3-Bookkeeping-and-Reconciliation.md)
- [T3 Box 49 - Eligible Dividends](T3-Box-49-Eligible-Dividends.md)
- [T3 Boxes 25 and 34 - Foreign Income](T3-Box-25-and-34-Foreign-Income.md)


# Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.125](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - small business deduction and business-limit framework
  - [s.129](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - dividend refund mechanism, aggregate investment income, and non-eligible RDTOH
- CRA T2 Schedule 7: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch7.html
- CRA RC4088 - General Index of Financial Information (GIFI): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html
- CDS Canadian Tax Breakdown Reporting Service (CTBS): https://ctbsext.posttrade.cds.ca/ctbsExt/external-landing
