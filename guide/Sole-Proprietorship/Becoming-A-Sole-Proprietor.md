STATUS: AI GENERATED, REVIEW IN PROGRESS

# Becoming a Sole Proprietor

**Who this is for**:
- Individuals starting self-employed work (consulting, freelancing, a gig or contract role) without a corporation
- Deciding what, if anything, needs registering, and which slips and accounts will follow

**TLDR**:
- Sole proprietorship is the default: earning self-employment income makes you one, with no CRA registration event
- You and the business are one taxpayer; the income lands on form T2125 inside your T1
- No Business Number is needed until a program account opens (GST/HST `RT`, payroll `RP`)
  - Until then your SIN is the identifier
- A client paying you more than $500 of fees in a year reports it on a T4A (box 048); nothing is withheld from it
- In Ontario, operating under a name other than your own legal name requires a Business Names Act registration
- Whether you are self-employed at all is CRA's employment-status determination, not the label on the contract

Limitations:
- Side content to a corp-focused guide (see the [hub](Sole-Proprietorship.md)); coverage keeps to the delta from the corporate pages
- Business-name registration is worked for Ontario; other provinces run parallel regimes with their own registries
- Partnerships and employment income are out of scope
- The following is my understanding as of 2026


## Default Status, No Paperwork

A sole proprietorship arises by conduct: you carry on a business yourself, and the tax consequences follow.  
No CRA filing creates it, and no separate taxpayer comes into existence.  
The contrast is incorporation, which exists only once articles are filed and brings its own T2 return (see [Starting Up](../Corporate-Lifecycle/Starting-Up.md)).  

What one taxpayer means:
- Business income is your income in the year earned, reported on your T1 via [T2125](T2125-And-Expenses.md)
- Business debts are your debts; there is no limited liability
- The business's fiscal period is the calendar year (ITA [s.249.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.1.html))
  - A non-calendar fiscal period is possible by election but rarely worth the complication


## Employee or Contractor

The gig platform's label decides nothing; CRA's employment-status determination decides everything downstream.  
The framework is CRA's *Employment status: employee or self-employed* guidance (formerly guide RC4110, cancelled in 2026).  

Two steps:
- First, the parties' intent: a contract *of* service (employment) or a contract *for* services (self-employment)
- Then whether the working facts are consistent with that intent:
  - Control: who directs what, when, and how the work is done
  - Tools and equipment: who provides them
  - Subcontracting: whether you can send someone else or hire assistants
  - Financial risk, and responsibility for investment and management
  - Opportunity for profit

Why the answer matters:
- A self-employed contractor deducts expenses, remits their own tax and CPP, and is outside regular EI
- An employee gets source deductions and a T4, and deducts almost nothing
- CRA can reclassify a relationship over either party's objection
  - The payer's exposure is worked in [Paying Contractors](../Operations/Paying-Contractors.md#employee-or-contractor)
  - The corporate analogue is PSB classification, in [Small Business Tax Overview](../Overview/Small-Business-Tax.md#personal-service-business-classification-risk)
- Either party can request a binding ruling on form CPT1 (*Request for a CPP/EI Ruling*)


## The T4A You Receive

- A business client paying you more than $500 of fees in a calendar year reports the total on a T4A slip
  - The amount goes in box 048 *Fees for services*
- Box 048 excludes the GST/HST you charged
- No tax, CPP, or EI accompanies the slip; the slip reports, it does not remit
  - Remitting is yours, through the mechanics in [CPP and the T1](CPP-And-The-T1.md)

Your income is what your books say, not what slips arrive:
- Consumer clients issue nothing, and payer compliance with box 048 is uneven
- T4A totals should reconcile to your gross revenue; they do not define it
- A missing slip does not make income untaxed

The payer's side of the slip is worked in [Paying Contractors](../Operations/Paying-Contractors.md#when-a-t4a-is-required).  


## Business Number and Program Accounts

- A bare T2125 filer needs no *Business Number* (BN); the T1 is keyed to your SIN
- The BN arises when your first CRA program account opens:
  - `RT` for GST/HST, once you register (see [HST for Sole Proprietors](HST-For-Sole-Proprietors.md))
  - `RP` for payroll, only once you hire an employee
- Register through *Business Registration Online* (BRO), or form RC1 as the paper fallback
- The BN is issued to you personally, not to the business name; a later corporation gets its own separate BN


## Registering a Business Name

Ontario, under the *Business Names Act* (R.S.O. 1990, c. B.17):
- Operating under a name other than your own full legal name requires registering that name
- Register through the *Ontario Business Registry* ($60 electronically); the output is a Certificate of Registration
  - Master Business Licences are no longer issued
- A registration runs 5 years
  - Renew up to 6 months before expiry, or within 60 days after; past that, a fresh registration with a new BIN
- Amend the registration within 15 days of a change to the registered details
- The Ontario BIN is unrelated to the federal BN

Other provinces run parallel name registries; check the registry of the province where you operate.  


## Opening the Books

- Open a separate bank account for the business early; mixed personal and business flows make every later step harder
- Keep books from the first transaction: full double-entry or a disciplined income-and-expense record
  - The [Bookkeeping](../Bookkeeping/Bookkeeping.md) group's conventions apply, minus the corporate GIFI/T2 mapping
- Keep receipts and a contemporaneous log for the mixed-use claims (home, vehicle) worked in [T2125 and Expenses](T2125-And-Expenses.md)
- Keep records six years from the end of the tax year they relate to (ITA [s.230(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-230.html))


## Related

- [Sole Proprietorship](Sole-Proprietorship.md) (the hub)
- [T2125 and Expenses](T2125-And-Expenses.md)
- [CPP and the T1](CPP-And-The-T1.md)
- [HST for Sole Proprietors](HST-For-Sole-Proprietors.md)
- [Incorporation vs Sole Proprietorship](Incorporation-Vs-Sole-Proprietorship.md)
- [Paying Contractors](../Operations/Paying-Contractors.md) (the payer's side of the T4A)
- [Starting Up](../Corporate-Lifecycle/Starting-Up.md) (incorporating, once decided)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.249.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.1.html) - fiscal period of a business; calendar year for an individual absent the alternative-method election
  - [s.230(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-230.html) - six-year record retention
- CRA - Employment status: Employee or self-employed (replaces guide RC4110, cancelled 2026-01-30): https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/payroll/determine-relationship-employer-payer.html
- CRA - CPT1 Request for a CPP/EI Ruling – Employee or Self-Employed: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/cpt1.html
- CRA RC4157 - Deducting Income Tax on Pension and Other Income, and Filing the T4A Slip and Summary: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4157.html
- CRA - Registering a sole proprietorship or partnership: https://www.canada.ca/en/services/business/start/register-with-gov/register-sole-prop-partner.html
- CRA - When you need a business number or program account: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/registering-your-business/you-need-a-business-number-a-program-account.html
- Ontario - Business name registration (Ontario Business Registry): https://www.ontario.ca/page/business-name-registration
- Ontario - Registration costs and timelines: https://www.ontario.ca/page/cost-time-required-to-register-change-search-for-business-name-corporation-not-for-profit


## TODO

- Verify the Business Names Act section references against e-Laws
  - The 5-year term and renewal window are per the Registrar's notice (BNA 29-002), not the statute text
- Confirm the consequences of an unregistered name (fines, the bar on suing under it) before adding them
