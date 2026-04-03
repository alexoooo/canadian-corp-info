# Adjusted Cost Base (ACB)

STATUS: WORK IN PROGRESS 

Adjusted Cost Base (ACB): official tax term used by the Canada Revenue Agency (CRA) to calculate capital gains or losses when you sell an asset.  
Book Cost (Book Value): amount shown on your investment statements, it typically includes your initial investment increases when you buy and decreases when you sell.  

Ideally these two would be identical, but in practice you might see brokerage-dependent differences with the following:
- Phantom distributions (non-cash portion of box 21 from ETF where no new units are issued), and cost base adjustments (box 42, typically ROC), and re-invested distributions.  
  Some brokers such as RBC Direct Investing do handle these, but possibly delayed until April, and in some cases missing entirely.
  Other brokers may not handle some or all of these at all, the behaviour can be inconsistent.  
- External holdings (same security in different account) and Superficial Loss rules may or may not be correctly tracked by the broker.  
All brokerages might occasionally forget to properly adjust the Book Cost  (e.g. with RBC if you sell the security before April) and sometimes report the wrong amount (which can be resolved by raising the issue with the brokerage), and they might even not update the ACB at all (ideally you should avoid these because it makes your life harder).  
For this reason, you will need to independently track the ACB in a spreadsheet to properly report taxes and also to validate what you see from your brokerage.




The cost or book value reported on the T5008 (box 20) may not reflect your actual Adjusted Cost Base (ACB) for tax purposes.  
You are responsible for maintaining your own ACB records and using those to calculate capital gains or losses.  

If you sell at a loss and repurchase the same security within 30 days (before or after), the "Superficial loss" is denied and added back to the ACB.  

Securities are priced at the Weighted Average Cost (WAC, not FIFO or LIFO), because of this there is not a single obvious date of acquisition.  
If you need a single acquision date for pooled securities with averaged ACB, you can use the date of the very first purchase that contributed to the current pool of units being sold.  
Using the earliest date of continuous holding of a security is conservative in the absense of specific CRA guidence.

Note that the ACB cannot be negative, so if ROC would reduce it below zero then the negative amount instead becomes an immediate capital gain.

Trading fees reduce the cost base, they are not tracked independently for tax purposes.

Things that can affect your ACB:
- Increase: purchasing a security  
- Decrease: Selling a security (T5008)  
- Decrease: T3 box 42: amount resulting in cost base adjustment, typically Return of Capital (ROC)  
- Increase: T3 box 21: capital gains distribution, phantom (non-cash) portion

