STATUS: AI GENERATED, REVIEW IN PROGRESS

# Paying Contractors

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) that pays independent contractors or subcontractors
- Deciding which slip the payment triggers: T4A, T5018, T4A-NR, or none

**TLDR**:
- The payee's classification decides the channel: an employee gets a T4 through [Payroll](../Paying-Yourself/Payroll.md); a contractor gets a T4A — or a T5018 if the payer is construction-primary
- No source deductions are withheld from a Canadian contractor; the slip reports, it does not remit
- T4A slips and summary are due by the last day of February for the prior calendar year
- A construction-primary payer files the T5018 set instead, within six months of its chosen reporting period
- A non-resident rendering services *in Canada*: withhold 15% (Reg 105) and file a T4A-NR
  - A non-resident working remotely from outside Canada triggers neither

Limitations:
- The employee-vs-contractor determination itself is out of scope; CRA's tests are in its employment-status guidance, formerly guide RC4110 (see [Further Reading](../Overview/Further-Reading.md))
- The T4A has many boxes (pensions, RESP, lump sums) that never arise from paying a service contractor; only the contractor boxes are covered
- Non-resident coverage stops at the Reg 105/T4A-NR branch; treaty waivers and Part XIII royalties/rents are professional-advice territory
- The following is my understanding as of 2026


## Employee or Contractor

The classification consequence lands before any slip: it decides withholding, CPP/EI, and which return reports the pay.  

| | Employee | Canadian contractor |
|---|---|---|
| Source deductions | Withheld every pay run | None |
| CPP/EI employer share | Yes | No |
| Slip | T4 | T4A (or T5018) |
| Expense line | `9060` Salaries and wages | `9110` Sub-contracts |

Misclassifying an employee as a contractor leaves the corporation liable for the deductions it never withheld, both shares of CPP, and penalties.  
The determination weighs control, tools, chance of profit, and integration; it is CRA's employment-status framework (formerly guide RC4110) and stays out of scope here.  
The worker's own side of the determination is worked in [Becoming a Sole Proprietor](../Sole-Proprietorship/Becoming-A-Sole-Proprietor.md#employee-or-contractor).  
For the expense-line choice see [Expense Classification](../Bookkeeping/Expense-Classification.md#operating-expense-reference-schedule-125).  


## When a T4A Is Required

The statutory hook is broad: fees, commissions, or other amounts for services are payments described in ITA [s.153(1)(g)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-153.html), and Regulation [200(1)](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-200.html) requires an information return for them.  
CRA's administrative position (RC4157) narrows it in practice:
- No slip is needed where the year's total to a payee is under $500 and no tax was withheld
- Fees for services go in box 048, excluding GST/HST
- Box 028 Other income takes amounts with no specific box; box 048 is the right one for a service contractor

The requirement reads wide enough to cover most business-to-business service fees, and enforcement of box 048 reporting has been inconsistent; CRA has said for years that the fees-for-services scope is under review (see TODO).  
The conservative course for an owner-managed corporation paying an unincorporated contractor: file the slip.  

What the T4A does not do:
- No withholding accompanies it for a Canadian-resident payee; the contractor remits their own tax and CPP
  - The receiving side (reporting the T4A, instalments, Schedule 8 CPP) is worked in [CPP and the T1](../Sole-Proprietorship/CPP-And-The-T1.md)
- It does not decide deductibility; the expense stands or falls on the ordinary rules either way


## Filing the T4A

- One T4A slip per payee, plus the T4A Summary for the payer account (RP program account)
- Due the last day of February following the calendar year of payment
- File electronically through My Business Account or Web Forms; paper is allowed only for small slip counts
- Late or missing slips draw the graduated information-return penalty (ITA [s.162(7.01)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-162.html)), floored at $100 and scaled by slip count and days late

Bookkeeping is unaffected by the slip: the invoice posts when incurred:
- Debit `Sub-contracts` (GIFI 9110) = fee
- Debit `HST receivable` = the contractor's HST, recoverable as an ITC under the regular method
- Credit `Cash` (or `2620` Amounts payable until paid)

The slip reports the calendar year's *payments*, not the fiscal year's expense; a year-end straddle invoice lands on next year's slip.  


## T5018 for Construction

A payer whose business income is *derived primarily from construction activities* files the T5018 set instead of T4As for its subcontractors (Income Tax Regulations [s.238(2)](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-238.html)).  

The pieces, each in its own subsection:
- *Construction activities* (238(1)): erection, excavation, installation, alteration, repair, demolition, dismantling, or removal of buildings, structures, or surface and sub-surface works
- *The trigger* (238(2)): business income for the reporting period derived primarily from those activities — a builder, not a consultancy that once renovated its office
- *Reporting period* (238(3)): calendar year or fiscal period, the filer's choice, binding once made absent ministerial authorization
- *Deadline* (238(4)): file within six months after the end of the chosen reporting period
- *Exceptions* (238(5)): payments solely for goods for sale or lease, amounts already under s.212 non-resident withholding, and services rendered outside Canada by non-residents

Mechanics:
- One T5018 slip per subcontractor, plus the T5018 Summary
- The reported amount is the total paid or credited for the period, and includes the GST/HST charged (see TODO)
- A mixed goods-and-services payment is reported in full; only goods-only payments fall out
- Amounts on a T5018 are not also reported on a T4A

A construction CCPC costing its jobs through [Materials and CIP](Cost-Recovery/Materials-And-CIP.md) meets this filing for every subcontractor it pays.  


## Non-Resident Contractors

Two cases with opposite answers:

*Services rendered in Canada* by a non-resident: withhold 15% of the fee (Regulation [105(1)](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-105.html)) and report on a T4A-NR:
- The withholding is on account of the non-resident's eventual Canadian tax, not a final tax; they may file for a refund or seek a waiver in advance
- Remit the withheld amount to CRA by the 15th of the month after payment (see TODO)
- T4A-NR slips and summary are due the last day of February
- Failure to withhold leaves the payer liable for the amount plus a penalty (ITA [s.227(8)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-227.html))

Entries for a $10,000 fee subject to Reg 105:
- Debit `Sub-contracts` (GIFI 9110) = $10,000
- Credit `Cash` = $8,500
- Credit `Non-resident withholding payable` (a `2680` sub-account) = $1,500

*Services rendered outside Canada*: the case this audience actually meets — a remote US freelancer working from the US.  
Reg 105 reaches only services rendered *in Canada*, so there is no withholding and no T4A-NR; nor is a T4A issued to a non-resident for offshore services.  
Pay the invoice like any other foreign-currency bill; see [Foreign Currency](../Bookkeeping/Foreign-Currency/Foreign-Currency.md).  


## Related

- [Payroll](../Paying-Yourself/Payroll.md) (the T4 channel, source deductions)
- [Expense Classification](../Bookkeeping/Expense-Classification.md) (`9110` vs `9060` vs `8871`)
- [Materials and CIP](Cost-Recovery/Materials-And-CIP.md) (the construction reader's cost side)
- [HST Regular Method](HST/HST-Regular-Method.md) (ITCs on contractor invoices)
- [Becoming a Sole Proprietor](../Sole-Proprietorship/Becoming-A-Sole-Proprietor.md) (the contractor's own side of the T4A)
- [Further Reading](../Overview/Further-Reading.md) (the employee-vs-contractor determination)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.153(1)(g)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-153.html) - fees, commissions, or other amounts for services as payments requiring reporting
  - [s.162(7.01)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-162.html) - graduated penalty for late-filed information returns
  - [s.227(8)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-227.html) - penalty for failure to withhold
- Income Tax Regulations (C.R.C., c. 945):
  - [s.105](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-105.html) - 15% withholding on fees for services rendered in Canada by a non-resident
  - [s.200(1)](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-200.html) - information return for s.153(1) payments (the T4A)
  - [s.238](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-238.html) - T5018: construction activities (238(1)), trigger (238(2)), reporting period (238(3)), six-month deadline (238(4)), exceptions (238(5))
- CRA RC4157 - Deducting Income Tax on Pension and Other Income, and Filing the T4A Slip and Summary: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4157.html
- CRA - Employment status: Employee or self-employed (replaces guide RC4110, cancelled 2026-01-30): https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/payroll/determine-relationship-employer-payer.html
- CRA T5018 - Statement of Contract Payments: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t5018.html
- CRA RC4445 - T4A-NR – Payments to Non-Residents for Services Provided in Canada: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4445.html


## TODO

- Verify CRA's current administrative position on box 048 fees-for-services reporting (the long-running "under review" stance) and the $500 threshold wording against the current RC4157
- Confirm the T5018 reported amount includes GST/HST against the current T5018 instructions
- Verify the Reg 105 remittance deadline (15th of the month following payment) against RC4445
- Confirm whether a T4A is required for fees paid to an incorporated contractor under current policy, and align the body if not
