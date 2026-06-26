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
- *Apply the cost-driven splits:* a tool or instrument under $500 goes to Class 12; a passenger vehicle over the cost cap goes to its own Class 10.1; incorporation costs over $3,000 go to Class 14.1
- *Bundled vs standalone:* systems software bundled with hardware follows the hardware into its class; standalone application software is its own Class 12


## Classes and rates

The classes an owner-managed CCPC most often uses:

| Class | Rate / basis | What it covers | Half-year |
|-------|--------------|----------------|-----------|
| `50` | 55% declining | computers, peripherals, networking equipment (acquired after Mar 18 2007) | yes |
| `8` | 20% declining | office furniture, photocopiers, tools costing $500 or more, equipment not in another class (the catch-all) | yes |
| `10` | 30% declining | motor vehicles, vans, light and pickup trucks under the passenger-vehicle cost cap; one shared pool | yes |
| `10.1` | 30% declining | passenger vehicles costing over the cap ($39,000 + sales taxes in 2026); each in its own class | special |
| `12` | 100% | tools costing under $500, kitchen utensils, uniforms, application software (other than systems software) | mostly no |
| `13` | straight-line over lease term + first renewal (min 5, max 40 years) | leasehold improvements | exempt |
| `14` | straight-line over remaining legal life | limited-life intangibles (patents, franchises, term licences) | no |
| `14.1` | 5% declining | goodwill, incorporation expenses over $3,000, customer lists, unlimited-life intangibles | yes |
| `54` | 30% declining | zero-emission passenger vehicles (cost capped at $61,000 + taxes) | full-expensing |
| `55` | 40% declining | zero-emission vehicles otherwise in Class 16 (taxis, courier trucks) | full-expensing |
| `53` | 50% declining | manufacturing and processing machinery and equipment | full-expensing |

The "Half-year" column notes only the year-of-acquisition rule; under the reinstated AIIP, half-year is suspended and full-expensing classes deduct 100% in year one. See [Half-year rule and AIIP](Capital-Cost-Allowance.md#half-year-rule-and-aiip), and the per-class quirks under [Special class rules](#special-class-rules).

Classes touched on but not worked through here:
- Class 1 (4%, declining): buildings; +2% allowance for non-residential, +6% for an M&P building, elected via Regulation 1101(5b.1); see CRA T4012
- Classes 43.1 / 43.2: clean-energy equipment
- Class 56: zero-emission automotive equipment

CRA's [Classes of depreciable property](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/sole-proprietorships-partnerships/report-business-income-expenses/claiming-capital-cost-allowance/classes-depreciable-property.html) page has the full list; the table above covers what an owner-managed CCPC most often touches.


## Commonly confusing cases

- *Software has three homes*: systems software bundled with hardware → the hardware's class (Class 50 for a computer); standalone application software bought outright → Class 12 (100%, but the half-year rule applies to application software); a subscription or licence of one year or less (SaaS) → not capital at all, an operating expense (`9150`); see [Expense Classification](../../Expense-Classification.md)
- *Monitors, docks, and other peripherals*: a peripheral bought and used as part of the computer → Class 50; a small standalone accessory under $500 → Class 12 (tool or instrument); a durable standalone item with no better class → Class 8. Pick a convention and apply it consistently
- *Passenger vehicle over the cost cap*: under the cap ($39,000 + taxes in 2026) → Class 10, the shared pool; over the cap → Class 10.1, each vehicle in its own class with capital cost capped, no recapture or terminal loss, and half-CCA in the year of disposition; a zero-emission passenger vehicle → Class 54 (cap $61,000 + taxes)
- *Tools and instruments around $500*: under $500 → Class 12 (100% write-off); $500 or more → Class 8 (20%). The split is by cost, not by what the tool is, so a $480 and a $520 version of the same tool are deducted very differently
- *Furniture and equipment with no named class*: office furniture, shelving, a printer, a generic machine → Class 8, the catch-all at 20%
- *Leasehold improvements*: improvements to leased premises → Class 13, straight-line over the lease term plus the first renewal (5–40 years), not a declining-balance class
- *Limited-life vs unlimited-life intangibles*: an intangible with a fixed legal life (a patent, a term licence, a franchise for a set period) → Class 14, straight-line over that life; an intangible with no fixed life (goodwill, an unlimited franchise, a customer list) → Class 14.1 at 5%
- *Incorporation and organization costs*: the first $3,000 is deducted immediately as a current expense (`8860` Professional fees), not capitalized; only the excess goes to Class 14.1
- *Buildings*: a building the corp owns → Class 1 (4%), with a +2% (non-residential) or +6% (M&P) top-up available by separate-class election; out of depth here, see CRA T4012


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
  - Schedule II - class definitions
  - Regulation 1100(1) - prescribed CCA rates by class
  - Regulation 1101(1af) - separate class prescribed for each Class 10.1 vehicle
  - Regulation 1101(5b.1) - separate-class election for non-residential building additional 2% / 6%
- Income Tax Act [s.20(16.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - terminal-loss exceptions (Class 10.1; Class 14.1 unless cessation)
- CRA T4012 - T2 Corporation Income Tax Guide: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html
- CRA Classes of depreciable property: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/sole-proprietorships-partnerships/report-business-income-expenses/claiming-capital-cost-allowance/classes-depreciable-property.html
