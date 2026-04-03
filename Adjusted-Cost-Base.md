# Adjusted Cost Base (ACB)

Adjusted Cost Base (ACB): official tax term used by the Canada Revenue Agency (CRA) to calculate capital gains or losses when you sell an asset.  
Book Cost (Book Value): amount shown on your investment statements, it typically includes your initial investment increases when you buy and decreases when you sell.  
You are responsible for maintaining your own ACB records and using those to calculate capital gains or losses (i.e. do not blindly report the T5008 box 20 amount).  

Ideally these two would be identical, but in practice you might see brokerage-dependent differences with the following:
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

Superficial loss: if you sell at a loss and repurchase the same security within 30 days (before or after), the loss is denied and added back to the ACB.  
Note that the ACB cannot be negative, so if ROC would reduce it below zero then the negative amount instead becomes an immediate capital gain.  
Trading fees reduce the cost base, they are not tracked independently for tax purposes.  

Securities are priced at the Weighted Average Cost (WAC, not FIFO or LIFO), because of this there is not a single canonical date of acquisition.  
If you need a single acquision date for pooled securities with averaged ACB, you can use the date of the very first purchase that contributed to the current pool of units being sold.  
Using the earliest date of continuous holding of a security is conservative in the absense of specific CRA guidence.  


Things that can affect your ACB:
- Increase: purchasing a security  
- Decrease: Selling a security (T5008)  
- Decrease: T3 box 42: amount resulting in cost base adjustment, typically Return of Capital (ROC)  
- Increase: T3 box 21: capital gains distribution, phantom (non-cash) portion

