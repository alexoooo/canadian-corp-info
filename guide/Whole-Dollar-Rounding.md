STATUS: AI GENERATED, REVIEW IN PROGRESS

# Whole-dollar rounding

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) who keep books in dollars and cents but file the T2 in whole dollars
- Especially anyone keeping books in a spreadsheet rather than tax software that rounds and balances automatically

**Topics**:
- Why naive rounding breaks the accounting equation
- CRA's whole-dollar requirement and rounding convention
- Systematic methods that keep the statements tied
- Where rounding actually bites

**TLDR**:
- Books are kept to the cent; the T2 and its GIFI schedules are filed in whole dollars, rounded to the nearest dollar
- Keep the ledger in cents as the source of truth; round only when mapping to GIFI, and never post the rounding back into the books
- Get subtotals by summing the already-rounded lines; never round a total on its own
- When a set of lines must hit a fixed rounded total, hand the leftover dollar to the lines with the largest fractional remainders (the *largest-remainder method*)
- Let one designated line absorb the residual so both sides still tie: retained earnings (`3849`) on the balance sheet, net income on the income statement
- Tax software does all of this for you; it is a manual concern only for spreadsheet-kept books

Limitations:
- The whole-dollar filing requirement and the round-half-up convention are stated here as my understanding as of 2026; verify the current wording in CRA's *RC4088* and the schedule instructions before relying on it
- GST/HST rounding is a separate regime (to the nearest cent, not the nearest dollar); see [GST/HST](HST.md)
- This is a bookkeeping convention for presenting whole-dollar statements, not a substitute for the internal balancing your tax software already performs
- I am not an accountant; this is not financial or tax advice


## The problem

Your books are kept in dollars and cents, and they balance to the cent: every entry posts equal debits and credits, so `Assets = Liabilities + Equity` holds exactly.  
The T2 is filed in whole dollars.  
GIFI (Schedules 100 and 125) and the calculation schedules carry no cents.  

Rounding each line on its own does not preserve the relationships between lines.  
Round every figure to the nearest dollar and the rounded parts may no longer sum to the rounded total, the two sides of the balance sheet may differ by a dollar or two, and a rounded trial balance may not have debits equal to credits.  

Example — three asset lines that balance to the cent against a single payable:
- Cash $40.50, Receivables $40.50, Prepaid $40.50 → total assets $121.50
- Rounded independently (half up): $41 + $41 + $41 = $123, but total assets $121.50 rounds to $122

The detail now over-states the total by $1.  
Nudging one line by hand fixes this instance, but choosing the line ad hoc is not repeatable and can bias the books over time.  
The methods below make the rounding deterministic.


## CRA's rules

- *Whole dollars*: GIFI amounts on Schedule 100 (balance sheet) and Schedule 125 (income statement), and the figures on the calculation schedules (Schedule 1, Schedule 6, Schedule 8), are reported in whole dollars with no cents — RC4088 gives the example of reporting cash of $10,500.75 as `10501`
- *Round to the nearest dollar*: a fractional amount rounds to the nearest whole dollar; an amount exactly halfway rounds up to the higher dollar (round half up) — so $10,500.49 becomes $10,500 and $10,500.50 becomes $10,501
- *GST/HST is separate*: sales tax is rounded to the nearest cent, not the nearest dollar, and follows its own rules on the GST/HST return; see [GST/HST](HST.md)

Round half up is the convention used across CRA's income-tax calculations, including the annual indexation of tax brackets (ITA [s.117.1(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-117.1.html) rounds an equidistant amount to the higher dollar); banker's rounding (round half to even) does not apply here.


## Systematic methods

Apply these in order.  
The first two are enough for most sets of books; the last two close the remaining gaps.

### Keep the books in cents

The ledger is the source of truth and stays in dollars and cents.  
Rounding is a presentation step applied when the trial balance is mapped to GIFI — it is not posted back into the accounts.  
Next year's opening balances carry full precision, and rounding error never accumulates in the books.  

### Sum the rounded lines for every subtotal

Round each detail line to the nearest dollar, then add the rounded lines to get the subtotal and total.  
Never round a true total independently of its parts: derive every total from the rounded detail, and each column adds up by construction.  

This alone removes most discrepancies.  
The balance-sheet sides still connect through retained earnings, handled below.

### Largest-remainder method for a fixed total

Sometimes a set of lines must add up to a total that is already fixed in whole dollars (for example, allocating a rounded total across sub-accounts, or splitting a pooled cost across units).  

Procedure:
- Round every line down to the dollar (take the floor) and note each line's dropped cents (its remainder)
- Add the floored lines; the target total minus this sum is the number of dollars still to distribute, call it *N*
- Add $1 to each of the *N* lines with the largest remainders

The rounded lines now sum exactly to the target, and no line is more than $1 from its true value.  

Worked example — allocate a fixed $100 pooled cost across three units holding $33.34, $33.33, $33.33:
- Floors: $33 + $33 + $33 = $99; remainders $0.34, $0.33, $0.33; still to distribute N = $100 − $99 = $1
- Largest remainder is the first unit ($0.34), so it gets the extra dollar: $34, $33, $33
- Total $34 + $33 + $33 = $100, exact

### One designated line absorbs the residual

The two sides of the balance sheet are linked through retained earnings: closing retained earnings = opening retained earnings + net income − dividends.  
Net income is the rounded bottom line of the income statement, so let retained earnings (`3849`) carry any whole-dollar residual on the balance sheet, and net income (or a dedicated rounding line) carry it on the income statement.  
Choosing the absorbing line by policy (the same line every period) keeps the equation exact without distorting any operational figure, and keeps the treatment consistent and defensible.  

### Round half up, every period

Use the same rule CRA uses, applied the same way each year.  
A consistent rule avoids the slow upward bias that comes from always rounding a particular direction, and matches the figures CRA's own calculations produce.  


## Where it bites

Rounding from cents to whole dollars matters most where a calculation produces many decimal places:
- *Foreign-currency translation*: Bank of Canada rates carry four decimals, so converted balances rarely land on a whole cent, let alone a whole dollar; see [Foreign Currency](Foreign-Currency.md)
- *ACB per-unit averages*: pooled average cost divides to fractions of a cent per unit, then multiplies back up on a disposition; see [Adjusted Cost Base - Tracking](Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md)
- *Inventory*: weighted-average unit cost and lower-of-cost-or-market write-downs produce fractional cents that must reconcile across the balance sheet and cost of sales; see [Inventory](Cost-Recovery/Inventory-And-COGS.md)
- *Capital cost allowance*: declining-balance rates and the half-year adjustment applied to a UCC pool seldom yield whole dollars; see [Capital Cost Allowance](Cost-Recovery/Capital-Cost-Allowance.md)

In every case the rule is the same: keep the working figures to the cent, round at the GIFI mapping, and let a designated line absorb the residual.


## Related

- [Small Business Tax Overview](Small-Business-Tax-Overview.md) — bookkeeping, the general ledger, and GIFI
- [Ledger and Accounts](Ledger-And-Accounts.md)
- [Foreign Currency](Foreign-Currency.md)
- [Adjusted Cost Base - Tracking](Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md)
- [Inventory](Cost-Recovery/Inventory-And-COGS.md)
- [Capital Cost Allowance](Cost-Recovery/Capital-Cost-Allowance.md)
- [GST/HST](HST.md)
- [Glossary](Glossary.md)


## Citations

- ITA [s.117.1(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-117.1.html) - indexed amounts rounded to the nearest dollar, equidistant amounts to the higher dollar (round half up)
- CRA RC4088 - General Index of Financial Information (GIFI): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088/general-index-financial-information-gifi.html
- CRA T4012 - T2 Corporation Income Tax Guide: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012/t2-corporation-income-tax-guide.html
- CRA T2 SCH 100 - Balance Sheet Information: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch100.html
- CRA T2 SCH 125 - Income Statement Information: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch125.html
- Department of Justice - Legistics, rounding of numbers: https://canada.justice.gc.ca/eng/rp-pr/csj-sjc/legis-redact/legistics/p1p26.html
- CRA RC4022 - General Information for GST/HST Registrants (rounding to the nearest cent): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4022/general-information-gst-hst-registrants.html
