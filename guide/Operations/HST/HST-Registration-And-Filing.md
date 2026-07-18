STATUS: AI GENERATED, REVIEW IN PROGRESS

# HST Registration and Filing

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) registering for GST/HST, or already filing GST34 returns

This page covers the CRA-facing half of GST/HST.  
That is the registration decision, the rate to charge by place of supply, zero-rating, and the filing cadence.  
For the tax point and the ledger posting patterns, see [HST Bookkeeping](HST-Bookkeeping.md).  
For computing the amount to remit, see [HST Regular Method](HST-Regular-Method.md) and [HST Quick Method](HST-Quick-Method.md).  
Scope and limitations are on the [hub](HST.md).  


## Registration

Registration is mandatory once worldwide *taxable supplies* exceed $30,000:
- Over the immediately preceding four consecutive calendar quarters, *or*
- In any single calendar quarter (the *blow-out* test in ETA [s.148(2)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-148.html))

Two clocks run once the threshold is crossed, and the effective date depends on which test tripped:
- *Effective date of registration*:
  - Single-quarter blow-out (s.148(2)): the day of the supply that put the corp over $30,000 within the quarter
    - That supply and every later one are taxable, with no grace period
  - Four-quarter test (s.148(1)): a grace period applies
    - The corp stays a small supplier through the end of the month following the quarter in which it crossed
    - So the crossing supplies are not taxable; registration takes effect from the end of that grace
- *Filing deadline for the registration application*: 29 days after the corp is first required to be registered
  - ETA [s.240(2.1)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-240.html)

*Taxable supplies* for this test include zero-rated supplies but exclude *exempt* supplies.  
Zero-rated includes services to non-residents; see [Zero-rated supplies](#zero-rated-supplies) below.  
Exempt covers most financial services, residential rent, and basic health and dental care.  
Most child-care and educational services are exempt too.  
*Associated* corporations' taxable supplies aggregate with the corp's own when applying the test.  
The *associate* definition is in ETA [s.148(4)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-148.html).  
A group of associated CCPCs cannot stay below the threshold by splitting revenue across entities.  

Voluntary registration is available below the threshold (ETA [s.240(3)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-240.html)):
- The corp can claim ITCs on inputs from day one of registration, which is the main reason to register voluntarily
- The corp must charge GST/HST on every taxable supply going forward and meet all filing and remittance obligations
- A common pattern: register voluntarily at incorporation when the corp expects to exceed $30,000 in year one
  - This avoids a mid-year change-over

Specific situations override the small-supplier rule:
- Taxi and ride-share operators must register regardless of revenue (ETA s.240(1.1))
- Non-resident vendors of digital services to Canadian consumers register under the simplified regime
  - ETA Subdivision E of Division II; out of scope for a Canada-resident CCPC

How to register:
- *Business Registration Online* (BRO) through CRA: fastest for a new corp that already has a *Business Number* (BN)
- CRA *My Business Account*: for an existing BN, add the `RT` program account
- Form *RC1 Request for a Business Number*: paper fallback


## Rates and Place of Supply

Rate by province as of 2026:
- *Ontario*: 13% HST
- *Nova Scotia*: 14% HST (effective 2025-04-01; 15% before)
  - Transitional rules in CRA Notice 342 governed straddling supplies
- *New Brunswick, Newfoundland and Labrador, Prince Edward Island*: 15% HST
- *British Columbia, Saskatchewan, Manitoba, Yukon, Northwest Territories, Nunavut*: 5% GST only
  - BC and Manitoba charge 7% PST in addition; Saskatchewan charges 6% PST
  - The territories add no provincial sales tax
- *Alberta*: 5% GST only
- *Quebec*: 5% GST plus 9.975% QST administered by Revenu Québec

The rate charged on a given supply is set by the *place of supply* rule, not by where the supplier is located:
- The rule sources: ETA Schedule IX for goods; CRA GST/HST Memorandum 3-3-2 for provincial guidance
  - Services and intangible personal property: the New Harmonized Value-added Tax System Regulations, SOR/2010-117 s.13
- *Goods*: rate of the province where the goods are delivered or made available to the recipient
- *Services*: generally the rate of the province of the recipient's business or home address
  - Category-specific rules exist for real-property services, services in respect of tangible property, and so on
- *Intangible personal property* (licences, IP rights, digital content)
  - Place of supply turns on where the property can be used and the recipient's business address

PST and QST are not HST:
- PST is a single-stage retail sales tax with no equivalent to the input tax credit
  - The corp pays PST on inputs and absorbs it into landed cost or capital cost
- QST runs alongside GST under a parallel ITC-equivalent regime called *ITR* (input tax refund)
  - A Quebec-based corp tracks GST and QST separately and files them on a combined Revenu Québec return


## Zero-Rated Supplies

*Zero-rated* supplies are *taxable supplies* at 0% (ETA Schedule VI).  
The corp charges 0% HST on the sale, and the sale still counts toward the $30,000 small-supplier threshold.  
ITCs on inputs that support the zero-rated supply remain fully claimable.  

Zero-rated categories most relevant to an owner-managed CCPC:
- *Exports of tangible goods* shipped by the supplier to a destination outside Canada (Schedule VI, Part V, s.12)
- *Services rendered to a non-resident* with no presence in Canada (Schedule VI, Part V, s.7)
  - Carve-outs: services performed for an individual physically in Canada
  - Also services in respect of Canadian real or tangible personal property
- *Advisory, professional, or consulting services to a non-resident* (Schedule VI, Part V, s.23)
  - The typical category for an IT, management, or design consultant invoicing US clients
- *Freight transportation services on international shipments* (Schedule VI, Part VII)
- *Basic groceries, prescription drugs, certain medical devices*: relevant only to a CCPC in those industries

For a CCPC with all-non-resident clients, registration is still required.  
The obligation arises once taxable supplies (including zero-rated) cross $30,000.  
Once registered, ITCs on Canadian inputs (rent, software, professional fees) are claimable in full.  
So the corp typically files for a net refund each reporting period.  
See [Foreign Currency](../../Bookkeeping/Foreign-Currency/Getting-Paid-In-USD.md#zero-rated-gsthst-on-services-to-non-residents) for the full bookkeeping.  
It also covers invoice presentation and the W-8BEN-E interaction with US-client withholding.  


## Program Account and CRA Mechanics

GST/HST sits under the `RT` program account, distinct from `RC` for corporate income tax and `RP` for payroll.  
A typical *Business Number* (BN) takes the shape `123456789RT0001`.  
That is a nine-digit BN, a two-letter program identifier, and a four-digit reference suffix.  
The suffix increments when a corp opens additional GST/HST accounts.  
That is rare for an owner-managed CCPC; most run a single `RT0001`.  

The standard filing surface:
- CRA *My Business Account* is the corp-side portal
  - An *authorized representative* can file on behalf of the corp through *Represent a Client*
- Form *GST34-2* is the personalized return CRA mails (or makes available electronically) to the corp
  - The access code on it is required for electronic filing under most channels
- Form *GST62* is the non-personalized return for registrants without a GST34-2 on file
  - Electronic filers receive the *GST34-3* electronic filing information sheet instead of a GST34-2
  - The GST34-3 carries the access code
- Mandatory electronic filing applies to all registrants for reporting periods beginning on or after 2024-01-01
  - Limited exceptions for charities and SLFIs (ETA [s.278.1](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-278.1.html))
- Remittances of $10,000 or more must be paid electronically (ETA [s.278(3)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-278.html))


## Reporting Periods and Deadlines

Reporting period is assigned automatically based on prior-year *taxable supplies* (ETA [s.245](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-245.html)):
- ≤ $1.5M: *annual* reporting period (default for most owner-managed CCPCs)
- $1.5M to $6M: *quarterly*
- \> $6M: *monthly*

A corp can elect to file more frequently than its assigned period (ETA [s.246](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-246.html)).  
Useful when the corp consistently runs in a refund position: its inputs carry more HST than its sales generate.  

Filing and remittance deadlines:
- *Annual filer*: return and balance due 3 months after fiscal year-end (e.g. Mar 31 for a Dec 31 year-end)
- *Quarterly filer*: return and balance due 1 month after each calendar quarter-end
- *Monthly filer*: return and balance due 1 month after each calendar month-end
- *Annual instalments*: an annual filer with net tax of $3,000 or more must pay quarterly instalments
  - Each instalment is one-quarter of the instalment base
  - The base is the lesser of the prior year's net tax and the current year's estimate
  - The year-end return reconciles to the actual figure (ETA [s.237](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-237.html))

For the full overview of CCPC filing-deadline cadence, see [Small Business Tax Overview](../../Overview/Small-Business-Tax.md#filing-deadlines-and-instalments).  
It covers the T2, T4/T5 slips, and payroll source deductions alongside GST/HST.  


## Related

- [GST/HST](HST.md): the hub, with scope, the flow diagram, and edge cases
- [HST Bookkeeping](HST-Bookkeeping.md): the tax point that dates each return's entries
- [HST Regular Method](HST-Regular-Method.md)
- [HST Quick Method](HST-Quick-Method.md)
- [Small Business Tax Overview](../../Overview/Small-Business-Tax.md)
- [Starting Up](../../Corporate-Lifecycle/Starting-Up.md) (registering at incorporation)
- [Foreign Currency](../../Bookkeeping/Foreign-Currency/Foreign-Currency.md) (the zero-rated-services workflow)


## Citations

- Excise Tax Act (R.S.C., 1985, c. E-15): https://laws-lois.justice.gc.ca/eng/acts/E-15/
  - [s.148](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-148.html) - small-supplier threshold
    - $30,000 over four quarters or in any single quarter; aggregation across associated corps
  - [s.165](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-165.html) - imposition of GST/HST on taxable supplies, including the rate
  - [s.237](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-237.html) - quarterly instalments for annual filers with net tax of $3,000 or more
    - Base = lesser of prior-year net tax and current-year estimate
  - [s.238](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-238.html) - filing deadlines by reporting period
  - [s.240](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-240.html) - registration mechanics
    - Voluntary registration (s.240(3)); effective date and 29-day filing window (s.240(2.1))
  - [s.245](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-245.html) - reporting period assignment by prior-year taxable supplies
  - [s.246](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-246.html) - election to file more frequently than the default period
  - [s.278](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-278.html) - $10,000 electronic-payment threshold (s.278(3))
  - [s.278.1](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-278.1.html) - mandatory electronic filing
  - Schedule VI, Part V - zero-rated exports of services and goods
    - s.12 supplier-shipped goods; s.7 general services to non-residents
    - s.23 advisory, professional, or consulting services to non-residents
  - Schedule IX (goods) - place-of-supply rules
    - Services and intangible personal property: *New Harmonized Value-added Tax System Regulations* (SOR/2010-117) s.13
- CRA *GST/HST Memorandum 3.3 Place of Supply*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/3-3.html
- CRA *GST/HST Notice 342 Nova Scotia HST Rate Decrease*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/notice342/nova-scotia-hst-rate-decrease-questions-answers-general-transitional-rules-personal-property-services.html
  - Transitional rules for the 2025-04-01 rate change from 15% to 14%
- CRA *Form GST34-2 Goods and Services Tax/Harmonized Sales Tax Return*: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/gst-hst-businesses/complete-file-return-business.html
  - Personalized return; not separately downloadable
- CRA *Form RC1 Request for a Business Number*: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/rc1.html
- CRA *Charge and collect the GST/HST – Which rate to charge*: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/gst-hst-businesses/charge-collect-which-rate.html


## Links

- Revenu Québec — *GST and QST registration*: https://www.revenuquebec.ca/en/businesses/consumption-taxes/gsthst-and-qst/registering-for-the-gst-and-qst/
- BC government — *Provincial Sales Tax (PST)*: https://www2.gov.bc.ca/gov/content/taxes/sales-taxes/pst
- Saskatchewan — *Provincial Sales Tax*: https://www.saskatchewan.ca/business/taxes-licensing/provincial-sales-tax
- Manitoba — *Retail Sales Tax*: https://www.gov.mb.ca/finance/taxation/taxes/retail.html


## TODO

- Verify the s.148(4) aggregation rule for *associated* corps under the small-supplier test
  - Against current CRA administrative position
  - The statute references "associated" but some CRA publications use a narrower definition than ITA s.256
