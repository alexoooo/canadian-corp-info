STATUS: AI GENERATED, REVIEW IN PROGRESS

# Bookkeeping and Information Slips

See parent document: [Dividends](Dividends.md)

**Who this is for**:
- Owners of a CCPC recording a dividend on the corporate books and issuing the shareholder's information slip

Limitations:
- Covers the double-entry journal entries, the T5 slip and Summary and its filing, and the NR4 for non-residents
- The declaration and payment steps are in [Declaring and paying a dividend](Declaring-And-Paying.md)
- The corporate-return schedules are in [T2 reporting](T2-Reporting.md)
- NR4 mechanics are touched on only briefly; full non-resident withholding is out of scope


## Bookkeeping Journal Entries

Standard double-entry treatment for an owner-managed CCPC paying its sole shareholder.  
GIFI codes are aligned to the CRA GIFI guide ([RC4088](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html)).  

GIFI does not split dividends declared by tax classification.  
All cash dividends declared roll up to GIFI 3700 (*Dividends declared*) in the Statement of Retained Earnings.  
The roll-up is the same whether they are eligible, non-eligible, or capital.  
The chart of accounts can still carry separate sub-accounts, so the corp's books show the type breakdown internally.  
Examples: "Dividends declared - eligible", "Dividends declared - non-eligible", "Capital dividends declared".  
At the GIFI roll-up level all three map to 3700.  
The eligible/non-eligible split is reported on the taxable-dividends-paid section of T2 Schedule 3.  
Capital dividends paid are reported on the separate capital-dividend line of Schedule 3.  
A Form T2054 election is additionally required (see [T2 reporting](T2-Reporting.md)).  

Declaration. Book the resolution; substitute the relevant chart-of-accounts sub-account as appropriate.  
Debit: "Dividends declared" (GIFI 3700) = $X  
Credit: "Dividends payable" (GIFI 2962) = $X  

Payment, when cash transfers.  
Debit: "Dividends payable" (GIFI 2962) = $X  
Credit: "Deposits" (GIFI 1002-1, or whichever bank account pays it) = $X  

Payment via credit to the shareholder loan account. Substitute for the cash credit.  
The dividend is credited to *Due to shareholder*, increasing the amount the corporation owes the shareholder.  
Cash settles later against that loan balance.  
Debit: "Dividends payable" (GIFI 2962) = $X  
Credit: "Due to shareholder" (GIFI 2780 area) = $X  

Payment via clearing a shareholder loan receivable (shareholder owes corp).  
The dividend cancels a *Due from shareholder* balance built up by mid-year owner draws; no cash moves.  
Debit: "Dividends payable" (GIFI 2962) = $X  
Credit: "Due from shareholder" (GIFI 1300 area) = $X  

A dividend can be declared specifically to clear a shareholder loan receivable.  
Both the resolution *and* the actual offset against the receivable must occur before the s.15(2) one-year deadline.  
The deadline is one year after the end of the tax year in which the loan was made.  
A paper resolution alone does not constitute repayment for s.15(2) purposes.  
The receivable has to actually come off the corporation's books (via the journal entry above) within the window.  

When declaration and payment occur on the same day, the two entries can be collapsed and *Dividends payable* skipped.  
Debit: "Dividends declared" (GIFI 3700) = $X  
Credit: "Deposits" (GIFI 1002-1) = $X  

Year-end close. The Statement of Retained Earnings nets dividends declared against opening retained earnings.  
That derives the closing balance (GIFI 3849); Schedule 100 carries the statement in most T2 software.  
Most chart-of-accounts setups do not require an explicit closing journal entry.  
The GIFI mapping handles it via Schedule 100.  


## T5 Slip and T5 Summary

A taxable dividend (eligible or non-eligible) paid to a Canadian-resident shareholder generally requires a T5.  
The T5 is the *Statement of Investment Income* slip; it is filed with a *T5 Summary*.  
Capital dividends paid to Canadian residents are NOT reported on a T5.  
The recipient does not include the amount in income.  
The corp's T2 Schedule 3 *does* still report the capital dividend.  
The T5 obligation and the S3 reporting obligation are independent.  
See [Capital-Dividend-Account.md](../../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md) for the full capital-dividend treatment.  

The de minimis threshold is $50.  
Taxable dividends totalling less than $50 to a single recipient in a calendar year do not require a T5.  
Most owner-manager dividends exceed this.  

Box assignments for typical owner-manager dividends (full list in CRA Guide [T4015](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4015.html)).

For an *eligible* dividend:
- Box 24: Actual amount of eligible dividends (the cash dividend paid)
- Box 25: Taxable amount of eligible dividends (Box 24 × 1.38)
- Box 26: Dividend tax credit for eligible dividends (Box 25 × 15.0198%)

For a *non-eligible* dividend:
- Box 10: Actual amount of dividends other than eligible (the cash dividend paid)
- Box 11: Taxable amount of dividends other than eligible (Box 10 × 1.15)
- Box 12: Dividend tax credit for dividends other than eligible (Box 11 × 9.0301%)

The gross-up factors (1.38 eligible, 1.15 non-eligible) are set by ITA [s.82(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-82.html).  
The dividend tax credit rates (15.0198%, 9.0301%) are set by ITA [s.121](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-121.html).  
How the gross-up and DTC integrate with the corporate tax already paid is on [Tax Integration](../../Overview/Tax-Integration.md).  

If both flavours were paid in the same calendar year, use a single T5 slip with both sets of boxes populated.  


## T5 Filing

Deadline: last day of February of the calendar year following the year of payment.  

Channels (current as of 2026):
- *Internet file transfer*: XML upload to the CRA portal; standard for tax software
- *Web Forms* via My Business Account: interactive web form, simplest for an owner-manager filing one slip per year
- *Paper*: only allowed for filers with five or fewer information returns per year per type
  - CRA continues to push electronic filing

Distribution:
- Two copies of the slip to the shareholder by the same deadline
- One copy retained by the issuer
- The T5 Summary goes to CRA only (not to the shareholder)

A late T5 attracts a penalty under ITA [s.162(7.01)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-162.html).  
For an owner-manager filing one to fifty slips, the penalty is $10 per day for the whole T5 filing (not per slip).  
With the $100 minimum and 100-day cap, the whole filing ranges from $100 to $1,000 however many slips it contains.  
Higher daily rates apply at higher slip counts.  


## NR4 for Non-Resident Shareholders

Brief; full mechanics out of scope.

A taxable or capital dividend paid to a non-resident shareholder is reported on an *NR4* slip rather than a T5.  
The NR4 is the *Statement of Amounts Paid or Credited to Non-Residents of Canada*.  
Part XIII withholding tax must be deducted at source.  
The default rate is 25% under ITA s.212(2), commonly reduced by treaty.  
Most Canadian treaties reduce it to 15%.  
Specific cases go to 5%, such as the US treaty for corporate-shareholder dividends meeting ownership thresholds.  
NR4 deadline: March 31 of the year following payment.  
See CRA Guide [T4061](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4061.html) for full NR4 mechanics.  

## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.15(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html) - shareholder loan inclusion (one-year repayment rule)
    - Relevant when a dividend clears a *Due from shareholder* receivable
  - [s.82(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-82.html) - dividend gross-up (1.38 eligible, 1.15 non-eligible)
  - [s.121](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-121.html) - federal dividend tax credit (15.0198% eligible, 9.0301% non-eligible)
  - [s.162(7.01)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-162.html) - late-filing penalty for information returns (T5)
  - [s.212(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-212.html) - Part XIII withholding tax on dividends paid to non-residents (default 25%, often reduced by treaty)
- CRA forms:
  - T5 - Statement of Investment Income: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t5.html
  - T5SUM - T5 Summary of Investment Income: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t5sum.html
  - NR4 - Statement of Amounts Paid or Credited to Non-Residents: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/nr4.html
- CRA guides:
  - T4015 - T5 Guide - Return of Investment Income: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4015.html
  - T4061 - NR4 - Non-Resident Tax Withholding, Remitting, and Reporting: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4061.html
  - RC4088 - General Index of Financial Information (GIFI): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html
