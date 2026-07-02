STATUS: AI GENERATED, REVIEW IN PROGRESS

# Rental and Property Income

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) that owns real property, rents space out, or is deciding whether rent belongs in the corporation
- Sorting out whether the rent is *active business income* or *income from property*, and what each label costs

**TLDR**:
- Rent earned by a CCPC is usually *income from property*: taxed like investment income (50.2% Ontario 2026, partly refundable), no small business deduction
- The dividing lines: a rental operation with more than five full-time employees is active; rent that is incidental to an active business stays active; rent from an associated corporation's active business is deemed active
- Rental-property CCA cannot create or increase a rental loss (Reg 1100(11))
- HST splits by use: commercial rent is taxable (charge HST, claim ITCs); long-term residential rent is exempt (no HST, no ITCs)
- Co-owned property books each owner's share of costs by their interest; a documented, professionally-anchored allocation is what matters

Limitations:
- Buying, holding, and selling the real property itself (CCA classes, recapture, capital gain on sale) is [Cost Recovery](Cost-Recovery/Cost-Recovery.md) and [CCA](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md) territory; this page covers the character and flow of the rent
- Principal-residence and personal-use angles of corporately-held property (owner living in it) are shareholder-benefit territory; see [Owner-corporation transactions](Owner-Corporation-Transactions.md)
- Short-term accommodation (Airbnb-style, HST-taxable, potentially a service business) is out of scope
- The following is my understanding as of 2026


## Why the character matters

The rate gap is the whole story (see [Active vs investment income](Small-Business-Tax-Overview.md#active-vs-investment-income)):
- *Active business income*: 12.2% up to the business limit (Ontario 2026)
- *Income from property*: 50.2%, of which 30⅔% is refundable through [NERDTOH](Dividends/ERDTOH-NERDTOH.md) when non-eligible dividends are paid — integration, but with cash locked up until then
- Property income also feeds the passive-income grind of the business limit once *adjusted aggregate investment income* passes $50,000, so rental income inside an operating corporation can shrink the SBD on the consulting income too

On the T2, property-income rent flows through Schedule 7 into aggregate investment income; active rent is just revenue (see [T2 Schedules](T2-Schedules.md#investment-income-schedules)).  


## Specified investment business

A business whose *principal purpose* is deriving income from property (rent, interest, dividends, royalties) is a *specified investment business* (ITA [s.125(7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html)) — excluded from the small business deduction no matter how much work it takes:
- Effort does not convert it: managing tenants, repairs, and leases full-time is still deriving income from property
- The escape hatch is scale: *more than five full-time employees* throughout the year makes it an active business (the count needs employees, not contractors; part-timers do not add up to full-timers)
- An associated corporation providing the services that would otherwise need those employees also qualifies the business as active
- The test runs per business, per year: principal purpose is assessed from what the business actually did with its assets and time

One or two rental properties inside or beside a consulting CCPC are nowhere near the employee threshold: that rent is property income, planned for as such.  


## Rent that stays active

Two situations keep rent out of the property-income bucket:

*Incidental rent* — the property serves an active business and the rent is a by-product:
- Subletting a spare office in premises the corporation occupies for its consulting work
- Renting out capacity the business holds for its own operations (a bay, a yard, storage) in slack periods
- The rent is income *pertaining to or incident to* the active business (part of the s.125(7) *income of the corporation for the year from an active business* definition), not a separate rental business

*Rent from an associated corporation* (ITA [s.129(6)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html)):
- Where a holdco rents property to an associated operating company, and the rent is deductible against the opco's active business income, the rent is deemed active income to the holdco
- This is the standard structure for holding business premises outside the operating corporation without losing the rate on the rent

The dividing line for incidental rent is proportion and purpose: a floor rented out in a building bought mostly to rent is a rental business with an owner-occupied corner, not an active business with incidental rent.  


## Co-owned and mixed-use property

Real property often arrives shared — the corporation on title with other owners (tenants-in-common), or one property serving both the corporation's own operations and third-party tenants.  

Co-ownership:
- Each co-owner reports its share of the rent and deducts its share of the costs according to its ownership interest
- Where the interests or the cost-sharing are not uniform (different owners funding different components), anchor the split in something defensible and stable: the registered interests, an appraisal-based allocation, or a written co-ownership agreement — professional endorsement of the method is worth more than theoretical precision
- Keep the corporation's share flowing through its own books at its own percentage; do not net other owners' costs through the corporate ledger

Mixed use by the corporation itself:
- Split operating costs between own-use (deductible against the active business) and rental-use (against the rental income) on a reasonable, documented basis — floor area and appraised relative value are the common anchors
- Consistency year over year matters more than which reasonable key is chosen

CCA needs extra care on the rental side:
- CCA on a rental property cannot create or increase a net rental loss (Reg 1100(11)); the claim is capped at the rental income remaining after expenses
- Each rental building acquired for $50,000 or more sits in its own CCA class (Reg 1101(1ac)), so one building's CCA cannot shelter another's income past the cap
- The discretionary-claim planning is otherwise as usual: see [Discretionary CCA](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md#discretionary-cca)


## HST

The HST character follows the use of the space, not the corporation's registration:
- *Commercial rent*: taxable — charge HST on the rent, claim ITCs on the property's inputs (see [HST](HST.md))
- *Long-term residential rent*: exempt — no HST charged, and no ITCs on the related inputs; a registrant with both kinds of space apportions its ITCs
- Exempt residential rent also stays out of the Quick Method remittance base and the small-supplier threshold, since those count *taxable* supplies

A property moving between commercial and residential use can trigger self-supply and change-in-use rules on the HST side; that is professional-advice territory beyond this page.  


## Scenario table

| Scenario | Character | Where it lands |
|---|---|---|
| Consulting CCPC sublets a spare office in its own premises | active (incidental) | ordinary revenue, SBD-eligible |
| CCPC owns a condo rented to a long-term tenant | property income | Schedule 7 / AII; HST-exempt |
| CCPC owns a commercial unit rented to a third party | property income | Schedule 7 / AII; HST-taxable |
| Holdco rents premises to its associated opco | deemed active (s.129(6)) | ordinary revenue |
| Corporation runs rentals with 6+ full-time employees | active business | SBD-eligible |

Bookkeeping runs through `Real estate rental revenue` (`8141`), with the property's costs on their ordinary lines (`9180` property taxes, `8690` insurance, `8960` repairs, `8710` interest); keep a per-property view (sub-accounts or a schedule) so the Reg 1100(11) cap and any apportionments can be shown.  


## Related

- [Small Business Tax Overview](Small-Business-Tax-Overview.md) (active vs investment income)
- [ERDTOH and NERDTOH](Dividends/ERDTOH-NERDTOH.md) (the refundable-tax cycle the rent joins)
- [Capital Cost Allowance](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)
- [HST](HST.md)
- [Owner-corporation transactions](Owner-Corporation-Transactions.md) (corporate property used personally)
- [Capital versus Income Character](Capital-Vs-Income-Character.md) (the parallel character question for securities)
- [T2 Schedules](T2-Schedules.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.125(7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - definitions of *specified investment business* (principal purpose, more-than-five-employees exception) and *income of the corporation for the year from an active business* (the pertains-to-or-incident-to inclusion)
  - [s.129(6)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - rent from an associated corporation's active business deemed active
  - [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - passive-income grind of the business limit
- Income Tax Regulations (C.R.C., c. 945):
  - Reg 1100(11) - rental-property CCA limited to net rental income
  - Reg 1101(1ac) - separate class per rental building of $50,000 or more
- Excise Tax Act (R.S.C., 1985, c. E-15): Schedule V, Part I - exemption for long-term residential rent
- CRA - Income Tax Folio S4-F15-C1 *Manufacturing and Processing* is not the source here; see IT-73R6 *The Small Business Deduction* (archived) for the SIB discussion: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it73r6.html


## TODO

- Verify the more-than-five-full-time-employees jurisprudence summary (5.x part-timers do not qualify; the *489599 BC Ltd* / *Baker* line of cases) before sign-off
- Verify the s.129(6) description: the deeming covers income derived from amounts deductible against the associated corporation's active business income; confirm scope and wording
- Verify the incidental-rent framing against the s.125(7) active-business definition and IT-73R6's examples
- Verify Reg 1100(11)'s exceptions (principal-business corporations) and whether they could ever apply to a small CCPC
- Verify the ETA Schedule V residential-rent exemption citation (Part I, s.6) and the ITC-apportionment obligation for mixed buildings
- Replace the IT-73R6 pointer if CRA has folio-ized the small business deduction chapter
