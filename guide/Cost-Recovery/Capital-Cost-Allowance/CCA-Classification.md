STATUS: AI GENERATED, REVIEW IN PROGRESS

# CCA asset classification

**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) deciding which CCA class a purchase belongs in.  

Every depreciable purchase goes into a *class*, and the class fixes the rate and the first-year rules.  
This page covers the choice of class; for how the pool then depreciates (UCC, the half-year rule, AIIP, recapture) see [Capital Cost Allowance](Capital-Cost-Allowance.md), and for the exact per-class formulas see [CCA Tracking](CCA-Tracking.md).  
Scope and limitations are on the [hub](Capital-Cost-Allowance.md).  


## How to classify an asset

Work the decision in order:
- *Is it depreciable property at all?* Inventory held for resale, and a service or licence consumed within a year (SaaS, a monthly subscription), are not capital; they are cost of sales or an operating expense. See [Expense Classification](../../Expense-Classification.md) and [Cost Recovery](../Cost-Recovery.md)
- *Is it below the capitalization floor?* An item under the corp's de minimis policy (commonly $500) is expensed, not put in a class. See [Capital Cost Allowance — capitalize-vs-expense](Capital-Cost-Allowance.md#capitalize-vs-expense-thresholds)
- *Does a specific class definition in Schedule II name it?* Most owner-managed purchases match a named class: a computer is Class 50, a vehicle is Class 10 / 10.1 / 54, a leasehold improvement is Class 13, an intangible is Class 14 / 14.1
- *If two classes could fit, the more specific definition wins:* a computer is Class 50, not the Class 8 catch-all
- *If nothing specific fits, it falls to Class 8* (the 20% catch-all)
- *Apply the cost-driven splits:* a passenger vehicle over the cost cap goes to its own Class 10.1; incorporation costs over $3,000 go to Class 14.1
- *Bundled vs standalone:* systems software bundled with hardware follows the hardware into its class; standalone application software is its own Class 12


## Classes and rates

The classes an owner-managed CCPC most often uses:

| Class | Rate / basis | What it covers | Half-year |
|-------|--------------|----------------|-----------|
| `50` | 55% declining | computers, peripherals, networking equipment (acquired after Mar 18 2007) | yes |
| `8` | 20% declining | office furniture, photocopiers, equipment not in another class (the catch-all) | yes |
| `10` | 30% declining | motor vehicles, vans, light and pickup trucks under the passenger-vehicle cost cap; one shared pool | yes |
| `10.1` | 30% declining | passenger vehicles costing over the cap ($39,000 + sales taxes in 2026); each in its own class | special |
| `12` | 100% | application software (other than systems software) | mostly no |
| `13` | straight-line over lease term + first renewal (min 5, max 40 years) | leasehold improvements | exempt |
| `14` | straight-line over remaining legal life | limited-life intangibles (patents, franchises, term licences) | no |
| `14.1` | 5% declining | goodwill, incorporation expenses over $3,000, customer lists, unlimited-life intangibles | yes |
| `54` | 30% declining | zero-emission passenger vehicles (cost capped at $61,000 + taxes) | full-expensing |
| `55` | 40% declining | zero-emission vehicles otherwise in Class 16 (taxis, courier trucks) | full-expensing |
| `53` | 50% declining | manufacturing and processing machinery and equipment | full-expensing |

The "Half-year" column notes only the year-of-acquisition rule.  
Under the reinstated *Accelerated Investment Incentive Property* (AIIP) rules, the half-year rule is suspended: a regular class gets an enhanced first-year allowance of 1.5× its normal rate, and a full-expensing class deducts 100% in year one.  
See [Half-year rule and AIIP](Capital-Cost-Allowance.md#half-year-rule-and-aiip), and the per-class quirks under [Special class rules](#special-class-rules).

Related classes (not covered in depth here):
- Class 1 (4%, declining): buildings; +2% allowance for non-residential, +6% for an M&P building, elected via Regulation 1101(5b.1); see CRA T4012
- Class 3 (5%, declining) and Class 6 (10%, declining): marine and outdoor structures (wharves, docks, breakwaters, trestles) and certain older or wood-frame buildings; see [Example 1: Small wooden dock](#example-1-small-wooden-dock)
- Classes 43.1 / 43.2: clean-energy equipment
- Class 56: zero-emission automotive equipment

CRA's [Classes of depreciable property](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/sole-proprietorships-partnerships/report-business-income-expenses/claiming-capital-cost-allowance/classes-depreciable-property.html) page has the full list; the table above covers what an owner-managed CCPC most often touches.


## Commonly confusing cases

- *Software has three homes*: systems software bundled with hardware → the hardware's class (Class 50 for a computer); standalone application software bought outright → Class 12 (100%, but the half-year rule applies to application software); a subscription or licence of one year or less (SaaS) → not capital at all, an operating expense (`9150`); see [Expense Classification](../../Expense-Classification.md)
- *Monitors, docks, and other peripherals*: a peripheral bought and used as part of the computer → Class 50; a durable standalone item with no better class → Class 8. Pick a convention and apply it consistently
- *Passenger vehicle over the cost cap*: under the cap ($39,000 + taxes in 2026) → Class 10, the shared pool; over the cap → Class 10.1, each vehicle in its own class with capital cost capped, no recapture or terminal loss, and half-CCA in the year of disposition; a zero-emission passenger vehicle → Class 54 (cap $61,000 + taxes)
- *Furniture and equipment with no named class*: office furniture, shelving, a printer, a generic machine → Class 8, the catch-all at 20%
- *Leasehold improvements*: improvements to leased premises → Class 13, straight-line over the lease term plus the first renewal (5–40 years), not a declining-balance class
- *Limited-life vs unlimited-life intangibles*: an intangible with a fixed legal life (a patent, a term licence, a franchise for a set period) → Class 14, straight-line over that life; an intangible with no fixed life (goodwill, an unlimited franchise, a customer list) → Class 14.1 at 5%
- *Incorporation and organization costs*: the first $3,000 is deducted immediately as a current expense (`8860` Professional fees), not capitalized; only the excess goes to Class 14.1
- *Buildings*: a building the corp owns → Class 1 (4%), with a +2% (non-residential) or +6% (M&P) top-up available by separate-class election; out of depth here, see CRA T4012
- *Wharves, docks, and marine structures*: a fixed waterfront structure is named in Schedule II, so it never defaults to the Class 8 catch-all or to a Class 1 building (Class 1 names a bridge, canal, culvert, and dam, but not a wharf or dock); a wooden wharf → Class 6 (10%); a wharf of concrete, steel, or stone → Class 3 (5%); a dock, a trestle, or a non-wooden breakwater → Class 3 (5%); the Regulations define neither "wharf" nor "dock", so the label turns on what the structure is and does; a floating dock on pontoons is arguably Class 8 equipment, not a fixed structure; the water lot or its Crown lease is not depreciable in this class; see [Example 1: Small wooden dock](#example-1-small-wooden-dock)
- *GIFI line for a wharf or dock*: the cost goes to `1906` Wharves (the line the GIFI groups with docks, float walks, and marinas), the contra to `1907`, and the year's amortization to `8670`; the line is the same whether the CCA class is 3 or 6, so the GIFI presentation does not settle the CCA class


## Worked classification cases

Longer scenarios that walk a classification decision end to end with the full rationale; the one-line cases are under [Commonly confusing cases](#commonly-confusing-cases), and for the multi-year depreciation of a class once chosen see [CCA Worked examples](CCA-Examples.md).

### Example 1: Small wooden dock <!-- [done] -->

*Scenario*:
- Waterfront-business CCPC builds a small wooden dock on poles for a few thousand dollars
- Small fishing boats (under 20 ft) and pontoon boats tie up to it, cost $5,000
- It is not used to load or unload cargo

*Decision steps*:
- Depreciable property used to earn income? Yes, a durable fixed structure used in the business; prorate the CCA for any personal or recreational use
- Below the capitalization floor (< $500)? No, a built structure is capital, not a current expense
- Named in Schedule II? Yes, both a dock and a wharf are named, so it doesn't use the Class 8 catch-all or Class 1 building (Class 1 names a bridge, canal, culvert, and dam, not a wharf or dock)
- Which named item, and what is it made of? The characterization below decides the class

*Considerations*:
- *Dock vs wharf*: a wharf is a structure where vessels lie to load and unload; a small, non-loading mooring for fishing boats and pontoons is the ordinary meaning of a dock → Class 3 (5%)
- *Material qualifier asymmetry*: "wharf" splits by construction (wooden → Class 6 at 10%, concrete, steel, or stone → Class 3 at 5%), but "dock" has no material split, so being wooden does not move a dock into Class 6
- *Fixed vs floating*: on poles it is a fixed structure, not equipment; a floating dock on pontoons that is not affixed to the bottom is arguably Class 8 equipment instead, a separate analysis
- *Water lot*: the water lot itself, or a Crown or municipal water-lot lease, is not depreciable in this class; a long-term lease may instead be a Class 13 leasehold interest, tracked separately
- *Repair vs capital*: replacing a few deck boards is a current expense; building the dock, or substantially rebuilding it, is a capital addition that adds to the pool
- *First-year treatment*: a regular declining-balance class, not a full-expensing class, so no 100% write-off in year one
  - A new build available for use before 2030 is AIIP: the half-year rule is suspended, and year one is 7.5% of cost (1.5× the 5% rate)
  - Without AIIP, the ordinary half-year rule applies: 2.5% of cost in year one
- *Materiality*: on a small cost base the dollar gap between the 5% and 10% rates is small

*Conclusion*:
- Class 3 (5%), as a dock
- Record why it is a dock (small, non-loading, small-craft mooring) in the asset register's free-form `Note` column, so the position is documented

*Reporting*:
- Cost to `1906` Wharves (the line the GIFI groups with docks, float walks, and marinas), contra to `1907`, amortization to `8670`
- The GIFI line is the same whether the class is 3 or 6, so it does not settle the class
- For the asset register and the year-by-year pool, see [CCA Tracking](CCA-Tracking.md)


### Example 2: Water well upgrade

*Scenario*:
- A CCPC operating from a property that draws its own water replaces an old dug well with a modern drilled well for a few thousand dollars
- The old well was unregistered; after the upgrade it is a registered well with greater capacity and a longer life
- The well supplies the corp's business operations, not a residence or personal use

*Decision steps*:
- Depreciable property used to earn income? Yes, the well's physical components are durable property used in the business
- Repair or capital? A betterment, not a like-for-like fix: a new, higher-capacity, registered well, so the equipment side is capital, not a current-expense repair
- Named in Schedule II? No class names a water well, so the equipment falls to the Class 8 catch-all
- Split the cost: separate the tangible equipment from the drilling and boring labour, which are treated differently

*Considerations*:
- *Equipment*: casing, cribwork or liner, well screen, piping, and the pump are tangible property not named in any other class, so they fall in the Class 8 catch-all at 20% (CRA IT-472)
- *Drilling and boring*: the drilling or boring labour itself is a current expense, deductible in the year and not capitalized, even when it is part of a capital project (CRA IT-472)
- *Repair vs betterment*: the equipment is capital because the upgrade creates a materially better asset; only the boring cost escapes capitalization, and it does so by the IT-472 rule, not by a repair argument
- *Registration or permit fee*: incidental, so expense it or fold it into the equipment cost
- *Not oil or gas*: a petroleum or natural-gas well is a resource asset deducted through the CDE or CEE pools, not CCA, a separate regime
- *Business use only*: the treatment holds only if the corp owns the property and the well serves the corp's income-earning use; a well on a personal or shareholder-use property is not the corp's deductible cost and raises a shareholder-benefit issue
- *First-year treatment*: Class 8 is AIIP-eligible, so a well available for use before 2030 deducts 1.5 × 20% = 30% of the equipment cost in year one, with the half-year rule suspended

*Conclusion*:
- Equipment to Class 8 (20%); the drilling and boring labour deducted currently
- Record the equipment-versus-boring split and the betterment rationale in the asset register's free-form `Note` column

*Reporting*:
- Equipment cost to `1740` Machinery, equipment, furniture, and fixtures, contra to `1741`, amortization to `8670`
- Drilling and boring labour to a current expense line for the year (for example repairs and maintenance, `8960`), not capitalized
- For the asset register and the year-by-year pool, see [CCA Tracking](CCA-Tracking.md)


## Special class rules

- *Class 10.1*: each vehicle is a separate class; capped capital cost; no recapture or terminal loss; half-CCA on disposition (see [Recapture and terminal loss](Capital-Cost-Allowance.md#recapture-and-terminal-loss))
- *Class 12 with half-year*: application software, films, dies, jigs, moulds, and the cutting or shaping part of a machine *are* subject to the half-year rule even though most of Class 12 is not
- *Class 13*: straight-line over (lease term + first renewal), minimum 5 years, maximum 40 years; recompute the schedule if the lease is amended
- *Class 14*: straight-line over the actual remaining legal life of the intangible
- *Class 14.1*: 5% declining; pre-2017 CEC transitional balances use 7%; the first $3,000 of incorporation expenses is a one-time deduction, not Class 14.1
- *Class 50 vs Class 12 vs Class 8*: standalone application software is Class 12 (100%); systems software bundled with hardware is Class 50; hardware peripherals not bundled may go to Class 50 or Class 8 depending on durability and the corp's capitalization policy


## Related

- [Capital Cost Allowance](Capital-Cost-Allowance.md)
- [CCA Worked examples](CCA-Examples.md)
- [CCA Tracking](CCA-Tracking.md)
- [Cost Recovery](../Cost-Recovery.md)
- [Expense Classification](../../Expense-Classification.md)
- [Glossary](../../Glossary.md)


## Citations

- Income Tax Regulations (C.R.C., c. 945): https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/
  - Schedule II - class definitions (incl. Class 3 non-wooden and Class 6 wooden wharves, docks, and breakwaters)
  - Regulation 1100(1) - prescribed CCA rates by class
  - Regulation 1101(1af) - separate class prescribed for each Class 10.1 vehicle
  - Regulation 1101(5b.1) - separate-class election for non-residential building additional 2% / 6%
- Income Tax Act [s.20(16.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - terminal-loss exceptions (Class 10.1; Class 14.1 unless cessation)
- CRA T4012 - T2 Corporation Income Tax Guide: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html
- CRA Classes of depreciable property: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/sole-proprietorships-partnerships/report-business-income-expenses/claiming-capital-cost-allowance/classes-depreciable-property.html
- CRA IT-472 (archived) - Capital Cost Allowance, Class 8 property (water-well equipment in Class 8; the drilling cost a current expense): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it472/archived-capital-cost-allowance-class-8-property.html
- CRA RC4088 - General Index of Financial Information (GIFI), for the wharf line `1906`: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088.html
