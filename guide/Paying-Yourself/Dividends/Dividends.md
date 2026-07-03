# Dividends

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC)
- Declaring and paying a dividend to themselves as shareholders

**TLDR**:
- Dividends distribute after-tax corporate profits to shareholders
- They come in 3 flavours: *eligible*, *non-eligible*, *capital*
- The flavour determines:
  - Which corporate tax account they draw on
  - How they are taxed in the shareholder's hands

Limitations:
- Focus is on the owner-manager(s) of a CCPC holding a single common share class; more complex ownership structures (multiple share classes, family trusts, succession planning) are out of scope
- The shareholder is assumed to be a Canadian-resident *individual*; Opco-paying-Holdco and non-resident shareholders are mentioned briefly
- The salary-vs-dividend remuneration tradeoff (CPP, RRSP, payroll, WSIB) is out of scope; this page only covers dividends
- Tax planning for buying or selling a business (e.g. the lifetime capital gains exemption) is out of scope; see [Business Acquisition](../../Corporate-Lifecycle/Business-Acquisition/Business-Acquisition.md) for an orientation
- Full *Tax on Split Income* (TOSI) mechanics under ITA [s.120.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-120.4.html) are out of scope; see [Multiple owner-managers](#multiple-owner-managers) for the active owner-manager case
- Stock dividends and dividends in kind are out of scope; this page assumes ordinary cash dividends
- Tax information can change over time (e.g. the single RDTOH account was split into ERDTOH and NERDTOH effective for tax years starting after 2018)
- The following is my understanding as of 2026


## Sub-pages

This page is a hub; these are the sub-pages:
- [ERDTOH and NERDTOH](ERDTOH-NERDTOH.md): how the two refundable dividend-tax accounts fill and refund, plus stranding
- [Declaring and paying a dividend](Declaring-And-Paying.md): resolution, eligible designation, the three dates, and payment channels
- [Bookkeeping and information slips](Bookkeeping-And-Slips.md): journal entries, T5 slip and Summary, and NR4 for non-residents
- [T2 reporting](T2-Reporting.md): Schedules 3, 53, and 55, the dividend-refund line, and Form T2054
- [Dividend examples](Dividends-Examples.md): end-to-end examples


## What is a dividend

A *dividend* is a distribution of money or other property by a corporation to its shareholders, paid out of the corporation's after-tax retained earnings.  
The corporation pays its corporate income tax first; the dividend then transfers (some of) that after-tax money to shareholders.  

Defining characteristics:
- Paid *pro rata* within a class of shares: every holder of that class receives the same per-share amount
- Declared at the directors' discretion; there is no obligation to pay even when retained earnings are positive (see [Declaring a dividend](Declaring-And-Paying.md#declaring-a-dividend))
- Reduces the corporation's *retained earnings* dollar for dollar; a cash dividend also reduces *cash* on the balance sheet
- **Not deductible to the corporation**: not treated as a business expense, so it does not reduce the corporation's taxable income
  - This distinguishes a dividend from salary; *Integration* (covered below) reconciles the two layers of tax

The *Income Tax Act* does not define "dividend" exhaustively.  
ITA [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) only adds that stock dividends count; otherwise the common-law definition applies.  
Various deeming rules in [s.84](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.html) cover specific transactions like share redemptions and capital reductions.  


## What is not a dividend

These transactions move money from the corporation to the owner but are not dividends:
- *Salary* or management fee paid to the owner-manager:
  - Deductible to the corp (reduces taxable income)
  - Reported on a T4 slip
  - Taxed in the shareholder's hands at full ordinary rates with CPP/EI obligations
  - Does not draw on any of the dividend tax accounts (GRIP, CDA, RDTOH)
- *Shareholder loan* from the corp: a debt the shareholder owes back, not a distribution
  - If the loan is not repaid within one year after the end of the corp's tax year in which it was made, ITA [s.15(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html) includes the full loan amount in the shareholder's personal income for the year the loan was made
  - The broader s.15(1) rules on benefits the corp confers on a shareholder (personal use of corporate property, a personal expense paid by the corp) are covered in [Owner-corporation transactions](../Owner-Corporation-Transactions.md)


## Deemed dividends

A *deemed dividend* counts as a dividend under the *Income Tax Act*, even though it does not distribute profit out of retained earnings.
- Applies to cash taken out of the corporation in a way that would otherwise be taxed more lightly than a dividend
  - Tax-free as a return of capital, or as a capital gain on a share buyback (ITA [s.84](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.html))

Some situations you might encounter:
- *Return of capital* out of *stated capital* / *paid-up capital* (PUC): a distribution that reduces PUC is *deemed* to be a dividend under ITA s.84(4), with limited exceptions
  - In a typical owner-manager CCPC where the founder's incorporator shares were issued for $1 or $100, the PUC is too small to support a meaningful return-of-capital distribution
- Share *redemption*: when the corporation buys back shares, redemption proceeds in excess of PUC are *deemed* to be a dividend under ITA s.84(3)
  - The shareholder's adjusted cost base is then compared against PUC (not against the gross proceeds) for the capital gain or loss calculation

These mechanics are used mainly for restructuring transactions (estate freezes, share buybacks, winding up); the acquisition and freeze cases are covered in [Business Acquisition](../../Corporate-Lifecycle/Business-Acquisition/Business-Acquisition.md), and otherwise out of scope here.  


## Multiple owner-managers

The dividend accounts and mechanics in this guide are corporation-level.  
GRIP, CDA, ERDTOH, NERDTOH, SBD grind, and integration all behave the same whether the CCPC has one owner-manager or several.  

Two things are specific to a second owner-manager: how a dividend is split across the shares, and whether TOSI applies to the recipient.

### Pro rata and separate share classes

A dividend declared on a share class is paid to every holder of that class in proportion to their holdings (see [What is a dividend](#what-is-a-dividend)).  
Two co-founders on a single common class therefore receive each dividend in their share ratio; paying them different amounts requires separate share classes.  

A *separate share class* is a distinct class in the articles of incorporation with its own dividend entitlement.  
The directors can then declare a dividend on that class alone — a different amount, or to a different person, independent of the common shares.  
Such shares are sometimes called discretionary or "dividend-sprinkling" shares.  
For example, to financially support a family member, you could issue them shares of their own class and declare a dividend on that class alone.  
A dividend to a family member who is not active in the business is normally caught by TOSI and taxed at the top marginal rate.  
That usually removes the income-splitting benefit.  

If you don't already have multiple appropriate share classes, then setting up the classes will need an articles amendment.  
Care must be taken with share valuation and PUC (see [Share Capital](../../Corporate-Lifecycle/Corporate-Structure/Share-Capital.md)); this restructuring is out of scope, so consider professional advice.  


### Tax on Split Income (TOSI)

Each shareholder reports their own dividend on their personal return.  
Two co-founders who are both actively engaged in the business and hold common shares are normally outside TOSI.  
The relevant carve-outs are *excluded business* and *excluded shares* in ITA [s.120.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-120.4.html).  

Verify TOSI before paying a dividend to anyone not actively engaged in the business (e.g. a passive co-owner or a spouse).  
- Self-assessment against the s.120.4 exclusions (hours worked, share ownership %, nature of the corporation's income)

If no exclusion applies, TOSI is computed on Form T1206 filed with the recipient's personal T1 return, taxing the dividend at the top marginal rate.  
Full TOSI mechanics are out of scope.


## Three dividend flavours: Eligible, Non-eligible, Capital

A dividend paid by a CCPC to a Canadian-resident shareholder falls into one of three flavours: *eligible*, *non-eligible*, or *capital*.  
The flavour is determined by the source of the distribution for the corporation, and by whether the corporation makes the required designation or election.  

*Eligible dividend*:
- Paid out of one of:
  - Corporate income previously taxed at the general (non-SBD, Small Business Deduction) rate
  - Eligible dividends received directly from another Canadian corporation (T5)
  - Eligible dividends flowed through a Canadian trust under ITA [s.104(19)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html) (T3 Box 49)
- Tracked via the *General Rate Income Pool* (GRIP), defined at ITA [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html)
- Designation required at or before the time of payment, by written notice to the shareholder under ITA s.89(14)
- Over-designating triggers *Part III.1* tax on the excess at 20% under ITA [s.185.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-185.1.html), reported on T2 Schedule 55 (S55)

For a typical CCPC operating entirely under the SBD limit, GRIP is empty unless the corporation holds Canadian equity investments (direct shares or Canadian-equity ETFs like VCN/XEI).  

*Non-eligible dividend*:
- Default classification: any taxable dividend not designated eligible (and not a capital dividend) is non-eligible
- Sometimes called an "ordinary" dividend
- No designation is required from the corporation
- Funded out of after-tax SBD-rate retained earnings
- Smaller dividend tax credit on the personal side, because the corporation paid less tax

The *Low Rate Income Pool* (LRIP, ITA s.89(1)) applies only if the corporation was previously a non-CCPC and crossed over; it does not apply to a corporation that has always been a CCPC.  

*Capital dividend*:
- Paid out of the *Capital Dividend Account* (CDA), which holds the non-taxable portion of cumulative net capital gains realized by the corporation (among other things)
- Tax-free to a Canadian-resident shareholder; no T5 is issued
- Requires an election under ITA [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) on Form T2054, filed on or before the day the dividend becomes payable (or the first day any part of it is paid, if earlier)
- Over-electing triggers *Part III* tax on the excess at 60% under ITA [s.184(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-184.html)

For full mechanics of the CDA balance calculation and the T2054 election workflow, see [Capital-Dividend-Account.md](../../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md).  


## Tax integration

*Integration* aims for the total tax paid on income earned through a corporation and distributed as a dividend to roughly equal the tax the same individual would have paid had they earned the income directly.  
*Dividend gross-up and tax credit* adjust by flavour to the corporate tax already paid (capital dividends sit outside this framework, they are tax-free to a Canadian-resident shareholder).  

For the full integration mechanics (gross-up and DTC rates per flavour, corp-side preference order, ITA citations), see [Tax-Integration.md](../../Overview/Tax-Integration.md).  


## GRIP - capacity for eligible dividends

The *General Rate Income Pool* (GRIP) is defined at ITA [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html).  
It tracks a CCPC's accumulated after-tax income taxed at the general (non-SBD) corporate rate, plus eligible dividends received from other taxable Canadian corporations.  
Calculated each year on Schedule 53 (S53 - *General Rate Income Pool (GRIP) Calculation*); the running balance carries forward.  

GRIP is updated every year:
- Plus 72% of *general-rate active business income* for the year (active business income above the SBD limit, taxed at the general rate)
- Plus eligible dividends *received* during the year from other taxable Canadian corporations
- Minus eligible dividends *paid* during the year

The 72% factor (the "general rate factor") is defined in ITA s.89(1).  
It is the after-tax remainder of a notional 28% combined corporate tax rate, not the provincial general rate.  

For a CCPC operating entirely under the SBD limit, no general-rate active business income is generated.  
The only way GRIP grows is through eligible dividends received from other Canadian corporations that designate them as eligible.  
Common sources are public-corp ETFs and direct equity holdings, but also any other CCPC paying out of its own GRIP.  
This is why most owner-manager dividends end up being non-eligible by default: there is nothing in GRIP to designate against.  

Schedule 53 must still be filed each year to track and carry forward the balance, even when GRIP is zero.  


## CDA - capacity for capital dividends

The *Capital Dividend Account* (CDA) holds the non-taxable portion of the corporation's cumulative net capital gains, plus certain other amounts (e.g. tax-free portion of life-insurance proceeds), and is reduced by capital dividends paid.  
For mechanics of CDA balance tracking, the s.83(2) election, Form T2054 filing, and the Part III tax penalty for over-electing, see [Capital-Dividend-Account.md](../../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md).  

The CDA balance is read at the time the s.83(2) election is filed.  
Any capital losses realized between your last balance check and the election date reduce the available balance.  
Overdrawing triggers a 60% Part III tax (ITA s.184(2)).  


## ERDTOH and NERDTOH - refundable dividend tax accounts

Two accounts hold previously paid refundable corporate tax:
- *Eligible Refundable Dividend Tax on Hand* (ERDTOH)
- *Non-Eligible Refundable Dividend Tax on Hand* (NERDTOH)

The corporation gets this tax back as a *dividend refund* under ITA [s.129(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) when it pays a taxable dividend:
- *Eligible* dividend paid → draws only on ERDTOH (ITA s.129(1)(a)(i))
- *Non-eligible* dividend paid → draws on NERDTOH first, and only spills into ERDTOH after NERDTOH is exhausted (ITA s.129(1)(a)(ii))

For how these accounts get filled, how much comes back, and a worked example, see [ERDTOH-NERDTOH.md](ERDTOH-NERDTOH.md).  

The dividend refund is reported on the T2 jacket (line 784) and credited against tax payable for the same tax year.  
A dividend declared but not yet paid in cash at year-end can still trigger the refund for that year:
- It must be credited or otherwise made available to the shareholder by year-end (e.g. to the *Due to shareholder* account)
- Merely booking a payable does not count

For the year-end timing, see [Declaring and paying a dividend](Declaring-And-Paying.md#declaration-date-record-date-and-payment-date).  


### Stranded GRIP and ERDTOH

A CCPC that receives eligible dividends but only ever pays non-eligible dividends strands both GRIP and ERDTOH: unused balances that cannot be transferred, sold, or rolled out, and are lost at wind-up.  
The fix is to designate future dividends as eligible up to the running GRIP balance, draining both pools together.  
For the full stranding mechanics and catch-up remediation, see [ERDTOH-NERDTOH.md / Stranding](ERDTOH-NERDTOH.md#stranding).


## AII and the SBD grind

A CCPC's *Aggregate Investment Income* (AII) for the year is primarily:
- Interest
- Foreign income
- The taxable portion of capital gains
- Most T3 Box 26 distributions from index ETFs structured as mutual fund trusts

AII affects the corporation in two ways relevant to dividend planning:
- Generates a refundable Part I tax addition to NERDTOH equal to 30⅔% of AII (ITA s.129(4)), recovered by paying a non-eligible dividend
- Grinds the SBD limit once it tops $50,000, by $5 per $1 of excess, fully eliminating the SBD at $150,000 (ITA [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html))
  - The grind technically runs on *adjusted aggregate investment income* (AAII), which differs slightly from AII (e.g. it excludes gains and losses on active-business assets)

See [T3-Box-26-Other-Income.md](../../Investments/T3/T3-Box-26-Other-Income.md) for the detailed treatment of T3 Box 26 income.

The NERDTOH addition and the SBD grind apply differently depending on the corporation's AII level:
- If AII stays below the $50,000 grind threshold:
  - Active business income remains under the SBD rate
  - Dividends paid are non-eligible by default
  - Pay a non-eligible dividend each year to recover NERDTOH
- If AII is large enough to meaningfully grind the SBD:
  - Active business income above the reduced SBD limit is taxed at the general rate
  - In subsequent years that starts adding to GRIP via Schedule 53
  - This opens the door to paying eligible dividends as well
- In the limiting case of AII ≥ $150,000, the SBD is fully ground to zero and *all* active business income is taxed at the general rate
  - This maximizes the GRIP addition (72% of all ABI flows in via Schedule 53)
  - In subsequent years the corporation can pay eligible dividends out of that GRIP
  - The lower combined corp+personal tax on eligible dividends partially offsets the loss of the SBD rate

For an investment-only holdco with no active business income, the SBD grind is moot (there is no active income to grind); Part I refundable tax on AII still feeds NERDTOH and is still recovered by paying non-eligible dividends.  
This does not mean a holdco escapes the grind: the AAII of all associated corporations is pooled for the s.125(5.1) test, so an investment holdco's AII still grinds the SBD of an associated operating company.  


## Paying a dividend in practice

The accounts above determine *which* dividend to pay; the steps to actually declare, pay, record, and report it are split across:
- [Declaring and paying a dividend](Declaring-And-Paying.md): directors' resolution, s.89(14) eligible designation, three dates and year-end timing, and payment channels
- [Bookkeeping and information slips](Bookkeeping-And-Slips.md): double-entry journal entries, T5 slip and Summary, and NR4 for non-resident shareholders
- [T2 reporting](T2-Reporting.md): Schedules 3, 53, and 55, dividend-refund line, and Form T2054 capital-dividend election
- [Dividend examples](Dividends-Examples.md): four end-to-end examples (eligible, non-eligible, year-end NERDTOH recovery, capital dividend)


## Related

- [Small Business Tax Overview](../../Overview/Small-Business-Tax.md)
- [Owner-corporation transactions](../Owner-Corporation-Transactions.md)
- [Share Capital](../../Corporate-Lifecycle/Corporate-Structure/Share-Capital.md)
- [Business Acquisition](../../Corporate-Lifecycle/Business-Acquisition/Business-Acquisition.md)
- [Adjusted Cost Base](../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md)
- [Capital Dividend Account](../../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md)
- [T3](../../Investments/T3/T3.md)
- [T3 - Box 26 Other Income](../../Investments/T3/T3-Box-26-Other-Income.md)
- [T5](../../Investments/T5/T5.md)
- [T5008](../../Investments/T5008/T5008.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.15(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-15.html) - shareholder loan inclusion in income (one-year repayment rule)
  - [s.82(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-82.html) - dividend gross-up (38% eligible, 15% non-eligible)
  - [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) - capital dividend election; the elected amount is excluded from the shareholder's income under s.83(2)(b)
  - [s.84](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.html) - deemed dividends (s.84(3) on share redemption; s.84(4) on PUC reduction)
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - definitions of "eligible dividend", GRIP, LRIP, CDA, PUC; the GRIP "general rate factor" of 0.72
  - [s.89(14)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - eligible dividend designation by written notice to the shareholder at or before payment
  - [s.104(19)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-104.html) - trust designation that flows the eligible-dividend character of taxable Canadian dividends through to beneficiaries (mechanism behind T3 Box 49)  - [s.120.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-120.4.html) - Tax on Split Income (TOSI), including the *excluded business* and *excluded shares* carve-outs that typically take an active owner-manager out of TOSI
  - [s.121](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-121.html) - federal dividend tax credit (15.0198% eligible, 9.0301% non-eligible, of the grossed-up amount)
  - [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - SBD grind on adjusted aggregate investment income (AAII) over $50,000 ($5 SBD reduction per $1 of AAII excess)
  - [s.129](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - dividend refund on taxable dividends paid (s.129(1)); definitions of ERDTOH and NERDTOH (s.129(4))
  - [s.184(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-184.html) - Part III tax on excessive capital dividend elections (60% of the excess)
  - [s.185.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-185.1.html) - Part III.1 tax on excessive eligible dividend designations (20%, plus an additional 10% where the excess arises under paragraph (c) of the *excessive eligible dividend designation* definition in s.89(1): the GRIP/LRIP-manipulation rule); s.185.1(2) joint election to reclassify the excess as a separate non-eligible dividend (unavailable when the 30% rate applies)
  - [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) - definition of "dividend" (includes a stock dividend; otherwise common-law meaning)
- CRA forms:
  - T1206 - Tax on Split Income (filed with the recipient's personal T1; federal TOSI on line 40424): https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t1206.html
  - T2054 - Election for a Capital Dividend Under Subsection 83(2): https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2054.html
- T2 schedules:
  - S53 - General Rate Income Pool (GRIP) Calculation: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch53.html
  - S55 - Part III.1 Tax on Excessive Eligible Dividend Designations: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch55.html


## TODO

- Add a worked example for an investment-only holdco (no active business income; pure NERDTOH-recovery cycle)
- Add screenshots for the T5 Web Forms filing flow via CRA My Business Account
- Watch for enactment of the 2026 Ontario budget (proposed Ontario SBD rate cut to 2.2% effective July 1, 2026; non-eligible DTC drop to 1.9863% effective January 1, 2027) and update worked examples once enacted
