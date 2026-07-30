STATUS: AI GENERATED, REVIEW IN PROGRESS

# CPP and the T1

**Who this is for**:
- Sole proprietors working out what self-employment does to the personal return
- Expecting the first year's CPP bill, instalment letters, or the June filing deadline

**TLDR**:
- Net self-employment income triggers *both* halves of CPP, computed on Schedule 8 of the T1
  - Roughly $9,300 at the 2026 maximums, base plus CPP2
- The employer half and the enhanced portion are deductions; the remaining employee half is a credit
- There is no EI unless you opt in to *special* benefits; the opt-in is effectively permanent once benefits are drawn
- The T1 files by June 15 (you and your spouse), but the balance is still due April 30
- Net tax owing over $3,000 in the current year and at least one of the two prior years brings quarterly instalments

Limitations:
- CPP rates and maximums are cross-linked, not restated; T1 brackets are out of scope
  - The T1's common credits are worked in [Donation and Medical Credits](../Personal-Tax/Donation-And-Medical-Credits.md)
- Quebec differences (QPP, QPIP, the $1,800 instalment threshold) are out of scope
- The following is my understanding as of 2026


## Both Halves of CPP

An employee splits CPP with the employer; you are both, so you pay both halves on net self-employment earnings.  
The computation runs on Schedule 8 (*Canada Pension Plan Contributions and Overpayment*) filed with the T1.  

The 2026 rates and ceilings are on [Salary vs Dividends - CPP](../Paying-Yourself/Salary-Vs-Dividends.md#cpp-cost-now-entitlement-later):
- Base CPP at 5.95% × 2 between the $3,500 exemption and the YMPE; CPP2 at 4% × 2 up to the YAMPE
- The self-employed maximum is about $8,461 base plus $832 CPP2

Unlike the corp owner choosing between salary and dividends, you cannot opt out:
- The contribution follows the net income mechanically
- The cost-now-versus-pension-later reading is the same as the salaried case
- The contrast is worked in [Incorporation vs Sole Proprietorship](Incorporation-Vs-Sole-Proprietorship.md#cpp-mandatory-vs-optional)


## The Deduction and Credit Split

The same contribution shows up in two places on the return:
- *Deduction* (ITA [s.60(e)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-60.html)): half of the base contribution (the employer half), plus the enhanced contributions
- *Credit* (ITA [s.118.7](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.7.html)): the remaining employee half of the base contribution, as a non-refundable credit

The net effect mirrors employment:
- What an employer would deduct, you deduct
- What an employee would claim as a credit, you claim as a credit
- Schedule 8 computes the split; tax software carries it to the right lines


## No EI Unless You Opt In

Self-employment sits outside regular EI: no premiums and no entitlement to regular benefits.  

A voluntary opt-in exists for *special* benefits only (Employment Insurance Act, Part VII.1, [s.152.02](https://laws-lois.justice.gc.ca/eng/acts/E-5.6/section-152.02.html)):
- Maternity, parental, sickness, and compassionate-care / family-caregiver benefits
- Enter the agreement through My Service Canada Account
- Cancelling is only possible *before* any benefits are paid, effective December 31 of the notice year
  - Once benefits have been paid, the agreement is effectively permanent
- The same regime serves an incorporated >40% owner-manager; see [Payroll](../Paying-Yourself/Payroll.md#source-deductions)


## The June 15 Deadline

- Filing: June 15 of the following year, for you and your cohabiting spouse or common-law partner (ITA [s.150(1)(d)(ii)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-150.html))
- Payment: the *balance-due day* stays April 30 (ITA [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html)); interest runs from May 1 on anything unpaid

The June extension defers paper, not money.  
With a balance owing, estimate and pay by April 30, then file by June 15.  


## T1 Instalments

Instalments are required when *net tax owing* exceeds $3,000 in the current year and at least one of the two prior years.  
The threshold is ITA [s.156.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-156.1.html).  

- Due March 15, June 15, September 15, and December 15
- Three computation options: no-calculation (pay CRA's instalment reminders as billed), prior-year, and current-year
  - Paying the no-calculation amounts as billed never draws instalment interest, even if they prove too low
- The first good year lands a double hit: last year's April 30 balance plus this year's instalments already running

GST/HST has its own parallel instalment stream once registered; see [HST for Sole Proprietors](HST-For-Sole-Proprietors.md#instalments-as-an-annual-filer).  


## Related

- [Sole Proprietorship](Sole-Proprietorship.md) (the hub)
- [T2125 and Expenses](T2125-And-Expenses.md) (the net income Schedule 8 keys off)
- [HST for Sole Proprietors](HST-For-Sole-Proprietors.md)
- [Salary vs Dividends](../Paying-Yourself/Salary-Vs-Dividends.md) (the CPP figures, and the corp-side choice)
- [Payroll](../Paying-Yourself/Payroll.md) (the employer-side CPP/EI mechanics)
- [Incorporation vs Sole Proprietorship](Incorporation-Vs-Sole-Proprietorship.md)
- [Paying Contractors](../Operations/Paying-Contractors.md) (the T4A this return reports)
- [T1 Filing Basics](../Personal-Tax/T1-Filing-Basics.md) (the general filing side these deadlines sit in)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.60(e)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-60.html) - self-employed deduction: half the base CPP contribution plus the enhanced contributions
    - s.60(e.1) is the employment-income analogue for enhanced contributions
  - [s.118.7](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.7.html) - credit for the remaining base contribution
  - [s.150(1)(d)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-150.html) - June 15 filing deadline for an individual carrying on a business, extended to the spouse
  - [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) - *balance-due day*: April 30 of the following year
  - [s.156.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-156.1.html) - instalment threshold: net tax owing over $3,000 in the current and at least one of the two preceding years
- T1 Schedule 8 (5000-S8) - Canada Pension Plan Contributions and Overpayment: https://www.canada.ca/en/revenue-agency/services/forms-publications/tax-packages-years/general-income-tax-benefit-package/5000-s8.html
- Employment Insurance Act (S.C. 1996, c. 23), Part VII.1:
  - [s.152.02](https://laws-lois.justice.gc.ca/eng/acts/E-5.6/section-152.02.html) - self-employed opt-in agreement and its termination limits
- CRA - CPP contribution rates, maximums and exemptions: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/payroll/payroll-deductions-contributions/canada-pension-plan-cpp/cpp-contribution-rates-maximums-exemptions.html
- CRA - Income tax instalments, due dates and calculation options: https://www.canada.ca/en/revenue-agency/services/payments/payments-cra/individual-payments/income-tax-instalments/due-dates.html
- Service Canada - EI benefits for self-employed people: https://www.canada.ca/en/services/benefits/ei/ei-self-employed-workers.html


## TODO

- Verify the opted-in premium structure (employee rate, no employer share) against Service Canada wording
