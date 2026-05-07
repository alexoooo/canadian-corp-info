STATUS: AI GENERATED, REVIEW IN PROGRESS

# Shareholder Dividends

**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) declaring and paying a dividend to themselves as the shareholder.  

**TLDR**:
- Dividends distribute after-tax corporate profits to shareholders
- They come in 3 flavours: *eligible*, *non-eligible*, *capital*
- The flavour determines:
  - Which corporate tax account they draw on
  - How they are taxed in the shareholder's hands

Limitations:
- Focus is on a single owner-manager shareholder of a CCPC; multiple share classes, family-trust structures, and estate-freeze arrangements are out of scope
- The shareholder is assumed to be a Canadian-resident *individual*; the Opco-paying-Holdco case is mentioned briefly in the Schedule 3 section, and non-resident shareholders are mentioned briefly in the NR4 section
- The salary-vs-dividend remuneration tradeoff (CPP, RRSP, payroll, WSIB) is out of scope; this page covers the dividend path only
- LCGE / QSBC interactions are out of scope (including the use of dividends as a *purification* tool under ITA [s.110.6(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-110.6.html))
- *Tax on Split Income* (TOSI) under ITA [s.120.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-120.4.html) is out of scope; verify TOSI does not apply before paying dividends to anyone other than yourself
- Stock dividends and dividends in kind are out of scope; this page assumes ordinary cash dividends
- Tax information can change over time (e.g. the single RDTOH account was split into ERDTOH and NERDTOH effective for tax years starting after 2018)
- The following is my understanding as of 2026


## What a dividend is

A *dividend* is a distribution of property by a corporation to its shareholders, paid out of the corporation's after-tax retained earnings.  
The corporation pays its corporate income tax first; the dividend then transfers (some of) that after-tax money to the shareholder.  

The *Income Tax Act* does not define "dividend" exhaustively.  
ITA [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) only specifies that the term includes a stock dividend, so it takes its common-law meaning.  
Various deeming rules in [s.84](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.html) cover specific transactions like share redemptions and capital reductions.  

A dividend is **not deductible to the corporation**.  
This is what distinguishes it from salary; the *Integration* framework is covered below.  

Things that look like dividends but aren't (or are deemed to be dividends with different mechanics):
- *Salary* or management fee paid to the owner-manager:
  - Deductible to the corp (reduces taxable income)
  - Reported on a T4 slip
  - Taxed in the shareholder's hands at full ordinary rates with CPP/EI obligations
  - Does not draw on any of the dividend tax accounts (GRIP, CDA, RDTOH)
- *Return of capital* out of *stated capital* / *paid-up capital* (PUC): a distribution that reduces PUC of a private corporation is *deemed* to be a dividend under ITA s.84(4.1), with limited exceptions
  - In a typical owner-manager CCPC where the founder's incorporator shares were issued for $1 or $100, there is essentially no PUC capacity to do a real return of capital
- Share *redemption*: when the corporation buys back shares, redemption proceeds in excess of PUC are *deemed* to be a dividend under ITA s.84(3)
  - The shareholder's adjusted cost base is then compared against PUC (not against the gross proceeds) for the capital gain or loss calculation

These deemed-dividend mechanics are used mainly for restructuring transactions (estate freezes, share buybacks, winding up) and are out of scope for this document.  

A *shareholder loan* from the corp is not a distribution at all.  
If the loan is not repaid within one year after the end of the corp's tax year in which it was made, ITA [s.15(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html) includes the full loan amount in the shareholder's personal income for the year the loan was made.  


## The three dividend flavours

A taxable dividend paid by a CCPC to a Canadian-resident shareholder falls into one of three flavours.  
The flavour is determined by the source of the distribution on the corporate side, and by whether the corporation makes the required designation or election.

*Eligible dividend*:
- Paid out of corporate income previously taxed at the general (non-SBD) rate, or out of eligible dividends received from other Canadian corporations
- Tracked via the *General Rate Income Pool* (GRIP), defined at ITA [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html)
- Designation required at or before the time of payment, by written notice to the shareholder under ITA s.89(14)
- Over-designating triggers *Part III.1* tax on the excess at 20% under ITA [s.185.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-185.1.html), reported on T2 Schedule 55 (S55)

For a typical CCPC operating entirely under the SBD limit, GRIP is empty unless the corporation has received eligible dividends from public-company holdings.  
Most owner-manager dividends out of active business income end up being non-eligible.  

*Non-eligible dividend*:
- Default classification: any taxable dividend not designated eligible (and not a capital dividend) is non-eligible
- Sometimes called an "ordinary" dividend
- No designation is required from the corporation
- Funded out of after-tax SBD-rate retained earnings
- Smaller dividend tax credit on the personal side, because the corporation paid less tax

The *Low Rate Income Pool* (LRIP) defined in ITA s.89(1) is only relevant if the corporation was previously a non-CCPC and crossed over.  
For a corporation that has always been a CCPC, LRIP does not constrain anything.  

*Capital dividend*:
- Paid out of the *Capital Dividend Account* (CDA), which holds the non-taxable portion of cumulative net capital gains realized by the corporation (among other things)
- Tax-free to a Canadian-resident shareholder; no T5 is issued
- Requires an election under ITA [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) on Form T2054, filed at or before the payment date
- Over-electing triggers *Part III* tax on the excess at 60% under ITA [s.184(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-184.html)

For full mechanics of the CDA balance calculation and the T2054 election workflow, see [Capital-Dividend-Account.md](Capital-Dividend-Account.md).  


## Tax integration

*Integration* aims for the total tax paid on income earned through a corporation and distributed as a dividend to roughly equal the tax the same individual would have paid had they earned the income directly.  

The mechanism is the *dividend gross-up and tax credit*. The shareholder:
- Grosses up the cash dividend to a notional pre-corporate-tax amount
- Pays personal tax on the grossed-up amount
- Claims a *dividend tax credit* (DTC) intended to offset the corporate tax the corporation already paid

The federal gross-up and credit come from ITA [s.82(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-82.html) and [s.121](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-121.html).  
Each province offers its own DTC at its own rate, so total integration depends on the shareholder's province of residence.  
Integration is approximate, not exact: the gross-up and DTC are calibrated to typical combined corporate rates, and they over- or under-shoot for any given province and income level.  

*Eligible dividend*:
- Gross-up: 38% of cash dividend (ITA s.82(1))
- Federal DTC: 15.0198% of the grossed-up (taxable) amount (ITA s.121)
- The gross-up reflects the full general-rate corporate tax (~15% federal + the provincial general rate)
- Eligible dividends carry the lowest combined corp+personal tax of the two taxable flavours, when the corporation actually paid tax at the general rate

*Non-eligible dividend*:
- Gross-up: 15% of cash dividend (ITA s.82(1))
- Federal DTC: 9.0301% of the grossed-up amount (ITA s.121)
- The smaller gross-up and credit reflect the lower SBD-rate corporate tax the corporation paid before distributing
- Combined corp+personal tax is calibrated to the SBD corp rate; the actual relative position vs. an eligible dividend depends on the shareholder's province

*Capital dividend*:
- Not included in the shareholder's income at all (ITA [s.83(2)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html))
- No gross-up, no DTC, not reported on the T1
- The "tax already paid" at the corporate level is the tax on the *taxable* portion of the underlying capital gain; the *non-taxable* portion is what flows out tax-free as the capital dividend
- For non-resident shareholders this treatment does not apply: Part XIII withholding still applies (default 25%, often reduced by treaty)

For an owner-manager who has access to all three accounts, the integration framework gives a corp-side preference order:
1. *Capital dividend* first (tax-free to the shareholder; constrained only by CDA balance and the s.83(2) election)
2. *Eligible dividend* next (lower combined tax than non-eligible; available only to the extent of GRIP)
3. *Non-eligible dividend* as the residual (always available; highest combined tax)

Often CDA and GRIP are both empty; the only available option is a non-eligible dividend.  


## GRIP - capacity for eligible dividends

The *General Rate Income Pool* (GRIP), defined at ITA [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html), tracks a CCPC's accumulated after-tax income that was taxed at the general (non-SBD) corporate rate, plus eligible dividends received from other taxable Canadian corporations.  
Calculated each year on Schedule 53 (S53 - *General Rate Income Pool (GRIP) Calculation*); the running balance carries forward.  

The simplified annual addition to GRIP is:
- Plus 72% of *general-rate active business income* for the year (active business income above the SBD limit, taxed at the general rate)
- Plus eligible dividends *received* during the year from other taxable Canadian corporations
- Minus eligible dividends *paid* during the year

The 72% factor is set in ITA s.89(1) (the "general rate factor") and corresponds to a notional 28% combined corp tax; it does not move with actual provincial general rates.  

For a CCPC operating entirely under the SBD limit, no general-rate active business income is generated.  
The only way GRIP grows is through eligible dividends received from other Canadian corporations that designate them as eligible — most commonly public-corp ETFs and direct equity holdings, but also any other CCPC paying out of its own GRIP.  
This is why most owner-manager dividends end up being non-eligible by default: there is nothing in GRIP to designate against.  

Schedule 53 must still be filed each year to track and carry forward the balance, even when GRIP is zero.  


## CDA - capacity for capital dividends

The *Capital Dividend Account* (CDA) holds the non-taxable portion of the corporation's cumulative net capital gains, plus certain other amounts (e.g. tax-free portion of life-insurance proceeds), and is reduced by capital dividends paid.  
For mechanics of CDA balance tracking, the s.83(2) election, Form T2054 filing, and the Part III tax penalty for over-electing, see [Capital-Dividend-Account.md](Capital-Dividend-Account.md).  

The CDA balance is read at the time the s.83(2) election is filed.  
Any capital losses realized between your last balance check and the election date reduce the available balance.  
Overdrawing triggers a 60% Part III tax (ITA s.184(2)).  


## ERDTOH and NERDTOH - refundable dividend tax accounts

The *Eligible Refundable Dividend Tax on Hand* (ERDTOH) and *Non-Eligible Refundable Dividend Tax on Hand* (NERDTOH) accounts hold previously paid refundable tax that the corporation gets back as a *dividend refund* under ITA [s.129(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) when it pays a taxable dividend.  
How the pools are *filled* (Part IV tax on dividends received from other corporations, the refundable portion of Part I tax on AII) is covered in [T3.md](T3.md).  
This section focuses on how they are *emptied*: the refund mechanics from the dividend-payer's perspective.  

The dividend refund for the year is calculated separately by dividend type:
- *Eligible* dividends paid → refund equal to the lesser of:
  - 38⅓% of eligible dividends paid in the year
  - ERDTOH balance at year-end (ITA s.129(1)(a))
- *Non-eligible* dividends paid → refund equal to the lesser of:
  - 38⅓% of non-eligible dividends paid in the year
  - NERDTOH balance at year-end *plus* any ERDTOH balance left over after the eligible-dividend refund (ITA s.129(1)(b))

An eligible dividend draws only on ERDTOH (cannot reach into NERDTOH).  
A non-eligible dividend can spill into ERDTOH if the year's eligible-dividend refund has not exhausted it.  

The 38⅓% rate applies to the refund itself (the rate at which a dollar of dividend liberates refundable tax), not to the rate at which AII *generates* refundable tax (30⅔% — see AII section below).  
To fully empty a NERDTOH balance, the corporation needs to pay roughly $2.61 of non-eligible dividend per $1 of NERDTOH (= 1 ÷ 38⅓%).  

The dividend refund is reported on T2 line 784 and applied as a credit against tax payable for the same tax year.  
A dividend declared but unpaid at year-end still triggers the refund for that year, provided it is recognized as payable on the corporation's books (year-end timing covered below).  


## AII and the SBD grind

A CCPC's *Aggregate Investment Income* (AII) for the year is primarily:
- Interest
- Foreign income
- The taxable portion of capital gains
- Most T3 Box 26 distributions from index ETFs structured as mutual fund trusts

AII affects the corporation in two ways relevant to dividend planning:
1. AII generates a refundable Part I tax addition to NERDTOH equal to 30⅔% of AII (ITA s.129(4)), recovered by paying a non-eligible dividend
2. AII over $50,000 grinds the SBD limit at $5 of SBD reduction per $1 of AII excess, fully eliminating the SBD at $150,000 of AII (ITA [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html))

See [T3-Box-26-Other-Income.md](T3-Box-26-Other-Income.md) for the detailed treatment of T3 Box 26 income.

The interaction between these two effects shapes long-term dividend strategy:
- If AII stays below the $50,000 grind threshold, the corp's active business income remains under the SBD rate; dividends paid are non-eligible by default; pay a non-eligible dividend each year to recover NERDTOH
- If AII is large enough to meaningfully grind the SBD, the active business income that exceeds the reduced SBD limit is taxed at the general rate; in subsequent years that starts adding to GRIP via Schedule 53, opening the door to eligible dividends as well
- In the limiting case of AII ≥ $150,000, the SBD is fully ground to zero and *all* active business income is taxed at the general rate
  - This maximizes the GRIP addition (72% of all ABI flows in via Schedule 53)
  - In subsequent years the corporation can pay eligible dividends out of that GRIP
  - The lower combined corp+personal tax on eligible dividends partially offsets the loss of the SBD rate

For an investment-only holdco with no active business income, the SBD grind is moot (there is no active income to grind); Part I refundable tax on AII still feeds NERDTOH and is still recovered by paying non-eligible dividends.  


## Declaring a dividend

A dividend is declared by the corporation's directors passing a resolution.  
The resolution is the legal authorization for the payment.  
A transfer from the corporate account to the shareholder without a resolution is not a dividend; at best it is a shareholder loan, with the s.15(2) consequences described earlier.  

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
For a *capital* dividend the resolution must additionally elect under ITA s.83(2), and Form T2054 must be filed; see [Capital-Dividend-Account.md](Capital-Dividend-Account.md).  

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
It may be recharacterized as a constructive shareholder loan (with the s.15(2) consequences described earlier), or as evidence the dividend was never genuinely declared.  
There is no bright-line statutory deadline; settle the declared dividend promptly, typically within a few months of year-end, by cash transfer or by crediting the shareholder's loan account.  


## Payment methods

For a single owner-manager shareholder, the typical payment channels are:
- *Bank transfer* from the corporate operating account to the shareholder's personal account; the most common channel; use a clear payment description like "Dividend per resolution dated [DATE]"
- *Cheque* drawn on the corporate account
- *Credit to the shareholder loan account*: the dividend is credited to *Due to shareholder*, increasing the amount the corporation owes the shareholder; cash settles later (or piecemeal) against that loan balance; record the credit journal entry and document it in the minute book
- *Clearing a shareholder loan receivable*: the shareholder has drawn money from the corporation during the year (a *Due from shareholder* receivable on the corp's books); the dividend is declared specifically to clear that receivable, settling the s.15(2) loan-to-shareholder concern before the one-year repayment window closes
  - The owner takes draws against the corp during the year, then formalizes them as a dividend at year-end to avoid the shareholder loan trap

The choice of payment channel does not change the tax treatment of the dividend, but the bookkeeping entry differs (see *Bookkeeping journal entries* below).  


## Bookkeeping journal entries

Standard double-entry treatment for an owner-managed CCPC paying its sole shareholder.  
GIFI codes are aligned to the CRA GIFI guide ([RC4088](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html)).  

GIFI does not split dividends declared by tax classification: all cash dividends declared roll up to GIFI 3701 (*Cash dividends*) in the Statement of Retained Earnings, regardless of whether they are eligible, non-eligible, or capital.  
The chart of accounts can still carry separate sub-accounts (e.g. "Dividends declared - eligible", "Dividends declared - non-eligible", "Capital dividends declared") so the corp's books show the type breakdown internally; at the GIFI roll-up level all three map to 3701.  
The eligible/non-eligible split is reported on the taxable-dividends-paid section of T2 Schedule 3.  
Capital dividends paid are reported on the separate capital-dividend line of Schedule 3 *and* require a Form T2054 election in addition (see *T2 reporting* below).  

Declaration. Book the resolution; substitute the relevant chart-of-accounts sub-account as appropriate.  
Debit: "Dividends declared" (GIFI 3701) = $X  
Credit: "Dividends payable" (GIFI 2962) = $X  

Payment, when cash transfers.  
Debit: "Dividends payable" (GIFI 2962) = $X  
Credit: "Cash" (GIFI 1001, or specific cash account) = $X  

Payment via credit to the shareholder loan account. Substitute for the cash credit; the dividend is credited to *Due to shareholder*, increasing the amount the corporation owes the shareholder (cash settles later against that loan balance).  
Debit: "Dividends payable" (GIFI 2962) = $X  
Credit: "Due to shareholder" (GIFI 2780 area) = $X  

Payment via clearing a shareholder loan receivable (shareholder owes corp). The dividend cancels a *Due from shareholder* balance built up by mid-year owner draws; no cash moves.  
Debit: "Dividends payable" (GIFI 2962) = $X  
Credit: "Due from shareholder" (GIFI 1300 area) = $X  

When the dividend is declared specifically to clear a shareholder loan receivable, both the resolution *and* the actual offset against the receivable must occur before the s.15(2) one-year deadline (one year after the end of the tax year in which the loan was made).  
A paper resolution alone does not constitute repayment for s.15(2) purposes; the receivable has to actually come off the corporation's books (via the journal entry above) within the window.  

When declaration and payment occur on the same day, the two entries can be collapsed and *Dividends payable* skipped.  
Debit: "Dividends declared" (GIFI 3701) = $X  
Credit: "Cash" (GIFI 1001) = $X  

Year-end close. The Statement of Retained Earnings (Schedule 100 in most T2 software) nets dividends declared against opening retained earnings to derive the closing balance (GIFI 3849).  
Most chart-of-accounts setups do not require an explicit closing journal entry; the GIFI mapping handles it via Schedule 100.  


## T5 slip and T5 Summary

A taxable dividend (eligible or non-eligible) paid to a Canadian-resident shareholder generally requires a *T5 Statement of Investment Income* slip and a *T5 Summary*.  
Capital dividends paid to Canadian residents are NOT reported on a T5 (the recipient does not include the amount in income).  
The corp's T2 Schedule 3 *does* still report the capital dividend; the T5 obligation and the S3 reporting obligation are independent.  
See [Capital-Dividend-Account.md](Capital-Dividend-Account.md) for the full capital-dividend treatment.  

The de minimis threshold is $50: taxable dividends totalling less than $50 to a single recipient in a calendar year do not require a T5.  
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

If both flavours were paid in the same calendar year, use a single T5 slip with both sets of boxes populated.  


## T5 filing

Deadline: last day of February of the calendar year following the year of payment.  

Channels (current as of 2026):
- *Internet file transfer*: XML upload to the CRA portal; standard for tax software
- *Web Forms* via My Business Account: interactive web form, simplest for an owner-manager filing one slip per year
- *Paper*: only allowed for filers with five or fewer information returns per year per type; CRA continues to push electronic filing

Distribution: two copies of the slip to the shareholder by the same deadline; one copy retained by the issuer; the T5 Summary goes to CRA only (not to the shareholder).  

A late T5 attracts a per-slip penalty under ITA [s.162(7.01)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-162.html).  
For an owner-manager filing one to fifty slips, the rate is $10 per day per slip with a $100 minimum and a 100-day cap (a single late slip ranges from $100 to $1,000).  
Higher daily rates apply at higher slip counts.  


## NR4 for non-resident shareholders

Brief; full mechanics out of scope.

A taxable or capital dividend paid to a non-resident shareholder is reported on an *NR4 Statement of Amounts Paid or Credited to Non-Residents of Canada* slip rather than a T5.  
Part XIII withholding tax must be deducted at source.  
The default rate is 25% under ITA s.212(2), commonly reduced by treaty (15% under most Canadian treaties; 5% in specific cases such as the US treaty for corporate-shareholder dividends meeting ownership thresholds).  
NR4 deadline: March 31 of the year following payment.  
See CRA Guide [T4061](https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4061.html) for full NR4 mechanics.  


## T2 reporting

Paying a dividend touches several T2 schedules beyond the bookkeeping entries above.  
Most T2 software (FutureTax, TaxCycle) populates these automatically once the dividend amount and designation are entered.  
Knowing which schedule reports what helps you sanity-check the result.  


## Schedule 3 - dividends-paid section

Schedule 3 (S3 - *Dividends Received, Taxable Dividends Paid, and Part IV Tax Calculation*) is shared with the dividend-receiving side covered in [T3.md](T3.md).  
The dividends-paid side appears in Part 3 and Part 4 of the schedule:
- *Part 3 / Box 450*: total *taxable* dividends paid in the tax year to recipients other than connected corporations (the dividend to the owner-manager); split between eligible and non-eligible portions in the input cells
- *Part 4 / Box 500*: total taxable dividend paid in the tax year (up to Box 450); the figure that drives the dividend refund calculation
- *Capital dividends paid*: capital dividends are not taxable dividends, so they do *not* go in the Box 450 / Box 500 figures
  - Reported on Schedule 3 on the dedicated capital-dividends-paid line (immediately above the taxable-dividends-paid section in current versions of the form)

The capital-dividend line on S3 is reporting only; it does not by itself elect anything.  
The s.83(2) election still needs Form T2054 filed at or before the payment date (see *Capital dividend election - Form T2054* below).  

If the shareholder is itself a Canadian corporation (e.g. an owner-manager who holds the operating company through a personal *holding company*, Holdco), the recipient is a *connected corporation* under ITA [s.186(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-186.html).  
The payer corp is connected to the recipient if the recipient controls the payer, or owns >10% of votes and >10% of FMV of the payer's shares (s.186(4)).  

A dividend to a connected recipient:
- Does not go in Box 450; reported on the connected-corporation portion of Schedule 3 instead
- The receiving Holdco's tax treatment shifts to the *Part IV tax* mechanics on the receiving side, rather than driving the payer's refund directly
- Holdco only pays Part IV tax to the extent the payer claims a dividend refund (s.186(1))

For the receiving-side mechanics see [T3.md](T3.md).  
The Opco-Holdco structure itself is out of scope for this page.  


## Schedule 53 - GRIP calculation

Schedule 53 (S53 - *General Rate Income Pool (GRIP) Calculation*) tracks the running GRIP balance year over year.  
See the GRIP section above for the addition formula and the conceptual treatment.  

S53 must be filed annually even when GRIP is zero.  
This is what carries the balance forward and gives CRA a year-by-year audit trail of GRIP capacity.  

Most T2 software auto-populates S53 from the general-rate active business income on Schedule 1 / Schedule 7 plus eligible dividends received and paid.  
Verify that the closing balance matches expectations, especially in the first year you designate an eligible dividend.  


## Schedule 55 - Part III.1 tax on excessive eligible dividend designations

Schedule 55 (S55 - *Part III.1 Tax on Excessive Eligible Dividend Designations*) is filed only when the corporation designates more eligible dividends in the year than its GRIP balance can support.  
The excess is an *excessive eligible dividend designation* (EEDD).  

The Part III.1 tax under ITA [s.185.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-185.1.html) is 20% of the excess, raised to 30% if the designation was made knowingly or in circumstances amounting to gross negligence.  

Under ITA s.185.1(2), the corporation can jointly elect with the shareholder(s) who received the excess to treat the EEDD as a separate non-eligible dividend instead:
- Eliminates the Part III.1 tax
- Reclassifies the excess for the shareholder's personal tax (smaller gross-up and DTC)
- Must be made within 90 days of the day the corporation is assessed for the Part III.1 tax

For an owner-managed CCPC where the director and the shareholder are the same person, the joint election is straightforward to execute.  
Verify the GRIP balance *before* designating, so the excess never arises.  


## Dividend refund line on the T2

The dividend refund calculated under ITA s.129(1) is reported on the T2 jacket as the *dividend refund for the year* (historically T2 line 784; verify against the current form release).  
The refund is applied as a credit against Part I and Part IV tax payable for the year; any excess is paid out (or applied to instalments) when the T2 is assessed.  
The underlying ERDTOH and NERDTOH balances and the eligible/non-eligible split of the refund are computed on T2 Page 7 (or via a dedicated dividend-refund worksheet, depending on T2 software).  
For the receiving-side mechanics that fill ERDTOH/NERDTOH (Part IV tax on dividends received from other corporations), see [T3.md](T3.md).  


## Capital dividend election - Form T2054

A capital dividend is reported on the capital-dividend line of Schedule 3 (per the S3 section above).  
*In addition*, the corporation files Form T2054 (*Election for a Capital Dividend Under Subsection 83(2)*) with a certified copy of the directors' resolution, on or before the payment date.  

The S3 line is information-reporting; the T2054 is what makes the dividend a capital dividend for tax purposes.  
Both are required.  

For full mechanics, see [Capital-Dividend-Account.md](Capital-Dividend-Account.md):
- The s.184(2) Part III tax penalty for over-electing
- The S89 CDA balance verification
- The CRA My Business Account submission workflow


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
Debit: "Dividends declared - eligible" (GIFI 3701) = $50,000  
Credit: "Dividends payable" (GIFI 2962) = $50,000  

Payment:  
Debit: "Dividends payable" (GIFI 2962) = $50,000  
Credit: "Cash" (GIFI 1001) = $50,000  

T2 (2026) schedule entries:
- S3 Part 3 / Box 450 (eligible portion): $50,000
- S3 Part 4 / Box 500 (eligible portion): $50,000
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
Debit: "Dividends declared - non-eligible" (GIFI 3701) = $80,000  
Credit: "Cash" (GIFI 1001) = $80,000  

T2 (2026) schedule entries:
- S3 Part 3 / Box 450 (non-eligible portion): $80,000
- S3 Part 4 / Box 500 (non-eligible portion): $80,000
- S53: opening $0, no change
- T2 dividend refund line: $0 (no NERDTOH balance)

Personal-side context: shareholder reports $80,000 × 1.15 = $92,000 taxable on T1; federal DTC of $92,000 × 9.0301% ≈ $8,308; Ontario DTC of $92,000 × 2.9863% ≈ $2,747.  


### Example C - year-end non-eligible dividend sized to recover NERDTOH (AII / passive-income path)

Setup:
- A CCPC with $200,000 of active business income in 2026 (under SBD; combined 12.2%)
- Plus $40,000 of AII from interest, foreign income, and the taxable portion of capital gains on corporate investments
- AII is below the $50,000 grind threshold, so SBD is preserved

NERDTOH calculation:
- 2026 NERDTOH addition: $40,000 × 30⅔% = **$12,266.67** (ITA s.129(4)); refundable Part I tax remitted with 2026 instalments
- Opening NERDTOH: $0
- Year-end NERDTOH: $12,266.67

To fully recover the NERDTOH balance, the corporation needs a non-eligible dividend of $12,266.67 ÷ 38⅓% = **$32,000** (per the dividend refund formula in ITA s.129(1)).  

Year-end timing: the corporation's year-end is December 31, 2026.  
On December 30, 2026 the directors pass a resolution declaring a $32,000 non-eligible dividend, *immediately payable* and credited to the shareholder's loan account on the same date.  
The actual cash transfer to the shareholder's personal bank account is scheduled for January 15, 2027.  

Declaration and credit (Dec 30, 2026, booked in 2026 fiscal year):  
Debit: "Dividends declared - non-eligible" (GIFI 3701) = $32,000  
Credit: "Dividends payable" (GIFI 2962) = $32,000  

Debit: "Dividends payable" (GIFI 2962) = $32,000  
Credit: "Due to shareholder" (GIFI 2780 area) = $32,000  

Cash settlement (Jan 15, 2027, booked in 2027 fiscal year):  
Debit: "Due to shareholder" (GIFI 2780 area) = $32,000  
Credit: "Cash" (GIFI 1001) = $32,000  

The two declaration-day entries can be collapsed into a single line (Debit "Dividends declared", Credit "Due to shareholder").  
The intermediate "Dividends payable" step is shown to make the legal sequence explicit.  

T2 (2026) schedule entries:
- S3 Part 3 / Box 450 (non-eligible portion): $32,000
- S3 Part 4 / Box 500 (non-eligible portion): $32,000
- T2 dividend refund line: $32,000 × 38⅓% = **$12,266.67**, capped at the NERDTOH balance of $12,266.67
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
Form T2054 is filed via CRA My Business Account with a certified copy of the resolution attached, on or before the payment date.  

Declaration:  
Debit: "Capital dividends declared" (GIFI 3701) = $10,000  
Credit: "Dividends payable" (GIFI 2962) = $10,000  

Payment:  
Debit: "Dividends payable" (GIFI 2962) = $10,000  
Credit: "Cash" (GIFI 1001) = $10,000  

T2 (2026) interactions:
- *No T5 issued* (capital dividend is not income to a Canadian-resident shareholder)
- *S3 capital-dividend line*: $10,000 (information reporting on the dedicated capital-dividends-paid line, separate from Box 450 / Box 500 which only carry taxable dividends)
- CDA balance reduces by $10,000 (tracked on the corporation's CDA worksheet, not on a T2 schedule)
- Form T2054 + certified resolution submitted on or before payment date (this is what makes the dividend a capital dividend for tax purposes; the S3 line by itself does not elect)

Personal-side context: capital dividend is tax-free to a Canadian-resident shareholder; not reported on the T1.  

A capital dividend can also be settled by credit to the shareholder loan account (Credit "Due to shareholder") or by clearing a *Due from shareholder* receivable, using the same bookkeeping patterns shown above.  
Only the credit side of the payment entry changes.  
The T2054 election timing is independent of the settlement method: the election still has to be filed at or before the dividend's payment date.  

For full mechanics, see [Capital-Dividend-Account.md](Capital-Dividend-Account.md):
- The s.184(2) Part III tax penalty for over-electing
- The S89 CDA balance verification
- The CRA My Business Account submission workflow


## Related

- [Adjusted Cost Base](Adjusted-Cost-Base.md)
- [Capital Dividend Account](Capital-Dividend-Account.md)
- [T3](T3.md)
- [T3 - Box 26 Other Income](T3-Box-26-Other-Income.md)
- [T5008](T5008.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.15(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html) - shareholder loan inclusion in income (one-year repayment rule)
  - [s.82(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-82.html) - dividend gross-up (38% eligible, 15% non-eligible)
  - [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) - capital dividend election; the elected amount is excluded from the shareholder's income under s.83(2)(b)
  - [s.84](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.html) - deemed dividends (s.84(3) on share redemption; s.84(4.1) on private-corp PUC reduction)
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - definitions of "eligible dividend", GRIP, LRIP, CDA, PUC; the GRIP "general rate factor" of 0.72
  - [s.89(14)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - eligible dividend designation by written notice to the shareholder at or before payment
  - [s.110.6(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-110.6.html) - definition of *qualified small business corporation share* (QSBC), including the 90% active-business-assets test gating LCGE eligibility
  - [s.120.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-120.4.html) - Tax on Split Income (TOSI), including the *excluded business* and *excluded shares* carve-outs that typically take an active owner-manager out of TOSI
  - [s.121](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-121.html) - federal dividend tax credit (15.0198% eligible, 9.0301% non-eligible, of the grossed-up amount)
  - [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - SBD grind on AII over $50,000 ($5 SBD reduction per $1 of AII excess)
  - [s.129](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - dividend refund on taxable dividends paid (s.129(1)); definitions of ERDTOH and NERDTOH (s.129(4))
  - [s.162(7.01)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-162.html) - late-filing penalty for information returns (T5)
  - [s.184(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-184.html) - Part III tax on excessive capital dividend elections (60% of the excess)
  - [s.185.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-185.1.html) - Part III.1 tax on excessive eligible dividend designations (20% baseline, 30% knowing/gross negligence); s.185.1(2) joint election to reclassify the excess as a separate non-eligible dividend
  - [s.186](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-186.html) - Part IV tax on dividends received by a corporation from a connected payer (s.186(1)); definition of "connected" corporations (s.186(4))
  - [s.212(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-212.html) - Part XIII withholding tax on dividends paid to non-residents (default 25%, often reduced by treaty)
  - [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) - definition of "dividend" (includes a stock dividend; otherwise common-law meaning)
- CRA forms:
  - T5 - Statement of Investment Income: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t5.html
  - T5SUM - T5 Summary of Investment Income: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t5sum.html
  - T2054 - Election for a Capital Dividend Under Subsection 83(2): https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2054.html
  - NR4 - Statement of Amounts Paid or Credited to Non-Residents: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/nr4.html
- CRA guides:
  - T4015 - T5 Guide - Return of Investment Income: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4015.html
  - T4061 - NR4 - Non-Resident Tax Withholding, Remitting, and Reporting: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4061.html
  - T4012 - T2 Corporation Income Tax Guide: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html
  - RC4088 - General Index of Financial Information (GIFI): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html
- T2 schedules:
  - S3 - Dividends Received, Taxable Dividends Paid, and Part IV Tax Calculation: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch3.html
  - S53 - General Rate Income Pool (GRIP) Calculation: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch53.html
  - S55 - Part III.1 Tax on Excessive Eligible Dividend Designations: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch55.html
- Corporate statutes (solvency test for dividend declaration):
  - Canada Business Corporations Act (CBCA) [s.42](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-42.html)
  - Provincial equivalents (e.g. Ontario Business Corporations Act s.38(3); Alberta Business Corporations Act s.43)


## TODO

- Add a worked example for an investment-only holdco (no active business income; pure NERDTOH-recovery cycle)
- Add screenshots for the T5 Web Forms filing flow via CRA My Business Account
- Watch for enactment of the 2026 Ontario budget (proposed Ontario SBD rate cut to 2.2% effective July 1, 2026; non-eligible DTC drop to 1.9863% effective January 1, 2027) and update worked examples once enacted
