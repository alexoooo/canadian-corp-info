STATUS: AI GENERATED, REVIEW IN PROGRESS

# Bank Conversions and the Embedded Spread

Scope and limitations are on the [Foreign Currency hub](Foreign-Currency.md).

When a bank converts CAD↔USD, the rate it applies is worse than the mid-market spot rate.  
The difference between the BoC mid-rate and the rate the bank used is the *implicit spread*; this is how the bank earns on the conversion.  

The simplest case is a plain CAD↔USD transfer between two accounts at the same bank.  
The more involved case of a USD wire from a customer landing in the CAD account (which combines bank conversion with closing out a USD receivable) is covered in [Getting paid in USD](Getting-Paid-In-USD.md).  

Bookkeeping treatment under the multi-currency convention:
- The transfer is an FX event between a CAD-native account and a USD-native account; each currency leg balances independently using `FX gain/loss - CAD` (8231-1) and `FX gain/loss - USD` (8231-2) as the per-currency bridge
- No FX gain or loss is recognized at the moment of transfer; the trading accounts accumulate the per-currency positions until period-end revaluation translates them at the closing BoC rate
- The implicit spread surfaces at period-end revaluation; until then the bank's actual settlement rate is the effective "cost" of the USD position

Explicit fees the bank shows as separate line items:
- Wire-in fee (e.g. $15 to receive an international wire)
- Wire-out fee (e.g. $30 to send an international wire)
- Currency-conversion fee shown as a distinct line on the statement (less common)
- All of these are bookable: debit `Interest and bank charges` (8710, CAD), credit `Deposits` (1002-1) or `Deposits - USD` (1003) in the matching currency

Typical CAD↔USD conversion spreads observed in practice (rough magnitudes; verify against your own bank's posted rates):
- Big-bank retail conversion at a branch teller: 2.0%–3.0% from mid-rate
- Big-bank business banking USD↔CAD conversion: 1.5%–2.0%
- Specialty FX services (Wise, OFX): 0.4%–1.0%
- Norbert's Gambit through a discount broker (see [Norbert's Gambit](Norberts-Gambit.md)): ~15–20 basis points of bid-ask spread across the two legs, plus flat per-trade commissions; because the commissions are fixed, the all-in cost depends on the amount converted (break-even worked on the sub-page)
- Interactive Brokers desk FX (FXCONV / IDEALPRO): ~1 basis point plus a small minimum commission

Worked example (internal CAD → USD transfer between two accounts at the same bank):
- Setup: corp moves CAD 10,000 from `Deposits` (1002-1, CAD-native) to `Deposits - USD` (1003, USD-native) at the same Canadian bank on Apr 20
- BoC mid-rate that day is 1.36 (mid-implied USD value of CAD 10,000 ≈ USD 7,352.94)
- The bank credits the USD side with USD 7,210; effective bank rate 1.3870 CAD/USD, about a 2.0% spread vs the BoC mid
- Ledger entry (each currency leg balances independently):
  - CAD-side (balances within CAD):
    - Credit `Deposits` (1002-1): CAD 10,000
    - Debit `FX gain/loss - CAD` (8231-1): CAD 10,000
  - USD-side (balances within USD):
    - Debit `Deposits - USD` (1003): USD 7,210
    - Credit `FX gain/loss - USD` (8231-2): USD 7,210
- No FX gain or loss is recognized at this point; both trading accounts now hold per-currency positions (8231-1 carries CAD 10,000 debit; 8231-2 carries USD 7,210 credit)
- The implicit spread of ~CAD 194 surfaces at period-end revaluation:
  - If year-end BoC rate is 1.36 and the USD 7,210 is still held, translate 8231-2 at 1.36: USD 7,210 × 1.36 = CAD 9,805.60 credit
  - Net of 8231 at year-end: CAD 10,000 debit (8231-1) − CAD 9,805.60 credit (8231-2 translated) = CAD 194.40 debit (net FX loss)
  - This CAD 194.40 flows to Schedule 125 GIFI 8231 as the period's FX gain or loss


## Related

- [Foreign Currency hub](Foreign-Currency.md)
- [Norbert's Gambit](Norberts-Gambit.md)
- [Bookkeeping convention](Bookkeeping-Convention.md)
- [Getting paid in USD](Getting-Paid-In-USD.md)


## Citations

- CRA Income Tax Folio S5-F4-C1 - *Income Tax Reporting Currency* (acceptable rate sources, including the bank's actual settlement rate): https://www.canada.ca/en/revenue-agency/services/tax/technical-information/income-tax/income-tax-folios-index/series-5-international-residency/series-5-international-residency-folio-4-foreign-currency/income-tax-folio-s5-f4-c1-income-tax-reporting-currency.html
- Bank of Canada daily exchange rates (the mid-rate the spread is measured against): https://www.bankofcanada.ca/rates/exchange/daily-exchange-rates/
