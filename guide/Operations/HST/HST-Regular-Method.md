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
- Line 101: sales and other revenue, including zero-rated and exempt supplies, excluding GST/HST and PST
  - Online filing can populate this total from lines 90 and 91 ([CRA RC4022][return-lines])
- Line 105: GST/HST collected and collectible plus adjustments that increase net tax
- Line 108: ITCs plus adjustments that reduce net tax
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

Capital purchases and later changes in use follow the property-specific rules below.  


## Capital Purchases

For capital *personal* property, such as computers and vehicles, measure use in commercial activities:
- *Over 50%*: claim the full ITC on the GST/HST portion at acquisition, subject to the usual ITC conditions
  - Capitalize the net cost (excluding HST) as the *capital cost* for the appropriate CCA class
- *50% or less*: no ITC
  - Capitalize the full gross cost including HST

For a passenger vehicle in Class 10.1, the ITC is additionally capped under ETA s.201.  
The prescribed-amount ceiling matches the income-tax capital-cost cap.  
The formula limits the ITC to the HST that would have applied to the $39,000 ceiling, not the actual price.  

A change in commercial use (s.199(3) / s.200(2)) triggers a deemed ITC adjustment in the year of change:
- Use drops from over 50% to 50% or less: a deemed sale (s.200(2)) claws back the prior ITC
  - The deemed tax is based on the property's *basic tax content* at that time
- Use rises from 50% or less to over 50%: a deemed acquisition (s.199(3)) grants an ITC
  - The deemed tax is based on the property's basic tax content at that time

Capital *real* property has a separate acquisition test for a corporation that is not a financial institution:
- Commercial use of 10% or less: no ITC
- Over 10% but under 90%: ITC in proportion to commercial use
- 90% or more: full ITC, subject to the usual conditions

Only unrecoverable GST/HST forms part of the property's cost.  
Real-property changes in use follow [ETA s.206](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-206.html).  
The acquisition percentages are set out in [CRA RC4022, capital real property][return-lines].  
Residential rental use is generally exempt activity; owning a residence does not invoke the vehicle's 50% test.  

For the per-class CCA mechanics that consume the resulting net capital cost, see [Capital Cost Allowance](../Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md).  


## Imports

GST on imported commercial goods:
- CBSA collects the 5% GST (federal HST component), generally on value including duties and excise taxes
  - Reported on the *Commercial Accounting Declaration*
  - The declaration replaced Form B3 when CARM became the system of record in October 2024 (Customs Notice 24-29)
- A registered importer can claim an ITC for this GST if the commercial-use and documentation conditions are met
  - The Commercial Accounting Declaration in the CARM Client Portal is the documentary support
  - A broker's statement built from it works too
- Under a *Quick Method* election this holds only for imported capital property
  - Import GST on operating inputs earns no ITC (see [HST Quick Method](HST-Quick-Method.md))
- If the corp is not registered, import GST forms part of landed cost
  - It is capitalized into inventory or capital cost
  - See [Inventory](../Cost-Recovery/Inventory-And-COGS.md#imported-goods-and-fx) and [Capital Cost Allowance](../Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)

The provincial HST component is separate from the border GST:
- A regular-method registrant importing goods exclusively for commercial activities generally need not self-assess it
  - ETA [s.220.07(2)(a)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-220.07.html)
  - The exception excludes specified motor vehicles and Quick Method users
- If provincial self-assessment is required, a registrant reports it on line 405
  - Claim an ITC only to the extent the applicable rules allow; it is not automatically a full offset
- Check [CRA's imports guidance][imports] and the statutory exception before posting provincial tax

Import HST on services and intangibles:
- *Self-assessed* by the recipient under ETA [s.218.1](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-218.1.html)
  - When an imported service is acquired for use otherwise than exclusively in commercial activity
- For a typical CCPC using imported services entirely in commercial activity, no entry is required
  - E.g. AWS hosting, a US-based SaaS subscription supporting taxable Canadian supplies
  - ETA [s.217](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-217.html) excludes a service or intangible
    acquired *exclusively* for commercial activities from the definition of an imported taxable supply
  - So no Division IV tax arises at all; it is not tax that arises and is then cancelled by an offsetting ITC
- Where the imported service supports exempt supplies (wholly or partly), the self-assessment is real
  - Net tax increases; out of scope here

Imports in foreign currency:
- CBSA converts the customs value using the exchange rate on the *date of direct shipment* to Canada
  - [CBSA Memorandum D13-2-3](https://www.cbsa-asfc.gc.ca/publications/dm-md/d13/d13-2-3-eng.html), paragraph 2
  - This is the dollar figure on the Commercial Accounting Declaration
- Book the eligible ITC from the actual CAD tax charged, not the customs value; do not retranslate the tax

[return-lines]: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4022/general-information-gst-hst-registrants.html
[imports]: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/gst-hst-businesses/charge-collect-imports-exports.html


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
