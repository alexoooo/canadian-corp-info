STATUS: AI GENERATED, REVIEW IN PROGRESS

# Starting Up

**Who this is for**:
- Owners about to incorporate a Canadian-controlled private corporation (CCPC), or in its first year
- Setting up the tax accounts, the books, and the first-year decisions that are awkward to change later

**TLDR**:
- Incorporation creates the taxpayer; the *business number* (BN) and program accounts are how CRA sees it
- The first fiscal period can be any length up to 53 weeks; the year-end is chosen by filing the first T2 with that date
- Capitalize with nominal share capital plus a shareholder loan: the loan repays tax-free later
- Incorporation costs up to $3,000 are deductible immediately; the excess is Class 14.1
- Assets the owner brings in transfer at fair market value; an appreciated asset can roll in under s.85 instead
- No instalments in year one; the other clocks (HST, payroll, slips) start from events, not from incorporation

Limitations:
- Incorporation mechanics (name search, articles, federal vs provincial, the minute book) are in [Corporate Structure](Corporate-Structure/Corporate-Structure.md)
  - This page starts where the corporation exists
- Full s.85 rollover mechanics (elected amounts, boot, share consideration) are out of scope
  - See [Preferred-share consideration](Business-Acquisition/Preferred-Share-Consideration.md) for the machinery
  - Get professional advice for an incorporation rollover
- The scenario is a new service or consulting CCPC; buying an existing business is [Business Acquisition](Business-Acquisition/Business-Acquisition.md)
- Quebec (Revenu Québec runs its own corporate accounts) is out of scope
- The following is my understanding as of 2026


## From Incorporation to the First Return

```mermaid
flowchart TB
    INC(["Incorporation:<br/>articles filed, BN issued"])
    FUND["Fund the corporation:<br/>shares + shareholder loan"]
    OPEN["Open the books:<br/>bank account, chart of accounts"]
    OPS(["Operate:<br/>invoice, spend, keep books"])
    EVT{{"Event-driven registrations:<br/>RT at $30K or voluntarily<br/>RP before first salary<br/>RZ before first T5"}}
    YE["Chosen year-end:<br/>up to 53 weeks out"]
    T2["First T2:<br/>due 6 months later"]

    INC --> FUND --> OPEN --> OPS --> YE --> T2
    OPS -.-> EVT
```

The corporation is a taxpayer from its incorporation date, even with no activity.  
Every year from then on needs a T2 and a corporate-registry annual return, nil or not (see [Filing deadlines](../Overview/Small-Business-Tax.md#filing-deadlines-and-instalments)).  


## Business Number and Program Accounts

Incorporating federally (or in most provinces) feeds the corporate registry data to CRA.  
CRA then issues the nine-digit *business number* and the corporate-tax account automatically.  

The program accounts, and when each is needed (see [Types of accounts](../Overview/Small-Business-Tax.md#types-of-accounts)):
- `RC` (corporate income tax): created with the BN; nothing to register
- `RT` (GST/HST): register at the $30,000 small-supplier threshold, or voluntarily from day one
  - Voluntary is often worthwhile for the ITCs on startup costs (see [HST — Registration](../Operations/HST/HST-Registration-And-Filing.md#registration))
- `RP` (payroll): register before the first salary remittance is due (see [Payroll](../Paying-Yourself/Payroll.md#rp-program-account))
- `RZ` (information returns): register before filing the first T5 (see [Bookkeeping and information slips](../Paying-Yourself/Dividends/Bookkeeping-And-Slips.md))

Register for CRA My Business Account early; assessments, review letters, and most registrations run through it.  


## Choosing the Fiscal Year-End

The first fiscal period runs from incorporation to any date up to 53 weeks out (ITA [s.249.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.1.html)).  
There is no election form: the year-end is set by the first T2 filed with that date.  
After that it is fixed; a change needs CRA's concurrence (s.249.1(7)).  

Considerations, none decisive:
- *December 31*: aligns with the calendar-year T4/T5 slips, the personal T1, and brokerage reporting
  - The simplest to keep books for
- *An off-calendar date* (e.g. July 31): shifts the T2 season away from the personal-tax crunch
  - It also widens the salary-deferral window (see [Payroll — Owner-manager remuneration](../Paying-Yourself/Payroll.md#owner-manager-remuneration))
  - A bonus accrued at a July year-end can be paid up to 180 days later, landing in the owner's next calendar year
- An investment-holding corporation leans December 31: the T3/T5 slips it receives are calendar-year
  - Any other date forces year-end accruals to split slip income across fiscal years

A deliberately short first year is fine, but it prorates by days:
- The $500,000 SBD business limit (ITA [s.125(5)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html))
- CCA claims (see [CCA — Short fiscal year](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md#short-fiscal-year))

### Changing the Year-End Later

"No change in the time when a fiscal period ends may be made for the purposes of this Act without the concurrence of the Minister" (ITA [s.249.1(7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.1.html)).  
A reader whose chosen date no longer fits — a seasonal cycle, a group year-end, a buyer's — asks CRA first, not the T2.  

The request:
- No prescribed form: write to the corporation's tax centre, or through My Business Account correspondence, before the intended change
  - State the requested new date and the business reasons
- Sound business reasons pass: aligning to the operating cycle's natural low point, matching a parent's or purchaser's year-end
- Tax-motivated requests are refused: a change whose main effect is deferring tax or reopening a bonus-deferral window

A granted change runs through a transitional short year, and the short year is where the cost lives:
- The stub from the old year-end to the new date files its own T2
- The business limit and CCA prorate by days, exactly as in a short first year (above)
- Filing and balance-due dates key off the new year-end, so the next cycle arrives early
- The instalment base recalculates off the short year; see [Payment](../Filing-And-CRA/Payment/Payment.md)
- The GST/HST fiscal year defaults to the taxation year and moves with it
  - An elected non-matching GST/HST year (Form GST70) needs its own review

One case needs no request: an acquisition of control forces a deemed year-end (ITA [s.249(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.html)), and the corporation sets its new fiscal period on the return that follows (see TODO).  


## Funding the Corporation

The standard capitalization for an owner-managed CCPC is nominal share capital plus a shareholder loan:
- *Shares*: a token subscription (e.g. 100 common shares for $100) into `Common shares` (`3500`)
  - This sets the *paid-up capital*; keeping it nominal is normal (see [Share Capital — PUC](Corporate-Structure/Share-Capital.md#paid-up-capital-puc))
- *Shareholder loan*: the working capital lent in as `Due to shareholder` (`2780`)
  - It repays tax-free at any time and needs no interest
  - Mechanics are in [Owner-corporation transactions — Shareholder loans](../Paying-Yourself/Owner-Corporation-Transactions.md#shareholder-loans)
- The split matters at the exit, not the start
  - Share capital comes back tax-free only up to PUC, while the loan balance comes back tax-free in full

Opening entries — incorporated May 1, $100 subscription, $10,000 lent in:

| Account | Debit | Credit |
|---|---|---|
| `Cash` (`1001`) | 10,100.00 | |
| `Common shares` (`3500`) | | 100.00 |
| `Due to shareholder` (`2780`) | | 10,000.00 |


## Costs Before and Around Incorporation

*Incorporation costs* (legal fees, name search, registry fees, the minute book):
- The first $3,000 is deductible in the first year (ITA [s.20(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html)); any excess is a Class 14.1 addition
- The split and the Schedule 8 row are worked in [CCA Examples — Example 3](../Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Examples.md#example-3-class-141-incorporation-expenses)

*Costs the owner paid personally* before the corporate bank account existed:
- Reimburse them through an expense report once the corporation is running
  - Dr the expense account, Cr `Due to shareholder` (`2780`)
- The corporation deducts them as its own costs when they were incurred for the business it now carries on
  - Keep the receipts in the corporation's records
- Continuing the example, $1,200 of incorporation costs paid personally
  - Dr `Professional fees` (`8860`) $1,200, Cr `Due to shareholder` (`2780`) $1,200
  - Fully deductible, under the $3,000 line

Deductions need a business to deduct against.  
Expenses become deductible once the business has *commenced*, not from some later first-revenue date.  
Commencement means activity directed at earning income: soliciting clients, delivering work.  


## Bringing in Assets

Equipment the owner already has (a laptop, tools, furniture) can serve the corporation two ways.  
Both are covered in [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md#personal-property-used-by-the-business):
- *Owner keeps the asset* and the corporation pays a reasonable rent or usage charge
  - Simplest for anything the owner also uses personally
- *Owner sells it to the corporation at FMV*: the corporation gets a CCA base and the cost credits the shareholder loan
  - Document the transfer (a dated bill of sale and an FMV note)

Selling in at FMV, a $900 laptop:

| Account | Debit | Credit |
|---|---|---|
| `Computer equipment/software` (`1774`) | 900.00 | |
| `Due to shareholder` (`2780`) | | 900.00 |

The Class 50 addition then enters the asset register (see [CCA Tracking](../Operations/Cost-Recovery/Capital-Cost-Allowance/CCA-Tracking.md)).  

Appreciated property is the exception:
- A sale at FMV triggers the owner's personal gain
  - An ITA [s.85](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.html) rollover defers it by electing a transfer price, taking shares back
- The same applies to rolling in a whole sole proprietorship (goodwill, client list, equipment)
  - s.85 is the standard route, and it is professional-advice territory
- The sale of all or substantially all of a business's assets can be relieved of GST/HST by a joint ETA [s.167](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-167.html) election

Personal-tax history does not follow the asset in.  
The corporation's cost starts at the transfer price; prior personal use is irrelevant to its books.  


## First-Year Clocks

- *T2*: due 6 months after the chosen year-end; the balance (if any) is due at 3 months
- *Instalments*: none in the first year
  - They key off prior-year tax, and there is none (see [Filing deadlines and instalments](../Overview/Small-Business-Tax.md#filing-deadlines-and-instalments))
- *GST/HST*: the small-supplier clock counts taxable supplies from the first sale, not from incorporation
  - Registration is required from the sale that crosses $30,000 within a single quarter (see [HST — Registration](../Operations/HST/HST-Registration-And-Filing.md#registration))
  - Or after a one-month grace following the quarter in which the four-quarter total crosses
- *Payroll*: the first remittance is due the 15th of the month after the first salary is paid (see [Payroll](../Paying-Yourself/Payroll.md))
- *Slips*: the first T4/T5s are due the last day of February after the first calendar year with salary or dividends paid
- *Corporate registry*: the annual-return clock starts at incorporation
  - Federal: within 60 days of each anniversary; Ontario: within 6 months of year-end

Keeping the books current from day one is cheaper than reconstructing the first year at T2 time.  
Set up the chart of accounts (see [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md)) before the first transaction.  


## Related

- [Corporate Structure](Corporate-Structure/Corporate-Structure.md)
- [Share Capital](Corporate-Structure/Share-Capital.md)
- [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md)
- [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md)
- [Payroll](../Paying-Yourself/Payroll.md)
- [HST](../Operations/HST/HST.md)
- [Small Business Tax Overview](../Overview/Small-Business-Tax.md)
- [Winding Down](Winding-Down.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.249.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.1.html) - fiscal period: up to 53 weeks; s.249.1(7) - change of fiscal period needs CRA's concurrence
  - [s.249(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.html) - deemed year-end on an acquisition of control
  - [s.125(5)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - business limit prorated for a tax year under 51 weeks
  - [s.20(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - deduction for the first $3,000 of incorporation expenses
  - [s.85](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.html) - rollover of property to a corporation
  - [s.69(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-69.html) - non-arm's-length transfers deemed at fair market value
- Excise Tax Act (R.S.C., 1985, c. E-15):
  - [s.167](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-167.html) - joint election on the sale of a business's assets
  - [s.148](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-148.html) - small-supplier threshold
- CRA - Business number registration: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/registering-your-business.html


## TODO

- Verify the free choice of a new fiscal period after an s.249(4) deemed year-end (no concurrence needed) against the s.249.1 text
- Verify the year-end-change request channel (tax centre letter vs My Business Account) and any current CRA guidance naming acceptable reasons
- Verify s.125(5)(b) as the business-limit proration provision and the 51-week trigger wording
- Verify the business-commencement standard (activity directed at earning income) against CRA's IT-364 (archived)
- Verify that provincial incorporation feeds the BN automatically for Ontario
  - The federal path is automatic; provincial registry integration varies
- Add a worked first-short-year example (incorporation to Dec 31)
  - Tie together the prorated business limit, prorated CCA, and the first T2 dates
- Add My Business Account registration screenshots once available (move to a `Starting-Up/` folder when media lands)
