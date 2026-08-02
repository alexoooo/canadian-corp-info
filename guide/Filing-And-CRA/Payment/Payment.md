STATUS: AI GENERATED, REVIEW IN PROGRESS

# Payment

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) paying CRA: the T2 balance and its instalments, HST, and payroll remittances

**TLDR**:
- Three program accounts, three clocks:
  - `RC` corporate tax: balance due 2-3 months after year-end; instalments monthly or quarterly during the year
  - `RT` GST/HST: annual filers pay with the return; quarterly instalments once net tax reaches $3,000
  - `RP` payroll: remit by the 15th of the month after each pay
- No corporate-tax instalments while tax payable (or the first instalment base) is $3,000 or less
- Basing instalments on the prior year's tax is the safe-harbour choice; a current-year estimate risks instalment interest

Limitations:
- This page is the cash-to-CRA mechanics; computing the amounts lives on the pages linked from each section
- Provincial corporate taxes administered outside CRA (Alberta, Quebec) are out of scope
- The following is my understanding as of 2026


## Corporate Income Tax

The corp pays its T2 balance, and monthly or quarterly instalments toward it during the year.

- *Account*: the `RC` corporation-income-tax program account under the business number
- *Balance-due day*: the balance is due two months after the tax year-end (ITA [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) "balance-due day")
  - Three months only where every one of these holds:
    - The corporation was a *CCPC throughout* the tax year
    - It claimed the small business deduction for that year *or* the preceding year
    - Its *preceding-year* taxable income did not exceed its business limit for that preceding year
      - Associated group: the combined preceding-year taxable incomes against the combined business limits
  - Current-year income within the business limit is not the test
  - A first tax year has no preceding year to measure, so the extension cannot be assumed; treat two months as the
    safe default until the corporation's own balance-due day is confirmed
- *Instalments*: monthly by default (ITA [s.157(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-157.html)); an eligible small CCPC may instead pay quarterly (s.157(1.1))
  - Quarterly eligibility: claims the SBD and has a clean 12-month filing-and-remittance record
  - Also taxable income of $500,000 or less and taxable capital of $10 million or less across the associated group
- *Instalment base*: base the instalments on the current year's estimated tax or on a prior-year instalment base
  - The bases and the choice are worked in [Instalment Computation](#instalment-computation) below
- *No-instalment threshold*: no instalments when total tax payable, or the first instalment base, is $3,000 or less
  - ITA [s.157(2.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-157.html); pay the whole balance by the balance-due day instead
- *Interest*: deficient or late instalments carry instalment interest and a possible instalment penalty (s.163.1)
  - An unpaid balance after the balance-due day accrues arrears interest, compounded daily at the prescribed rate
- *How*: My Business Account, an online-banking "Federal - Corporation Tax" payee, or a bank's business tax service
  - See [Payment methods](#payment-methods) below

When filing T2 taxes, enter the pre-paid instalments for them to count towards the balance:  
T2 (Corporate Income Tax Return) / Page 9 / Summary of tax and credits  
Deduct other credits / line 840 (Tax instalments paid)  

![Example in FutureTax T2](T2_Page-9_Deduct-other-credits_Tax-installments-paid.png)


## Instalment Computation

Two defined bases feed every option (Income Tax Regulations [s.5301](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-5301.html)):
- *First instalment base*: the tax payable for the immediately preceding year (grossed up where that year was short)
- *Second instalment base*: the tax payable for the second preceding year

A monthly payer picks one of three options (s.157(1)):
- 1⁄12 of the current year's *estimated* tax, each month
- 1⁄12 of the first instalment base, each month
- 1⁄12 of the second instalment base for the first two months, then 1⁄10 of the remaining first base for the other ten

A quarterly payer mirrors them (s.157(1.1)), due the last day of each quarter:
- 1⁄4 of the current year's estimate
- 1⁄4 of the first instalment base
- 1⁄4 of the second instalment base for the first quarter, then 1⁄3 of the remaining first base per later quarter

The third option exists for the calendar gap: the first instalment falls due before the prior year's T2 has even been filed, and the second preceding year is the only assessed figure available.  

Worked example — quarterly-eligible CCPC, December year-end, FY2026 tax $9,760, FY2025 tax $6,000, paying through FY2027:

| Option | Q1 (Mar 31) | Q2 (Jun 30) | Q3 (Sep 30) | Q4 (Dec 31) |
|---|---:|---:|---:|---:|
| Current-year estimate ($8,000) | 2,000.00 | 2,000.00 | 2,000.00 | 2,000.00 |
| First base ($9,760) | 2,440.00 | 2,440.00 | 2,440.00 | 2,440.00 |
| Second base, then first | 1,500.00 | 2,753.33 | 2,753.33 | 2,753.33 |

Any shortfall against the year's actual tax is settled at the balance-due day.  

Choosing:
- The prior-year bases are the safe harbour: pay them on time and no instalment interest can arise, however the current year turns out
- The current-year estimate saves cash in a declining year, at the price of instalment interest if the estimate runs low
- CRA's instalment reminders compute the no-interest options; My Business Account shows the balances paid

Instalments are prepayments, not expense.  
This guide books them against the tax liability rather than to a separate asset:
- Debit `Taxes payable` (GIFI 2680) at each payment, so the account nets to what is still owed
- The year-end provision credits the same account
- A *debit* balance at year-end means a refund is due; reclassify it to `Taxes recoverable` (GIFI 1483) for the
  Schedule 100 presentation
- See [CRA Administration - Booking the Tax Cycle](../CRA-Administration.md#booking-the-tax-cycle) for the entries


## HST

The corp remits the GST34 net tax for each reporting period.  
For this corp that is the Quick Method flat percentage of tax-inclusive revenue.  
Under the regular method it is tax collected − input tax credits.  
The calculation and filing are in [HST](../../Operations/HST/HST.md).  

- *Account*: the `RT` program account under the business number
- *When*: an annual filer pays with the return, three months after fiscal year-end
  - An annual filer with net tax of $3,000 or more also pays *quarterly instalments* (ETA s.237)
  - Each instalment is one-quarter of the instalment base
    - The lesser of the prior year's net tax and the current year's estimate
  - Instalments are reconciled on the year-end return; see [filing deadlines](../../Overview/Small-Business-Tax.md#filing-deadlines-and-instalments)
- *Electronic*: a remittance of $10,000 or more must be paid electronically (ETA s.278(3))
  - Electronic filing is mandatory for reporting periods beginning on or after 2024-01-01
- *How*: My Business Account, an online-banking "Federal - GST/HST" payee, or a bank's business tax service
  - Banks list the return balance and the instalments as separate payees
  - See [Payment methods](#payment-methods) below


## Payroll Remittance

Source deductions apply only if the corp pays a *salary*; a corp that distributes only dividends has no payroll to remit.  
The salary-vs-dividend choice is worked in [Salary vs Dividends](../../Paying-Yourself/Salary-Vs-Dividends.md).  
The payroll concepts and bookkeeping are in [Payroll](../../Paying-Yourself/Payroll.md).  

- *Account*: an `RP` payroll program account under the business number (format `…RP0001`)
- *What is remitted each period*: the employee's federal and provincial income tax, plus CPP and EI
  - CPP is both the employee and employer halves, since the corp is the employer
  - EI applies only where the employee is EI-insurable
  - An owner-manager controlling over 40% of the voting shares is *not* EI-insurable on their own pay
    - Employment Insurance Act s.5(2)(b); a single-owner corp remits income tax and CPP only
- *2026 CPP*: 5.95% employee + 5.95% employer on pensionable earnings from the $3,500 basic exemption to the $74,600 YMPE
  - Maximum $4,230.45 each half; the corp remits both halves
  - *CPP2* adds 4% each on earnings from $74,600 to the $85,000 YAMPE (maximum $416 each half)
  - Rates and limits change every January; check CRA's payroll deductions tables for the current year
- *Frequency*: most owner-managed CCPCs are *regular* (monthly) remitters
  - Due by the *15th of the month following* the month the pay was made
  - A small or new employer can qualify as a *quarterly* remitter
    - Requires a low average monthly withholding and a clean compliance record
- *Voucher*: remit against Form *PD7A* (Statement of Account for Current Source Deductions)
  - If no salary was paid in a period, report a *nil remittance* by the due date
    - Through My Business Account or CRA's TeleReply line
- *Year-end*: issue a *T4* slip to the employee and file the *T4 Summary* with CRA by the last day of February
  - See [filing deadlines](../../Overview/Small-Business-Tax.md#filing-deadlines-and-instalments)
- *How*: My Business Account, an online-banking payroll source-deductions payee, or a bank's business tax service
  - See [Payment methods](#payment-methods) below

The withheld amounts sit in the `Employee deductions payable` (2627) control account until remitted.  
See [Ledger and Accounts](../../Bookkeeping/Ledger-And-Accounts.md).  


## Payment Methods

- Scheduled from CRA My Business Account
  - Free, but takes 5 business days
- Some banks provide service to remit business taxes
  - The services typically come with a fee, but they can offer same-day processing
- Visa Debit
  - Might require calling the bank to raise limit (possibly temporary)


## Related

- [Small Business Tax Overview](../../Overview/Small-Business-Tax.md) (the full deadline calendar)
- [CRA Administration](../CRA-Administration.md) (booking the tax cycle, interest and penalties)
- [HST Registration and Filing](../../Operations/HST/HST-Registration-And-Filing.md)
- [Payroll](../../Paying-Yourself/Payroll.md)
- [Losses](../Losses.md) (a loss year usually stops next year's instalments)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.157(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-157.html) - monthly instalments: the three options
  - [s.157(1.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-157.html) - quarterly instalments for an eligible small CCPC
  - [s.157(2.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-157.html) - $3,000 no-instalment threshold
  - [s.163.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-163.1.html) - instalment penalty
  - [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) - *balance-due day* definition
- Income Tax Regulations (C.R.C., c. 945):
  - [s.5301](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-5301.html) - first and second instalment bases, incl. the short-year gross-up
- Excise Tax Act (R.S.C., 1985, c. E-15):
  - [s.237](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-237.html) - GST/HST quarterly instalments for annual filers
  - [s.278(3)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-278.html) - $10,000 electronic-payment threshold
- CRA - Paying your business taxes (instalment due dates and methods): https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/corporations/corporation-payments.html


## TODO

- Verify the quarterly due-date wording ("last day of each quarter of the taxation year") and the monthly equivalent against s.157 and CRA's instalment guidance
- Verify the Reg 5301 short-year gross-up factor before stating it numerically
- Verify the safe-harbour claim (prior-year-base payments never draw instalment interest) against s.161(4.1)'s least-amount rule
- Add My Business Account payment screenshots once available
