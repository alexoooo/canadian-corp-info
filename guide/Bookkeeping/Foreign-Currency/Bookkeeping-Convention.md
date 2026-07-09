STATUS: AI GENERATED, REVIEW IN PROGRESS

# Bookkeeping Convention

Scope and limitations are on the [Foreign Currency hub](Foreign-Currency.md).


## Multi-Currency Bookkeeping Convention

The worked examples across this topic use a *multi-currency native* convention: each ledger account has a single native currency, cross-currency transactions split into a CAD leg and a USD leg with separate FX bridge accounts per currency, and FX gain or loss is recognized at period-end revaluation rather than at each settlement.  
This is what GnuCash, Xero, and QuickBooks Multi-Currency produce natively, and it keeps each bank account and AR balance in the currency the underlying account actually holds.  

The equivalent *single-currency translated* form (every account holds CAD figures, foreign-currency amounts translated at the transaction-date rate) is also CRA-acceptable and produces identical T2 figures when applied correctly; the choice between the two is a bookkeeping representation, not a tax-method choice.  

How it works:
- Each ledger account has a single native currency; CAD-native accounts hold CAD, USD-native accounts hold USD, and the two never mix within a single account
- Cross-currency transactions split into two legs, each balancing within its own currency, with `FX gain/loss - CAD` (8231-1) and `FX gain/loss - USD` (8231-2) acting as the per-currency bridge
- Same-currency transactions (USD payment closing a USD receivable; CAD payment from `Deposits` to a Canadian supplier) are pure-currency entries with no FX bridge
- Investment accounts stay *CAD-native* even when the underlying security trades in USD: ACB is defined in ITA [s.54](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-54.html) and, for a Canadian-resident corporation reporting in CAD under [s.261](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-261.html), the figure is CAD-denominated
  - The investment ledger account holds the CAD ACB, and subsequent USD/CAD movement affects the cash side (`Deposits - USD`) instead of the investment side
- Period-end revaluation translates every foreign-currency-native account balance to CAD at the closing BoC rate
- The net of (8231-1 in CAD + 8231-2 translated to CAD at the closing rate) is the FX gain or loss for the period and flows to Schedule 125 GIFI 8231

The `FX gain/loss` sub-accounts (8231-1, 8231-2) accumulate per-currency positions through the year and are not separately reported; both roll up to a single GIFI 8231 line on Schedule 125 after the period-end translation.  


## GIFI Mapping

Account codes used through the worked examples across this topic.  
Where the guide splits one GIFI line into per-currency or per-purpose sub-accounts, each carries a `-N` suffix (matching the convention in [T3](../../Investments/T3/T3.md)); an account that is the only one on its GIFI line uses the plain code, and every code rolls up to its parent GIFI line at year-end.  

<table>
  <thead>
    <tr><th>Account</th><th>Internal code</th><th>Currency</th><th>Notes</th></tr>
  </thead>
  <tbody>
    <tr><td>Assets</td><td>2599-valid</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; └ Current assets</td><td>1599-calc</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Cash and deposits</td><td>1000</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Deposits</td><td>1002-1</td><td>CAD</td><td>Deposits in Canadian banks - Canadian currency</td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Deposits - investment</td><td>1002-2</td><td>CAD</td><td>Cash in a CAD investment account (per <a href="../../Investments/T3/T3.md">T3</a>)</td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Deposits - USD</td><td>1003</td><td>USD</td><td>Deposits in Canadian banks - foreign currency</td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Trade accounts receivable</td><td>1062-parent</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Trade accounts receivable - CAD</td><td>1062-1</td><td>CAD</td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Trade accounts receivable - USD</td><td>1062-2</td><td>USD</td><td>Translated at the closing BoC rate at year-end</td></tr>
    <tr><td nowrap>&ensp; └ Long-term investments</td><td>2300</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Canadian shares</td><td>2303</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Brokerage</td><td>2303-1</td><td>CAD</td><td>ACB-denominated in CAD even when traded in USD (per <a href="../../Investments/T3/T3.md">T3</a>)</td></tr>
    <tr><td>Revenue</td><td>8299-valid</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; └ Trade sales of goods and services</td><td>8000</td><td>CAD</td><td></td></tr>
    <tr><td nowrap>&ensp; └ Realized gains/losses on disposal of assets</td><td>8210</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Realized gains/losses on sale of investments</td><td>8211</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; &ensp; &ensp; └ Disposition of capital property</td><td>8211-1</td><td>CAD</td><td>Per <a href="../../Investments/T3/T3.md">T3</a></td></tr>
    <tr><td nowrap>&ensp; └ Foreign exchange gain/loss</td><td>8231</td><td></td><td>FX line on Schedule 125 (not 8210)</td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Foreign exchange gain/loss - CAD</td><td>8231-1</td><td>CAD</td><td>Net with 8231-2 at the closing rate</td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Foreign exchange gain/loss - USD</td><td>8231-2</td><td>USD</td><td>Translated at the closing BoC rate</td></tr>
    <tr><td>Operating expenses</td><td>9367-calc</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; └ Interest and bank charges</td><td>8710</td><td>CAD</td><td></td></tr>
  </tbody>
</table>

Notes on the codes:
- GIFI 1003 captures USD deposits at a Canadian bank; GIFI 1004 (foreign bank, CAD) and 1005 (foreign bank, foreign currency) are reserved for accounts at foreign banks and are not in scope here
- GIFI 8231 is the FX-specific line on Schedule 125, covering realized and unrealized FX on income-account monetary items
  - Do not confuse it with GIFI 8210, the broader realized-gains-on-disposal-of-assets line
- Splitting `FX gain/loss` into 8231-1 (CAD-native) and 8231-2 (USD-native) is what makes the trading-account convention work; both roll up to GIFI 8231 at year-end
- For broader account-tree conventions (investment accounts, withholding taxes, GIFI rollups), see [T3](../../Investments/T3/T3.md)


## Related

- [Foreign Currency hub](Foreign-Currency.md)
- [FX rates and character](FX-Rates-And-Character.md)
- [Ledger and Accounts](../Ledger-And-Accounts.md)
- [T3](../../Investments/T3/T3.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.54](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-54.html) - definition of "adjusted cost base"
  - [s.261](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-261.html) - reporting currency (CAD by default for a Canadian-resident corporation)
- CRA RC4088 - *General Index of Financial Information (GIFI)*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html
