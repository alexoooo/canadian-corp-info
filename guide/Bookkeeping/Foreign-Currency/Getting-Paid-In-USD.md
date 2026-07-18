STATUS: AI GENERATED, REVIEW IN PROGRESS

# Getting Paid in USD (Invoicing US Clients)

Scope and limitations are on the [Foreign Currency hub](Foreign-Currency.md).

The accrual + tax basis convention (per [Small Business Tax Overview](../../Overview/Small-Business-Tax.md)) recognizes revenue at the invoice date.  
For a USD invoice, the CAD equivalent is computed at the BoC rate on the invoice date.  
That figure is the recorded revenue.  

## Bookkeeping

On invoice issue, a cross-currency entry (CAD-side revenue, USD-side AR) with FX bridge accounts:
- USD-side (balances within USD):
  - Debit `Trade accounts receivable - USD` (1062-2): USD invoice amount
  - Credit `FX gain/loss - USD` (8231-2): USD invoice amount
- CAD-side (balances within CAD, at invoice-date BoC rate):
  - Debit `FX gain/loss - CAD` (8231-1): USD invoice amount × invoice-date BoC rate
  - Credit `Trade sales of goods and services` (8000): same CAD amount

On collection, two cases:

Case A: USD payment hits the USD operating account (`Deposits - USD`, 1003).  
Pure USD entry; no FX bridge because both legs are USD-native:
- Debit `Deposits - USD` (1003): USD amount received
- Credit `Trade accounts receivable - USD` (1062-2): same USD amount
- No FX gain or loss recognized on collection
  - The FX exposure remains in the trading accounts (8231-1, 8231-2) until period-end revaluation

Case B: USD payment is converted by the bank and lands in the CAD account.  
This combines a customer settlement with a bank FX conversion in a single transaction:
- USD-side (balances within USD):
  - Credit `Trade accounts receivable - USD` (1062-2): USD amount received
  - Debit `FX gain/loss - USD` (8231-2): USD amount received
- CAD-side (balances within CAD, at the bank's actual settlement rate):
  - Debit `Deposits` (1002-1): actual CAD credited (net of explicit fees)
  - Debit `Interest and bank charges` (8710): explicit wire-in / conversion fees if shown
  - Credit `FX gain/loss - CAD` (8231-1): USD amount × bank's settlement rate
    - The CAD value matches the CAD credited plus fees
- No FX gain or loss recognized on this entry
  - The bank's implicit spread is the difference between the bank's settlement rate and the BoC mid
  - It surfaces at period-end revaluation, when 8231-2 is translated at the closing rate

## Year-End Retranslation

Any USD-native monetary balance (AR or cash) at year-end is translated to CAD at the closing BoC rate.  
The trading accounts (8231-1, 8231-2) capture the cumulative per-currency positions through the year.  
Period-end revaluation translates 8231-2 to CAD at the closing rate.  
The net of (8231-1 + translated 8231-2) is the period's FX gain or loss on Schedule 125 GIFI 8231.  

Mechanically, this is done by:
- Translating each foreign-currency-native account balance at the closing rate to produce the Schedule 100 figure
- Translating 8231-2 at the closing rate and netting with 8231-1 to produce the Schedule 125 GIFI 8231 figure
- For accounting software with built-in multi-currency, this happens automatically when year-end reports are generated
  - For spreadsheet-tracked books, do the translation as a year-end working paper

The treatment is income-account (IT-95R paragraph 8); fully includable, no inclusion-rate halving.

## Zero-Rated GST/HST on Services to Non-Residents

Services rendered to a non-resident customer with no presence in Canada are typically *zero-rated*.  
The zero-rating comes from the *Excise Tax Act*, Schedule VI, Part V:
- Section 7 covers general services to a non-resident
- Section 23 covers advisory, professional, or consulting services to a non-resident
  - The typical category for an IT or management consultant
- Both rate the supply at 0% GST/HST while still treating it as a *taxable supply*
- Each has carve-outs: services rendered to an individual physically in Canada; agency services for the non-resident
  - Also services in respect of Canadian real property or tangible personal property in Canada, among others
- The non-resident customer's status and the place of supply both need to support the zero-rating

Invoice presentation:
- Show "GST/HST: $0.00 (zero-rated under Excise Tax Act, Schedule VI, Part V, section 7)" or section 23 as appropriate
- Some businesses omit the GST/HST line; either is acceptable as long as the documentation supports the zero-rating

Registration and ITC consequences:
- Zero-rated revenue still counts as *taxable supplies* for the small-supplier threshold (ETA [s.148](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-148.html))
  - A CCPC with all-US-client revenue over $30,000 in a rolling four-quarter window must register
- Once registered, ITCs on Canadian inputs remain claimable even though all output is zero-rated
  - The corp typically files for a GST/HST refund each period
- See [HST](../../Operations/HST/HST.md) for the full mechanics: registration, reporting periods, ITC tracking, Quick Method
  - A consultant billing only non-resident clients gets no benefit from the Quick Method anyway
    - Zero-rated supplies carry no HST to keep

## Taxable USD Supplies and HST

The zero-rated case above carries no HST, so no FX question arises on the tax.  
A *taxable* USD-denominated supply (for example a USD invoice to a Canadian customer) does carry HST.  
The HST is converted to CAD at the rate on its *tax-point* date (ETA [s.159](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-159.html)).  
The tax point is the earlier of the day the consideration is paid and the day it becomes due (ETA [s.168(1)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html)).  
For a consultant billing on completion this is normally the invoice date.  
See [HST / When tax becomes payable](../../Operations/HST/HST-Bookkeeping.md#when-tax-becomes-payable) for the full s.152 breakdown.  

The HST tax-point rate can differ from the rate date on the revenue:
- *Revenue*: invoice-date BoC rate, as elsewhere on this page
- *HST*: tax-point-date BoC rate under s.159

When the invoice is issued the day it is dated, the two coincide and a single rate applies.  
They diverge across a year-end straddle (see [HST / Year-end straddle](../../Operations/HST/HST-Bookkeeping.md#year-end-straddle-income-vs-hst-timing)).  
Revenue is accrued in the earlier year at that year-end's rate.  
The HST is recognized with the next-year invoice at the later rate.  

## US Withholding Tax and W-8BEN-E

US tax law requires a US client to withhold US tax on payments to a foreign person unless an exemption is supported:
- File Form *W-8BEN-E* with the US client (not with the IRS) to certify the corp's Canadian tax residency
- Claim Article VII (business profits) of the Canada-US Tax Convention
  - Business profits of a Canadian enterprise are taxable only in Canada, absent a US *permanent establishment*
- A remote-from-Canada services CCPC has no US PE under treaty Article V and the US withholding rate is 0%
- The W-8BEN-E is renewed every three years or sooner on a change of circumstances
- Full mechanics are out of scope for this guide

## Worked Example

Setup: single-shareholder Canadian IT consulting CCPC, calendar fiscal year, HST-registered.  
All clients are US corporations with no Canadian presence.  
Year 1 (2026), three transactions:

Mar 15, issue invoice #1 for USD 10,000; BoC rate 1.36:
- USD-side:
  - Debit `Trade accounts receivable - USD` (1062-2): USD 10,000
  - Credit `FX gain/loss - USD` (8231-2): USD 10,000
- CAD-side (at invoice-date BoC 1.36):
  - Debit `FX gain/loss - CAD` (8231-1): CAD 13,600
  - Credit `Trade sales of goods and services` (8000): CAD 13,600
- Invoice shows GST/HST: $0.00 (zero-rated, ETA Sch VI Part V s.23)

Apr 20, USD 10,000 received into `Deposits - USD`:
- Pure USD entry (no FX bridge; both legs USD-native):
  - Debit `Deposits - USD` (1003): USD 10,000
  - Credit `Trade accounts receivable - USD` (1062-2): USD 10,000
- No FX gain or loss recognized; the FX exposure stays in the trading accounts

Oct 1, issue invoice #2 for USD 5,000; BoC rate 1.36:
- USD-side:
  - Debit `Trade accounts receivable - USD` (1062-2): USD 5,000
  - Credit `FX gain/loss - USD` (8231-2): USD 5,000
- CAD-side (at invoice-date BoC 1.36):
  - Debit `FX gain/loss - CAD` (8231-1): CAD 6,800
  - Credit `Trade sales of goods and services` (8000): CAD 6,800

Dec 31, year-end revaluation at closing BoC rate 1.38:
- Account balances before revaluation:
  - `Trade accounts receivable - USD` (1062-2): USD 5,000 (invoice #2 unpaid)
  - `Deposits - USD` (1003): USD 10,000 (from invoice #1)
  - `FX gain/loss - CAD` (8231-1): CAD 20,400 debit (= 13,600 + 6,800)
  - `FX gain/loss - USD` (8231-2): USD 15,000 credit (= 10,000 + 5,000)
  - `Trade sales` (8000): CAD 20,400 credit
- Translate USD-native balances at the closing rate (1.38):
  - `Trade accounts receivable - USD` → CAD 6,900 (Schedule 100 GIFI 1062)
  - `Deposits - USD` → CAD 13,800 (Schedule 100 GIFI 1003)
  - `FX gain/loss - USD` 8231-2 → CAD 20,700 credit (translated)
- Schedule 125 GIFI 8231 = net of (8231-1 CAD 20,400 debit) + (8231-2 translated CAD 20,700 credit)
  - The net is CAD 300 credit → net FX gain CAD 300

Schedule 125 year 1:
- Trade sales (GIFI 8000): CAD 20,400
- Foreign exchange gain/loss (GIFI 8231): CAD 300 gain

Schedule 1 reconciliation: none required.  
Income-account FX is fully includable and the GIFI line already flows to taxable income.  

Economic check:
- Invoice #1: USD 10,000 recognized as CAD 13,600 revenue (at 1.36)
  - The USD is held, not converted, so it revalues to CAD 13,800 at year-end (1.38), an FX gain of CAD 200
- Invoice #2: USD 5,000 recognized as CAD 6,800 revenue (at 1.36)
  - Still outstanding at year-end, worth CAD 6,900 (at 1.38), an FX gain of CAD 100
- Net FX: 200 + 100 = +300 CAD gain ✓ (matches the trading-account result)


## Related

- [Foreign Currency hub](Foreign-Currency.md)
- [HST](../../Operations/HST/HST.md)
- [Bookkeeping convention](Bookkeeping-Convention.md)
- [Small Business Tax Overview](../../Overview/Small-Business-Tax.md)


## Citations

- Excise Tax Act (R.S.C., 1985, c. E-15):
  - Schedule VI, Part V, section 7 - zero-rated general services to non-residents
  - Schedule VI, Part V, section 23 - zero-rated advisory, professional, or consulting services to non-residents
  - [s.148](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-148.html) - small-supplier threshold (zero-rated supplies count toward the $30,000 test)
  - [s.159](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-159.html) - conversion of foreign-currency consideration to CAD at the HST tax-point date
  - [s.168(1)](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-168.html) - HST payable on the earlier of payment and consideration becoming due (the tax-point date)
- CRA publications:
  - CRA archived IT-95R - *Foreign Exchange Gains and Losses* (paragraph 8, accrual basis for income-account FX): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it95r/archived-foreign-exchange-gains-losses.html
  - CRA GST/HST Memorandum 4.5.3 - *Exports — Services and Intellectual Property*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/4-5-3/exports-services-intangible-personal-property.html
  - CRA GST/HST Memorandum 4.5.1 - *Exports — Determining Residence Status*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/4-5-1/exports-determining-residence-status.html
  - CRA RC4022 - *General Information for GST/HST Registrants*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4022/general-information-gst-hst-registrants.html
  - CRA RC4058 - *Quick Method of Accounting for GST/HST*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4058/quick-method-accounting-gst-hst.html


## Links

- IRS Form W-8BEN-E (PDF): https://www.irs.gov/pub/irs-pdf/fw8bene.pdf
