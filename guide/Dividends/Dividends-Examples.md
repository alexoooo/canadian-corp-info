STATUS: AI GENERATED, REVIEW IN PROGRESS

# Dividend examples

See parent document: [Dividends](Dividends.md)

**Who this is for**:
- Owners of a CCPC who want end-to-end examples tying the declaration, bookkeeping, T2 schedules, and dividend refund together

Limitations:
- Four examples: an eligible dividend, a non-eligible dividend, a year-end NERDTOH-recovery dividend, and a capital dividend
- Ontario rates current as of the first half of 2026; for other provinces swap in the relevant rates and DTCs
- Personal-side tax is shown only briefly for context; the corp-side workflow is the focus


## Worked examples

The examples below use Ontario rates current as of the first half of 2026:
- Federal SBD rate: 9%
- Ontario SBD rate: 3.2% (combined small-business rate 12.2%)
- Federal general rate: 15%
- Ontario general rate: 11.5% (combined general rate 26.5%)
- Ontario eligible-dividend tax credit: 10% of the grossed-up amount
- Ontario non-eligible DTC: 2.9863% of the grossed-up amount

The 2026 Ontario budget proposes:
- Cut the Ontario small-business CIT rate from 3.2% to 2.2% effective July 1, 2026 (combined SBD rate 12.2% → 11.2%, prorated for tax years straddling July 1, 2026)
- Drop the Ontario non-eligible DTC from 2.9863% to 1.9863% effective January 1, 2027

For tax years or scenarios that straddle these effective dates, restate the rates accordingly.  
For other provinces, swap in the relevant provincial corp rates and DTCs; the mechanics are identical.  
Each example focuses on the corp-side workflow: declaration, journal entries, T2 schedule entries, and the dividend refund (where applicable).  
Personal-side tax is mentioned briefly for context.  


### Example A - eligible dividend from general-rate active business income

Setup:
- A CCPC with $700,000 of active business income in 2025: $500,000 at the combined SBD rate (12.2%) and $200,000 at the combined general rate (26.5%)
- The $200,000 of general-rate income generates a GRIP addition of $200,000 × 72% = **$144,000** (ITA s.89(1))

In 2026 the directors declare a $50,000 eligible dividend to the sole shareholder; resolution and payment same day; eligible-dividend designation notice provided to the shareholder.  

Declaration:  
Debit: "Dividends declared - eligible" (GIFI 3700) = $50,000  
Credit: "Dividends payable" (GIFI 2962) = $50,000  

Payment:  
Debit: "Dividends payable" (GIFI 2962) = $50,000  
Credit: "Cash" (GIFI 1001) = $50,000  

T2 (2026) schedule entries:
- S3 Part 3: line 450 (taxable dividends paid, non-connected) $50,000, all eligible — line 455 $50,000, line 465 (total eligible paid) $50,000
- S3 Part 4: line 500 (total dividends paid in the year) $50,000
- S53 (GRIP): opening $144,000 − eligible paid $50,000 + 2026 additions = closing balance
- T2 dividend refund line: $0 (no ERDTOH balance assumed in this example)

Personal-side context: the shareholder reports $50,000 × 1.38 = $69,000 taxable on T1; federal DTC of $69,000 × 15.0198% ≈ $10,364; Ontario DTC of $69,000 × 10% = $6,900.  


### Example B - non-eligible dividend from after-tax SBD-rate retained earnings

Setup:
- The CCPC has been operating entirely under the SBD limit since incorporation
- 2026 active business income $300,000 (combined 12.2%) → $36,600 corporate tax → $263,400 added to retained earnings
- GRIP balance is $0 (no general-rate income)
- NERDTOH balance is $0 (no investment income)

In late 2026 the directors declare an $80,000 non-eligible dividend to the sole shareholder; resolution and payment same day.  

Declaration and payment collapsed:  
Debit: "Dividends declared - non-eligible" (GIFI 3700) = $80,000  
Credit: "Cash" (GIFI 1001) = $80,000  

T2 (2026) schedule entries:
- S3 Part 3: line 450 (taxable dividends paid, non-connected) $80,000, all non-eligible — line 470 (total non-eligible paid) $80,000
- S3 Part 4: line 500 (total dividends paid in the year) $80,000
- S53: opening $0, no change
- T2 dividend refund line: $0 (no NERDTOH balance)

Personal-side context: shareholder reports $80,000 × 1.15 = $92,000 taxable on T1; federal DTC of $92,000 × 9.0301% ≈ $8,308; Ontario DTC of $92,000 × 2.9863% ≈ $2,747.  


### Example C - year-end non-eligible dividend sized to recover NERDTOH (AII / passive-income path)

Setup:
- A CCPC with $200,000 of active business income in 2026 (under SBD; combined 12.2%)
- Plus $40,000 of AII from interest, foreign income, and the taxable portion of capital gains on corporate investments
- The $40,000 is below the $50,000 AAII grind threshold (AAII equals AII here), so SBD is preserved

NERDTOH calculation:
- 2026 NERDTOH addition: $40,000 × 30⅔% = **$12,266.67** (ITA s.129(4)); refundable Part I tax remitted with 2026 instalments
- Opening NERDTOH: $0
- Year-end NERDTOH: $12,266.67

To fully recover the NERDTOH balance, the corporation needs a non-eligible dividend of $12,266.67 ÷ 38⅓% = **$32,000** (per the dividend refund formula in ITA s.129(1)).  

Year-end timing: the corporation's year-end is December 31, 2026.  
On December 30, 2026 the directors pass a resolution declaring a $32,000 non-eligible dividend, *immediately payable* and credited to the shareholder's loan account on the same date.  
The actual cash transfer to the shareholder's personal bank account is scheduled for January 15, 2027.  

Declaration and credit (Dec 30, 2026, booked in 2026 fiscal year):  
Debit: "Dividends declared - non-eligible" (GIFI 3700) = $32,000  
Credit: "Dividends payable" (GIFI 2962) = $32,000  

Debit: "Dividends payable" (GIFI 2962) = $32,000  
Credit: "Due to shareholder" (GIFI 2780 area) = $32,000  

Cash settlement (Jan 15, 2027, booked in 2027 fiscal year):  
Debit: "Due to shareholder" (GIFI 2780 area) = $32,000  
Credit: "Cash" (GIFI 1001) = $32,000  

The two declaration-day entries can be collapsed into a single line (Debit "Dividends declared", Credit "Due to shareholder").  
The intermediate "Dividends payable" step is shown to make the legal sequence explicit.  

T2 (2026) schedule entries:
- S3 Part 3: line 450 (taxable dividends paid, non-connected) $32,000, all non-eligible — line 470 (total non-eligible paid) $32,000
- S3 Part 4: line 500 (total dividends paid in the year) $32,000
- T2 dividend refund line: line 470 × 38⅓% = $32,000 × 38⅓% = **$12,266.67**, capped at the NERDTOH balance of $12,266.67
- The $12,266.67 refund offsets 2026 Part I tax payable

T5 slip: because the dividend is declared *and credited* to the shareholder's loan account on December 30, 2026, it is "paid or credited" in 2026 for T5 purposes.  
The T5 goes on the 2026 calendar year (deadline: last day of February 2027) and the shareholder reports it on their 2026 T1.  

If the resolution had instead made the dividend payable on January 15, 2027 with no December credit to a shareholder account, the dividend would belong to the 2027 calendar year for *both* T5 / T1 *and* the corp-side dividend refund.  
ITA s.129(1) uses the same "paid, credited, or otherwise made available" standard; without an in-year credit the dividend has not been paid in 2026 and the NERDTOH refund is deferred to the 2027 T2.  
The December-30 credit to *Due to shareholder* is the load-bearing step that makes the same-year refund possible.  

The corporation has converted $12,266.67 of refundable Part I tax sitting in NERDTOH into a cash refund by paying out the $32,000 non-eligible dividend.  
The shareholder receives $32,000 cash in January 2027 against a *Due to shareholder* balance set up on December 30, 2026, and reports the dividend on their 2026 T1.  


### Example D - capital dividend election

Setup:
- The corporation realized a $20,000 net capital gain in 2026 (after offsetting prior losses)
- The non-taxable portion (50% under the current inclusion rate) is **$10,000**, added to the CDA

In 2026 the directors elect under ITA s.83(2) to pay a $10,000 capital dividend.  
Form T2054 is filed via CRA My Business Account with a certified copy of the resolution attached, on or before the day the dividend becomes payable (or the first day any part is paid, if earlier).  

Declaration:  
Debit: "Capital dividends declared" (GIFI 3700) = $10,000  
Credit: "Dividends payable" (GIFI 2962) = $10,000  

Payment:  
Debit: "Dividends payable" (GIFI 2962) = $10,000  
Credit: "Cash" (GIFI 1001) = $10,000  

T2 (2026) interactions:
- *No T5 issued* (capital dividend is not income to a Canadian-resident shareholder)
- *S3 line 510* (dividends paid out of the capital dividend account): $10,000; it is included in the line 500 total dividends paid but backed out of the taxable-dividend lines 450–470, so it adds nothing to the dividend refund
- CDA balance reduces by $10,000 (tracked on the corporation's CDA worksheet, not on a T2 schedule)
- Form T2054 + certified resolution submitted on or before the day the dividend becomes payable, or first paid if earlier (this is what makes the dividend a capital dividend for tax purposes; the S3 line by itself does not elect)

Personal-side context: capital dividend is tax-free to a Canadian-resident shareholder; not reported on the T1.  

A capital dividend can also be settled by credit to the shareholder loan account (Credit "Due to shareholder") or by clearing a *Due from shareholder* receivable, using the same bookkeeping patterns shown above.  
Only the credit side of the payment entry changes.  
The T2054 election timing is independent of the settlement method: the election still has to be filed on or before the day the dividend becomes payable (or the first day any part is paid, if earlier).  

For full mechanics, see [Capital-Dividend-Account.md](../Capital-Dividend-Account/Capital-Dividend-Account.md):
- The s.184(2) Part III tax penalty for over-electing
- The S89 CDA balance verification
- The CRA My Business Account submission workflow

## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) - capital dividend election (Example D)
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - GRIP and the 0.72 general rate factor (Example A)
  - [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - SBD grind on AAII over $50,000 (Example C)
  - [s.129](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - dividend refund (s.129(1)); refundable Part I tax on AII feeding NERDTOH (s.129(4))
