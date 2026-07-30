STATUS: AI GENERATED, REVIEW IN PROGRESS

# Owner-Corporation Transactions

**Who this is for**:
- Owner-manager of a CCPC who uses a personally-owned asset (car, home office, tools, phone) for the business
  - Also the reverse: a corporate-owned asset used personally
- Want to know how to put the cost through the books without creating an unintended taxable benefit

**TLDR**:
- On a mixed-use asset, the tax outcome turns on which hat the owner wears and who owns the asset
- As *employee*, the corp can reimburse business use through a reasonable allowance or an actual-cost claim (ITA s.6)
  - Tax-free to the owner and deductible to the corp
- As *shareholder*, a benefit the corp confers is added to the owner's income with no corporate deduction (ITA s.15)
- The recurring test on a mixed-use asset is the *business-use proportion*, backed by a contemporaneous log
- Straight salary and dividends are covered elsewhere
  - This page is about benefits, allowances, reimbursements, rent, asset transfers, and shareholder loans

Limitations:
- Focus is the single owner-manager CCPC and its sole shareholder-employee
- Sole-proprietor treatment appears only as a brief contrast
  - The sole-proprietor side is worked in [Sole Proprietorship](../Sole-Proprietorship/Sole-Proprietorship.md); the owner's own T1 situations in [Personal Tax](../Personal-Tax/Personal-Tax.md)
- Quebec QST and any province-specific benefit variations are out of scope
- The dollar and per-kilometre figures are the 2026 amounts
  - CRA resets them annually; verify the current year before relying on them
- The following is my understanding as of 2026


## Two Hats: Employee and Shareholder

The owner of an owner-managed CCPC deals with the corporation in two distinct capacities.  
The *Income Tax Act* treats each differently:
- As an *employee*, a benefit or allowance the corp provides is governed by ITA [s.6](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html)
  - A properly structured reimbursement of business use is tax-free to the owner, and the cost is deductible to the corp
- As a *shareholder*, a benefit the corp confers is governed by ITA [s.15(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html)
  - The value is added to the shareholder's income, and the corp gets *no* deduction for it

The s.15 outcome is the one to avoid:
- An employee benefit is at least deductible to the corp, so only one layer of tax applies
- A shareholder benefit is taxed in the owner's hands with no corporate deduction, so the same dollar is taxed twice

A third, cleaner route is to deal with the corporation at arm's length on the asset itself:
- The corp *rents* the asset from the owner
- The owner *sells* the asset to the corp at fair market value (FMV)

These move the asset onto a normal commercial footing instead of relying on the benefit rules.  
The sections below work through the two most common cases: vehicles and personal property.  
Then come the related situations that share the same mechanics.  


## Business-Use Proportion and Logs

Every mixed-use case turns on one number: the share of use that is genuinely for the business.  
That proportion has to be supported by a contemporaneous record.  
CRA can demand the record on audit and will disallow an unsupported estimate.  

By asset type:
- *Vehicle*: a kilometre log recording date, destination, purpose, and distance of each business trip
  - Plus the odometer reading at the start and end of the year
- *Home office*: the area of the dedicated workspace as a fraction of the home's total area (or a reasonable room count)
- *Phone / internet / computer*: a representative sample of business-versus-personal use, or a documented reasonable split

For a vehicle, CRA accepts a *full-year* log or a *three-month sample* log:
- Keep one full-year base-year log
- In later years, a representative three-month sample can be used to extrapolate
  - Provided the use pattern is stable and the base year is on file

Keep the log with the corporate records, not just personally.  
It supports both the corp's deduction and the absence of a taxable benefit.  


## Vehicles

"Expensing the car" splits into two completely different mechanisms depending on who owns the vehicle.  
The choice of ownership is the single biggest driver of the tax outcome.  

### Personal Car Used for the Corp

This is the common owner-manager case: the car is registered to and owned by the owner personally.  
It is used partly for the corp's business.  
The corp does *not* own the car, so it claims no CCA and posts none of the running costs directly.  
Instead it compensates the owner for business use, in one of two ways.  

*Reasonable per-kilometre allowance* (the simplest):
- The corp pays the owner a set rate per business kilometre driven
- An allowance based *solely* on business kilometres, at a reasonable rate, is tax-free to the employee
  - Excluded from income under ITA [s.6(1)(b)(vii.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html), and deductible to the corp
- CRA's per-kilometre benchmark for 2026 is 73¢ for the first 5,000 business km and 67¢ after that
  - 4¢ higher in the territories
- The corp's deduction for the allowance is capped at the prescribed per-km amount, which matches that same benchmark
  - ITA [s.18(1)(r)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html), Reg 7306
- An allowance is *deemed unreasonable* (and therefore taxable) in two cases (s.6(1)(b)(x), (xi)):
  - A flat monthly amount not tied to kilometres
  - The employee is also reimbursed for the same costs

*Actual-cost reimbursement* (more record-keeping, sometimes more accurate):
- Total the year's vehicle costs the owner paid personally
  - Fuel, insurance, licence, maintenance, loan interest, lease payments
- Multiply by the business-use proportion from the log
- The corp reimburses that business portion and deducts it
  - The reimbursement of a genuine business expense is not a taxable benefit

Worked example (per-km allowance):
- The owner drives 18,000 km in 2026, of which the log shows 11,000 km are business
- Allowance: 5,000 km × 73¢ = $3,650, plus 6,000 km × 67¢ = $4,020, for $7,670
- The corp pays $7,670 to the owner, tax-free to the owner and deductible to the corp

Ledger entry for the allowance:  
Debit: `Vehicle expenses` (`9281`) = $7,670  
Credit: `Cash` (`1001`), or `Due to shareholder` (`2780`) if settled later = $7,670  

GST/HST on the allowance:
- An HST-registered corp may claim a *deemed input tax credit* on a reasonable km allowance (ETA [s.174](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-174.html))
  - The ITC equals the tax fraction of the allowance
- In a 13% HST province: $7,670 × 13/113 ≈ $882; book the ITC to `HST receivable` and net it out of the expense (see [HST](../Operations/HST/HST.md))

### Corporate Car Used Personally

Here the corporation owns (or leases) the car and deducts the operating costs.  
It claims CCA on the car (Class 10 or 10.1; see [Capital Cost Allowance](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)).  
Any personal use by the shareholder-employee is then a *taxable benefit* reported on the owner's T4, in two parts.  

*Standby charge* (ITA [s.6(1)(e)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html), s.6(2)), the benefit of having the car available:
- For a corp-owned car: 2% of the original cost (including GST/HST) per month the car is available to the owner
- For a leased car: two-thirds of the lease cost
- *Reduced* where business use exceeds 50% and personal driving is at or below 1,667 km per month
  - The standby is prorated by personal km ÷ (1,667 × months available)

*Operating cost benefit* (ITA [s.6(1)(k)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html)), the benefit of the corp paying personal operating costs:
- 34¢ per personal kilometre for 2026 (31¢ for taxpayers principally selling or leasing automobiles), set by Reg 7305.1
- Optional alternative where business use exceeds 50%: one-half of the standby charge
  - Requires the employee to elect in writing before year-end

Worked example (corporate car, mostly business):
- The corp buys a car for $45,000; with 13% HST the cost for standby purposes is $50,850
- The owner drives 20,000 km in 2026, of which 8,000 km are personal (60% business, so the reduced standby is available)
- Standby before reduction: 2% × $50,850 × 12 = $12,204
- Reduced standby: $12,204 × (8,000 ÷ (1,667 × 12)) = $12,204 × (8,000 ÷ 20,004) ≈ $4,881
- Operating cost benefit: 8,000 personal km × 34¢ = $2,720 (the ½-standby alternative would be ≈ $2,440 if elected)
- Total taxable benefit on the T4: $4,881 + $2,720 = $7,601

The benefit is a T4-reporting figure, not a separate ledger posting:
- The corp has already expensed the actual CCA, fuel, and insurance in its books
- The $7,601 is added to the owner's employment income (T4 box 34, included in box 14); no journal entry moves cash
- The HST-registered corp must also remit HST on the benefit (ETA [s.173](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-173.html))

Why the personal-car structure usually wins for an owner-manager:
- A car with meaningful personal use generates a standby charge every year it sits available
  - The charge applies regardless of how little the car is driven
- Keeping the car personal and billing the corp a per-km allowance pays no benefit at all on the business kilometres
- The corporate-car route mainly pays off when business use is very high and personal use is minimal


## Personal Property Used by the Business

The same employee-versus-shareholder split applies to any asset: equipment, tools, real estate, a computer.  

### Owner Keeps the Asset

Three routes, cleanest first:
- *Reimburse the business portion*: the corp reimburses the owner for the business-use share of the running costs
  - A genuine expense reimbursement is tax-free and deductible
- *Corp rents the asset from the owner*: the corp deducts the rent (ITA [s.18(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html))
  - The owner reports the rent as property income on their T1 and deducts the related expenses against it
  - The rent must be reasonable for what is being rented
- *Owner sells the asset to the corp at FMV*: the asset becomes corporate and the corp claims CCA on it
  - See [Capital Cost Allowance](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)
  - For an appreciated asset, an ITA [s.85](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.html) rollover can defer the gain on transfer
  - The same rollover is used to pay a business vendor in shares (see [Preferred-share consideration](../Corporate-Lifecycle/Business-Acquisition/Preferred-Share-Consideration.md))

Worked example (owner's tool sold to the corp):
- The owner personally owns a piece of equipment now used entirely in the business; its FMV is $5,000
- The owner sells it to the corp at the $5,000 FMV; the corp adds $5,000 to its Class 8 UCC pool

Ledger entry on the corp's books:  
Debit: `Equipment` (`1740`) = $5,000  
Credit: `Cash` (`1001`), or `Due to shareholder` (`2780`) = $5,000  

Personal side of the sale:
- The equipment is *personal-use property*: a sale at or below cost produces no gain, and a loss is denied
- The $1,000 floor under ITA [s.46](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-46.html) treats cost and proceeds as at least $1,000 each
- A gain only arises if the asset appreciated above cost, which is uncommon for depreciating equipment
- ITA s.69 makes one-sided adjustments, not a symmetric correction:
  - Sell to the corp *above* FMV: s.69(1)(a) caps only the corp's cost at FMV, while you are taxed on the full price
  - Sell *below* FMV: s.69(1)(b) deems your proceeds up to FMV, while the corp's cost stays low
  - Either way a slice is taxed twice, so price the transfer at genuine FMV

### Corporate Property Used Personally

When the corp owns an asset and the shareholder uses it personally, ITA s.15(1) confers a shareholder benefit:
- The benefit equals the FMV of the personal use
  - For property held mainly to benefit the shareholder, CRA's position can extend to an imputed return
  - The imputed return runs on the corp's full investment in the asset, not just out-of-pocket cost
- The benefit is included in the shareholder's income with *no* offsetting deduction to the corp
- A corporate-owned cottage, boat, or recreational vehicle used by the owner is the classic audit target

Worked example (corporate-owned cottage):
- The corp owns a cottage the owner uses for personal vacations
- The s.15(1) benefit is the FMV rent for the period of personal use, added to the owner's income
  - The corp is denied a deduction for the related carrying costs
- This is why holding personal-use real estate inside a corporation is generally tax-inefficient


## Home Office

A home office is the most common mixed-use case after the vehicle, and it has its own trap.  

Two routes, paralleling the property section above:
- *Reimbursement*: the corp reimburses the business-use share (by area) of the home costs the owner pays personally
  - Heat, electricity, a portion of internet, minor maintenance
  - The home stays a personal asset
- *Rent*: the corp pays the owner rent for the dedicated workspace and deducts it (GIFI 8910 area)
  - The owner reports rental income and deducts the workspace share of home costs against it

What the corp can and cannot pick up:
- *Running costs*: heat, electricity, water, a share of internet, and minor maintenance
  - Reimbursable on the business-use share, because they are genuine business costs
  - *Rented home (tenant)*: rent is an occupancy cost rather than an ownership cost
    - Unlike property tax, the business-use share of rent is reimbursable, on the same footing as utilities
    - The principal-residence and CCA cautions below do not apply, since you do not own the place
    - Keep paying the landlord yourself and have the corp reimburse only the business-use slice
    - Do not put the lease in the corp's name or have it pay the full rent: a taxable benefit on the personal share
  - *Condo fees*: a single bundled fee mixes running costs with capital
    - Split it before applying the business-use share
    - Reimburse the operating slice: utilities, common-area maintenance, management
    - Exclude the reserve-fund contribution, special assessments, and building insurance
    - The excluded pieces are ownership costs like property tax
    - Take the split from the condo corporation's annual budget and financial statements (or the status certificate)
    - A documented split keeps the allocation defensible rather than a guess
- *Mortgage interest and property tax*: not running costs of the work; keep them out of the reimbursement
  - Reimbursing them is a shareholder benefit rather than a deductible expense
  - It can look like a deduction for the corp plus tax-free cash for the owner, but it is neither
    - You owe these as the homeowner whether or not the corp uses the space
    - The corp is covering a personal cost rather than recovering a business one
- *Rent route*: mortgage interest is deductible only against the rent the owner reports as income
  - That nets close to zero, so renting does not turn it into a real deduction

Worked example (reimbursement, 12% workspace):
- A room used exclusively for the corp's work is 12% of the home's area
- The corp reimburses 12% of the year's utilities and a reasonable share of internet, against receipts
- No taxable benefit arises, because the corp is reimbursing a genuine business cost

The principal-residence trap:
- Reimbursing or deducting the running costs above does *not* affect the exemption
  - They are current expenses; only CCA, a structural change, or non-ancillary use trips the change-in-use rules
- Do *not* claim CCA on the home-office portion of the residence (CRA Income Tax Folio S1-F3-C2)
  - CCA converts that portion to depreciable income-producing property
  - That can disqualify it from the *principal residence exemption* on a later sale
- Keep the income-producing use ancillary and make no structural changes
  - The whole home then stays eligible for the exemption
- The exemption itself is worked in [Home Office and the Principal Residence](../Personal-Tax/Home-Office-And-Principal-Residence.md#change-of-use-and-the-cca-trap)

Employee route, for contrast:
- An employee required to maintain a home office who is *not* reimbursed can deduct workspace costs on their own T1
  - Certified on form T2200 and claimed on form T777, with mortgage interest and CCA never deductible
  - Worked in [Home Office and the Principal Residence](../Personal-Tax/Home-Office-And-Principal-Residence.md#the-employee-home-office-deduction)
- The corporate reimbursement or rent route above is usually simpler for an owner-manager
- The sole proprietor's parallel path (s.18(12) business-use-of-home on the T2125) is worked in [T2125 and Expenses](../Sole-Proprietorship/T2125-And-Expenses.md#business-use-of-home)


## Other Mixed-Use and Benefit Situations

The same employee-versus-shareholder framing recurs across a cluster of common items.  

*Phone, internet, and home computer*:
- Reimburse the business-use share against the documented split; the business portion is deductible and not a benefit
- The corp paying 100% of a plainly mixed-use personal bill creates a taxable benefit on the personal share

*Meals and entertainment*:
- Deductible at 50% under ITA [s.67.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-67.html); the matching 50% ITC limit is in ETA s.236 (see [HST](../Operations/HST/HST.md))
- The 50% cap is on the corp's deduction; it is not a personal benefit when the meal is a genuine business meal

*Travel with a personal component*:
- A trip combining business and vacation is deductible only for the business portion
  - The personal portion (extra nights, a companion's airfare) is either non-deductible or a taxable benefit

*Shareholder loans*:
- A draw that is a loan rather than salary or a dividend carries its own rules; see [Shareholder loans](#shareholder-loans) below
  - The s.15(2) repayment deadline and the s.80.4 interest benefit

*Non-deductible perks*:
- Recreational facilities, club dues (golf, dining, fitness), and yacht/lodge costs are non-deductible (ITA [s.18(1)(l)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html))
  - The matching ITC is denied under ETA s.170(1)(a)
- Corporate-owned life insurance premiums are generally non-deductible
  - A narrow exception: a lender requires the policy as collateral

*Personal expenses paid by the corp*:
- Charge a genuinely personal cost to the shareholder loan account (`Due from shareholder`), not an expense account
- Left in an expense account, CRA disallows the deduction and can assess a s.15(1) benefit
- Clear the resulting `Due from shareholder` balance by repayment, salary, or dividend
  - Do it before the s.15(2) repayment window closes (see [Shareholder loans](#shareholder-loans))

Ledger entry for a personal cost run through the corp account:  
Debit: `Due from shareholder` (`1300`) = amount  
Credit: `Cash` (`1001`) = amount  

*Salary to family members*:
- A salary to a spouse or child is deductible only to the extent it is *reasonable* for work actually performed
- Dividends to family members who are not active in the business are constrained by TOSI (ITA s.120.4)
  - See [Small Business Tax Overview](../Overview/Small-Business-Tax.md)


## Employee Benefits

A benefit provided to the owner *as employee* can be deductible to the corp and tax-free personally.  
That works only inside the recognized categories below.  
The owner-manager caution runs through all of them.  
A benefit that would not plausibly be offered to an arm's-length employee in the same job invites recharacterization.  
Recharacterized, it is a shareholder benefit: s.15(1), taxed with no deduction.  

*Private health services plan (PHSP)*:
- Premiums the corp pays under a PHSP are deductible to the corp and excluded from the employee's income
  - A *PHSP* is an insured extended-health/dental plan or a *health spending account* (HSA)
  - ITA [s.6(1)(a)(i)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html); *PHSP* defined in s.248(1)
- The plan must have the character of insurance and cover hospital, medical, or dental expenses
  - Coverage limits must be reasonable for the employment
- The single-shareholder-employee case is the scrutinized one
  - A cost-plus HSA whose only member is the owner is accepted by CRA only within limits
  - The plan must be qua employee, with reasonable annual caps; verify the current position before setting one up
- Done properly, this converts medical and dental costs into a corporate deduction with no taxable benefit
  - Usually better than paying them personally

*Other insurance*:
- Employer-paid *group term life* premiums are a taxable benefit to the employee
- Employer-paid *disability* premiums: the benefit treatment turns on whether the plan is a group plan:
  - Under a *group* sickness or accident plan, the premiums are not a taxable benefit
    - They make any eventual disability payments taxable to the recipient (ITA s.6(1)(f))
  - On an *individual* (non-group) policy, the premiums are a taxable benefit, which keeps the payments tax-free
    - The s.6(1)(a)(i) exception covers group plans only
    - Premiums taxed as a benefit count as employee-paid, putting the plan outside s.6(1)(f) (IT-428 lineage)
  - Premiums paid personally also keep the payments tax-free
    - Paying disability premiums personally is the usual owner-manager advice
- Corporate-owned *life insurance* on the owner is a different topic
  - Premiums generally non-deductible; see [Non-deductible perks](#other-mixed-use-and-benefit-situations) above

*Gifts and awards*:
- CRA's administrative policy exempts *non-cash* gifts and awards up to $500 (total, per year) per employee
  - Cash and near-cash (gift cards redeemable like cash) are always taxable
- A separate $500 non-cash allowance exists for a long-service award at five-year intervals
- The policy is for employees at large; for a single-owner corp, do not lean on it
  - CRA presumes gifts to a person who is also a shareholder (or a related person) are received *as shareholder*
  - Received as shareholder means taxable, no exemption, unless received clearly qua employee
- On the HST side, ITC and remittance consequences follow the taxable-benefit outcome (ETA s.173)

*Professional dues, training, phone plans*:
- Professional membership dues the corp pays are not a benefit where the membership principally benefits the employer
  - The consulting designation behind the corp's revenue clearly does
- Employer-paid training that maintains or upgrades skills related to the work is not a benefit
- An employer-provided cellphone plan of reasonable cost, used primarily for work, is not a benefit
  - Personal-use overages are (see [Phone, internet, and home computer](#other-mixed-use-and-benefit-situations) above)

Once the character is settled, the bookkeeping follows:
- Deductible premiums and costs go to their expense lines
  - `8690` Insurance, `8760` memberships, `9060`-adjacent benefit costs
- Anything taxable feeds the T4 as an employment benefit (see [Payroll](Payroll.md))


## Shareholder Loans

The *shareholder loan account* records money moving between the owner and the corporation outside salary and dividends.  
It runs in both directions, and the tax rules are not symmetric:
- *Due from shareholder*: the owner has borrowed from the corp (an asset on the corp's books)
- *Due to shareholder*: the owner has lent to the corp (a liability on the corp's books)

### Owner Borrows from the Corporation

Unless repaid in time, a loan from the corp to its shareholder is added to the owner's income (ITA [s.15(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html)).  
The inclusion lands in the year the loan was *made*.  

The repayment exception (ITA [s.15(2.6)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html)) has two conditions, both required:
- Repaid within *one year after the end of the corporation's tax year in which the loan was made*
- The repayment is *not part of a series of loans or other transactions and repayments*

The deadline keys off the corporation's *fiscal year-end*, not 365 days from the advance.  
A practical test: the loan must not still be outstanding at two consecutive year-end balance sheets.  

Worked example (December 31 year-end, $1,000 borrowed):
- Borrowed 2024-12-01, repaid 2024-12-31: gone before year-end, never on a year-end balance sheet (clean)
- Borrowed 2024-12-01, repaid 2025-01-01: made in the 2024 tax year, so the deadline is 2025-12-31
  - Repaid almost a year early (clean)
- Whether the repayment falls on Dec 31 or Jan 1 does not matter to s.15(2): both are inside the window
  - The clock runs to the year-end plus one year, not to the loan's anniversary

The *series* condition is the trap in a repeating pattern:
- Borrowing each December and repaying each January, year after year, is a *series of loans and repayments*
- Each loan viewed alone is repaid within its window
  - Yet s.15(2.6) still fails, and the principal is assessed under s.15(2)
- The dividing line is economic substance
  - A genuine, permanent repayment qualifies
  - A January repayment that merely bridges to the next December re-borrow does not

What counts as a repayment:
- Cash actually returned to the corp
- A bona fide *set-off*: a dividend, salary, or bonus declared to the owner and applied against the balance
  - Real income, properly recorded
- An offset against a genuine *Due to shareholder* the corp already owes
- *Not* a repayment: an amount repaid and promptly re-advanced (round-tripping), or a temporary entry reversed soon after

If a loan is caught by s.15(2):
- The principal is included in the owner's income for the year the loan was *made* (CRA reassesses that year)
- A later genuine repayment is deductible under ITA [s.20(1)(j)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) in the year of repayment
  - The inclusion reverses; the real cost is the timing, plus any interest and penalties

The interest benefit is a separate rule (ITA [s.80.4(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-80.4.html)):
- An interest-free or below-prescribed-rate loan imputes a benefit for the period it is outstanding
  - Computed at the CRA *prescribed rate* (set quarterly)
- The benefit is reduced by interest the owner actually pays no later than January 30 of the following year
- It applies even when the loan stays inside the s.15(2) window: escaping one rule does not escape the other
- On a small, short-lived balance the amount is a few dollars, but it is technically reportable

### Owner Lends to the Corporation

Funding the corp from personal money is the common direction for an owner-manager, and it is far simpler:
- The owner can lend to the corp at *zero interest*
  - s.15(2) and s.80.4 run only corp-to-shareholder, so neither applies in this direction
- Repaying the owner that principal later is *tax-free* (return of a loan, not income)
  - As long as the advance was genuinely a loan
- Keep it documented as a loan (a board note or a simple promissory note, plus clean bookkeeping)
  - Keep it distinct from contributed *share capital*, so a repayment is not recharacterized as a dividend or benefit
- Charging interest is optional
  - If charged, the corp deducts a bona fide interest expense and the owner reports the interest income
  - A T5 is required at $50 or more
- The attribution rules do not catch an owner funding their own corp in the ordinary case
  - They target transfers to a spouse or minor
  - Corporate attribution under ITA [s.74.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-74.4.html) targets benefiting a designated person

Ledger entry when the owner lends $5,000 to the corp:  
Debit: `Cash` (`1001`) = $5,000  
Credit: `Due to shareholder` (`2780`) = $5,000  

Repaying the owner later reverses this entry, with no tax to the owner on the principal returned.  


## Sole-Proprietorship Contrast

For comparison only: a sole proprietor is not a separate taxpayer.  
The owner-corporation boundary that drives this whole page does not exist.  

How the same situations collapse:
- There is no separate entity to confer a shareholder benefit, so ITA s.15 and the standby-charge mechanics do not apply
- A mixed-use asset is handled by claiming the *business-use proportion* of its costs directly on the owner's T1
  - Claimed on form T2125 (*Statement of Business or Professional Activities*)
- CCA on a vehicle, computer, or tool is claimed by the proprietor on the business-use share of the asset
- There is no allowance-versus-benefit choice and no rent-to-yourself
  - The proprietor and the business are the same person

The corporate structure trades this simplicity for the benefit and deduction rules above.  
The trade-off is the price of the separate legal entity.  
The sole-proprietor side is worked in its own group: [T2125 and Expenses](../Sole-Proprietorship/T2125-And-Expenses.md) for the mechanics, [Incorporation vs Sole Proprietorship](../Sole-Proprietorship/Incorporation-Vs-Sole-Proprietorship.md) for the choice between the two.  


## Related

- [Small Business Tax Overview](../Overview/Small-Business-Tax.md)
- [Dividends](Dividends/Dividends.md)
- [Business Acquisition](../Corporate-Lifecycle/Business-Acquisition/Business-Acquisition.md)
- [Capital Cost Allowance](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md)
- [Rental and Property Income](../Operations/Rental-And-Property-Income.md) (co-owned title and bare-trust reporting)
- [HST](../Operations/HST/HST.md)
- [Sole Proprietorship](../Sole-Proprietorship/Sole-Proprietorship.md) (the unincorporated side of these contrasts)
- [Home Office and the Principal Residence](../Personal-Tax/Home-Office-And-Principal-Residence.md) (the employee route and the exemption)
- [Glossary](../Overview/Glossary.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)): https://laws-lois.justice.gc.ca/eng/acts/I-3.3/
  - [s.6(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html) - value of employment benefits included in income
  - [s.6(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html) - allowances
    - (vii.1) reasonable per-km motor-vehicle allowance excluded from income
    - (x), (xi) an allowance not based solely on km, or duplicated by reimbursement, is deemed unreasonable
  - [s.6(1)(e)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html), s.6(2) - automobile standby charge and the reduced-standby formula
  - [s.6(1)(k)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html) - operating cost benefit, including the optional ½-standby alternative; per-km rate under Reg 7305.1
  - [s.6(1)(a)(i)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-6.html) - employer PHSP contributions excluded from the benefit inclusion
    - *PHSP* defined in [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html)
  - [s.8(1)(i)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-8.html), s.8(13) - employee deduction for office rent and supplies
    - With the work-space-in-the-home limitation (T2200 / T777 path)
  - [s.13(7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) - change-of-use and partial-use adjustments to capital cost
  - [s.15(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html) - benefit conferred on a shareholder, included in income with no corporate deduction
  - [s.15(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html) - shareholder loan inclusion (one-year repayment rule)
  - [s.15(2.6)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html) - repayment exception
    - Repaid within one year of the lender's year-end
    - Not part of a series of loans or other transactions and repayments
  - [s.18(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) - general limitation: deductible only if incurred to earn income
  - [s.18(1)(l)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) - recreational facilities, club dues, and yacht/lodge costs denied
  - [s.18(1)(r)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) - cap on the employer's deduction for a tax-exempt per-km allowance (Reg 7306)
  - [s.20(1)(j)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - deduction on repaying a shareholder loan previously included under s.15(2)
  - [s.46](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-46.html) - $1,000 floor on cost and proceeds of personal-use property
  - [s.67.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-67.html) - 50% limit on meals and entertainment
  - [s.69](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-69.html) - non-arm's-length transfers deemed to occur at FMV
  - [s.74.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-74.4.html) - corporate attribution where a loan or transfer benefits a designated person
  - [s.80.4(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-80.4.html) - imputed-interest benefit on a low-interest shareholder loan
  - [s.85](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.html) - rollover of property to a corporation (defer gain on transfer)
  - [s.120.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-120.4.html) - Tax on Split Income (TOSI)
- Income Tax Regulations (C.R.C., c. 945): https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/
  - Reg 7306 - prescribed per-km amounts for the tax-exempt allowance limit
  - Reg 7305.1 - prescribed per-km rate for the operating cost benefit
- Excise Tax Act (R.S.C., 1985, c. E-15): https://laws-lois.justice.gc.ca/eng/acts/E-15/
  - [s.173](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-173.html) - GST/HST on a taxable benefit reported by a registrant
  - [s.174](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-174.html) - deemed input tax credit on a reasonable allowance
  - s.199, s.201 - capital personal property and passenger-vehicle ITC limits (see [HST](../Operations/HST/HST.md))
- CRA guides and forms:
  - T4130 - Employers' Guide – Taxable Benefits and Allowances: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4130.html
  - IT-428 - Wage Loss Replacement Plans (archived; the employee-pay-all positions): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it428.html
  - Gifts, awards, and long-service awards (administrative policy): https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/payroll/benefits-allowances/gifts-awards-social-events/gifts-awards-long-service-awards.html
  - Private health services plans: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/payroll/benefits-allowances/private-health-services-plan-premiums.html
  - Automobile and motor vehicle benefits: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/payroll/benefits-allowances/automobile/automobile-motor-vehicle-benefits.html
  - 2026 automobile deduction limits and expense benefit rates (Department of Finance): https://www.canada.ca/en/department-finance.html
  - T2200 - Declaration of Conditions of Employment; T777 - Statement of Employment Expenses
  - T2125 - Statement of Business or Professional Activities (sole-proprietor contrast): https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2125.html
  - Income Tax Folio S1-F3-C2 - Principal Residence (CCA-on-home-office caution): https://www.canada.ca/en/revenue-agency/services/tax/technical-information/income-tax/income-tax-folios-index.html


## TODO

- Verify the 2026 per-km allowance (73¢ / 67¢), operating cost benefit rate (34¢), and the Class 10.1 cost ceiling
  - Check against the final CRA / Finance figures before sign-off
- Confirm the GIFI rollup codes used in the ledger entries (motor vehicle expenses, rent, equipment) against RC4088
- Consider a screenshot of the T4 box 34 automobile-benefit entry once a redacted example is available
- Verify CRA's current position on a single-shareholder-employee PHSP / cost-plus HSA before sign-off
  - The qua-employee condition and the reasonable-limit guidance
- Verify the gifts-and-awards figures ($500 annual non-cash, $500 long-service at five-year intervals)
  - Also the shareholder-presumption wording, against the current administrative-policy page
