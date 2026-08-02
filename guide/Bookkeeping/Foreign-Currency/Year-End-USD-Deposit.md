STATUS: AI GENERATED, REVIEW IN PROGRESS

# Year-End USD Deposit Account

Scope and limitations are on the [Foreign Currency hub](Foreign-Currency.md).

Year-end handling depends on whether the USD cash is on income account or capital account.  

*Operating USD deposit* (the typical small-CCPC case):
- Cash arose from US-client invoicing and is used to pay USD operating expenses
- Income-account character; revalue at the year-end closing BoC rate
- Recognize the unrealized FX gain or loss on Schedule 125 GIFI 8231
- Fully includable in income; no Schedule 1 adjustment

*Investment USD deposit*:
- USD acquired *separately* for a capital purpose — funded by a CAD→USD conversion made to buy securities, not swept
  over from operating receipts
- Capital-account character; *no* year-end revaluation (a capital gain under ITA s.39(1) arises on disposition only)
- The FX gain or loss surfaces when the USD is used to buy a USD security, or is converted back to CAD
  - On a security buy, the security's CAD ACB is the trade-date conversion
- This mirrors the FX convention for purchases and dispositions of foreign securities in [Adjusted Cost Base](../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md)

Sitting in a brokerage account is not what makes USD capital-account.  
Operating USD moved into the brokerage account, or earmarked for a purchase, keeps its income-account character; the
income FX result crystallizes when those funds are spent (see
[FX rates and character](FX-Rates-And-Character.md#capital-account-vs-income-account-fx)).  

In practice, for most owner-managed CCPCs the USD balance is on income account.  
It flows from operations and is used for operations.  
The capital-account treatment applies narrowly to USD separately acquired *and* held for investment.  

## Worked Example

Setup: single-shareholder consulting CCPC keeps a small USD float for paying US software vendors directly.  
The float is funded once a year from CAD via internal bank conversion.  
Calendar fiscal year, opening USD 0.

Mar 1, internal CAD → USD bank conversion to fund the float; CAD 7,000 → USD 5,000 at the bank's effective rate of 1.40:
- CAD-side (balances within CAD):
  - Credit `Deposits` (1002-1): CAD 7,000
  - Debit `FX gain/loss - CAD` (8231-1): CAD 7,000
- USD-side (balances within USD):
  - Debit `Deposits - USD` (1003): USD 5,000
  - Credit `FX gain/loss - USD` (8231-2): USD 5,000

Aug 15, pay USD 2,000 to a US software vendor for a subscription covering Aug 15 2026 to Aug 14 2027;
bill-date BoC rate 1.35:
- USD-side:
  - Credit `Deposits - USD` (1003): USD 2,000
  - Debit `FX gain/loss - USD` (8231-2): USD 2,000
- CAD-side (at bill-date BoC 1.35):
  - Credit `FX gain/loss - CAD` (8231-1): CAD 2,700
  - Debit `Prepaid expenses` (GIFI 1484, CAD-native): CAD 2,700

The service runs past the December 31 year-end, so the whole CAD 2,700 cannot be deducted this year.  
ITA [s.18(9)(a)(i)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) denies the deduction to the
extent the payment buys services after year-end, and s.18(9)(b) moves that portion into the later year.  
Booking it to prepaid first keeps the books and the return on the same footing.

Dec 31, release the consumed portion — 139 of 365 days, Aug 15 to Dec 31:
- Debit `Computer-related expenses / Software subscriptions` (GIFI 9150): CAD 1,028.22
- Credit `Prepaid expenses` (1484): CAD 1,028.22

CAD 1,671.78 stays on Schedule 100 as a prepaid asset and releases to expense through 2027.  
The FX legs are unaffected: the rate date is still the bill date, and the prepaid is a CAD-native balance that never
gets retranslated.  

Dec 31, year-end revaluation at closing BoC rate 1.38:
- Account balances before revaluation:
  - `Deposits - USD` (1003): USD 3,000 (= 5,000 funded − 2,000 paid)
  - `FX gain/loss - CAD` (8231-1): CAD 4,300 debit (= 7,000 debit − 2,700 credit)
  - `FX gain/loss - USD` (8231-2): USD 3,000 credit (= 5,000 credit − 2,000 debit)
- Translate USD-native balances at the closing rate (1.38):
  - `Deposits - USD` → CAD 4,140 (Schedule 100 GIFI 1003)
  - `FX gain/loss - USD` 8231-2 → CAD 4,140 credit (translated)
- Schedule 125 GIFI 8231 = net of (8231-1 CAD 4,300 debit) + (8231-2 translated CAD 4,140 credit)
  - The net is CAD 160 debit → net FX loss CAD 160

Schedule 125 year:
- Software subscriptions (operating expense): CAD 1,028.22, the portion consumed by December 31
- Foreign exchange gain/loss (GIFI 8231): CAD 160 loss

Schedule 100 also carries `Prepaid expenses` (1484) of CAD 1,671.78.  

Schedule 1 reconciliation: none required.  
Income-account FX is fully includable, and the prepaid split already puts the book deduction where s.18(9) puts the
tax one — without it, the CAD 1,671.78 would need adding back.  

Economic check:
- Mar 1: paid CAD 7,000 for USD 5,000; effective USD cost basis CAD 1.40/USD
- Aug 15: paid USD 2,000 of software, recorded as CAD 2,700 of cost at BoC 1.35 (prepaid, then released over time)
  - Original CAD basis on those USD 2,000 was 2,000 × 1.40 = CAD 2,800; realized FX loss CAD 100 on the outflow
- Dec 31: USD 3,000 remaining, worth CAD 4,140 at year-end (1.38)
  - Original CAD basis 3,000 × 1.40 = CAD 4,200; unrealized FX loss CAD 60 on the remaining balance
- Net economic FX: −100 − 60 = −160 CAD loss ✓ (matches the trading-account result)

The CAD 160 is the total economic FX loss against the CAD the bank was paid.  
The corp bought USD at 1.40 and the BoC mid never reached 1.40, so the position never recovered its CAD cost basis.  
Splitting that CAD 160 between the bank's initial spread and later market movement needs the March 1 BoC mid-rate,
which this example does not give: the spread is 1.40 less that day's mid, and everything after is currency movement.  

Year 2, no USD activity, closing BoC rate 1.42:
- The bridge accounts carry forward; neither closed to retained earnings at the year-1 close
- Translate USD-native balances at 1.42:
  - `Deposits - USD` → CAD 4,260 (Schedule 100 GIFI 1003)
  - `FX gain/loss - USD` 8231-2 → CAD 4,260 credit (translated)
- Cumulative net: CAD 4,300 debit (8231-1) − CAD 4,260 credit (8231-2 translated) = CAD 40 debit
- The cumulative loss falls from CAD 160 to CAD 40, so year 2 shows a gain
  - Schedule 125 GIFI 8231 for year 2: 160 − 40 = CAD 120 gain
  - It matches the economics: USD 3,000 × (1.42 − 1.38) = CAD 120


## Related

- [Foreign Currency hub](Foreign-Currency.md)
- [FX rates and character](FX-Rates-And-Character.md)
- [Bank conversions](Bank-Conversions.md)
- [Adjusted Cost Base](../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.39(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) - capital gain or loss recognized on disposition only (capital-account USD)
- CRA archived IT-95R - *Foreign Exchange Gains and Losses* (paragraphs 8 and 9, accrual for income-account vs disposition-only for capital-account FX): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it95r/archived-foreign-exchange-gains-losses.html
