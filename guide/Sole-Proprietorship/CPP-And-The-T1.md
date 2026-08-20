STATUS: AI GENERATED, REVIEW IN PROGRESS

# CPP and the T1

**Who this is for**:
- Sole proprietors working out what self-employment does to the personal return
- Expecting the first year's CPP bill, instalment letters, or the June filing deadline

**TLDR**:
- Net self-employment income triggers *both* halves of CPP, computed on Schedule 8 of the T1
  - The current CPP, YMPE, and YAMPE figures live on [Payroll](../Paying-Yourself/Payroll.md)
- The employer half and the enhanced portion are deductions; the remaining employee half is a credit
- There is no EI unless you opt in to *special* benefits; the opt-in is effectively permanent once benefits are drawn
- Self-employment extends the T1 filing deadline for you and your spouse, but not the balance-due day
- The ordinary T1 instalment rules still apply
  - A first profitable year can therefore create two overlapping cash demands

Limitations:
- CPP rates and maximums are cross-linked to [Payroll](../Paying-Yourself/Payroll.md), not restated; T1 brackets are out of scope
  - The T1's common credits are worked in [Donation and Medical Credits](../Personal-Tax/Donation-And-Medical-Credits.md)
- Quebec differences (QPP, QPIP, the $1,800 instalment threshold) are out of scope
- The following is my understanding as of 2026


## Both Halves of CPP

An employee splits CPP with the employer; you are both, so you pay both halves on net self-employment earnings.  
The computation runs on Schedule 8 (*Canada Pension Plan Contributions and Overpayment*) filed with the T1.  

The current rates and ceilings are on [Payroll](../Paying-Yourself/Payroll.md#source-deductions).  
The self-employed calculation uses the same base-CPP and CPP2 bands, but applies both the employee and employer
shares through Schedule 8.  

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
- Two ways out, and the first one is easy to miss:
  - *Within 60 days of entering the agreement*: give notice and the agreement is deemed never to have been entered
    into (EIA s.152.02(4))
  - *After that*: cancellation is possible only while no benefits have been paid, effective December 31 of the
    notice year (s.152.02(5))
  - Once benefits have been paid, the agreement is effectively permanent (s.152.02(7))
- The same regime serves an incorporated >40% owner-manager; see [Payroll](../Paying-Yourself/Payroll.md#source-deductions)


## The June 15 Deadline

Carrying on a business activates the extended filing date for you and your cohabiting spouse or common-law
partner, but it does not extend the balance-due day. The dates and statutory tests live on
[T1 Filing Basics](../Personal-Tax/T1-Filing-Basics.md#deadlines-and-the-balance-due-day).  

The extension defers the return, not the money.  
With a balance owing, estimate and pay by the ordinary balance-due day, then file by the extended date.  


## T1 Instalments

The ordinary personal instalment threshold, due dates, and computation options apply to a sole proprietor.  
They live on [T1 Filing Basics](../Personal-Tax/T1-Filing-Basics.md#deadlines-and-the-balance-due-day).  

- The first good year lands a double hit: last year's balance plus this year's instalments already running

GST/HST has its own parallel instalment stream once registered; see [HST for Sole Proprietors](HST-For-Sole-Proprietors.md#instalments-as-an-annual-filer).  


## Related

- [Sole Proprietorship](Sole-Proprietorship.md) (the hub)
- [T2125 and Expenses](T2125-And-Expenses.md) (the net income Schedule 8 keys off)
- [HST for Sole Proprietors](HST-For-Sole-Proprietors.md)
- [Salary vs Dividends](../Paying-Yourself/Salary-Vs-Dividends.md) (the corp-side remuneration choice)
- [Payroll](../Paying-Yourself/Payroll.md) (the employer-side CPP/EI mechanics)
- [Incorporation vs Sole Proprietorship](Incorporation-Vs-Sole-Proprietorship.md)
- [Paying Contractors](../Operations/Paying-Contractors.md) (the T4A this return reports)
- [T1 Filing Basics](../Personal-Tax/T1-Filing-Basics.md) (the filing, payment, and instalment calendar)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.60(e)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-60.html) - self-employed deduction: half the base CPP contribution plus the enhanced contributions
    - s.60(e.1) is the employment-income analogue for enhanced contributions
  - [s.118.7](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.7.html) - credit for the remaining base contribution
- T1 Schedule 8 (5000-S8) - Canada Pension Plan Contributions and Overpayment: https://www.canada.ca/en/revenue-agency/services/forms-publications/tax-packages-years/general-income-tax-benefit-package/5000-s8.html
- Employment Insurance Act (S.C. 1996, c. 23), Part VII.1:
  - [s.152.02](https://laws-lois.justice.gc.ca/eng/acts/E-5.6/section-152.02.html) - self-employed opt-in agreement and its termination limits
- Service Canada - EI benefits for self-employed people: https://www.canada.ca/en/services/benefits/ei/ei-self-employed-workers.html


## TODO

- Verify the opted-in premium structure (employee rate, no employer share) against Service Canada wording
