STATUS: AI GENERATED, REVIEW IN PROGRESS

# Build an ACB Tracker

In this walkthrough, we will enter one contrived Canadian ETF's purchase, return of capital (ROC),
phantom distribution, and partial sale in the ACB tracker.  
The final row will show 60 units remaining, an ACB of $600.00, and a realized capital gain of $95.00.  

Limitations:
- Uses invented CAD transactions for practice, not records from a real security or corporation
- Covers the template's ordinary Buy, ROC, Phantom, and Sell actions
- Does not cover foreign exchange, multiple purchases, superficial losses, splits, or spin-offs
- Uses the tracker as provided in 2026


## Before You Start

We will use `MAP` as an invented ETF symbol and keep every amount in CAD.  
Using CAD keeps the exercise focused on pooled ACB, so every `FX CAD Rate` input is `1.0`.  

Before entering the practice rows:
1. Read [Adjusted Cost Base](Adjusted-Cost-Base.md) for the concepts exercised here
2. Open the [ACB spreadsheet template](https://docs.google.com/spreadsheets/d/1AV3RLfGw6l3G_az_2OpUHxRmTm5MwmkwPJHoPyNEBAM/template/preview)
3. Select **Use Template** to create a working copy
4. Rename the copy so it is clearly practice data and cannot be confused with the corporation's records

Checkpoint:
- The working sheet's input columns include `Date`, `Symbol`, `Action`, `Quantity`,
  `Gross Amount`, `Commission`, and `FX CAD Rate`

Use the next empty input row for `MAP`.  
The template's `TEST` sample rows can remain because the tracker maintains a separate pool for each symbol.  


## Enter the Purchase

Enter the first row with these contrived inputs:

| Date | Symbol | Action | Quantity | Gross Amount | Commission | FX CAD Rate |
|---|---|---|---:|---:|---:|---:|
| 2025-01-15 | MAP | Buy | 100 | $1,000.00 | $10.00 | 1.0 |

The $10.00 buy commission is included in the cost of the position.  
The row therefore starts the pool at $1,010.00, or $10.10 per unit.  

Checkpoint:
- `Remaining Quantity`: 100
- `ACB Change`: $1,010.00
- `ACB`: $1,010.00
- `Date of Acquisition`: 2025-01-15
- Hand check: $1,010.00 ACB ÷ 100 units = $10.10 per unit

Stop here if any value differs.  
Check that the action is `Buy`, the commission is $10.00, and the FX rate is `1.0`.  


## Enter the Return of Capital

Enter the second row below the purchase:

| Date | Symbol | Action | Quantity | Gross Amount | Commission | FX CAD Rate |
|---|---|---|---:|---:|---:|---:|
| 2025-06-30 | MAP | ROC | 0 | $40.00 | $0.00 | 1.0 |

The positive ROC reduces the pool by $40.00 without changing the quantity.  
The ACB becomes $970.00, or $9.70 per unit.  

Checkpoint:
- `Remaining Quantity`: 100
- `ACB Change`: -$40.00
- `ACB`: $970.00
- `Immediate Capital Gain`: $0.00
- Hand check: $970.00 ACB ÷ 100 units = $9.70 per unit


## Enter the Phantom Distribution

Enter the third row below the ROC:

| Date | Symbol | Action | Quantity | Gross Amount | Commission | FX CAD Rate |
|---|---|---|---:|---:|---:|---:|
| 2025-12-15 | MAP | Phantom | 0 | $30.00 | $0.00 | 1.0 |

The phantom distribution increases ACB by $30.00 without changing the quantity.  
The pool returns to $1,000.00, or $10.00 per unit.  

Checkpoint:
- `Remaining Quantity`: 100
- `ACB Change`: $30.00
- `ACB`: $1,000.00
- Hand check: $1,000.00 ACB ÷ 100 units = $10.00 per unit


## Enter the Partial Sale

Enter the fourth row below the phantom distribution:

| Date | Symbol | Action | Quantity | Gross Amount | Commission | FX CAD Rate |
|---|---|---|---:|---:|---:|---:|
| 2025-12-19 | MAP | Sell | 40 | $500.00 | $5.00 | 1.0 |

Immediately before the sale, each unit has an ACB of $10.00.  
The 40 units sold therefore carry $400.00 of ACB.  
Net proceeds are $495.00 after the $5.00 selling commission.  

The realized gain is:

`$495.00 net proceeds - $400.00 ACB of units sold = $95.00`  

Checkpoint:
- `ACB of Units Sold`: $400.00
- `Net Proceeds CAD`: $495.00
- `Realized Gain/Loss`: $95.00
- `Remaining Quantity`: 60
- `ACB Change`: -$400.00
- `ACB`: $600.00
- `Date of Acquisition`: 2025-01-15
- Hand check: $600.00 ACB ÷ 60 units = $10.00 per unit


## Verify the Completed Exercise

The four rows should produce this progression:

| Action | Remaining Quantity | ACB | ACB Per Unit (Hand Check) | Realized Gain/Loss |
|---|---:|---:|---:|---:|
| Buy | 100 | $1,010.00 | $10.10 | $0.00 |
| ROC | 100 | $970.00 | $9.70 | $0.00 |
| Phantom | 100 | $1,000.00 | $10.00 | $0.00 |
| Sell | 60 | $600.00 | $10.00 | $95.00 |

We have reached the promised result when the final row agrees with every value above.  
The quantity and ACB remain attached to the unsold 60-unit pool; the $95.00 is the sale's realized gain.  

For real corporate records, start with a clean copy and follow
[Adjusted Cost Base Tracking](Adjusted-Cost-Base-Tracking.md).  
That page covers source documents, transaction ordering, foreign-exchange dates, formula details,
and the special cases deliberately omitted here.  


## Related

- [Adjusted Cost Base](Adjusted-Cost-Base.md) - pooled ACB, ROC, phantom distributions, and selling costs
- [Adjusted Cost Base Tracking](Adjusted-Cost-Base-Tracking.md) - the complete operational workflow and formula reference
- [T3](../T3/T3.md) - reconciling trust distributions and ACB adjustments
- [T5008](../T5008/T5008.md) - reconciling a security sale and reporting it on Schedule 6


## Citations

- ITA [s.40(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html) - capital gain formula and disposition costs
- ITA [s.47(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-47.html) - pooled average cost for identical properties
- ITA [s.53](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-53.html) - additions and deductions in computing adjusted cost base
