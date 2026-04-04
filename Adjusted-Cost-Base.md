# Adjusted Cost Base (ACB)

Adjusted Cost Base (ACB): official tax term used by the Canada Revenue Agency (CRA) to calculate capital gains or losses when you sell an asset.  
Book Cost (Book Value): amount shown on your investment statements and brokerage website, it typically includes your initial investment and increases when you buy and decreases when you sell.  
You are responsible for maintaining your own ACB records and using those to calculate capital gains or losses (i.e. do not blindly report the T5008 box 20 amount).  

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

Capital losses can be carried forward indefinitely to offset future capital gains, and they can be carried back 3 years.  
However if you sell at a loss and repurchase the same security within 30 days (before or after), it is a "superficial loss" which is added back to the ACB of the substituted property (the newly repurchased shares that triggered the superficial loss).  
For the purposes of the superficial loss rules, you and a corporation that you control are considered "affiliated persons", and you can't use your corporate account to harvest tax losses for your personal account (or vice versa).

ACB cannot be negative, if ROC would reduce it below zero then the negative amount instead becomes an immediate capital gain.  

If you hold a security in a personal account, as well as in a corporation account, they are considered 
If you hold the security in more than one account (non-registered accounts only, which is all corporate investment accounts, you are required to calculate the ACB across all of the accounts.  

Trading fees to buy a security increase your ACB.  
Trading fees to sell a security are treated as "Outlays and expense from disposition" in T2 Schedule 6.  
When selling, the fee does not reduce your ACB (instead it reduces your "Proceeds of disposition").

Securities are priced at the Weighted Average Cost (WAC, not FIFO or LIFO), because of this there is not a single canonical date of acquisition.  
If you need a single acquision date (e.g. for electronic filing of T2 Schedule 6) for pooled securities with averaged ACB, you can use the date of the very first purchase that contributed to the current pool of units being sold.  
Using the earliest date of continuous holding of a security is conservative in the absense of specific CRA guidence.  

If you hold USD or other foreign assets, you will need to convert to CAD when calculating ACB.  
The conversion takes place on the exact settlement date of every buy, sell, or distribution transaction using the Bank of Canada exchange rate for that day.  


Things that can affect your ACB:
- Increase: purchasing a security  
- Decrease: Selling a security (T5008)  
- Decrease: T3 box 42: amount resulting in cost base adjustment, typically Return of Capital (ROC)  
- Increase: T3 box 21: capital gains distribution, phantom (non-cash) portion


Links:
- https://www.finiki.org/wiki/Adjusted_cost_base
- https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4037/capital-gains.html
