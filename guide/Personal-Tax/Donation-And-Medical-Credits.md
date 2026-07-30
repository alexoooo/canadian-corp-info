STATUS: AI GENERATED, REVIEW IN PROGRESS

# Donation and Medical Credits

**Who this is for**:
- CCPC owners claiming charitable gifts or medical costs on their own T1
- Comparing personal giving against the corporate route

**TLDR**:
- Both are *non-refundable credits*: they reduce tax payable and stop at zero
- Donations: 14% federal on the first $200, then 29% (33% against top-bracket income), plus the Ontario credit
  - Roughly 40–50% combined above $200 for a high-income Ontario donor
- The donation claim is capped at 75% of net income; the unclaimed rest carries forward 5 years
- Spouses pool: either can claim gifts made by both
- Medical: only the slice above the lesser of 3% of net income and $2,890 (2026) earns the credit
  - Claiming the family's pool on the lower-income spouse's return usually clears more of that floor

Limitations:
- These two credits only; the T1's other credits and the bracket arithmetic are out of scope
- Donating appreciated securities in kind personally is out of scope; the corporate in-kind route is worked in [Donations](../Operations/Donations.md#donating-appreciated-securities)
- Gifts of ecological or cultural property are out of scope
- Ontario is the worked province; figures are 2026
- The following is my understanding as of 2026


## Non-Refundable Credit Mechanics

A *deduction* reduces income; a *non-refundable credit* reduces the tax computed on it:
- Most personal credits are the credit base times the lowest federal rate (14% for 2026)
  - The rate was 15% through 2024, then cut (14.5% blended for 2025); older intuition overstates these credits
- *Non-refundable* means the credit stops at zero tax; unused amounts vanish unless a rule says otherwise
- Ontario runs a parallel credit at its own rates on the same bases

The donation credit below is the exception to the lowest-rate pattern: above $200 it pays out near the *top* rates.  


## The Donation Credit

The federal credit steps through three rates (ITA [s.118.1(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.1.html)):
- 14% on the first $200 of the year's claim
- 33% on the portion above $200, to the extent you have income taxed in the 33% top bracket
- 29% on the rest above $200

Ontario adds 5.05% on the first $200 and 11.16% above:
- Combined statutory rate above $200: 40.16%, or 44.16% against top-bracket income
- The Ontario surtax scales the provincial credit's value further for high earners, toward a combined ~50%

The claim machinery (definitions in [s.118.1(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.1.html)):
- Only gifts to *qualified donees* with an official receipt count
- The year's claim is capped at 75% of net income (100% in the year of death and the year before)
- Unclaimed gifts carry forward up to 5 years
  - The $200 low-rate tier applies per claim year, so pooling several years into one claim edges ahead
- Gifts by you and your spouse pool into either return, by the statutory definition itself

Whether to give corporately or personally is a rate comparison worked in
[Donations - Corporate vs Personal Giving](../Operations/Donations.md#corporate-vs-personal-giving).  
The short version: near a wash for cash under integration; corporately-held appreciated securities tilt corporate.  


## The Medical Expense Credit

Medical expenses earn the credit only above a floor (ITA [s.118.2](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.2.html)):
- The floor is the lesser of 3% of net income and an indexed amount ($2,890 for 2026)
- The claim covers any 12-month period ending in the taxation year; pick the period that clusters the spending
- One pool for you, your spouse, and children under 18, claimed on line 33099
- Other dependants (an adult child, a supported parent) go on line 33199, each against their own income's floor

The lower-income spouse should usually make the family claim:
- The 3% floor is computed on the claiming spouse's net income, so lower income clears more expenses
- The limit: the credit is non-refundable, so that spouse needs enough tax payable to absorb it

Common eligible costs for an owner-manager household: prescriptions, dental and orthodontics, vision,
paramedical practitioners, and premiums for a private health plan paid personally.  
Premiums the corporation pays under a PHSP are a corporate expense instead, and better than a credit;
that route is worked in [Owner-Corporation Transactions](../Paying-Yourself/Owner-Corporation-Transactions.md#employee-benefits).  


## Related

- [Personal Tax](Personal-Tax.md) (the hub)
- [Donations](../Operations/Donations.md) (the corporate route and the give-from-which-pocket decision)
- [Owner-Corporation Transactions](../Paying-Yourself/Owner-Corporation-Transactions.md) (the PHSP alternative to the medical credit)
- [Tax Integration](../Overview/Tax-Integration.md) (why corporate-vs-personal comparisons net close)
- [T1 Filing Basics](T1-Filing-Basics.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.118.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.1.html) - donation credit: the three-rate formula, the 75% cap, 5-year carryforward, and spousal pooling
  - [s.118.2](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.2.html) - medical expense credit: the lesser-of floor, the 12-month period, and the eligible-expense list
  - [s.117(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-117.html) - federal rates, including the 14% lowest rate for 2026 and the 33% top rate
- CRA - Lines 33099 and 33199, eligible medical expenses: https://www.canada.ca/en/revenue-agency/services/tax/individuals/topics/about-your-tax-return/tax-return/completing-a-tax-return/deductions-credits-expenses/lines-33099-33199-eligible-medical-expenses-you-claim-on-your-tax-return.html
- CRA - Charitable donation tax credit rates: https://www.canada.ca/en/revenue-agency/services/charities-giving/charities/charitable-donation-tax-credit-rates.html
- Ontario Taxation Act, 2007, S.O. 2007, c. 11, Sch. A - the Ontario credit rates: https://www.ontario.ca/laws/statute/07t11


## TODO

- Verify the 2026 indexed figures against CRA's indexation chart at sign-off
  - The $2,890 medical floor and the 33%-bracket threshold
- Verify the Ontario surtax interaction (combined value toward ~50%) with a worked computation, or soften it
- Verify the Ontario credit-rate citation pins to the right sections of the Taxation Act, 2007
