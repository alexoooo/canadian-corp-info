STATUS: AI GENERATED, REVIEW IN PROGRESS

# Bookkeeping Convention

Scope and limitations are on the [Foreign Currency hub](Foreign-Currency.md).


## Multi-Currency Native Convention

The worked examples across this topic use a *multi-currency native* convention.  
Each ledger account has a single native currency, and cross-currency transactions split into CAD and USD legs.  
Each leg balances through a per-currency FX bridge account.  
FX gain or loss is recognized at period-end revaluation rather than at each settlement.  
It keeps each bank account and AR balance in the currency the underlying account actually holds.  

How it works:
- Each ledger account has a single native currency
  - CAD-native accounts hold CAD, USD-native accounts hold USD, and the two never mix within a single account
- Cross-currency transactions split into two legs, each balancing within its own currency
  - `FX gain/loss - CAD` (8231-1) and `FX gain/loss - USD` (8231-2) act as the per-currency bridge
- Same-currency transactions are pure-currency entries with no FX bridge
  - E.g. a USD payment closing a USD receivable, or a CAD payment from `Deposits` to a Canadian supplier
- Investment accounts stay *CAD-native* even when the underlying security trades in USD
  - ACB is defined in ITA [s.54](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-54.html)
  - For a Canadian-resident corporation reporting in CAD under [s.261](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-261.html), the ACB figure is CAD-denominated
  - The investment ledger account holds the CAD ACB
  - Subsequent USD/CAD movement affects the cash side (`Deposits - USD`) instead of the investment side
- Period-end revaluation translates every foreign-currency-native account balance to CAD at the closing BoC rate
- The net of (8231-1 in CAD + 8231-2 translated at the closing rate) is the *cumulative* FX position
  - The period's gain or loss is the change in that net since the prior year-end
  - In the first year the accounts open at zero, so the cumulative net and the period figure coincide
- Only the period figure is reported, on Schedule 125 GIFI 8231

The bridge accounts (8231-1, 8231-2) carry forward across year-ends rather than closing to retained earnings.  
Closing them would erase the currency position the next year's revaluation nets against.  
GnuCash gives them their own top-level `Trading` account type for this reason, outside the income and expense close.  

The progression across a year boundary is worked in [Year-end USD deposit](Year-End-USD-Deposit.md).  


## Single-Currency Translated Books

Every ledger account holds CAD, including the accounts tracking foreign-currency balances.  
Each foreign amount is translated on entry at the transaction-date rate, so no account ever holds a USD figure.  
A single account cannot hold both currencies at once: a balance is a running total, and a total needs one unit.  

How it works:
- The account tree and the GIFI codes are unchanged; `Deposits - USD` (1003) is simply carried in CAD
- The `-N` splits that exist only to separate currencies collapse
  - One `FX gain/loss` (8231) instead of the bridge pair, one `Trade accounts receivable` (1062) instead of two
- Every entry balances in CAD, so a cross-currency transaction is a single ordinary entry
- Realized FX is forced out at each settlement, because the CAD figures on the two sides differ
- Period-end revaluation covers the remaining foreign-currency monetary balances
  - The currency units come from a side schedule, since the ledger no longer carries them
- Investment accounts are CAD-native under both forms, since ACB is CAD-denominated

USD 10,000 invoice at 1.36, collected in USD at 1.34, still held at a year-end closing rate of 1.38:
- Mar 15, invoice:
  - Debit `Trade accounts receivable` (1062): CAD 13,600
  - Credit `Trade sales of goods and services` (8000): CAD 13,600
- Apr 20, collection:
  - Debit `Deposits - USD` (1003): CAD 13,400
  - Debit `FX gain/loss` (8231): CAD 200
  - Credit `Trade accounts receivable` (1062): CAD 13,600
- Dec 31, revaluation of USD 10,000 at 1.38 against a carrying amount of CAD 13,400:
  - Debit `Deposits - USD` (1003): CAD 400
  - Credit `FX gain/loss` (8231): CAD 400
- Schedule 125 GIFI 8231: 400 − 200 = CAD 200 gain

The same facts under the multi-currency native convention:
- Collection is a pure USD entry against a USD-native receivable, so the 1.34 rate never enters the books
- 8231-1 carries CAD 13,600 debit; 8231-2 carries USD 10,000 credit, translated at 1.38 to CAD 13,800
- Net: CAD 200 gain, the same Schedule 125 figure
- The two forms differ in when the FX surfaces, not in what reaches the T2

After the collection, `Deposits - USD` reads CAD 13,400 for USD 10,000, an implied 1.34.  
The balance is a historical-cost pool, matching neither the opening nor the closing rate.  


## Choosing a Convention

CRA prescribes the reporting currency (ITA [s.261(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-261.html)) and requires adequate records (ITA [s.230](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-230.html)).  
Neither constrains the ledger's internal representation, so either form serves when applied consistently.  
The choice is a bookkeeping representation, not a tax-method choice.  

Single-currency translated advantages:
- Every entry balances in CAD; no two-legged split, no bridge accounts, no `-N` sub-codes
- The GIFI 8231 figure is the account's own period balance, with no cumulative-vs-period arithmetic
- Realized FX lands at settlement, where the economics happened
- Works in a plain spreadsheet with no multi-currency support

Single-currency translated disadvantages:
- The ledger loses the foreign-currency unit count
  - `Deposits - USD` reads CAD 13,400 while the bank statement reads USD 10,000, with nothing connecting them
  - A separate schedule of currency units is needed both to reconcile and to compute the revaluation
- Each balance is a historical-cost pool at a blended implied rate, matching neither year-end
- A rate looked up wrong on entry is baked into the balance and hard to find later
- Accounting software with multi-currency support will not produce this form

Multi-currency native advantages:
- Foreign balances reconcile directly to bank and broker statements
- The rate is applied once at reporting time, so a rate correction re-runs cleanly
- It is what GnuCash, Xero, and QuickBooks Multi-Currency produce
  - GnuCash requires the option: File → Properties → Accounts → Use Trading Accounts

Multi-currency native disadvantages:
- Cross-currency entries are two-legged and need the bridge accounts
- The bridge accounts carry forward and are read as a period change rather than a balance
- FX surfaces only at revaluation, not where the underlying transaction happened

For a handful of USD transactions a year tracked in a spreadsheet, single-currency translated is simpler.  
Multi-currency native earns its complexity when the software maintains it.  
The rest of this topic uses the native form.  


## GIFI Mapping

Account codes used through the worked examples across this topic.  
Where the guide splits one GIFI line into per-currency or per-purpose sub-accounts, each carries a `-N` suffix.  
The suffix convention matches [T3](../../Investments/T3/T3.md).  
An account that is the only one on its GIFI line uses the plain code.  
Every code rolls up to its parent GIFI line at year-end.  

The exception is the `FX gain/loss` pair (8231-1, 8231-2).  
GIFI 8231 takes the change in their net over the period, not their balances.  

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
    <tr><td nowrap>&ensp; &ensp; └ Foreign exchange gain/loss - CAD</td><td>8231-1</td><td>CAD</td><td>Carried forward; the net change is the GIFI 8231 figure</td></tr>
    <tr><td nowrap>&ensp; &ensp; └ Foreign exchange gain/loss - USD</td><td>8231-2</td><td>USD</td><td>Translated at the closing BoC rate; carried forward, not closed</td></tr>
    <tr><td>Operating expenses</td><td>9367-calc</td><td></td><td></td></tr>
    <tr><td nowrap>&ensp; └ Interest and bank charges</td><td>8710</td><td>CAD</td><td></td></tr>
  </tbody>
</table>

Notes on the codes:
- GIFI 1003 captures USD deposits at a Canadian bank
  - GIFI 1004 (foreign bank, CAD) and 1005 (foreign bank, foreign currency) are not in scope here
- GIFI 8231 is the FX-specific line on Schedule 125: realized and unrealized FX on income-account monetary items
  - Do not confuse it with GIFI 8210, the broader realized-gains-on-disposal-of-assets line
- Splitting `FX gain/loss` into 8231-1 (CAD-native) and 8231-2 (USD-native) makes the trading-account convention work
  - The change in their net over the period feeds GIFI 8231; the accounts themselves carry forward
- Under single-currency translated books the same table applies with one plain `FX gain/loss` (8231) and no `-N` split
- For broader account-tree conventions (investment accounts, withholding taxes, GIFI rollups), see [T3](../../Investments/T3/T3.md)


## Related

- [Foreign Currency hub](Foreign-Currency.md)
- [FX rates and character](FX-Rates-And-Character.md)
- [Year-end USD deposit](Year-End-USD-Deposit.md)
- [Ledger and Accounts](../Ledger-And-Accounts.md)
- [T3](../../Investments/T3/T3.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.54](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-54.html) - definition of "adjusted cost base"
  - [s.230](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-230.html) - records and books of account adequate to determine the tax payable
  - [s.261(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-261.html) - reporting currency (CAD by default for a Canadian-resident corporation)
- CRA archived IT-95R - *Foreign Exchange Gains and Losses* (paragraph 8, accrual basis for income-account monetary items): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it95r/archived-foreign-exchange-gains-losses.html
- CRA Income Tax Folio S5-F4-C1 - *Income Tax Reporting Currency* (transaction-date conversion): https://www.canada.ca/en/revenue-agency/services/tax/technical-information/income-tax/income-tax-folios-index/series-5-international-residency/series-5-international-residency-folio-4-foreign-currency/income-tax-folio-s5-f4-c1-income-tax-reporting-currency.html
- CRA RC4088 - *General Index of Financial Information (GIFI)*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html


## Links

- GnuCash wiki — *Trading Accounts*: https://wiki.gnucash.org/wiki/Trading_Accounts


## TODO

- The `FX gain/loss` pair (8231-1, 8231-2) is named and filed as income but behaves as a currency position
  - The accounts do not close, and GIFI 8231 takes their net change rather than their balances
  - Consider renaming them and moving them out of the Revenue block on a maintainer sign-off pass
  - The rename ripples through every worked example on this topic
