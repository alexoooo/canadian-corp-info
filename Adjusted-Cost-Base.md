# Adjusted Cost Base (ACB)

**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) who hold investments in a corporate trading account.  

The ACB is used when you sell a security; this results in a T5008 and needs to be reported on the T2 in Schedule 6.  
You are responsible for maintaining your own ACB records and using those to calculate capital gains or losses (i.e. do not just report the T5008 Box 20 amount, which is the Book Cost rather than the ACB).  

This document is an overview of ACB concepts.  
For detailed step-by-step instructions for how to track ACB, see:
[Adjusted Cost Base Tracking](Adjusted-Cost-Base-Tracking.md)

This document only covers stocks and ETFs.  
Other types of investments (real estate, etc.) are out of scope and might have different or additional rules.  

Tax information can change over time (e.g. the capital gains inclusion rate was going to increase to 2/3, before the proposal was cancelled).  
The following is my understanding as of 2026.  


# Definitions

Adjusted Cost Base (ACB) is used to calculate capital gains or losses when you sell an asset:  
- ACB = cost of the property + acquisition costs + adjustments over time
- Cost of the property: typically the purchase price that you paid to acquire the asset, but can sometimes be different (e.g. gifts, transfers, rollover, etc.)
- Acquisition costs: fees paid to buy the asset (e.g. brokerage trading commission)
- Adjustments over time: ROC, phantom (non-cash) portion of capital gains distribution, stock splits, etc.

Book Cost (also known as Book Value) is calculated by your brokerage (not a CRA definition):
- Amount shown on your investment statements and brokerage website
- May not exactly reflect the ACB, or might be delayed
- Can have brokerage-specific behaviour that is inconsistent over time

Market Value:
- Current price of an asset (national last sale price) x number of shares or units
- Not used for any tax calculations


# What changes the ACB

Things that increase your ACB:
- Purchasing a security
- DRIP (reinvested distribution): the fund declares a distribution and the DRIP program automatically acquires additional units on your behalf; for tax purposes you are treated as having received the cash and reinvested it, so the reinvested amount increases your ACB like any other purchase
  - Use the payment/reinvestment date (when the units are credited to your account); this also drives the FX rate per the rule for distributions below
- Phantom (non-cash) distribution: the fund reports a capital gains distribution on T3 Box 21 but some or all of it is not paid out in cash; you owe tax on it but received nothing, so you increase ACB by that phantom amount to prevent double-taxation on sale  

Selling a security results in a T5008 which decreases the ACB (although the per-share/per-unit ACB doesn't change).  

T3 box 42 (amount resulting in cost base adjustment) typically decreases your ACB but sometimes can increase it:
- Positive amount decreases your ACB, typically this is Return of Capital
- Negative amount increases your ACB, this is rare but can happen (e.g. an over-distribution correction), always follow the sign  

ACB cannot be negative.  
If ROC would reduce it below zero, the excess becomes an immediate capital gain (ITA [s.40(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html)).  
Report that gain as a separate line in Schedule 6 of your T2 software rather than folding it into a normal disposition line for the security.  

Example:
- Purchase 100 units at $10.00/unit → total ACB: $1,000.00, per-unit ACB: $10.00
- Year 1 ROC: $2.00/unit × 100 = $200 → total ACB: $800.00, per-unit ACB: $8.00
- Year 2 ROC: $5.00/unit × 100 = $500 → total ACB: $300.00, per-unit ACB: $3.00
- Year 3 ROC: $4.00/unit × 100 = $400, but only $300 remaining ACB → ACB reduced to $0, and the $100 excess is an immediate capital gain (ITA s.40(3)); report on Schedule 6
- Per-unit ACB is now $0.00; all future ROC will similarly be immediate capital gains

Corporate actions can increase or decrease your ACB:
- Stock split: total ACB stays the same, per-share/per-unit ACB decreases proportionally  
- Spin-off: you must allocate the original ACB between the parent company and the new entity, typically based on the relative fair market values on the effective date  


# Book Cost vs ACB

Ideally Book Cost would equal ACB, but in practice you might see brokerage-dependent differences with the following:
- Phantom distributions: non-cash portion of T3 Box 21
- Cost base adjustment: T3 Box 42, typically Return of Capital (ROC)
- T5008 and T3 amounts might be slightly different from what you see in your investment account (typically in pennies and washes out over time)  

Depending on your brokerage, you might see:
- Every change to the ACB could be correctly reflected in the Book Cost, this is ideal  
- ACB changes might be reflected but delayed (e.g. until following April)  
- Some ACB changes might be missing entirely  
- Superficial loss rules and external holdings (same security in different account) typically require tracking yourself  
- All brokerages might occasionally miss adjusting the Book Cost and sometimes report the wrong amount  
- The behaviour can appear inconsistent  
- It might be possible to raise a discrepancy with your brokerage, and they could re-issue T3 or T5008 slips  


# Trading fees

Trading fees to buy a security increase your ACB (i.e. they are "capitalized", not counted as an expense).  

Trading fees to sell a security:
- Do not change the ACB
- Reduce the "Proceeds of disposition"
- Are treated as "Outlays and expense from disposition" in T2 Schedule 6


# Date of acquisition for pooled securities

ACB uses pooled average cost across all identical properties (not FIFO or LIFO).  
When you sell and fill out the T2 Schedule 6 entry, you will need to specify a "Date of acquisition".  
For pooled securities, use the date of the very first purchase that contributed to the current pool — this is a conservative convention in the absence of specific CRA guidance.  


# Foreign assets and FX conversion to CAD

If you hold USD or other foreign assets, you must convert to CAD when calculating ACB (you can use the Bank of Canada daily exchange rate — the indicative midpoint published at approximately 16:30 ET; the legacy noon rate is no longer published):  
- Purchases and sales: use the exchange rate for the trade date (not settlement date)  
- Distributions (including ROC and reinvested/phantom amounts such as the non-cash portion of T3 box 21): use exchange rate on payment/distribution date (not when distribution is declared)  
- Outlays and expenses (e.g. commissions): use exchange rate on trade date (not settlement date)  
- The income statement uses average annual exchange rate, your balance sheet uses the end-of-year rate, but these are not applicable to transactions that affect ACB (which must always use the daily exchange rate)  


# Corporate vs personal ACB

If you hold a security in a personal account, as well as in your corporation's account, they are considered assets of two distinct legal entities.  
You track the ACB for each entity separately, even if they hold the identical security.  

Note that while ACB is tracked separately, personal and corporate accounts are "affiliated persons" for the purpose of superficial loss (see below).


# Capital loss carry forward / back / superficial loss

Capital losses can be carried forward indefinitely to offset future capital gains, and they can be carried back 3 years.  
To carry back a capital loss, a corporation uses T2 Schedule 4 (Corporation Loss Continuity and Application), which triggers a reassessment of the prior-year T2.  

Tax loss harvesting is the technique of realizing a loss, and then potentially investing in a similar security.  
There are limitations on which losses can be claimed, make sure you don't get a "superficial loss":  
- Time window: during the 61-day period that begins 30 days before and ends 30 days after a sale at a loss  
- Who it applies to: you or an "affiliated person", including a corporation that you control (or a corporation controlled by your spouse/common-law partner)  
- What is the action: acquisition of an identical property —
    same issuer, same class, same currency of issue
    (ITA [s.248(12)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html); CRA Folio S3-F3-C1);
    whether two different ETFs tracking the same index are identical is fact-specific  
- Condition at end of period: you or an affiliated person still owns that substituted property (or has the right to acquire it)  
- What happens: loss is denied for now and is generally added to the ACB of the substituted property instead of being claimed immediately  
- Example: if your corporation sells XEI at a loss,
    and you buy XEI in your personal account within the 30-day window and still hold it at the end of the window,
    the corporate loss can be a superficial loss even though the repurchase happened in a different account


# Related

- [Adjusted Cost Base Tracking](Adjusted-Cost-Base-Tracking.md)
- [Capital Dividend Account](Capital-Dividend-Account.md)
- [T3](T3.md)
- [T5008](T5008.md)
- [Foreign-Currency](Foreign-Currency.md)


# Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.40(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html) - capital gain and capital loss formula, including outlays and expenses on disposition
  - [s.47(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-47.html) - identical properties: pooled average cost rather than FIFO or LIFO
  - [s.53](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-53.html) - adjustments to cost base (additions and deductions)
  - [s.54](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-54.html) - definitions of "adjusted cost base", "superficial loss", and "proceeds of disposition"
  - [s.251.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-251.1.html) - definition of "affiliated persons" (relevant to superficial loss)
- CRA T2 Schedule 4 - Corporation Loss Continuity and Application: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch4.html
- CRA T4037 "Capital Gains" guide: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4037/capital-gains.html
- Bank of Canada daily exchange rates: https://www.bankofcanada.ca/rates/exchange/daily-exchange-rates/


# Links

- Related to personal taxes, but still relevant: https://www.finiki.org/wiki/Adjusted_cost_base
- https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4037/capital-gains.html
- https://www.cifinancial.com/ci-gam/ca/en/expert-insights/articles/etf-taxation--tax-loss-selling-and-identical-property.html


# Todo:

- Elaborate on foreign currency conversion, cross-reference with Foreign-Currency.md  
