STATUS: AI GENERATED, REVIEW IN PROGRESS

# HST Regular Method

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) computing net tax under the regular method

Under the *regular method* the corp remits the HST it collected minus the input tax credits (ITCs) it claims.  
This page covers the GST34 net-tax lines, ITC eligibility and documentation, capital purchases, and imports.  
For the flat-rate alternative, see [HST Quick Method](HST-Quick-Method.md).  
For the posting patterns behind these figures, see [HST Bookkeeping](HST-Bookkeeping.md).  
Scope and limitations are on the [hub](HST.md).  


## Regular Method and Input Tax Credits

Under the *regular method*, net tax for a reporting period is computed on the GST34 return as:
- Line 101: total revenue from taxable supplies (sales, including zero-rated, excluding HST charged)
- Line 105: total GST/HST collected and collectible
- Line 108: total ITCs claimed
- Line 109: net tax (line 105 − line 108)

ITC eligibility (ETA [s.169](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-169.html)):
- The corp must be a GST/HST registrant at the time the HST became payable on the input
- The input must be acquired for consumption, use, or supply in the corp's *commercial activity*
  - I.e. supporting taxable supplies, including zero-rated; not supporting exempt supplies
- The corp must hold supporting documentation that meets the prescribed *documentary requirements* (below)

Documentary requirements escalate with invoice size.  
The rules are the *Input Tax Credit Information (GST/HST) Regulations* and CRA GST/HST Memorandum 8.4:
- *Under $100*: supplier (or intermediary) name, transaction date, total amount paid
- *$100 to $499.99*: the above plus the supplier's GST/HST registration number
  - Plus an indication of whether HST is included or extra
- *$500 or more*: the above plus the recipient's name, terms of payment, and a description of each supply
- Missing the supplier's registration number on a $100+ invoice is the most common audit disallowance
  - Verify the number against the [GST/HST Registry](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/gst-hst-businesses/confirming-a-gst-hst-account-number.html) for any new supplier

Specific limits and denials:
- *Meals and entertainment*: ITC limited to 50% of the HST paid (ETA [s.236](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-236.html))
  - Mirroring the income-tax 50% limit under ITA s.67.1
- *Club memberships and dining/recreational facility fees*: ITC denied (ETA [s.170(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-170.html))
- *Passenger vehicles*: ITC capped at the $39,000 + applicable taxes Class 10.1 ceiling (ETA s.201)
  - See [Capital Cost Allowance](../Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md) for the mirroring Class 10.1 mechanics
- *Capital personal property used partly for personal purposes* (e.g. a vehicle or computer)
  - All-or-nothing under ETA [s.199](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-199.html)
    - Full ITC if business use exceeds 50%, no ITC if 50% or less
  - This is not a sliding proration
    - The 10%–90% proration is the capital-*real*-property rule, not the rule for capital personal property
  - For the income-tax side of the same mixed use, see [Owner-corporation transactions](../../Paying-Yourself/Owner-Corporation-Transactions.md)
    - Per-km allowance, standby charge, shareholder benefits
- *Property and services acquired for making exempt supplies*: ITC denied
  - A typical CCPC has no exempt supplies
  - Residential rent and most financial services are common exempt categories that block ITCs on related inputs

Time limits:
- *Most registrants*: 4 years from the due date of the return in which the ITC could first have been claimed
  - ETA [s.225(4)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-225.html)
- *Specified persons*: 2 years on the same basis
  - Listed financial institutions and registrants with annual taxable supplies over $6M

Capital property and ITCs:
- Business use over 50%: full ITC on the HST portion at the time of acquisition
  - The net cost (excluding HST) enters the capital cost for the appropriate CCA class
  - See [Capital Cost Allowance](../Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)
- Business use 50% or less on personal-use-eligible property (passenger vehicles, residences): ITC denied entirely
  - The full gross cost including HST enters the capital cost
- A subsequent *change in use* triggers a deemed ITC adjustment under ETA [s.199(3)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-199.html) / [s.200(2)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-200.html)
  - A deemed sale claws back the prior ITC if business use drops to 50% or less
  - A deemed acquisition grants one if it rises above 50%
  - Capital *real* property follows ETA [s.206](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-206.html) instead, with a sliding proration


## Capital Purchases

A capital purchase by an HST-registered corp follows one of two paths:
- *Business use over 50% on commercial-activity property*: claim the full ITC on the HST portion at acquisition
  - Capitalize the net cost (excluding HST) as the *capital cost* for the appropriate CCA class
- *Business use 50% or less, or property used in making exempt supplies*: no ITC
  - Capitalize the full gross cost including HST

For a passenger vehicle in Class 10.1, the ITC is additionally capped under ETA s.201.  
The prescribed-amount ceiling matches the income-tax capital-cost cap.  
The formula limits the ITC to the HST that would have applied to the $39,000 ceiling, not the actual price.  

A change in use (s.199(3) / s.200(2)) triggers a deemed ITC adjustment in the year of change:
- Use drops from over 50% to 50% or less: a deemed sale (s.200(2)) claws back the prior ITC
  - Proportional to the residual fair-market value
- Use rises from 50% or less to over 50%: a deemed acquisition (s.199(3)) grants an ITC
  - Proportional to the residual fair-market value
- Capital *real* property follows ETA s.206 instead
  - A sliding 10%–90% proration rather than the over-50% all-or-nothing test

For the per-class CCA mechanics that consume the resulting net capital cost, see [Capital Cost Allowance](../Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md).  


## Imports

Import HST on goods:
- Collected by *Canada Border Services Agency* (CBSA) at the point of import, on the duty-paid value of the goods
  - Reported on the *Commercial Accounting Declaration*
  - The declaration replaced Form B3 when CARM became the system of record in October 2024 (Customs Notice 24-29)
- If the corp is a GST/HST registrant, the import HST is recoverable as an ITC on the next return
  - The Commercial Accounting Declaration in the CARM Client Portal is the documentary support
  - A broker's statement built from it works too
- Under a *Quick Method* election this holds only for imported capital property
  - Import HST on operating inputs earns no ITC (see [HST Quick Method](HST-Quick-Method.md))
- If the corp is not registered, the import HST is permanent landed cost
  - It is capitalized into inventory or capital cost
  - See [Inventory](../Cost-Recovery/Inventory-And-COGS.md#imported-goods-and-fx) and [Capital Cost Allowance](../Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)

Import HST on services and intangibles:
- *Self-assessed* by the recipient under ETA [s.218.1](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-218.1.html)
  - When an imported service is acquired for use otherwise than exclusively in commercial activity
- For a typical CCPC using imported services entirely in commercial activity, no entry is required
  - E.g. AWS hosting, a US-based SaaS subscription supporting taxable Canadian supplies
  - The self-assessment and the offsetting ITC net to zero
- Where the imported service supports exempt supplies (wholly or partly), the self-assessment is real
  - Net tax increases; out of scope here

Imports in foreign currency:
- The duty-paid value used by CBSA is in Canadian dollars, converted at the *date of accounting* per the *Customs Act*
  - This is the dollar figure on the Commercial Accounting Declaration
- Book the ITC at that figure; do not retranslate at the corp's own FX rate


## Related

- [GST/HST](HST.md): the hub, with scope, the flow diagram, and edge cases
- [HST Quick Method](HST-Quick-Method.md): the flat-rate alternative
- [HST Bookkeeping](HST-Bookkeeping.md)
- [HST Examples](HST-Examples.md): a full regular-method year with the GST34 figures
- [Cost Recovery](../Cost-Recovery/Cost-Recovery.md)
  - [Capital Cost Allowance](../Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)
  - [Inventory](../Cost-Recovery/Inventory-And-COGS.md)
- [Owner-Corporation Transactions](../../Paying-Yourself/Owner-Corporation-Transactions.md) (mixed business/personal use)


## Citations

- Excise Tax Act (R.S.C., 1985, c. E-15): https://laws-lois.justice.gc.ca/eng/acts/E-15/
  - [s.169](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-169.html) - general entitlement to input tax credits
  - [s.170](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-170.html) - denied ITCs (club memberships, dining facilities)
  - [s.199](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-199.html) - all-or-nothing ITC on capital personal property
    - Full ITC if business use exceeds 50%, none if 50% or less
    - Deemed acquisition when business use rises above 50% (s.199(3))
  - [s.200](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-200.html) - deemed sale and ITC claw-back when business use of capital personal property drops to 50% or less (s.200(2))
  - [s.201](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-201.html) - passenger-vehicle ITC ceiling
  - [s.206](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-206.html) - change-in-use deemed ITC adjustments on capital *real* property (sliding 10%–90% proration)
  - [s.218.1](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-218.1.html) - self-assessment on imported services and intangibles
  - [s.225](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-225.html) - net-tax computation; 4-year ITC time limit (s.225(4))
  - [s.236](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-236.html) - 50% ITC limit on meals and entertainment
- *Input Tax Credit Information (GST/HST) Regulations* (SOR/91-45): https://laws-lois.justice.gc.ca/eng/regulations/SOR-91-45/
  - Prescribed documentary requirements at the $100 and $500 thresholds
- CRA *GST/HST Memorandum 8.4 Documentary Requirements for Claiming Input Tax Credits*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/8-4/documentary-requirements-claiming-input-tax-credits.html
- CRA *GST/HST Registry* (verify a supplier's GST/HST number): https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/gst-hst-businesses/confirming-a-gst-hst-account-number.html
- CBSA *Customs Notice 24-29* - CARM cutover; the Commercial Accounting Declaration replacing the B3: https://www.cbsa-asfc.gc.ca/publications/cn-ad/cn24-29-eng.html
