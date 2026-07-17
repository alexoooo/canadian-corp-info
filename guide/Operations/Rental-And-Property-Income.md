STATUS: AI GENERATED, REVIEW IN PROGRESS

# Rental and Property Income

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) that owns real property or rents space out
  - Or deciding whether rent belongs in the corporation
- Sorting out whether the rent is *active business income* or *income from property*, and what each label costs

**TLDR**:
- Rent earned by a CCPC is usually *income from property*
  - Taxed like investment income (50.2% Ontario 2026, partly refundable), no small business deduction
- The dividing lines:
  - A rental operation with more than five full-time employees is active
  - Rent that is incidental to an active business stays active
  - Rent from an associated corporation's active business is deemed active
- Rental-property CCA cannot create or increase a rental loss (Reg 1100(11))
- HST splits by use: commercial rent is taxable (charge HST, claim ITCs)
  - Long-term residential rent is exempt (no HST, no ITCs)
- Co-owned property books each owner's share of costs by their interest
  - A documented, professionally-anchored allocation is what matters

Limitations:
- Buying, holding, and selling the real property itself is out of scope; this page covers the rent's character and flow
  - CCA classes, recapture, and the capital gain on sale are [Cost Recovery](Cost-Recovery/Cost-Recovery.md) and [CCA](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md) territory
- Principal-residence and personal-use angles of corporately-held property are shareholder-benefit territory
  - The owner living in it; see [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md)
- Short-term accommodation (Airbnb-style, HST-taxable, potentially a service business) is out of scope
- The following is my understanding as of 2026


## Rate Gap by Character

The rate gap is the whole story (see [Active vs investment income](../Overview/Small-Business-Tax.md#active-vs-investment-income)):
- *Active business income*: 12.2% up to the business limit (Ontario 2026)
- *Income from property*: 50.2%, of which 30⅔% is refundable through [NERDTOH](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md) when non-eligible dividends are paid
  - Integration, but with cash locked up until then
- Property income also feeds the passive-income grind of the business limit
  - Once *adjusted aggregate investment income* passes $50,000
  - Rental income inside an operating corporation can therefore shrink the SBD on the consulting income too

On the T2, property-income rent flows through Schedule 7 into aggregate investment income.  
Active rent is just revenue (see [T2 Schedules](../Filing-And-CRA/T2-Schedules.md#investment-income-schedules)).  


## Specified Investment Business

A business whose *principal purpose* is deriving income from property is a *specified investment business*.  
Property income here means rent, interest, dividends, royalties (ITA [s.125(7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html)).  
It is excluded from the small business deduction no matter how much work it takes:
- Effort does not convert it: managing tenants, repairs, and leases full-time is still deriving income from property
- The escape hatch is scale: *more than five full-time employees* throughout the year makes it an active business
  - The count needs employees, not contractors; part-timers do not add up to full-timers
- An associated corporation can provide the services that would otherwise need those employees
  - That also qualifies the business as active
- The test runs per business, per year
  - Principal purpose is assessed from what the business actually did with its assets and time

One or two rental properties inside or beside a consulting CCPC are nowhere near the employee threshold.  
That rent is property income, planned for as such.  


## Rent That Stays Active

Two situations keep rent out of the property-income bucket:

*Incidental rent* — the property serves an active business and the rent is a by-product:
- Subletting a spare office in premises the corporation occupies for its consulting work
- Renting out capacity the business holds for its own operations (a bay, a yard, storage) in slack periods
- The rent is income *pertaining to or incident to* the active business, not a separate rental business
  - Part of the s.125(7) *income of the corporation for the year from an active business* definition

*Rent from an associated corporation* (ITA [s.129(6)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html)):
- Where a holdco rents property to an associated operating company, the rent can be deemed active income to the holdco
  - The deeming applies where the rent is deductible against the opco's active business income
- This is the standard structure for holding business premises outside the operating corporation
  - The rate on the rent is preserved

The dividing line for incidental rent is proportion and purpose.  
A floor rented out in a building bought mostly to rent is a rental business with an owner-occupied corner.  
It is not an active business with incidental rent.  


## Co-Owned and Mixed-Use Property

Real property often arrives shared.  
The corporation may be on title with other owners (tenants-in-common).  
Or one property may serve both the corporation's own operations and third-party tenants.  

Co-ownership:
- Each co-owner reports its share of the rent and deducts its share of the costs according to its ownership interest
- Where the interests or the cost-sharing are not uniform, anchor the split in something defensible and stable
  - Different owners funding different components is the typical case
  - The registered interests, an appraisal-based allocation, or a written co-ownership agreement
  - Professional endorsement of the method is worth more than theoretical precision
- Keep the corporation's share flowing through its own books at its own percentage
  - Do not net other owners' costs through the corporate ledger

Mixed use by the corporation itself:
- Split operating costs between own-use (against the active business) and rental-use (against the rental income)
  - Use a reasonable, documented basis; floor area and appraised relative value are the common anchors
- Consistency year over year matters more than which reasonable key is chosen

CCA needs extra care on the rental side:
- CCA on a rental property cannot create or increase a net rental loss (Reg 1100(11))
  - The claim is capped at the rental income remaining after expenses
- Each rental building acquired for $50,000 or more sits in its own CCA class (Reg 1101(1ac))
  - The Reg 1100(11) loss cap applies to rental properties in aggregate
  - Within the cap, one building's CCA can shelter another's income
  - The separate class instead keeps recapture and terminal loss per building when one is sold
- The discretionary-claim planning is otherwise as usual: see [Discretionary CCA](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md#discretionary-cca)


## HST

The HST character follows the use of the space, not the corporation's registration:
- *Commercial rent*: taxable — charge HST on the rent, claim ITCs on the property's inputs (see [HST](HST.md))
- *Long-term residential rent*: exempt — no HST charged, and no ITCs on the related inputs
  - A registrant with both kinds of space apportions its ITCs
- Exempt residential rent also stays out of the Quick Method remittance base and the small-supplier threshold
  - Those count *taxable* supplies

A property moving between commercial and residential use can trigger HST self-supply and change-in-use rules.  
That is professional-advice territory beyond this page.  


## Scenario Table

| Scenario | Character | Where it lands |
|---|---|---|
| Consulting CCPC sublets a spare office in its own premises | active (incidental) | ordinary revenue, SBD-eligible |
| CCPC owns a condo rented to a long-term tenant | property income | Schedule 7 / AII; HST-exempt |
| CCPC owns a commercial unit rented to a third party | property income | Schedule 7 / AII; HST-taxable |
| Holdco rents premises to its associated opco | deemed active (s.129(6)) | ordinary revenue |
| Corporation runs rentals with 6+ full-time employees | active business | SBD-eligible |

Bookkeeping runs through `Real estate rental revenue` (`8141`).  
The property's costs stay on their ordinary lines: `9180` property taxes, `8690` insurance, `8960` repairs, `8710` interest.  
Keep a per-property view (sub-accounts or a schedule) so the Reg 1100(11) cap and any apportionments can be shown.  


## Related

- [Small Business Tax Overview](../Overview/Small-Business-Tax.md) (active vs investment income)
- [ERDTOH and NERDTOH](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md) (the refundable-tax cycle the rent joins)
- [Capital Cost Allowance](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)
- [HST](HST.md)
- [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md) (corporate property used personally)
- [Capital vs Income Character](../Investments/Capital-Vs-Income-Character.md) (the parallel character question for securities)
- [T2 Schedules](../Filing-And-CRA/T2-Schedules.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.125(7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - definition of *specified investment business* (principal purpose, more-than-five-employees exception)
    - Also *income of the corporation for the year from an active business* (the pertains-to-or-incident-to inclusion)
  - [s.129(6)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - rent from an associated corporation's active business deemed active
  - [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - passive-income grind of the business limit
- Income Tax Regulations (C.R.C., c. 945):
  - Reg 1100(11) - rental-property CCA limited to net rental income
  - Reg 1101(1ac) - separate class per rental building of $50,000 or more
- Excise Tax Act (R.S.C., 1985, c. E-15): Schedule V, Part I - exemption for long-term residential rent
- CRA - IT-73R6 *The Small Business Deduction* (archived) - specified investment business and the more-than-five-employees test: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it73r6.html


## TODO

- Verify the more-than-five-full-time-employees jurisprudence summary before sign-off
  - 5.x part-timers do not qualify; the *489599 BC Ltd* / *Baker* line of cases
- Verify the s.129(6) description; confirm scope and wording
  - The deeming covers income derived from amounts deductible against the associated corp's active business income
- Verify the incidental-rent framing against the s.125(7) active-business definition and IT-73R6's examples
- Verify Reg 1100(11)'s exceptions (principal-business corporations) and whether they could ever apply to a small CCPC
- Verify the ETA Schedule V residential-rent exemption citation (Part I, s.6)
  - Also the ITC-apportionment obligation for mixed buildings
- Replace the IT-73R6 pointer if CRA has folio-ized the small business deduction chapter
