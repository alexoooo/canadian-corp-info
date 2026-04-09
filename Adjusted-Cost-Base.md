# Adjusted Cost Base (ACB)

**Who this is for**: owners of Canadian-controlled private corporation (CCPC) who hold investments in a corporate trading account.  

The ACB is used when you sell a security, this results in a T5008 and needs to be reported on the T2 in Schedule 6.  
You are responsible for maintaining your own ACB records and using those to calculate capital gains or losses (i.e. do not just report the T5008 box 20 amount, which is the Book Cost rather than the ACB).  

This document only covers stocks and ETFs, other types of investments (real estate, etc.) are out of scope and might have different or additional rules.   
Tax information can change over time (e.g. the capital gains inclusion rate was going to increase to 2/3, before the proposal was cancelled), the below is my understanding as of 2026.  


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
- DRIP (reinvested distribution): the fund pays you cash and you immediately use it to buy more units, the automatic purchase increases your ACB like any other purchase
- Phantom (non-cash) distribution: the fund reports a capital gains distribution on T3 Box 21 but some or all of it is not paid out in cash (and it's not reinvested); you owe tax on it but received nothing, so you increase ACB by that phantom amount to prevent double-taxation on sale  

Selling a security results in a T5008 which decreases the ACB (although the per-share/per-unit ACB doesn't change).  

T3 box 42 (amount resulting in cost base adjustment) typically decreases your ACB but sometimes can increase it:
- Positive amount decreases your ACB, typically this is Return of Capital
- Negative amount increases your ACB, this is rare but can happen (e.g. an over-distribution correction), always follow the sign  

ACB cannot be negative, if ROC would reduce it below zero then the negative amount instead becomes an immediate capital gain.  

Corporate actions can increase or decrease your ACB:
- Stock split: total ACB stays the same, per-share/per-unit ACB decreases proportionally  
- Spin-off: you must allocate the original ACB between the parent company and the new entity, typically based on the relative fair market values on the effective date  


# Book Cost vs ACB

Ideally Book Cost would equal ACB, but in practice you might see brokerage-dependent differences with the following:
- Phantom distributions: non-cash portion of T3 box 21
- Cost base adjustment: T3 box 42, typically Return of Capital (ROC)
- T5008 and T3 amounts might be slightly different from what you see in your investment account (typically in pennies and washes out over time)  

Depending on your brokerage, you might see:
- Every change to the ACB could be correctly reflected in the Book Cost, this is ideal  
- ACB changes might be reflected but delayed (e.g. until following April)  
- Some ACB changes might be missing entirely  
- Superficial Loss rules and external holdings (same security in different account) typically require tracking yourself  
- All brokerages might occasionally miss adjusting the Book Cost and sometimes report the wrong amount  
- The behaviour can appear inconsistent  
- It might be possible raise a discrepancy with your broker and they could re-issue T3 or T5008 slips  


# Details

Trading fees to buy a security increase your ACB (i.e. they are "capitalized", not counted as an expense).  
Trading fees to sell a security are treated as "Outlays and expense from disposition" in T2 Schedule 6.  
When selling, the fee does not reduce your ACB (instead it reduces your "Proceeds of disposition").  

If you hold a security in a personal account, as well as in your corporation's account, they are considered assets of two distinct legal entities.  
You track the ACB for each entity separately, even if they hold the identical security.  

ACB uses pooled average cost across all identical properties (not FIFO or LIFO).  
When you sell, receive a T5008, and fill out the corresponding T2 Schedule 6 entry, you will need to specify a "Date of acquisition".  
Because you can buy and sell pooled securities over time, there might not a single obvious date of acquisition.  
You can use the date of the very first purchase that contributed to the current pool of units being sold.  
Using the earliest date of continuous holding of a security is a conservative bookkeeping convention in the absence of specific CRA guidance.  

If you hold USD or other foreign assets, you must convert to CAD when calculating ACB (using the Bank of Canada daily exchange rate):  
- Purchases and sales: use the exchange rate for the trade date (not settlement date)  
- Distributions (including ROC and reinvested/phantom amounts such as the non-cash portion of T3 box 21): use exchange rate on payment/distribution date (not when distribution is declared)  
- Outlays and expenses (e.g. commissions): use exchange rate on trade date (not settlement date)  
- The income statement uses average annual exchange rate, your balance sheet uses the end-of-year rate, but these are not applicable to transactions that affect ACB (which must always use the daily exchange rate)  

Capital losses can be carried forward indefinitely to offset future capital gains, and they can be carried back 3 years.  
However if you (or an affiliated person) sell at a loss and repurchase the same (or identical) property within 30 days (before or after), it is a "superficial loss" which can be denied and added back to the ACB of the substituted property (the newly repurchased shares that triggered the superficial loss).  
At the end of that 30-day period, you or an affiliated person must still own the property (if you sell, rebuy, and then sell again before the window closes, the superficial loss rule may not apply).  
To carry back a capital loss you submit Form T2A (Request for Loss Carryback), which triggers a reassessment of the prior-year T2.  
For the purposes of the superficial loss rules, you and a corporation that you control (or a corporation controlled by your spouse/common-law partner) are considered "affiliated persons", and you can't use your corporate account to harvest tax losses for your personal account (or vice versa).  


# Related

- [Capital Dividend Account](Capital-Dividend-Account.md)
- [T3](T3.md)
- [T5008](T5008.md)
- [Foreign-Currency](Foreign-Currency.md)


# Links

- Related to personal taxes, but still relevant: https://www.finiki.org/wiki/Adjusted_cost_base
- https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4037/capital-gains.html


# TODO:

- Elaborate on foreign currency conversion, cross-reference with Foreign-Currency.md  
- Explain ACB adjustment calculations, and include spreadsheet to be used as template for ACB calculation  
