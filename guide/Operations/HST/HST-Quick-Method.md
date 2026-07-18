STATUS: AI GENERATED, REVIEW IN PROGRESS

# HST Quick Method

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) weighing or using the Quick Method election

The *Quick Method* (ETA [s.227](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-227.html); CRA RC4058) is a simplification.  
Eligible registrants remit a flat percentage of GST/HST-inclusive revenue.  
They skip per-input ITC tracking on operating purchases.  
ITCs on *capital purchases* are still claimable separately under the regular method, even after the election.  
That includes real property and imported capital property.  
Import HST on *operating* inputs earns no ITC while the election is in effect (SOR/91-51 s.17(1)).  
The kept remittance spread is its only compensation.  
For the default computation, see [HST Regular Method](HST-Regular-Method.md).  
Scope and limitations are on the [hub](HST.md).  


## Eligibility

Eligibility requires *all* of the following:
- Worldwide *taxable supplies*, plus the HST charged on them, total $400,000 or less over the test window:
  - Including the taxable supplies of associated corps
  - *Window*: for a first election, any four consecutive fiscal quarters ending in the last two before the effective date
    - RC4058 phrases it as "four consecutive fiscal quarters out of your last five"
    - Once elected, continuing eligibility is tested on the previous fiscal year
  - *Base*: excludes supplies of financial services and sales of real property, capital assets, and goodwill
    - A year with a large capital-asset sale does not blow eligibility
  - The cap and the remittance rates are set by the *Streamlined Accounting (GST/HST) Regulations*
    - The election framework is ETA [s.227](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-227.html)
    - The cap rose from $200,000 for fiscal years beginning on or after 2013-01-01
- The corp is not in an ineligible designation (per RC4058):
  - Listed financial institutions
  - Accountants, bookkeepers, tax-return preparers (when supplying those services)
  - Lawyers and notaries
  - Financial consultants and actuaries
  - Municipalities, hospital authorities, school authorities, universities, public colleges
  - Charities and qualifying non-profits
- The corp was engaged in commercial activities throughout the 365 days ending before the reporting period
  - RC4058 accommodates registrants newer than that
  - Also, no streamlined-accounting election ceased by revocation in that same window (SOR/91-51 s.16(1))
    - That covers the Quick Method or the simplified ITC method


## Election Mechanics

- File Form *GST74 Election and Revocation of an Election to Use the Quick Method of Accounting*
- The election takes effect on the first day of a reporting period you specify on the form
  - Which need not be the period you file it in
- Filing deadline (ETA [s.227(2)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-227.html)):
  - *Annual filer*: file GST74 by the first day of the second fiscal quarter of the year the election first applies to
    - April 1 for a calendar year; the Minister may allow a later date
  - *Monthly or quarterly filer*: file by the due date of the return for the first reporting period the election covers
- The election is binding for at least one full year before revocation
  - After that, file a new GST74 revoking the election


## Remittance Rates

- The rate depends on three things (the rate matrix in RC4058 has roughly 30 cells)
  - (a) The corp's province
  - (b) Whether the corp primarily makes supplies of *goods for resale* or of *services*
  - (c) The *place of supply* of each sale
- *Ontario service business* (the canonical CCPC consulting case) supplying Ontario customers
  - Remit *8.8%* of GST/HST-inclusive revenue on those sales
- *Ontario goods-for-resale business* supplying Ontario customers
  - Remit *4.4%* of GST/HST-inclusive revenue on those sales
- For Quebec, the territories, or any cross-province pattern, look up the cell in the current RC4058 rate table
  - The matrix changes whenever a province's rate changes
  - Nova Scotia's 2025-04-01 drop from 15% to 14% bumped the NS-row rates down
- *1% credit on the first $30,000 of eligible supplies* in each fiscal year
  - Applied as a reduction to the remittance percentage on those supplies
  - E.g. Ontario service: 8.8% − 1.0% = 7.8% on the first $30,000, then 8.8% on the remainder


## When the Quick Method Pays

- *Service consultants with low input HST*: the kept spread usually exceeds the regular-method ITCs
  - ≈2.7% of GST/HST-inclusive revenue for Ontario services, or ≈3.0% of net revenue
    - Before the extra 1% credit on the first $30,000
  - The inputs (rent on a home office, a few SaaS subscriptions, a laptop) generate small ITCs
- *High-input retail or e-commerce*: stay with the regular method
  - ITCs on cost of goods sold and on freight-in routinely exceed what the Quick Method would save
- *Zero-rated revenue*: corps with mostly zero-rated revenue cannot use the Quick Method to advantage
  - E.g. all-US-client consulting
  - The remittance rate applies to GST/HST-inclusive revenue, and zero-rated supplies have no HST in it
  - So the Quick Method math collapses to zero remittance on those supplies
  - The regular method's ITC refund position is better
  - See [Foreign Currency](../../Bookkeeping/Foreign-Currency/Foreign-Currency.md) for the zero-rated-services workflow


## Income-Tax Interaction

- The kept portion of the HST collected is taxable income to the corp under ITA s.9
  - Book it to `Other revenue` (GIFI 8230) rather than netting it into `HST receivable`
- Quick-Method ITCs that are still claimed (capital purchases) follow the standard regular-method posting


## Related

- [GST/HST](HST.md): the hub, with scope, the flow diagram, and edge cases
- [HST Regular Method](HST-Regular-Method.md): the default net-tax computation
- [HST Examples](HST-Examples.md): a full Quick Method year, side by side with the regular method
- [HST Bookkeeping](HST-Bookkeeping.md): the Quick Method posting pattern
- [Expense Classification](../../Bookkeeping/Expense-Classification.md)
- [Ledger and Accounts](../../Bookkeeping/Ledger-And-Accounts.md)
- [Foreign Currency](../../Bookkeeping/Foreign-Currency/Foreign-Currency.md) (zero-rated revenue and the Quick Method)


## Citations

- Excise Tax Act (R.S.C., 1985, c. E-15): https://laws-lois.justice.gc.ca/eng/acts/E-15/
  - [s.227](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-227.html) - Quick Method election framework
    - The $400,000 cap and the rates are in the *Streamlined Accounting (GST/HST) Regulations* (SOR/91-51)
    - [s.2(2)-(3)](https://laws-lois.justice.gc.ca/eng/regulations/SOR-91-51/section-2.html) threshold-amount base and its exclusions
    - [s.15(3)](https://laws-lois.justice.gc.ca/eng/regulations/SOR-91-51/section-15.html) test windows; [s.16(1)](https://laws-lois.justice.gc.ca/eng/regulations/SOR-91-51/section-16.html) eligibility conditions
    - [s.17(1)](https://laws-lois.justice.gc.ca/eng/regulations/SOR-91-51/section-17.html) net-tax formula and the capital-property-only ongoing ITCs
- CRA *RC4058 Quick Method of Accounting for GST/HST*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4058.html
  - Eligibility, election mechanics, full province × business-type rate matrix, 1% credit on first $30,000
- CRA *Form GST74 Election and Revocation of an Election to Use the Quick Method of Accounting*: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/gst74.html


## TODO

- Reproduce or link the current full Quick Method province × business-type rate matrix from RC4058
  - Once the maintainer confirms which subset is worth carrying inline vs deferring to the CRA page
