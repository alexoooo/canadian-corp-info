STATUS: AI GENERATED, REVIEW IN PROGRESS

# Declaring and paying a dividend

See parent document: [Dividends](Dividends.md)

**Who this is for**:
- Owners of a CCPC ready to declare a dividend and pay it to themselves as the shareholder

Limitations:
- Covers the directors' resolution, the eligible-dividend designation, the three dividend dates, and payment channels
- The bookkeeping entries and information slips are in [Bookkeeping and information slips](Bookkeeping-And-Slips.md); the corporate-return schedules are in [T2 reporting](T2-Reporting.md)
- Single owner-manager shareholder of a CCPC; more complex ownership structures are out of scope


## Declaring a dividend

A dividend is declared by the corporation's directors passing a resolution.  
The resolution is the legal authorization for the payment.  
A transfer from the corporate account to the shareholder without a resolution is not a dividend; at best it is a shareholder loan, with the s.15(2) consequences noted under [What is not a dividend](Dividends.md#what-is-not-a-dividend).  

A typical owner-managed CCPC dividend resolution covers:
- Date of the resolution (the *declaration date*)
- Class of shares (e.g. "common shares") and the aggregate or per-share dividend amount
- Whether the dividend is designated as an *eligible dividend* under ITA s.89(14)
- Payment date
- Solvency confirmation (see below)
- Director signature(s)

Sample resolution for a sole-shareholder CCPC paying itself a non-eligible dividend:

> RESOLVED that the Corporation declare and pay a dividend of $X on the issued and outstanding common shares of the Corporation, payable on [DATE] to the holder(s) of record on [DATE].  This dividend is NOT designated as an eligible dividend under subsection 89(14) of the *Income Tax Act*.  
> The directors have determined that there are no reasonable grounds for believing that the Corporation is, or after the payment would be, unable to pay its liabilities as they become due, and that the realizable value of the Corporation's assets is not less than the aggregate of its liabilities and stated capital of all classes.  
> Signed [DATE]: ______________________  [Director name]

For an *eligible* dividend, change the third sentence to: "This dividend IS designated as an eligible dividend under subsection 89(14) of the *Income Tax Act*."  
For a *capital* dividend the resolution must additionally elect under ITA s.83(2), and Form T2054 must be filed; see [Capital-Dividend-Account.md](../Capital-Dividend-Account/Capital-Dividend-Account.md).  

The solvency test under *Canada Business Corporations Act* (CBCA) [s.42](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-42.html) prohibits declaring or paying a dividend if there are reasonable grounds for believing that:
- The corporation is, or would after the payment be, unable to pay its liabilities as they become due (the *cash-flow* test), or
- The realizable value of the corporation's assets would thereby be less than the aggregate of its liabilities and stated capital of all classes (the *balance-sheet* test)

Provincial corporate statutes have equivalent tests (e.g. *Ontario Business Corporations Act* s.38(3); *Alberta Business Corporations Act* s.43).  
For an owner-managed CCPC with positive retained earnings and modest short-term liabilities, the test is rarely a binding constraint; the resolution should still recite it.  


## Eligible dividend designation

If the dividend is designated as eligible, ITA s.89(14) requires a written notice to the shareholder on or before the time the dividend is paid.  
The notice can be brief; CRA accepts a clear written statement that names the dividend and identifies it as eligible:

> NOTICE: The dividend of $X paid on [DATE] on the common shares of [Corporation Name] is designated as an "eligible dividend" within the meaning of subsection 89(1) of the *Income Tax Act*.

For a sole-shareholder CCPC where the director and the shareholder are the same person, the notice can be combined with the resolution itself.  
Keep the notice in the corporate minute book; CRA can request it on audit.  
A non-eligible dividend requires no designation notice.  


## Declaration date, record date, and payment date

A dividend has up to three distinct dates:
- *Declaration date*: when the directors pass the resolution; legally creates the dividend obligation and the corresponding *Dividends Payable* liability on the books
- *Record date*: when the corporation identifies who is entitled to receive the dividend (irrelevant for a single-shareholder CCPC; matters when there are multiple shareholders or share transfers in flight)
- *Payment date*: when the dividend is paid, credited, or otherwise made available to the shareholder; for a simple cash dividend this is the transfer date, but a credit to a shareholder loan / current account also counts

For most owner-managed CCPCs all three dates collapse to the same day.  
Separating declaration from payment matters for one specific reason: *year-end dividend refund timing*.  

For dividend-refund purposes, ITA s.129(1) keys off when the dividend is *paid* by the corporation in the year, using the same "paid, credited, or otherwise made available" standard that determines T5 / T1 timing.  
A resolution that merely *declares* a dividend payable on a future date in the next year, with no in-year credit to the shareholder, is not enough on its own to land the refund in the current year.  

The late-December NERDTOH-recovery procedure:
1. Pass a resolution on December 30 declaring a non-eligible dividend, payable immediately
2. Credit the amount to the shareholder's loan account (*Due to shareholder*) on the same date; the credit is what makes it "paid or credited" in the year
3. Settle the cash transfer in January or later, against the loan-account balance
4. Claim the dividend refund on the T2 for the year just ended

Without the credit to the shareholder loan account (or an actual cash transfer in the year), the dividend belongs to the next year for both T5 / T1 *and* the corp-side dividend refund.  
The dividend refund offsets tax payable on the same T2 and is paid out (or credited) when the return is assessed.  

A *Dividends Payable* balance left unpaid for an extended period can attract CRA scrutiny.  
It may be recharacterized as a constructive shareholder loan (with the s.15(2) consequences noted under [What is not a dividend](Dividends.md#what-is-not-a-dividend)), or as evidence the dividend was never genuinely declared.  
There is no bright-line statutory deadline; settle the declared dividend promptly, typically within a few months of year-end, by cash transfer or by crediting the shareholder's loan account.  


## Payment methods

For a single owner-manager shareholder, the typical payment channels are:
- *Bank transfer* from the corporate operating account to the shareholder's personal account; the most common channel; use a clear payment description like "Dividend per resolution dated [DATE]"
- *Cheque* drawn on the corporate account
- *Credit to the shareholder loan account*: the dividend is credited to *Due to shareholder*, increasing the amount the corporation owes the shareholder; cash settles later (or piecemeal) against that loan balance; record the credit journal entry and document it in the minute book
- *Clearing a shareholder loan receivable*: the shareholder has drawn money from the corporation during the year (a *Due from shareholder* receivable on the corp's books); the dividend is declared specifically to clear that receivable, settling the s.15(2) loan-to-shareholder concern before the one-year repayment window closes
  - The owner takes draws against the corp during the year, then formalizes them as a dividend at year-end to avoid the shareholder loan trap

The choice of payment channel does not change the tax treatment of the dividend, but the bookkeeping entry differs (see [Bookkeeping and information slips](Bookkeeping-And-Slips.md)).  

## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.15(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html) - shareholder loan inclusion in income (one-year repayment rule); a transfer without a resolution can be recharacterized as a shareholder loan
  - [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) - capital dividend election (filed on Form T2054 at or before the payment date)
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - definition of "eligible dividend" referenced in the designation notice
  - [s.89(14)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - eligible dividend designation by written notice to the shareholder at or before payment
  - [s.129(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - dividend refund keys off when the dividend is paid, credited, or otherwise made available in the year
- Corporate statutes (solvency test for dividend declaration):
  - Canada Business Corporations Act (CBCA) [s.42](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-42.html)
  - Provincial equivalents (e.g. Ontario Business Corporations Act s.38(3); Alberta Business Corporations Act s.43)
