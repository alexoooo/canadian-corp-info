STATUS: work in progress


# Adjusted Cost Base (ACB) - Tracking

**Who this is for**: owners of Canadian-controlled private corporation (CCPC) who hold investments in a corporate trading account.
This document focuses on the mechanics of tracking ACB, for a general overview see: [Adjusted Cost Base](Adjusted-Cost-Base.md)

Tracking the ACB can be done with a single spreadsheet (one transaction per row).  
The primary place where this information is reported is T2 Schedule 6, but it can also be useful for reconciling brokerage statements.  

Limitations:
- Template handles transactions for Buy/Sell/ROC/Phantom, you will need to add custom handling for any other transaction types  
- This document only covers stocks and ETFs, other types of investments (real estate, etc.) are out of scope and might have different or additional rules  
- Tax information can change over time (e.g. the capital gains inclusion rate was going to increase to 2/3, before the proposal was cancelled), the below is my understanding as of 2026  


# Spreadsheet template

Any spreadsheet software could be used (Excel, LibreOffice Calc, etc.), the example here uses Google Sheets.  

Go to the following, and click "Use Template" (top right) to create your own copy:  
https://docs.google.com/spreadsheets/d/1AV3RLfGw6l3G_az_2OpUHxRmTm5MwmkwPJHoPyNEBAM/template/preview

Screenshot:
![Screenshot of Adjusted Cost Base Tracker](media/Adjusted-Cost-Base-Traker_Screenshot.png)


# Inputs: what information is used

Inputs (from investment confirmations and T3):
- `Date`: YYYY-MM-DD  
  Buy / Sell use trade date; ROC / Phantom use payment/distribution date)
- `Symbol`: ETF or stock ticker
- `Action`: Buy, Sell, ROC, Phantom
- `Quantity`: shares or units (use 0 or blank for ROC and Phantom)
- `Gross Amount`: before commission; for ROC and Phantom, this is the adjustment amount for that specific distribution event
- `Commission`: fee charged by brokerage
- `FX CAD Rate`: conversion from local transaction currency to CAD (1.0 if already in CAD)
- `Note`: free-form text to capture any auxiliary information (e.g. if the given entry was audited)


# Inputs: data entry

- Trade confirmations
- Other?


# Outputs: where to use them and how are they calculated

Outputs (cumulative per symbol):
- `Remaining Quantity` = `Previous Remaining Quantity` + `Quantity Change`  
  Can be used to match quantity in investment statements and brokerage website
- `ACB Change` = `ACB Change - Buy` + `ACB Change - Sell` + `ACB Change - ROC` + `ACB Change - Phantom`  
  Entered in T2 Schedule 6
- `ACB` = `Previous ACB` + `ACB Change`
- `Realized Gain/Loss` = IF(`Action` = "Sell", `Net Proceeds CAD` - `Removed ACB`, 0)
- `Immediate Capital Gain` = IF(`Action` = "ROC", MAX(0, `Gross Amount CAD` - `Previous ACB`), 0)  
  Reported in T2 Schedule 6 (as a separate line)
- `Date of Acquisition` =  
  &ensp; IF(AND(`Action` = "Buy", `Previous Remaining Quantity` = 0), `Date`, `Previous Date of Acquisition`)  
  Earliest date of continuous holding for the current pooled position, used in Schedule 6


# Intermediate calculations

- `Previous Row for Symbol` =  
  &ensp; IFERROR(  
  &ensp; &ensp; XMATCH(  
  &ensp; &ensp; &ensp; `Symbol`,  
  &ensp; &ensp; &ensp; OFFSET(`Symbol`\$1, 0, 0, ROW() - 1, 1),  
  &ensp; &ensp; &ensp; 0, -1),  
  &ensp; &ensp; "")
- `Previous Remaining Quantity` =  
  &ensp; IF(`Previous Row for Symbol` = "", 0,  
  &ensp; &ensp; INDEX(`Remaining Quantity`:column, `Previous Row for Symbol`))
- `Previous ACB` =  
  &ensp; IF(`Previous Row for Symbol` = "", 0,  
  &ensp; &ensp; INDEX(`ACB`:column, `Previous Row for Symbol`))
- `Previous Date of Acquisition` =  
  &ensp; IF(`Previous Row for Symbol` = "", "",  
  &ensp; &ensp; INDEX(`Date of Acquisition`:column, `Previous Row for Symbol`))
- `Previous ACB Per Unit` =  
  &ensp; IF(`Previous Remaining Quantity` = 0, 0, `Previous ACB` / `Previous Remaining Quantity`)
- `Gross Amount CAD` = `Gross Amount` * `FX CAD Rate`
- `Commission CAD` = `Commission` * `FX CAD Rate`
- `Net Cost CAD` = IF(`Action` = "Buy", `Gross Amount CAD` + `Commission CAD`, 0)
- `Quantity Change` = IF(`Action` = "Buy", `Quantity`, IF(`Action` = "Sell", -`Quantity`, 0))
- `Removed ACB` = IF(`Action` = "Sell", `Quantity` * `Previous ACB Per Unit`, 0)
- `Net Proceeds CAD` = IF(`Action` = "Sell", `Gross Amount CAD` - `Commission CAD`, 0)
- `ACB Change - Buy` = IF(`Action` = "Buy", `Net Cost CAD`, 0)
- `ACB Change - Sell` = IF(`Action` = "Sell", -`Removed ACB`, 0)
- `ACB Change - ROC` = IF(`Action` = "ROC",  
  &ensp; IF(`Gross Amount CAD` >= 0, -MIN(`Gross Amount CAD`, `Previous ACB`), -`Gross Amount CAD`), 0)
- `ACB Change - Phantom` = IF(`Action` = "Phantom", `Gross Amount CAD`, 0)


# Notes

- Rows must be entered in transaction order for each Symbol
- For Buy, the commission increases ACB; for Sell, the commission reduces proceeds and is not part of ACB
- For ROC, keep the sign from the slip: a positive amount reduces ACB, and a negative amount increases ACB
- For T3 box 21, only the phantom (non-cash) portion belongs in a Phantom row; the cash portion does not change ACB
- If a T3 slip aggregates multiple ROC or phantom distributions, split them into separate dated rows whenever possible, especially if there were intervening sales or FX differences
- Use the trade-date FX rate for Buy, Sell, and their commissions; use the payment/distribution-date FX rate for ROC and Phantom
- ACB cannot go below zero, if positive ROC is larger than `Previous ACB`, the excess is an immediate capital gain and `ACB` becomes zero
- `Remaining Quantity` should never go negative; if a sale would exceed current holdings, fix the input rather than allowing a negative balance
- If you fully dispose of a position and later buy it again, the `Date of Acquisition` resets on the new purchase
- This minimal template does not automate superficial loss, stock splits, or spin-offs; handle those with separate logic or manual adjustments
- DRIP can be entered as Buy with `Commission` = 0
