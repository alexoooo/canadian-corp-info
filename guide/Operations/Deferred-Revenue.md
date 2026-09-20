STATUS: AI GENERATED, REVIEW IN PROGRESS

# Deferred Revenue

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) paid before the work is done
  - Retainers, prepayments, deposits
- Booking the liability, deferring the income to the year the work is delivered, and getting the HST timing right

**TLDR**:
- Cash received for undelivered work is included in income when received (ITA s.12(1)(a))
  - It is then deferred with a matching reserve (s.20(1)(m)) until delivery
- The book side mirrors the tax side: a `Deferred income` (`2770`) liability draining into revenue as the work is performed
- HST does not wait for delivery: tax is payable when the prepayment is paid or invoiced, whichever is earlier
- A true *deposit* is the exception on both sides
  - Refundable security held as a liability is not income while held
  - HST can arise on application to the price or on a forfeiture covered by ETA s.182
- The reserve continuity is reported on T2 Schedule 13, re-measured every year

Limitations:
- Scope is services and short-cycle prepayments (retainers, annual contracts)
  - Long-term construction holdbacks and multi-year contract accounting are out of scope
- The mirror problem — work done but not yet billed (WIP, unbilled receivables) — is touched on but not worked through
- The following is my understanding as of 2026


## Income Timing and the Reserve

An amount received for services not yet rendered is income when received (ITA [s.12(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html)).  
The Act pulls prepayments in immediately, ahead of accrual accounting.  
The deferral comes from the matching reserve (ITA [s.20(1)(m)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html)).  
The reserve is a reasonable amount for the portion of the services still to be rendered after year-end.  

The pair works like the doubtful-debt reserve (see [Receivables and Bad Debts](Receivables-And-Bad-Debts.md#doubtful-accounts-and-the-reserve)):
- Year 1: include the receipt (s.12(1)(a)), deduct the reserve for the undelivered portion (s.20(1)(m))
  - Net income equals the work actually delivered
- Year 2: add last year's reserve back (ITA [s.12(1)(e)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html)), deliver more work, claim a new reserve for whatever remains
- The continuity is reported on T2 Schedule 13 (see [T2 Schedules](../Filing-And-CRA/T2-Schedules.md#event-driven-schedules))

In tax-basis books the two steps collapse into the deferred-revenue liability below.  
The closing `2770` balance *is* the reserve, and the S13 entries fall out of the ledger.  


## Deposits, Prepayments, and Retainers

The word "deposit" covers three different things; the tax treatment follows the substance:
- *Prepayment*: payment on account of the price of future work
  - Income: s.12(1)(a) now, with a s.20(1)(m) reserve for the undelivered part
  - HST: payable when paid or invoiced, whichever is earlier
- *Retainer*: determine whether the amount is a fee prepayment or security under the actual agreement
- *Security deposit*: held to secure performance of an obligation
  - HST: no tax while held as a deposit, whether refundable or not (ETA s.168(9))
  - Income: a refundable amount held as security remains a liability while held

The distinction turns on what the payment does under the agreement:
- A genuine deposit secures performance; a prepayment pays part of the price
- Later application to an invoice does not make a genuine deposit a prepayment from receipt
- Refundability alone does not decide the GST/HST treatment ([CRA deposits memorandum, paragraphs 5–10][deposits])
- A "retainer" that merely reserves availability is earned when the standby period runs
  - A standby fee never applied to invoices is fee revenue, not a deposit


## HST Timing

HST does not follow the income deferral:
- Tax is payable on the earlier of the day the consideration is paid and the day it becomes due
  - Generally the invoice date (ETA [s.168(1)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html); see [HST — When tax becomes payable](HST/HST-Bookkeeping.md#when-tax-becomes-payable))
- A prepayment therefore carries HST in the period it is received, even though the income sits in `2770` until delivery
- The deposit carve-out: a deposit is *not* consideration until the supplier applies it against the price
  - ETA [s.168(9)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html); a deposit on a returnable container is excluded from the carve-out
  - A true security deposit therefore carries no HST while it is merely held
- A forfeiture can trigger tax under [ETA s.182](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-182.html)
  - It covers amounts forfeited to a registrant on breach, modification, or termination of a qualifying agreement
  - The agreement must concern a taxable Canadian supply other than a zero-rated supply
  - The forfeited amount includes the deemed tax; report it for the forfeiture period

The income-vs-HST divergence at year-end is the same straddle pattern as invoicing, just in the opposite direction.  
See [HST — Year-end straddle](HST/HST-Bookkeeping.md#year-end-straddle-income-vs-hst-timing).  


## Bookkeeping

Receiving a $10,000 retainer plus 13% HST on December 15:

| Account | Debit | Credit |
|---|---|---|
| `Deposits` (`1002-1`) | 11,300.00 | |
| `Deferred income` (`2770`) | | 10,000.00 |
| `HST collected` | | 1,300.00 |

Delivering $4,000 of the work by December 31:

| Account | Debit | Credit |
|---|---|---|
| `Deferred income` (`2770`) | 4,000.00 | |
| `Trade sales of goods and services` (`8000`) | | 4,000.00 |

Recognize on a defensible measure of delivery: hours worked against the engagement, milestones reached.  
Keep the workings.  
A balance expected to unwind beyond the next year belongs on the long-term line (`3220` Deferred income).  
For a consulting retainer that is rare.  

A refundable security deposit books to a plain liability (a `2620`-series payable), not `2770`, with no HST line.  
When applied, move it against the invoice, splitting out any tax; recognize service revenue as the work is delivered.  

For a deposit forfeited on April 1, 2026, assume s.182 applies to an Ontario service taxable at 13%.  
A $1,130 forfeiture includes $130 HST (`$1,130 × 13/113`):

| Account | Debit | Credit |
|---|---|---|
| `Security deposits payable` (`2620`-series) | 1,130.00 | |
| `Other revenue` (`8230`) | | 1,000.00 |
| `HST collected` | | 130.00 |

[deposits]: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/g300-6-8/deposits-gst-300-6-8.html


## Worked Example

December 31 year-end; the $10,000 retainer above arrives December 15, and $4,000 of the work is delivered by year-end:
- *Books*: `2770` closes at $6,000; revenue shows the $4,000 delivered
- *T2*: the $10,000 is included (s.12(1)(a)) and a $6,000 reserve is deducted (s.20(1)(m))
  - Schedule 13 shows the $6,000 closing reserve; taxable effect $4,000, matching the books
- *HST*: the full $1,300 was collected in December and lands on the return covering that period
  - Nothing further at delivery

Next year the remaining $6,000 is delivered:
- The $6,000 reserve reverses into income (s.12(1)(e)); no new reserve is claimed; Schedule 13 closes at nil
- The books drain `2770` to zero against revenue, matching again


## Related

- [Receivables and Bad Debts](Receivables-And-Bad-Debts.md) (the mirror problem: income before cash)
- [HST](HST/HST.md) (tax point, year-end straddle)
- [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md)
- [T2 Schedules](../Filing-And-CRA/T2-Schedules.md) (Schedule 13 reserves)
- [Small Business Tax Overview](../Overview/Small-Business-Tax.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.12(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html) - amounts received for undelivered goods or unrendered services included in income
  - [s.12(1)(e)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html) - prior-year reserve added back
  - [s.20(1)(m)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - reserve for goods to be delivered and services to be rendered after year-end
- Excise Tax Act (R.S.C., 1985, c. E-15):
  - [s.168(1)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html) - tax payable on the earlier of consideration paid and consideration due
  - [s.168(9)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html) - a deposit is not consideration until applied
  - [s.182](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-182.html) - tax included in qualifying forfeitures
- CRA - IT-154R *Special reserves* (archived): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it154r.html
- T2 Schedule 13 - Continuity of Reserves: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch13.html


## TODO

- Verify the s.20(1)(m) conditions against IT-154R
  - The reasonableness standard, and the exclusions (guarantees or insurance-like obligations under s.20(7))
- Verify the standby-retainer characterization (earned as the standby period runs) against CRA guidance or case law
- Confirm the Schedule 13 lines for a s.20(1)(m) reserve and name them in the body
