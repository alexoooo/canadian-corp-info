STATUS: AI GENERATED, REVIEW IN PROGRESS

# CCA Asset Classification

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) deciding which CCA class a purchase belongs in

Every depreciable purchase goes into a *class*, and the class fixes the rate and the first-year rules.  
This page covers the choice of class.  
For how the pool then depreciates (UCC, the half-year rule, AIIP, recapture) see [Capital Cost Allowance](Capital-Cost-Allowance.md).  
For the exact per-class formulas see [CCA Tracking](CCA-Tracking.md).  
Scope and limitations are on the [hub](Capital-Cost-Allowance.md).  


## How to Classify an Asset

Work the decision in order:
- *Is it depreciable property at all?* Inventory held for resale is not capital
  - Nor is a service or licence consumed within a year (SaaS, a monthly subscription)
  - Those are cost of sales or an operating expense
  - See [Expense Classification](../../../Bookkeeping/Expense-Classification.md) and [Cost Recovery](../Cost-Recovery.md)
- *Is it below the capitalization floor?* An item under the corp's de minimis policy (commonly $500) is expensed
  - Not put in a class; see [Capital Cost Allowance — capitalize-vs-expense](Capital-Cost-Allowance.md#capitalize-vs-expense-thresholds)
- *Does a specific class definition in Schedule II name it?* Most owner-managed purchases match a named class
  - A computer is Class 50, a vehicle is Class 10 / 10.1 / 54
  - A leasehold improvement is Class 13, an intangible is Class 14 / 14.1
- *If two classes could fit, the more specific definition wins:* a computer is Class 50, not the Class 8 catch-all
- *If nothing specific fits, it falls to Class 8* (the 20% catch-all)
- *Apply the cost-driven splits:* a passenger vehicle over the cost cap goes to its own Class 10.1
  - Incorporation costs over $3,000 go to Class 14.1
- *Bundled vs standalone:* systems software bundled with hardware follows the hardware into its class
  - Standalone application software is its own Class 12


## Classes and Rates

The classes an owner-managed CCPC most often uses:

| Class | Rate / basis | What it covers | Half-year |
|-------|--------------|----------------|-----------|
| `50` | 55% declining | computers and peripherals (acquired after Mar 18 2007) | full-expensing to 2026 |
| `8` | 20% declining | office furniture, photocopiers, equipment not in another class (the catch-all) | yes |
| `10` | 30% declining | motor vehicles (any cost), and passenger vehicles under the cost cap; one shared pool | yes |
| `10.1` | 30% declining | passenger vehicles over the cap ($39,000 + taxes in 2026), each in its own class | special |
| `12` | 100% | application software (other than systems software) | mostly no |
| `13` | straight-line: lease term + first renewal (5–40 years) | leasehold improvements | exempt (50% first-year cap) |
| `14` | straight-line over remaining legal life | limited-life intangibles (patents, franchises, term licences) | no |
| `14.1` | 5% declining | goodwill, incorporation expenses over $3,000, customer lists, unlimited-life intangibles | yes |
| `54` | 30% declining | zero-emission passenger vehicles (cost capped at $61,000 + taxes) | full-expensing |
| `55` | 40% declining | zero-emission vehicles otherwise in Class 16 (taxis, courier trucks) | full-expensing |
| `53` / `43` | 50% / 30% declining | M&P machinery and equipment (53 before 2026; 43 after 2025) | full-expensing |

The "Half-year" column notes only the year-of-acquisition rule.  
Under the reinstated *Accelerated Investment Incentive Property* (AIIP) rules, the half-year rule is suspended.  
A regular class gets an enhanced first-year allowance of 1.5× its normal rate.  
A full-expensing class deducts 100% in year one.  
Classes 44, 46, and 50 are fully expensed (100%, not 1.5×) for property available for use before 2027.  
That is a separate Budget 2024 measure.  
Class 13's first-year cap is Reg 1100(1)(b), not the ordinary half-year rule.  
See [Half-year rule and AIIP](Capital-Cost-Allowance.md#half-year-rule-and-aiip), and the per-class quirks under [Special class rules](#special-class-rules).

Related classes (not covered in depth here):
- Class 1 (4%, declining): buildings
  - +2% allowance for non-residential, +6% for an M&P building, elected via Regulation 1101(5b.1); see CRA T4012
- Class 3 (5%, declining) and Class 6 (10%, declining): marine and outdoor structures and certain buildings
  - Wharves, docks, breakwaters, trestles; certain older or wood-frame buildings
  - See [Example 1: Small wooden dock](#example-1-small-wooden-dock)
- Class 46 (30%, declining): data network infrastructure equipment (not Class 50)
- Classes 43.1 / 43.2: clean-energy equipment
- Class 56: zero-emission automotive equipment

CRA's [Classes of depreciable property](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/sole-proprietorships-partnerships/report-business-income-expenses/claiming-capital-cost-allowance/classes-depreciable-property.html) page has the full list.  
The table above covers what an owner-managed CCPC most often touches.  


## Commonly Confusing Cases

- *Software has three homes*:
  - Systems software bundled with hardware → the hardware's class (Class 50 for a computer)
  - Standalone application software bought outright → Class 12
    - 100%, but the half-year rule applies to application software
  - A subscription or licence of one year or less (SaaS) → not capital at all, an operating expense (`9150`)
  - See [Expense Classification](../../../Bookkeeping/Expense-Classification.md)
- *Monitors, docks, and other peripherals*: a peripheral bought and used as part of the computer → Class 50
  - A durable standalone item with no better class → Class 8
  - Pick a convention and apply it consistently
- *Passenger vehicle over the cost cap*: under the cap ($39,000 + taxes in 2026) → Class 10, the shared pool
  - Over the cap → Class 10.1, each vehicle in its own class with capital cost capped
    - No recapture or terminal loss, and half-CCA in the year of disposition
  - A zero-emission passenger vehicle → Class 54 (cap $61,000 + taxes)
- *Furniture and equipment with no named class*: office furniture, shelving, a printer, a generic machine
  - → Class 8, the catch-all at 20%
- *Leasehold improvements*: improvements to leased premises → Class 13
  - Straight-line over the lease term plus the first renewal (5–40 years), not a declining-balance class
- *Limited-life vs unlimited-life intangibles*:
  - Fixed legal life (a patent, a term licence, a franchise for a set period) → Class 14, straight-line over that life
  - No fixed life (goodwill, an unlimited franchise, a customer list) → Class 14.1 at 5%
- *Incorporation and organization costs*: the first $3,000 is deducted immediately as a current expense
  - Booked to `8860` Professional fees, not capitalized; only the excess goes to Class 14.1
- *Buildings*: a building the corp owns → Class 1 (4%)
  - A +2% (non-residential) or +6% (M&P) top-up is available by separate-class election
  - Out of depth here, see CRA T4012
- *Wharves, docks, and marine structures*: a fixed waterfront structure is named in Schedule II
  - So it never defaults to the Class 8 catch-all or to a Class 1 building
    - Class 1 names a bridge, canal, culvert, and dam, but not a wharf or dock
  - A wooden wharf → Class 6 (10%); a wharf of concrete, steel, or stone → Class 3 (5%)
  - A dock, a trestle, or a non-wooden breakwater → Class 3 (5%)
  - The Regulations define neither "wharf" nor "dock", so the label turns on what the structure is and does
  - A floating dock on pontoons is arguably Class 8 equipment, not a fixed structure
  - The water lot or its Crown lease is not depreciable in this class
  - See [Example 1: Small wooden dock](#example-1-small-wooden-dock)
- *GIFI line for a wharf or dock*: the cost goes to `1906` Wharves
  - The line the GIFI groups with docks, float walks, and marinas
  - The contra to `1907`, and the year's amortization to `8670`
  - The line is the same whether the CCA class is 3 or 6, so the GIFI presentation does not settle the class


## Worked Classification Cases

Longer scenarios that walk a classification decision end to end with the full rationale.  
The one-line cases are under [Commonly confusing cases](#commonly-confusing-cases).  
For the multi-year depreciation of a class once chosen see [CCA Worked examples](CCA-Examples.md).  

### Example 1: Small Wooden Dock <!-- [done] -->

*Scenario*:
- Waterfront-business CCPC builds a small wooden dock on poles for $5,000
- Small fishing boats (under 20 ft) and pontoon boats tie up to it
- It is not used to load or unload cargo

*Decision steps*:
- Depreciable property used to earn income? Yes, a durable fixed structure used in the business
  - Prorate the CCA for any personal or recreational use
- Below the capitalization floor (< $500)? No, the build cost is well above the floor
- Named in Schedule II? Yes, both a dock and a wharf are named
  - So it doesn't use the Class 8 catch-all or Class 1 building
  - Class 1 names a bridge, canal, culvert, and dam, not a wharf or dock
- Which named item, and what is it made of? The characterization below decides the class

*Considerations*:
- *Dock vs wharf*: a wharf is a structure where vessels lie to load and unload
  - A small, non-loading mooring for fishing boats and pontoons is the ordinary meaning of a dock → Class 3 (5%)
- *Material qualifier asymmetry*: "wharf" splits by construction
  - Wooden → Class 6 at 10%; concrete, steel, or stone → Class 3 at 5%
  - "Dock" has no material split, so being wooden does not move a dock into Class 6
- *Fixed vs floating*: on poles it is a fixed structure, not equipment
  - A floating dock on pontoons not affixed to the bottom is arguably Class 8 equipment; a separate analysis
- *Water lot*: the water lot itself, or a Crown or municipal water-lot lease, is not depreciable in this class
  - A long-term lease may instead be a Class 13 leasehold interest, tracked separately
- *Repair vs capital*: replacing a few deck boards is a current expense
  - Building the dock, or substantially rebuilding it, is a capital addition that adds to the pool
- *First-year treatment*: a regular declining-balance class, not a full-expensing class, so no 100% write-off in year one
  - A new build available for use before 2030 is AIIP
    - The half-year rule is suspended, and year one is 7.5% of cost (1.5× the 5% rate)
  - Without AIIP, the ordinary half-year rule applies: 2.5% of cost in year one
- *Materiality*: on a small cost base the dollar gap between the 5% and 10% rates is small

*Conclusion*:
- Class 3 (5%), as a dock
- Record why it is a dock (small, non-loading, small-craft mooring) in the asset register
  - Use the free-form `Note` column, so the position is documented

*Reporting*:
- Cost to `1906` Wharves (the line the GIFI groups with docks, float walks, and marinas)
  - Contra to `1907`, amortization to `8670`
- The GIFI line is the same whether the class is 3 or 6, so it does not settle the class
- For the asset register and the year-by-year pool, see [CCA Tracking](CCA-Tracking.md)


### Example 2: Water Well Upgrade <!-- [done] -->

*Scenario*:
- A CCPC operating from a property that draws its own water replaces an old dug well
  - The replacement is a modern drilled well costing a few thousand dollars
- The old well was unregistered; after the upgrade it is a registered well with greater capacity and a longer life
- The well supplies the corp's business operations, not a residence or personal use

*Decision steps*:
- Depreciable property used to earn income? Yes
  - The well's physical components are durable property used in the business
- Repair or capital? A betterment, not a like-for-like fix
  - A new, higher-capacity, registered well, so the equipment side is capital, not a current-expense repair
- Named in Schedule II? No class names a water well, so the equipment falls to the Class 8 catch-all
- Split the cost: separate the tangible equipment from the drilling and boring labour, which are treated differently

*Considerations*:
- *Equipment*: casing, cribwork or liner, well screen, piping, and the pump are Class 8
  - Tangible property not named in any other class falls in the Class 8 catch-all at 20% (CRA IT-472)
- *Drilling and boring*: the drilling or boring labour itself is a current expense
  - Deductible in the year and not capitalized, even when it is part of a capital project (CRA IT-472)
- *Repair vs betterment*: the equipment is capital because the upgrade creates a materially better asset
  - Only the boring cost escapes capitalization, and it does so by the IT-472 rule, not by a repair argument
- *Registration or permit fee*: incidental, so expense it or fold it into the equipment cost
- *Not oil or gas*: a petroleum or natural-gas well is a resource asset, a separate regime
  - Deducted through the CDE or CEE pools, not CCA
- *Business use only*: the corp must own the property and the well must serve its income-earning use
  - A well on a personal or shareholder-use property is not the corp's deductible cost
  - It raises a shareholder-benefit issue
- *Dual-use property*: where an on-site residence shares the water system, split the cost
  - The corp depreciates only its business-use share
  - The residential owner funds the rest (directly or through `Due from shareholder`)
  - That keeps the corp from carrying a s.15(1) benefit
  - *Allocation basis*: a reasonable, consistent, documented basis (ITA [s.67](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-67.html)), not metered precision
    - A relative-value or area split backed by an independent appraisal qualifies
    - Water use is the more precise key only where it materially differs and is measurable at reasonable cost
  - *Estimating the share*: where metering is impractical or the business is not yet operating, use a documented proxy
    - A plumbing fixture-unit count is acceptable, revisited as use stabilizes
    - The business-use percentage is applied afresh each year and climbs as commercial operations come online
  - *Directly attributable costs*: a cost belonging wholly to one side is assigned to it in full
    - A marina-only pump, a repair to the house; not run through the shared split
  - *Ownership*: co-ownership on title (tenants in common) under an agreement allocating the shared infrastructure
    - The agreement (well, septic, access) lets the corp depreciate its co-owner share and documents the split
    - Keep each owner's capital contribution aligned with their allocated portion
    - That keeps the corp's investment in the commercial part
  - *Timing*: if the commercial operation the well serves is not yet running, available-for-use gates the CCA
    - CCA on the business share waits, separately from the allocation percentage
    - See [Available-for-use rule](Capital-Cost-Allowance.md#available-for-use-rule)
- *First-year treatment*: Class 8 is AIIP-eligible
  - A well available for use before 2030 deducts 1.5 × 20% = 30% of the equipment cost in year one
  - The half-year rule is suspended

*Conclusion*:
- Equipment to Class 8 (20%); the drilling and boring labour deducted currently
- Record the equipment-versus-boring split and the betterment rationale in the asset register's free-form `Note` column

*Reporting*:
- Equipment cost to `1740` Machinery, equipment, furniture, and fixtures, contra to `1741`, amortization to `8670`
- Drilling and boring labour to a current expense line for the year, not capitalized
  - For example repairs and maintenance, `8960`
- For the asset register and the year-by-year pool, see [CCA Tracking](CCA-Tracking.md)


## Special Class Rules

- *Class 10.1*: each vehicle is a separate class; capped capital cost; no recapture or terminal loss
  - Half-CCA on disposition (see [Recapture and terminal loss](Capital-Cost-Allowance.md#recapture-and-terminal-loss))
- *Class 12 with half-year*: some Class 12 items *are* subject to the half-year rule even though most are not
  - Application software, films, dies, jigs, moulds, and the cutting or shaping part of a machine
- *Class 13*: straight-line over (lease term + first renewal), minimum 5 years, maximum 40 years
  - Recompute the schedule if the lease is amended
- *Class 14*: straight-line over the actual remaining legal life of the intangible
- *Class 14.1*: 5% declining; pre-2017 CEC transitional balances use 7% (before 2027 year-ends; 5% after)
  - The first $3,000 of incorporation expenses is a one-time deduction, not Class 14.1
- *Class 50 vs Class 12 vs Class 8*: standalone application software is Class 12 (100%)
  - Systems software bundled with hardware is Class 50
  - Hardware peripherals not bundled may go to Class 50 or Class 8
    - Depending on durability and the corp's capitalization policy


## Related

- [Capital Cost Allowance](Capital-Cost-Allowance.md)
- [CCA Worked examples](CCA-Examples.md)
- [CCA Tracking](CCA-Tracking.md)
- [Cost Recovery](../Cost-Recovery.md)
- [Expense Classification](../../../Bookkeeping/Expense-Classification.md)
- [Glossary](../../../Overview/Glossary.md)


## Citations

- Income Tax Regulations (C.R.C., c. 945): https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/
  - Schedule II - class definitions (incl. Class 3 non-wooden and Class 6 wooden wharves, docks, and breakwaters)
  - Regulation 1100(1) - prescribed CCA rates by class
  - Regulation 1101(1af) - separate class prescribed for each Class 10.1 vehicle
  - Regulation 1101(5b.1) - separate-class election for non-residential building additional 2% / 6%
- Income Tax Act [s.20(16.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - terminal-loss exceptions (Class 10.1; Class 14.1 unless cessation)
- CRA T4012 - T2 Corporation Income Tax Guide: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html
- CRA Classes of depreciable property: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/sole-proprietorships-partnerships/report-business-income-expenses/claiming-capital-cost-allowance/classes-depreciable-property.html
- CRA IT-472 (archived) - Capital Cost Allowance, Class 8 property: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it472/archived-capital-cost-allowance-class-8-property.html
  - Water-well equipment in Class 8; the drilling cost a current expense
- CRA RC4088 - General Index of Financial Information (GIFI), for the wharf line `1906`: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088.html
