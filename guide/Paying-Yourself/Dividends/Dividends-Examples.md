STATUS: AI GENERATED, REVIEW IN PROGRESS

# Dividend Examples

See parent document: [Dividends](Dividends.md)

**Who this is for**:
- Owners of a CCPC who want end-to-end examples: declaration, bookkeeping, T2 schedules, and dividend refund together

Limitations:
- Four examples:
  - An eligible dividend
  - A non-eligible dividend
  - A year-end NERDTOH-recovery dividend
  - A capital dividend
- Each example pins its Ontario rate inputs to its stated period; for other provinces, swap in the relevant inputs
- Personal-side tax is shown only briefly for context; the corp-side workflow is the focus


## Worked Examples

Each setup states the rate inputs for its period; they are scenario inputs, not a current rate table.  
Current corporate rates live on [Small Business Tax](../../Overview/Small-Business-Tax.md), while gross-ups and
dividend tax credits live on [Tax Integration](../../Overview/Tax-Integration.md).  

Each example focuses on the corp-side workflow.  
The steps: declaration, journal entries, T2 schedule entries, and the dividend refund (where applicable).  
Personal-side tax is mentioned briefly for context.  


### Example A - Eligible Dividend from General-Rate Active Business Income

Setup:
- A CCPC with $700,000 of active business income in 2025
  - $500,000 at the combined SBD rate (12.2%) and $200,000 at the combined general rate (26.5%)
- The $200,000 of general-rate income generates a GRIP addition of $200,000 × 72% = **$144,000** (ITA s.89(1))

In 2026 the directors declare a $50,000 eligible dividend to the sole shareholder.  
Resolution and payment fall on the same day; the eligible-dividend designation notice is provided to the shareholder.  

Declaration:  
Debit: "Dividends declared - eligible" (GIFI 3700) = $50,000  
Credit: "Dividends payable" (GIFI 2962) = $50,000  

Payment:  
Debit: "Dividends payable" (GIFI 2962) = $50,000  
Credit: "Deposits" (GIFI 1002-1) = $50,000  

T2 (2026) schedule entries:
- S3 Part 3: line 450 (taxable dividends paid, non-connected) $50,000, all eligible
  - Line 455 $50,000; line 465 (total eligible paid) $50,000
- S3 Part 4: line 500 (total dividends paid in the year) $50,000
- S53 (GRIP): opening $144,000 + 2026 additions = closing balance (line 590)
  - The $50,000 designated in 2026 is tested against that closing balance
  - It is then deducted on the 2027 S53 (line 300, *eligible dividends paid in the previous tax year*)
- T2 dividend refund line: $0 (no ERDTOH balance assumed in this example)

Personal-side context:
- The shareholder reports $50,000 × 1.38 = $69,000 taxable on T1
- Federal DTC of $69,000 × 15.0198% ≈ $10,364; Ontario DTC of $69,000 × 10% = $6,900


### Example B - Non-Eligible Dividend from After-Tax SBD-Rate Retained Earnings

Setup:
- The CCPC has been operating entirely under the SBD limit since incorporation
- 2026 active business income $300,000, calendar tax year (combined ≈ 11.7% after the July 1 proration)
  - $35,100 corporate tax → $264,900 added to retained earnings
- GRIP balance is $0 (no general-rate income)
- NERDTOH balance is $0 (no investment income)

In late 2026 the directors declare an $80,000 non-eligible dividend to the sole shareholder.  
Resolution and payment fall on the same day.  

Declaration and payment collapsed:  
Debit: "Dividends declared - non-eligible" (GIFI 3700) = $80,000  
Credit: "Deposits" (GIFI 1002-1) = $80,000  

T2 (2026) schedule entries:
- S3 Part 3: line 450 (taxable dividends paid, non-connected) $80,000, all non-eligible
  - Line 470 (total non-eligible paid) $80,000
- S3 Part 4: line 500 (total dividends paid in the year) $80,000
- S53: opening $0, no change
- T2 dividend refund line: $0 (no NERDTOH balance)

Personal-side context:
- The shareholder reports $80,000 × 1.15 = $92,000 taxable on T1
- Federal DTC of $92,000 × 9.0301% ≈ $8,308; Ontario DTC of $92,000 × 2.9863% ≈ $2,747


### Example C - Year-End Non-Eligible Dividend Sized to Recover NERDTOH (AII / Passive-Income Path)

Setup:
- A CCPC with $200,000 of active business income in a calendar-2026 tax year (under SBD; combined ≈ 11.7%)
- Plus $40,000 of AII from interest, foreign income, and the taxable portion of capital gains on corporate investments
- The $40,000 is below the $50,000 AAII grind threshold (AAII equals AII here), so SBD is preserved

NERDTOH calculation:
- 2026 NERDTOH addition: $40,000 × 30⅔% = **$12,266.67** (ITA s.129(4))
  - Refundable Part I tax remitted with 2026 instalments
- Opening NERDTOH: $0
- Year-end NERDTOH: $12,266.67

To fully recover the NERDTOH balance, the corporation needs a non-eligible dividend of $12,266.67 ÷ 38⅓% = **$32,000**.  
The factor comes from the dividend refund formula in ITA s.129(1).  

Year-end timing: the corporation's year-end is December 31, 2026.  
On December 30, 2026 the directors pass a resolution declaring a $32,000 non-eligible dividend, *immediately payable*.  
The dividend is credited to the shareholder's loan account on the same date.  
The actual cash transfer to the shareholder's personal bank account is scheduled for January 15, 2027.  

Declaration and credit (Dec 30, 2026, booked in 2026 fiscal year):  
Debit: "Dividends declared - non-eligible" (GIFI 3700) = $32,000  
Credit: "Dividends payable" (GIFI 2962) = $32,000  

Debit: "Dividends payable" (GIFI 2962) = $32,000  
Credit: "Due to shareholder" (GIFI 2780 area) = $32,000  

Cash settlement (Jan 15, 2027, booked in 2027 fiscal year):  
Debit: "Due to shareholder" (GIFI 2780 area) = $32,000  
Credit: "Deposits" (GIFI 1002-1) = $32,000  

The two declaration-day entries can be collapsed into a single line.  
Collapsed: Debit "Dividends declared", Credit "Due to shareholder".  
The intermediate "Dividends payable" step is shown to make the legal sequence explicit.  

T2 (2026) schedule entries:
- S3 Part 3: line 450 (taxable dividends paid, non-connected) $32,000, all non-eligible
  - Line 470 (total non-eligible paid) $32,000
- S3 Part 4: line 500 (total dividends paid in the year) $32,000
- T2 dividend refund line: line 470 × 38⅓% = $32,000 × 38⅓% = **$12,266.67**, capped at the NERDTOH balance of $12,266.67
- The $12,266.67 refund offsets 2026 Part I tax payable

T5 slip: the dividend is declared *and credited* to the shareholder's loan account on December 30, 2026.  
That makes it "paid or credited" in 2026 for T5 purposes.  
The T5 goes on the 2026 calendar year (deadline: last day of February 2027).  
The shareholder reports it on their 2026 T1.  

Suppose the resolution had instead made the dividend payable on January 15, 2027, with no December credit.  
The dividend would then belong to the 2027 calendar year for *both* T5 / T1 *and* the corp-side dividend refund.  
ITA s.129(1) uses the same "paid, credited, or otherwise made available" standard.  
Without an in-year credit the dividend has not been paid in 2026, and the NERDTOH refund is deferred to the 2027 T2.  
The December-30 credit to *Due to shareholder* is the load-bearing step that makes the same-year refund possible.  

The corporation has converted the $12,266.67 of refundable Part I tax in NERDTOH into a cash refund.  
The conversion came from paying out the $32,000 non-eligible dividend.  
The shareholder receives $32,000 cash in January 2027 against a *Due to shareholder* balance set up on December 30, 2026.  
They report the dividend on their 2026 T1.  


### Example D - Capital Dividend Election

Setup:
- The corporation realized a $20,000 net capital gain in 2026 (after offsetting prior losses)
- The non-taxable portion (50% under the current inclusion rate) is **$10,000**, added to the CDA

In 2026 the directors elect under ITA s.83(2) to pay a $10,000 capital dividend.  
Form T2054 is filed via CRA My Business Account, with two attachments (Reg 2101):
- A certified copy of the resolution
- A schedule showing the CDA computation immediately before the dividend becomes payable, the time s.83(2) tests

The deadline is on or before the day the dividend becomes payable (or the first day any part is paid, if earlier).  

Declaration:  
Debit: "Capital dividends declared" (GIFI 3700) = $10,000  
Credit: "Dividends payable" (GIFI 2962) = $10,000  

Payment:  
Debit: "Dividends payable" (GIFI 2962) = $10,000  
Credit: "Deposits" (GIFI 1002-1) = $10,000  

T2 (2026) interactions:
- *No T5 issued* (capital dividend is not income to a Canadian-resident shareholder)
- *S3 line 510* (dividends paid out of the capital dividend account): $10,000
  - Included in the line 500 total dividends paid but backed out of the taxable-dividend lines 450–470
  - It adds nothing to the dividend refund
- CDA balance reduces by $10,000
  - Tracked on the corporation's CDA worksheet; no annually filed T2 schedule carries it
  - Schedule 89 is an on-demand balance-verification request
- Form T2054 + certified resolution submitted by the day the dividend becomes payable, or first paid if earlier
  - This is what makes the dividend a capital dividend for tax purposes; the S3 line by itself does not elect

Personal-side context: capital dividend is tax-free to a Canadian-resident shareholder; not reported on the T1.  

A capital dividend can also be settled by credit to the shareholder loan account (Credit "Due to shareholder").  
Clearing a *Due from shareholder* receivable works too, using the same bookkeeping patterns shown above.  
Only the credit side of the payment entry changes.  
The T2054 election timing is independent of the settlement method.  
It still has to be filed by the day the dividend becomes payable (or the first day any part is paid, if earlier).  

For full mechanics, see [Capital-Dividend-Account.md](../../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md):
- The s.184(2) Part III tax penalty for over-electing
- The S89 CDA balance verification
- The CRA My Business Account submission workflow


## Related

- [Dividends](Dividends.md)
- [Declaring and Paying](Declaring-And-Paying.md)
- [Bookkeeping and Slips](Bookkeeping-And-Slips.md)
- [T2 Reporting](T2-Reporting.md)
- [Tax Integration](../../Overview/Tax-Integration.md) (gross-up and dividend-tax-credit rate owner)
- [Small Business Tax](../../Overview/Small-Business-Tax.md) (corporate-rate owner)
- [Capital Dividend Account](../../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) - capital dividend election (Example D)
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - GRIP and the 0.72 general rate factor (Example A)
  - [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - SBD grind on AAII over $50,000 (Example C)
  - [s.129](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - dividend refund (s.129(1)); refundable Part I tax on AII feeding NERDTOH (s.129(4))
