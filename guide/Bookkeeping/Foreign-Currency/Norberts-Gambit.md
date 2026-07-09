STATUS: AI GENERATED, REVIEW IN PROGRESS

# Norbert's Gambit: USD ↔ CAD via DLR / DLR.U

Scope and limitations are on the [Foreign Currency hub](Foreign-Currency.md).

*Norbert's Gambit* is a technique for converting USD↔CAD at low cost through interlisted securities on the TSX.  
The standard vehicle is *DLR* (CAD-listed) and *DLR.U* (USD-listed): two listings of the same fund, with the same CUSIP, distinguished only by the currency of the cash leg.  

## Mechanism

The fund:
- *Global X US Dollar Currency ETF* (rebranded from Horizons in 2024), tickers DLR (TSX, CAD) and DLR.U (TSX, USD)
- Holds USD T-bills and a USD high-interest-savings ETF; unit value tracks USD/CAD mechanically
- Management expense ratio ~0.57% (annualized; only meaningful if held long-term; immaterial for an overnight Gambit)

The trade sequence for USD → CAD (the typical corporate use case for moving US-client invoice proceeds back to CAD):
1. With USD cash in the brokerage account, buy DLR.U (USD-listed); the trade settles T+1
2. Journal the DLR.U units to the CAD side, where they become DLR units (same security, same CUSIP; the journal is an internal broker bookkeeping entry, not a market transaction)
3. Sell DLR for CAD; the sale settles T+1
4. CAD proceeds appear in the CAD side of the brokerage account

The trade sequence for CAD → USD is the mirror: buy DLR with CAD, journal to USD side, sell DLR.U for USD.  

Settlement timing:
- Equities in Canada moved from T+2 to *T+1 settlement* on 2024-05-27
- Brokers that auto-journal (RBC Direct Investing, BMO InvestorLine) let you initiate the second leg the same day as the first; the journal reconciles on the back end
- Brokers that require a phone call or secure message typically settle the round trip over 2 business days

## Broker Support

Broker-specific Gambit support shifts over time; the table below reflects publicly documented behaviour as of 2026 and should be re-verified with the broker's current FAQ before relying on it.

- *RBC Direct Investing*: automatic via the "Sell in USD" option when selling DLR; free; round-trip usually same-day
- *BMO InvestorLine*: automatic; free; reconciled the next business day
- *CIBC Investor's Edge*: online request; free; settles 1–3 business days
- *TD Direct Investing*: online via Securities Transfers; free; some users still rely on secure-message workflow
- *Scotia iTrade*: phone or secure message; free; not permitted in registered accounts
- *National Bank Direct Brokerage*: online journal; ~$9.95 plus tax journal fee; $0 trading commission on stocks and ETFs
- *Questrade*: online journal portal since 2025-01-31; ~$9.95 plus tax journal fee (waived with Questrade Plus); $0 trading commission
- *Wealthsimple*: Norbert's Gambit in beta as of 2026; confirm corporate-account availability with the broker before assuming support
- *Interactive Brokers Canada*: direct interbank FX through FXCONV / IDEALPRO at ~1 basis point with a ~$2 minimum is cheaper than the Gambit; use that instead unless you need the cash in another broker

## Tax Characterization

The Gambit round trip is a *securities disposition*, not an income-account currency conversion:
- DLR and DLR.U are *identical property* under ITA [s.47(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-47.html); the ACB is pooled and computed in CAD
- The ACB of the DLR.U leg is the CAD equivalent of the USD purchase price at the *trade-date* BoC rate, consistent with the convention used elsewhere in this guide for securities
  - CRA technical interpretation 2015-0588981C6 (a transcribed APFF Roundtable position, persuasive rather than binding) instead points to the *settlement-date* rate for FX on a disposition; this guide stays on trade-date for consistency with the [Adjusted Cost Base](../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md) workflow
- The disposition produces a small capital gain or loss equal to (CAD proceeds from the DLR sale) − (CAD ACB of the DLR.U leg) − (outlays and expenses on disposition)
- Half of the gain (or loss) is taxable (or deductible) at the current 50% inclusion rate; report on T2 Schedule 6 under capital-property dispositions
- The capital gain is part of *Aggregate Investment Income* (AII) and does not benefit from the *Small Business Deduction*
  - For a small Gambit gain this is immaterial, but the entry is still required
- The personal $200 FX de minimis (s.39(1.1)) does not apply to a corporation: every Gambit, however small the gain, is reportable

The broker's T5008:
- The broker may issue a T5008 for the DLR sale leg with a "Book Cost" that does not match your computed CAD ACB
- Do not use the T5008 Book Cost on Schedule 6; use your own ACB tracking
- The standard ACB-tracking workflow applies; see [Adjusted Cost Base — Tracking](../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md)

## Cost Comparison

Concrete example on USD 50,000:

- Bank wire / retail FX at 2% spread: USD 50,000 × 1.36 × 0.02 ≈ CAD 1,360 lost to spread
- Norbert's Gambit, round-trip, at a flat-commission bank broker:
  - DLR.U bid-ask spread ~10 bps + DLR bid-ask spread ~7 bps: ≈ USD 85 (≈ CAD 116)
  - Two commissions of $9.95 (or one journal fee at NBDB / Questrade): ≈ CAD 20
  - Total all-in: ~CAD 130–140
- Savings on this size: ~CAD 1,220, about 10× cheaper than the bank
- Break-even threshold against a 2% bank spread:
  - Bank broker with $9.95 commissions: ~CAD 1,300
  - NBDB or Questrade with $9.95 journal fee and $0 commissions: ~CAD 600–650
  - Below the break-even, the bank conversion is cheaper because the per-trip Gambit overhead exceeds the spread savings

## Bookkeeping

Worked example (convert USD 10,000 of invoice proceeds back to CAD via Gambit at a flat-commission bank broker).  
Assume: BoC rate on day 0 is 1.36; DLR.U trades at USD 10.00; DLR trades at CAD 13.60 on day 1; two $9.95 trading commissions (one in USD on the buy leg, one in CAD on the sell leg).  

The `Brokerage` account is CAD-native: ACB is defined in ITA s.54 and CAD-denominated by default reporting currency (s.261), so the USD purchase enters the investment account at the trade-date CAD equivalent (USD 10,009.95 × 1.36 = CAD 13,613.53).  
The USD-side cash outflow is bridged to the CAD-side investment entry via the per-currency FX accounts.  

Day 0, buy 1,000 units of DLR.U at USD 10.00 + USD 9.95 commission = USD 10,009.95:
- USD-side (balances within USD):
  - Credit `Deposits - USD` (1003): USD 10,009.95
  - Debit `FX gain/loss - USD` (8231-2): USD 10,009.95
- CAD-side (balances within CAD, at trade-date BoC 1.36):
  - Credit `FX gain/loss - CAD` (8231-1): CAD 13,613.53
  - Debit `Brokerage` (2303-1, CAD-native): CAD 13,613.53

Day 1, journal DLR.U units to the DLR side:
- No ledger entry; the journal is an internal broker bookkeeping action with no cash impact, and the investment account is already CAD-denominated

Day 1, sell 1,000 units of DLR at CAD 13.60 = CAD 13,600 minus $9.95 commission = CAD 13,590.05 net proceeds:
- Pure CAD entry (no FX bridge; both legs CAD-native):
  - Debit `Deposits` (1002-1): CAD 13,590.05
  - Debit `Disposition of capital property` (8211-1, capital-account; Schedule 6 disposition): CAD 23.48
  - Credit `Brokerage` (2303-1): CAD 13,613.53

Schedule 6 entry:
- Description: "DLR / DLR.U, Norbert's Gambit round trip"
- Proceeds of disposition: CAD 13,600 (gross before commission)
- Outlays and expenses on disposition: CAD 9.95 (sell-side commission)
- ACB: CAD 13,613.53 (USD purchase plus buy-side commission, at trade-date FX)
- Capital loss: CAD 23.48 (= 13,600 − 9.95 − 13,613.53)
- Half of the loss is an *allowable capital loss* on Schedule 1 in the usual capital-gains pattern; small losses are still reportable

The trading accounts (8231-1, 8231-2) from the buy leg carry the per-currency positions of the FX conversion: 8231-1 has a CAD 13,613.53 credit balance and 8231-2 has a USD 10,009.95 debit balance.  
At period-end, translate 8231-2 to CAD at the closing rate; the net of 8231-1 and 8231-2 (translated) is the income-account FX gain or loss on the USD from when it arrived until the day-0 DLR.U buy, since the USD is disposed of on day 0 rather than held across the journal window.  
In full books that residual nets against the bridge entries booked when the USD first came in; the journal-window FX drift itself shows up in the Schedule 6 disposition result, which dominates the round trip, not in 8231.


## Related

- [Foreign Currency hub](Foreign-Currency.md)
- [Bank conversions](Bank-Conversions.md)
- [Adjusted Cost Base](../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md)
- [Adjusted Cost Base — Tracking](../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md)
- [T5008](../../Investments/T5008/T5008.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.38](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-38.html) - taxable capital gain inclusion rate (one-half)
  - [s.39(1.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) - $200 personal FX de minimis (individuals only; does not apply to corporations)
  - [s.47(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-47.html) - identical-properties pooling (relevant for DLR / DLR.U as the same fund)
  - [s.54](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-54.html) - definition of "adjusted cost base"
- CRA technical interpretation 2015-0588981C6 - APFF Roundtable position on the FX rate for a disposition (settlement-date; persuasive, not binding)
- CRA T2 Schedule 6 - *Summary of Dispositions of Capital Property*: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch6.html


## Links

- finiki — *Norbert's gambit*: https://www.finiki.org/wiki/Norbert%27s_gambit
- Canadian Couch Potato — *Taxable Consequences of Norbert's Gambit*: https://canadiancouchpotato.com/2015/02/26/taxable-consequences-of-norberts-gambit/
- Global X — DLR product page: https://www.globalx.ca/product/dlr
- Canadian Securities Administrators — T+1 settlement announcement: https://www.securities-administrators.ca/news/canadian-securities-regulators-announce-move-to-t1-settlement-cycle/
