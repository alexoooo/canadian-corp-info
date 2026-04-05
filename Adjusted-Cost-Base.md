# Adjusted Cost Base (ACB)

Who this is for: owners of Canadian-controlled private corporation (CCPC) who hold investments in a corproate trading account.  
This document only covers stocks and ETFs, other types of investments (real estate, etc.) are out of scope and might have different or additional rules.   

The ACB is used when you sell a security, this results in a T5008 and needs to be reported on the T2 in Schedule 6.  
You are responsible for maintaining your own ACB records and using those to calculate capital gains or losses (i.e. do not just report the T5008 box 20 amount).  

Tax information can change over time (e.g. the capital gains inclusion rate was going to increase to 2/3, before the proposal was cancelled), the below is my understanding as of 2026.  


## Definitions

Adjusted Cost Base (ACB) is used to calculate capital gains or losses when you sell an asset:  
- ACB = cost of the property + acquisition costs + specific adjustments over time
- Cost is typically the purchase price that you paid to acquire the asset (but can sometimes be different, e.g. gifts, transfers, rollover, etc.)
- Acquisition costs are fees paid to buy the asset (e.g. brokerage trading commission)
- ACB chages over time:

Book Cost (also know as Book Value) is calculated by your brokerage:
- Amount shown on your investment statements and brokerage website
- May not exactly refect the ACB, or might be delayed
- Can have brokerage-specific behaviour that is not consistent over time

Market Value:
- Current price of an asset x number of shares or units
- Not used for any tax calculations


## What changes the ACB

Things that increase your ACB:
- Purchasing a security
- Reinvested distributions
- Phantom (non-cash) portion of capital gains distribution - T3 box 21 (not necessarily the full amount, see T3 page)  

Things that decrease your ACB:
- Return of capital - T3 box 42
- Selling a security, although the per-share (or per-unit) ACB doesn't change - T5008

ACB cannot be negative, if ROC would reduce it below zero then the negative amount instead becomes an immediate capital gain.  

Corporate actions (e.g. stock split, spin off) can increase or decrease your ACB.


## Book Cost vs ACB

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


## Details

Trading fees to buy a security increase your ACB (i.e. they are "capitalized", not counted as an expense).  
Trading fees to sell a security are treated as "Outlays and expense from disposition" in T2 Schedule 6.  
When selling, the fee does not reduce your ACB (instead it reduces your "Proceeds of disposition").  

If you hold a security in a personal account, as well as in your corporation's account, they are considered assets of two distinct legal entities.  
You track the ACB for each entity separately, even if they hold the identical security.  

ACB uses pooled average cost across all identical properties (not FIFO or LIFO).  
When you sell, receive a T5008, and file T2 Schedule 6, you will need to specify a "Date of acquisition".  
Because you can buy and sell pooled securities over time, there might not a single obvious date of acquisition.  
You can use the date of the very first purchase that contributed to the current pool of units being sold.  
Using the earliest date of continuous holding of a security is conservative in the absense of specific CRA guidence.  

If you hold USD or other foreign assets, you will need to convert to CAD when calculating ACB.  
The conversion takes place on the settlement date of every buy, sell, or distribution transaction using the Bank of Canada daily exchange rate.  

Capital losses can be carried forward indefinitely to offset future capital gains, and they can be carried back 3 years.  
However if you sell at a loss and repurchase the same security within 30 days (before or after), it is a "superficial loss" which is added back to the ACB of the substituted property (the newly repurchased shares that triggered the superficial loss).  
For the purposes of the superficial loss rules, you and a corporation that you control are considered "affiliated persons", and you can't use your corporate account to harvest tax losses for your personal account (or vice versa).  


## Links
- https://www.finiki.org/wiki/Adjusted_cost_base
- https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4037/capital-gains.html
