STATUS: AI GENERATED, REVIEW IN PROGRESS

# HST Worked Examples

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) tracing a full GST/HST year through the books

Two single-year walkthroughs that share the same revenue and input profile.  
They compare the regular method and the Quick Method side by side.  
Calendar fiscal year 2026, Ontario-resident CCPC, annual reporting period, all customers in Ontario.  
Opening `HST receivable` and `HST collected` balances are zero.  
The account conventions are on [HST Bookkeeping](HST-Bookkeeping.md).  
The rules behind each figure are on [HST Regular Method](HST-Regular-Method.md) and [HST Quick Method](HST-Quick-Method.md).  
Scope and limitations are on the [hub](HST.md).  


## Example 1: Regular Method, HST-Registered Ontario Service CCPC

Setup: single-shareholder IT consulting CCPC.  
Three invoices issued through the year; modest operating inputs.  

Mar 31, invoice #1 to an Ontario client for $20,000 + HST:
- Debit `Trade accounts receivable` = $22,600
- Credit `Trade sales of goods and services` (GIFI 8000) = $20,000
- Credit `HST collected` = $2,600

Apr 15, pay $1,800 + HST = $2,034 for the year's accounting software (SaaS subscription):
- Debit `Software subscriptions` (GIFI 9150) = $1,800
- Debit `HST receivable` = $234
- Credit `Cash` = $2,034

Jul 31, invoice #2 to an Ontario client for $15,000 + HST:
- Debit `Trade accounts receivable` = $16,950
- Credit `Trade sales of goods and services` (GIFI 8000) = $15,000
- Credit `HST collected` = $1,950

Sep 1, buy a $4,000 + HST = $4,520 laptop (Class 50 capital asset; business use 100%):
- Debit `Computer equipment - cost` (GIFI 1774) = $4,000
- Debit `HST receivable` = $520
- Credit `Cash` = $4,520

Oct 15, pay $600 + HST = $678 for a year of professional liability insurance:
- Debit `Insurance` (GIFI 8690) = $600
- Debit `HST receivable` = $78
- Credit `Cash` = $678

Nov 30, invoice #3 to an Ontario client for $10,000 + HST:
- Debit `Trade accounts receivable` = $11,300
- Credit `Trade sales of goods and services` (GIFI 8000) = $10,000
- Credit `HST collected` = $1,300

Year-end ledger balances:
- `HST collected`: $2,600 + $1,950 + $1,300 = $5,850 credit
- `HST receivable`: $234 + $520 + $78 = $832 debit
- `Trade sales of goods and services`: $45,000 credit
- `Net taxable income contribution` (before remaining expenses): $45,000 revenue − $2,400 operating expense
  - Operating expense: software $1,800 + insurance $600
  - Less whatever CCA the corp elects on the laptop

GST34 annual return for 2026, filed by 2027-03-31:
- Line 101 (sales of taxable supplies, excluding HST): $45,000
- Line 105 (HST collected): $5,850
- Line 108 (ITCs): $832
- Line 109 (net tax): $5,018
- Remit $5,018 to CRA by 2027-03-31

Period-end close entry:
- Debit `HST collected` = $5,850
- Credit `HST receivable` = $832
- Credit `HST remittance payable` (current liability) = $5,018

Schedule 100 at Dec 31 2026: `HST collected` and `HST receivable` are closed.  
Only `HST remittance payable` of $5,018 carries forward, presented under current liabilities.  
On 2027-03-31 the payment clears:
- Debit `HST remittance payable` = $5,018
- Credit `Cash` = $5,018


## Example 2: Quick Method, Same Setup

Same three invoices and same input bills; the corp filed a *GST74* election effective 2026-01-01 to use the Quick Method.  

The invoice-side ledger entries are identical.  
The corp still charges 13% HST on every taxable supply and `HST collected` still ends the year at $5,850.  

The input-side ledger entries differ:
- Operating inputs (software, insurance) are recorded *gross of HST*; no ITC is claimed
  - Apr 15 software: debit `Software subscriptions` (GIFI 9150) = $2,034; credit `Cash` = $2,034
  - Oct 15 insurance: debit `Insurance` (GIFI 8690) = $678; credit `Cash` = $678
- Capital purchase (laptop) keeps the regular-method posting
  - The Quick Method does *not* eliminate ITCs on capital purchases:
  - Sep 1 laptop: debit `Computer equipment - cost` = $4,000; debit `HST receivable` = $520; credit `Cash` = $4,520

Quick Method remittance calculation:
- *Eligible supplies* for the Quick Method on this profile: $45,000 + HST = $50,850 of GST/HST-inclusive revenue
- *Ontario service rate*: 8.8% of GST/HST-inclusive revenue
- *1% credit on first $30,000 of eligible supplies*: 7.8% on the first $30,000, 8.8% on the remainder
- Quick Method tax on the supplies: $30,000 × 7.8% + $20,850 × 8.8% = $2,340 + $1,834.80 = $4,174.80
- *Less ITCs on capital purchases*: $520 (the laptop)
- Net tax: $4,174.80 − $520 = $3,654.80

GST34 annual return for 2026, filed by 2027-03-31:
- Line 101 (Quick Method: revenue from taxable supplies *including* the GST/HST, per RC4058): $50,850
  - Contrast Example 1's HST-exclusive $45,000
- Line 105 (Quick Method tax): $4,174.80
- Line 108 (ITCs on capital): $520
- Line 109 (net tax): $3,654.80
- Remit $3,654.80 to CRA by 2027-03-31

Income-statement effect of the kept spread:
- HST collected through the year: $5,850
- Quick Method tax remitted (gross of capital ITC): $4,174.80
- Kept spread: $5,850 − $4,174.80 = $1,675.20
- Booked at year-end:
  - Debit `HST collected` = $5,850
  - Credit `HST receivable` = $520
  - Credit `Other revenue` (GIFI 8230) = $1,675.20
  - Credit `HST remittance payable` = $3,654.80
- The $1,675.20 is taxable income to the corp under ITA s.9 and feeds into ABI

Side-by-side comparison:
- Regular method 2026: $5,018 to CRA, no kept spread, ITCs on operating inputs claimed at $312 total ($234 + $78)
- Quick Method 2026: $3,654.80 to CRA, $1,675.20 of additional taxable income, no operating-input ITCs claimed
- *Cash difference*: Quick Method retains an extra $5,018 − $3,654.80 = $1,363.20 of cash
- *Income-tax cost*: the $1,675.20 kept spread is taxable income, but there is an offset
  - Expensing the operating inputs gross (instead of claiming $312 of ITCs) adds $312 of deductions
  - Net extra taxable income: $1,675.20 − $312 = $1,363.20 (the same as the cash saved)
  - Tax at the Ontario CCPC ABI rate (≈12.2% on the first $500k) ≈ $166
- *Net of corporate tax*: ~$1,197 better than the regular method on this profile (the cash saving × (1 − 12.2%))

For a consulting CCPC with this input profile, the Quick Method wins.  
The break-even against the regular method on Ontario services: operating-input HST equal to the kept spread.  
For $45,000 of Ontario service revenue, that is around $1,675 of recoverable HST on operating inputs.  
That is about $13,000 of HST-eligible operating spending, well above what most consulting CCPCs actually run.  


## Related

- [GST/HST](HST.md): the hub, with scope, the flow diagram, and edge cases
- [HST Bookkeeping](HST-Bookkeeping.md)
- [HST Regular Method](HST-Regular-Method.md)
- [HST Quick Method](HST-Quick-Method.md)


## Citations

- The rules behind these entries are cited on [HST Regular Method](HST-Regular-Method.md) and [HST Quick Method](HST-Quick-Method.md)
- CRA *RC4058 Quick Method of Accounting for GST/HST*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4058.html
  - The 8.8% Ontario service rate and the 1% credit on the first $30,000 used in Example 2
