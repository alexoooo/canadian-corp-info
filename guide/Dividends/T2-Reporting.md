STATUS: AI GENERATED, REVIEW IN PROGRESS

# T2 reporting

See parent document: [Dividends](Dividends.md)

**Who this is for**:
- Owners of a CCPC completing the corporate return for a year in which a dividend was paid

Limitations:
- Covers the T2 schedules a dividend touches (Schedule 3, Schedule 53, Schedule 55), the dividend-refund line, and the Form T2054 capital-dividend election
- The declaration, payment, and bookkeeping steps are in [Declaring and paying a dividend](Declaring-And-Paying.md) and [Bookkeeping and information slips](Bookkeeping-And-Slips.md)
- The Opco-Holdco / connected-corporation structure is mentioned only briefly; the receiving side is in [T3](../T3/T3.md)


## T2 reporting

Paying a dividend touches several T2 schedules beyond the bookkeeping entries in [Bookkeeping and information slips](Bookkeeping-And-Slips.md).  
Most T2 software (FutureTax, TaxCycle) populates these automatically once the dividend amount and designation are entered.  
Knowing which schedule reports what helps you sanity-check the result.  


## Schedule 3 - dividends-paid section

Schedule 3 (S3 - *Dividends Received, Taxable Dividends Paid, and Part IV Tax Calculation*) is shared with the dividend-receiving side covered in [T3.md](../T3/T3.md).  
The dividends-paid side appears in Part 3 and Part 4 of the schedule:
- *Part 3 / Box 450*: total *taxable* dividends paid in the tax year to recipients other than connected corporations (the dividend to the owner-manager); split between eligible and non-eligible portions in the input cells
- *Part 4 / Box 500*: total taxable dividend paid in the tax year (up to Box 450); the figure that drives the dividend refund calculation
- *Capital dividends paid*: capital dividends are not taxable dividends, so they do *not* go in the Box 450 / Box 500 figures
  - Reported on Schedule 3 on the dedicated capital-dividends-paid line (immediately above the taxable-dividends-paid section in current versions of the form)

The capital-dividend line on S3 is reporting only; it does not by itself elect anything.  
The s.83(2) election still needs Form T2054 filed on or before the day the dividend becomes payable, or the first day any part is paid if earlier (see *Capital dividend election - Form T2054* below).  

If the shareholder is itself a Canadian corporation (e.g. an owner-manager who holds the operating company through a personal *holding company*, Holdco), the recipient is a *connected corporation* under ITA [s.186(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-186.html).  
The payer corp is connected to the recipient if the recipient controls the payer, or owns >10% of votes and >10% of FMV of the payer's shares (s.186(4)).  

A dividend to a connected recipient:
- Does not go in Box 450; reported on the connected-corporation portion of Schedule 3 instead
- The receiving Holdco's tax treatment shifts to the *Part IV tax* mechanics on the receiving side, rather than driving the payer's refund directly
- Holdco only pays Part IV tax to the extent the payer claims a dividend refund (s.186(1))

For the receiving-side mechanics see [T3.md](../T3/T3.md).  
The Opco-Holdco structure itself is out of scope for this page.  


## Schedule 53 - GRIP calculation

Schedule 53 (S53 - *General Rate Income Pool (GRIP) Calculation*) tracks the running GRIP balance year over year.  
See the [GRIP section in Dividends.md](Dividends.md#grip---capacity-for-eligible-dividends) for the addition formula and the conceptual treatment.  

S53 must be filed annually even when GRIP is zero.  
This is what carries the balance forward and gives CRA a year-by-year audit trail of GRIP capacity.  

Most T2 software auto-populates S53 from the general-rate active business income on Schedule 1 / Schedule 7 plus eligible dividends received and paid.  
Verify that the closing balance matches expectations, especially in the first year you designate an eligible dividend.  


## Schedule 55 - Part III.1 tax on excessive eligible dividend designations

Schedule 55 (S55 - *Part III.1 Tax on Excessive Eligible Dividend Designations*) is filed only when the corporation designates more eligible dividends in the year than its GRIP balance can support.  
The excess is an *excessive eligible dividend designation* (EEDD).  

The Part III.1 tax under ITA [s.185.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-185.1.html) is 20% of the excess (s.185.1(1)(a)), with an additional 10% (30% in total, under s.185.1(1)(b)) where the excessive designation arises under paragraph (c) of the s.89(1) definition.  
That paragraph is the anti-avoidance rule for designations one of whose main purposes is to artificially inflate GRIP or deflate LRIP.  
That extra 10% is an objective GRIP/LRIP-manipulation test, not a "knowing or grossly negligent" culpability standard.  

Under ITA s.185.1(2), the corporation can jointly elect with the shareholder(s) who received the excess to treat the EEDD as a separate non-eligible dividend instead:
- Eliminates the Part III.1 tax
- Reclassifies the excess for the shareholder's personal tax (smaller gross-up and DTC)
- Must be made within 90 days of the day the corporation is assessed for the Part III.1 tax
- Not available where the 30% rate applies (an EEDD arising under paragraph (c) of the s.89(1) definition: the GRIP/LRIP-manipulation case)

For an owner-managed CCPC where the director and the shareholder are the same person, the joint election is straightforward to execute.  
Verify the GRIP balance *before* designating, so the excess never arises.  


## Dividend refund line on the T2

The dividend refund calculated under ITA s.129(1) is reported on the T2 jacket as the *dividend refund for the year* (historically T2 line 784; verify against the current form release).  
The refund is applied as a credit against Part I and Part IV tax payable for the year; any excess is paid out (or applied to instalments) when the T2 is assessed.  
The underlying ERDTOH and NERDTOH balances and the eligible/non-eligible split of the refund are computed on T2 Page 7 (or via a dedicated dividend-refund worksheet, depending on T2 software).  
For the receiving-side mechanics that fill ERDTOH/NERDTOH (Part IV tax on dividends received from other corporations), see [T3.md](../T3/T3.md).  


## Capital dividend election - Form T2054

A capital dividend is reported on the capital-dividend line of Schedule 3 (per the S3 section above).  
*In addition*, the corporation files Form T2054 (*Election for a Capital Dividend Under Subsection 83(2)*) with a certified copy of the directors' resolution, on or before the day the dividend becomes payable (or the first day any part is paid, if earlier).  

The S3 line is information-reporting; the T2054 is what makes the dividend a capital dividend for tax purposes.  
Both are required.  

For full mechanics, see [Capital-Dividend-Account.md](../Capital-Dividend-Account/Capital-Dividend-Account.md):
- The s.184(2) Part III tax penalty for over-electing
- The S89 CDA balance verification
- The CRA My Business Account submission workflow

## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) - capital dividend election; the elected amount is excluded from the shareholder's income under s.83(2)(b)
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - GRIP definition; and paragraph (c) of the *excessive eligible dividend designation* definition, the anti-avoidance rule behind the additional Part III.1 rate
  - [s.129](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - dividend refund on taxable dividends paid (s.129(1))
  - [s.184(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-184.html) - Part III tax on excessive capital dividend elections (60% of the excess)
  - [s.185.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-185.1.html) - Part III.1 tax on excessive eligible dividend designations (20%, plus an additional 10% where the excess arises under paragraph (c) of the s.89(1) definition); s.185.1(2) joint election to reclassify the excess as a separate non-eligible dividend (unavailable when the 30% rate applies)
  - [s.186](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-186.html) - Part IV tax on dividends received by a corporation from a connected payer (s.186(1)); definition of "connected" corporations (s.186(4))
- CRA forms:
  - T2054 - Election for a Capital Dividend Under Subsection 83(2): https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2054.html
- CRA guides:
  - T4012 - T2 Corporation Income Tax Guide: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html
- T2 schedules:
  - S3 - Dividends Received, Taxable Dividends Paid, and Part IV Tax Calculation: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch3.html
  - S53 - General Rate Income Pool (GRIP) Calculation: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch53.html
  - S55 - Part III.1 Tax on Excessive Eligible Dividend Designations: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch55.html
