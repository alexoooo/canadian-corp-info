STATUS: AI GENERATED, REVIEW IN PROGRESS

# FX Rates and Character

Scope and limitations are on the [Foreign Currency hub](Foreign-Currency.md).


## Reporting Currency and Exchange-Rate Sources

The Income Tax Act presumes a Canadian-resident corporation reports in Canadian dollars (ITA [s.261(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-261.html)).  
Foreign-currency amounts are converted to CAD at the transaction-date rate (CRA Income Tax Folio S5-F4-C1).  

Acceptable sources for the exchange rate, applied consistently across the year:
- *Bank of Canada daily exchange rate*: published once per business day by approximately 16:30 ET
  - The BoC describes these as *indicative rates* based on aggregated market quotes
  - CRA folio S5-F4-C1 names them as the default rate for post-2017-02-28 conversions
  - Replaced the legacy noon rate (last published 2017-04-28)
- *Year-average BoC rate*: CRA folio S5-F4-C1 accepts an annual average for income-account items
  - Available where the rate does not fluctuate significantly through the year
  - Used as a simplification when the per-transaction rate is impractical
- The corp's *bank's actual settlement rate* on the transaction
  - Acceptable when the bank statement shows the CAD and USD legs of an actual conversion
  - The only rate that reflects what actually happened in the account
- Other commercial sources (Bloomberg, Reuters, OANDA), applied consistently
- For a small CCPC the practical convention is:
  - BoC daily rate for accruals, year-end revaluations, and ACB
  - The bank's actual settlement rate for any CAD↔USD conversion the bank itself performed

The *functional currency election* under ITA [s.261(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-261.html) lets a corporation file its T2 in USD, EUR, GBP, AUD, or JPY.  
The elected currency must be the corporation's *primary* books-and-records currency.  
The election is available only to a corporation resident in Canada.  
Investment corporations, mortgage investment corporations, and mutual fund corporations are excluded.  
It is filed on Form T1296 no later than 60 days after the first day of the first tax year for which it applies.  
For a typical owner-managed CCPC with CAD bank accounts and Canadian customers, CAD remains the primary currency.  
The election is therefore not available, and it is out of scope here.  


## When to Use Which Rate

CRA folio S5-F4-C1 lets a corporation pick any consistent and appropriate method for income-account items.  
The accepted methods are current-rate / accrual, settlement, fixed-rate, and average-rate.  
This guide uses the *transaction-date* method throughout, applied per-event as listed below.  

The rate-by-event convention used throughout this guide, with cross-links to where each rule is applied:

- *Trade date*: securities purchases, sales, and commissions ([Adjusted Cost Base](../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md))
- *Payment date*: investment distributions including ROC, dividends, and reinvested or phantom amounts ([T3](../../Investments/T3/T3.md))
- *Invoice date*: revenue recognized on a USD-denominated invoice issued to a customer
- *Bill date*: expense or payable recognized on a USD-denominated invoice received from a supplier
- *Settlement date*: bank's actual conversion rate on the CAD side of a cross-currency cash settlement
  - E.g. an incoming USD wire converted directly to CAD on receipt, or a USD payment funded from a CAD account
- *Year-end closing rate*: revaluation of unsettled foreign-currency *monetary items* (cash, receivables, payables)
  - Feeds Schedule 100 and Schedule 125 reporting
- *Average annual rate*: only used under a full-translation accounting methodology
  - Rarely applied by a small CCPC because each transaction is already converted at its own date rate

A *monetary item* is a unit of currency or an obligation to deliver a fixed or determinable number of currency units.  
Examples: cash, receivables, payables, debt instruments.  
A *non-monetary item* is everything else: inventory, capital assets, prepaid expenses, equity securities.  
The year-end-revaluation rule applies only to monetary items.  
Non-monetary items stay at the historical CAD figure recorded on acquisition.  


## Capital-Account vs Income-Account FX

This is the load-bearing distinction in foreign-currency tax.  
Every FX gain or loss has a character that follows the underlying transaction.  

*Income-account FX*:
- Arises from ordinary business operations
  - USD trade receivables, USD operating cash from invoicing, USD payables to suppliers, USD operating expenses
- Fully includable in income in the year recognized (no inclusion-rate halving)
- CRA accepts the *accrual basis*: revalue monetary items at year-end, recognizing the unrealized gain or loss in income
  - CRA archived bulletin [IT-95R](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it95r/archived-foreign-exchange-gains-losses.html), paragraph 8
- Reported on Schedule 125 under `Foreign exchange gains/losses` (GIFI 8231)

*Capital-account FX*:
- Arises from dispositions of *capital property*
  - Foreign securities; USD held in an investment account to acquire securities
  - Settlement of a foreign-currency capital obligation
- 50% inclusion rate (ITA [s.38](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-38.html))
- Recognized only on disposition (ITA [s.39(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) with [s.40](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html)), not on year-end revaluation (IT-95R paragraph 9)
- "Disposition" of foreign currency includes converting it to CAD or to a third currency
  - It also includes using it to pay a CAD obligation or to acquire property
- Reported on Schedule 6 (Summary of Dispositions of Capital Property)
- Reconciled through Schedule 1 in the usual capital-gains accounting-to-tax pattern
  - The full accounting gain or loss is removed; the taxable half from Schedule 6 is added back

The $200 personal FX de minimis under ITA [s.39(1.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) applies only to *individuals*.  
A corporation has no de minimis: every capital-account FX gain or loss, however small, is reportable on Schedule 6.  

Which side of the line a given USD balance sits on:
- USD operating cash from US-client invoicing → *income account* (revalue at year-end)
- USD operating cash used to pay USD suppliers → *income account*
- USD floor balance kept in the operating account to waive the monthly account fee → *income account*
  - It is working capital that happens to be idle, and fee avoidance is itself an operating purpose
  - Character would flip only if the balance were committed to a capital purpose
    - E.g. moved to a trading account to buy securities
- USD cash in a corporate trading account waiting to buy USD securities → *capital account* (no year-end revaluation)
- USD-denominated long-term debt the corp issued → *capital account*

For a typical owner-managed CCPC consultant, almost all USD activity is income-account.  
Capital-account FX appears only on disposition of USD securities and is handled through the ACB workflow.


## Related

- [Foreign Currency hub](Foreign-Currency.md)
- [Bookkeeping convention](Bookkeeping-Convention.md)
- [Adjusted Cost Base](../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md)
- [T3](../../Investments/T3/T3.md)
- [Small Business Tax Overview](../../Overview/Small-Business-Tax.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.38](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-38.html) - taxable capital gain inclusion rate (one-half)
  - [s.39(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) - definitions of capital gain and capital loss
    - Includes a disposition of foreign currency held on capital account
  - [s.39(1.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) - $200 personal FX de minimis (individuals only; does not apply to corporations)
  - [s.39(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) - capital FX gain or loss arising without a disposition of property
    - E.g. settling a foreign-currency capital obligation
  - [s.40(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html) - general capital-gain-on-disposition formula
  - [s.261](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-261.html) - functional currency election and acceptable exchange-rate sources
- CRA archived IT-95R - *Foreign Exchange Gains and Losses* (paragraphs 8 and 9 on accrual vs settlement for income-account vs capital-account FX): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it95r/archived-foreign-exchange-gains-losses.html
- CRA Income Tax Folio S5-F4-C1 - *Income Tax Reporting Currency*: https://www.canada.ca/en/revenue-agency/services/tax/technical-information/income-tax/income-tax-folios-index/series-5-international-residency/series-5-international-residency-folio-4-foreign-currency/income-tax-folio-s5-f4-c1-income-tax-reporting-currency.html
- CRA Form T1296 - *Election, or Revocation of an Election, to Report in a Functional Currency*: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t1296.html
- Bank of Canada daily exchange rates: https://www.bankofcanada.ca/rates/exchange/daily-exchange-rates/
