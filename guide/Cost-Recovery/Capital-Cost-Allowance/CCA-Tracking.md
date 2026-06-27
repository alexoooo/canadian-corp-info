STATUS: AI GENERATED, REVIEW IN PROGRESS

# CCA tracking

**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) who keep their own CCA records in a spreadsheet rather than relying solely on tax software.  

This page gives the asset register and the exact per-class formulas — including the half-year rule, the Accelerated Investment Incentive (AIIP), recapture, terminal loss, and short-year proration — so a spreadsheet reproduces what Schedule 8 expects.  
For the concepts see [Capital Cost Allowance](Capital-Cost-Allowance.md); for which class an asset goes in see [CCA Classification](CCA-Classification.md); for end-to-end narratives see [CCA Worked examples](CCA-Examples.md).  
It parallels [Adjusted Cost Base Tracking](../../Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md), the same idea for securities.  


## Two layers

CCA tracking has two layers, because the deduction is per class but the records are per item:
- *Asset register*: one row per item bought, sold, or held; it is the source of truth for what exists and feeds the additions and dispositions totals
- *CCA schedule*: one row per class per fiscal year; it carries the running UCC and computes the year's CCA, and it is what maps to Schedule 8

Keep all amounts in dollars and cents; round only when mapping to the whole-dollar T2 (see [Whole-dollar rounding](../../Whole-Dollar-Rounding.md)).  


## Class reference

Columns:
- `Class`:
  - CCA class: `8`, `10`, `10.1`, `12`, `13`, `14`, `14.1`, `50`, etc.
- `Type`:
  - Tangible or Intangible
- `GIFI cost`: balance-sheet asset line (Schedule 100)
- `GIFI accumulated amortization`: contra line paired with the cost line
- `GIFI amortization expense`: income-statement line (Schedule 125)

The same sheet is the natural home for the class constants the formulas use (`Rate`, `Method`, the half-year flag), keyed on the same `Class`.

Common classes for a consulting CCPC:

| Class | Type | GIFI cost | GIFI accum. amort. | GIFI amort. expense |
|-------|------|-----------|--------------------|---------------------|
| 8 | Tangible | `1740` | `1741` | `8670` |
| 10, 10.1 | Tangible | `1742` | `1743` | `8670` |
| 12 | Tangible | `1774` software, `1770` small tools | `1775`, `1771` | `8670` |
| 13 | Tangible | `1918` | `1919` | `8670` |
| 14, 14.1 | Intangible | `2010` | `2011` | `8570` |
| 50 | Tangible | `1774` | `1775` | `8670` |

The balance-sheet line follows the asset's nature, so a mixed class (12) lands on more than one cost line; `Type` and the amortization-expense line (`8670` / `8570`) still follow cleanly from the class.  
For intangibles, use the specific line where one fits: `2012` goodwill, `2018` incorporation costs, `2020` trademarks/patents, `2022` customer lists, each with its own contra; otherwise `2010` Intangible assets.


## Asset register <!-- [done] -->

Columns:
- `Item`:
  - Short description that identifies the asset (e.g. "MacBook Pro 14")
- `Class`:
  - Choose from *class reference* `Class` (above)
  - Determined per [CCA Classification](CCA-Classification.md)
- `Acquisition date`:
  - When the corporation became entitled to the property (purchase date)
  - Drives eligibility and limits: AIIP eligibility, passenger-vehicle and zero-emission cost ceilings, available-for-use second-year fallback
  - Part of the audit trail, serves as documentary proof
- `Available-for-use date`:
  - Often the acquisition date; later if the asset is not yet in service
  - Determines the year when the addition enters the pool (CCA starts), when the half-year or AIIP adjustment applies
- `Capital cost`:
  - Amount added to the pool
  - Purchase price plus freight, installation, duty, and non-recoverable tax
  - Net of any HST input tax credit claimed
- `Disposal date`:
  - Blank until the item is sold, scrapped, or otherwise disposed of
- `Proceeds`:
  - Blank until disposal
  - Sale price plus any insurance or compensation
- `AIIP eligible`:
  - True if acquired after 2024 and available for use before 2030
  - Drives the first-year uplift
- `Note`:
  - Free-form text for anything worth recording about the row
  - For example, a plain-English breakdown of what `Item` bundles ("incorporation lawyer + appraisal + tax lawyer"), personal-use percentage, trade-in details, or ITC reductions
  - Can be left blank if there isn't anything noteworthy

The register contributes to the CCA calculation:
- `Additions` and `Dispositions` amounts for each class
- Whether a class still holds any item, which decides a terminal loss when its last asset is disposed

Calculation of the annual deduction is not done in the register, that happens in the *CCA schedule* (below).

The names and relative ordering of columns is not a fixed requirement, renaming or reordering (or adding extra informational columns) doesn't change the math.  
This guide uses the following convention:
- Lead with what identifies the row (`Item`), then `Class`
- Keep `Class` and the date columns to the left, so they stay visible when you freeze `Item` and are easy to filter and roll up on
- Keep flags and the free-form `Note` last
- You can choose to add informational columns, such as serial number, vendor, etc. 


## CCA schedule

One row per `Class` per fiscal `Year`. Columns:
- `Opening UCC`:
  - the prior year's `Closing UCC` for the class
  - 0 for a new class
- `Additions`: cost of items in this class that become available for use this year
- `Dispositions`:
  - the disposition value of items disposed this year
  - capped at `MIN(Proceeds, Capital cost)` per item, see formula
- `Adjustment`: the half-year or AIIP adjustment to the base
- `CCA base`: the amount the rate is applied to
- `Rate`: the class rate
- `CCA (max)`: the most that can be claimed this year
- `CCA (claimed)`:
  - the amount actually claimed
  - discretionary: `0` to `CCA (max)`
- `Closing UCC`: carried to next year's `Opening UCC`
- `Recapture` / `Terminal loss`: end-of-year adjustments when the pool goes negative or empties


## Formulas

For a declining-balance class in a normal (365-day) year:

```
Dispositions      = sum over items disposed this year of MIN(Proceeds, Capital cost)
Net additions     = Additions − Dispositions

Adjustment        = 0                      if the class is half-year-exempt, or Net additions ≤ 0
                  = +0.5 × Net additions   if AIIP-eligible
                  = −0.5 × Net additions   otherwise (half-year rule applies, no AIIP)

CCA base          = Opening UCC + Net additions + Adjustment
CCA (max)         = Rate × MAX(0, CCA base)
CCA (claimed)     = any value from 0 to CCA (max)        (discretionary)
Closing UCC       = Opening UCC + Net additions − CCA (claimed)
```

The `MIN(Proceeds, Capital cost)` cap means a sale above original cost removes only the cost from the pool; the excess is a capital gain on Schedule 6, not recapture.  
The `Adjustment` applies only in the year an asset becomes available for use, because in later years `Net additions` is zero; this is what makes the half-year rule and the AIIP uplift one-time first-year effects.  

End-of-year pool adjustments:
- *Recapture* (ITA [s.13(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html)): if `Closing UCC < 0`, then `Recapture = −Closing UCC` is income and `Closing UCC` resets to 0
- *Terminal loss* (ITA [s.20(16)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html)): if `Closing UCC > 0` and no items remain in the class, then `Terminal loss = Closing UCC` is a deduction and `Closing UCC` resets to 0

Special cases the formula above does not cover:
- *Mixed first-year treatments in one class-year*: a class with both AIIP and half-year additions in the same year breaks the single-factor `Adjustment` above; compute the adjustment per addition and sum it (`+0.5 × AIIP additions − 0.5 × half-year additions`); the pool stays one line per class, matching Schedule 8's separate AIIP and regular addition columns
- *Full-expensing classes* (53, 54, 55, 56, 43.1 / 43.2 under AIIP): `CCA (max) = Net additions` in the year available for use (100%); any later residual depreciates at the class rate
- *Class 13 and Class 14* are straight-line, not declining balance: CCA is `Capital cost ÷ amortization period` (the lease term + first renewal for 13; the remaining legal life for 14), subject to the first-year limit; the declining-balance formula does not apply
- *Class 10.1*: half-CCA in the year of disposition; no recapture or terminal loss
- *Short tax year* (under 365 days): multiply `CCA (max)` by `days in tax year ÷ 365`, except for classes 12, 13, 14, and 15
- *Investment tax credits* claimed against capital cost reduce next year's `Opening UCC` (ITA s.13(7.1)); relevant only for SR&ED claimants


## Rolling the register into the schedule

The schedule's `Additions` and `Dispositions` are sums over the register, filtered by class and year. In a spreadsheet:
- `Additions` for a class and year = `SUMIFS(register Capital cost, Class = this class, Available-for-use year = this year)`
- `Dispositions` for a class and year = `SUMIFS(per-item MIN(Proceeds, Capital cost), Class = this class, Disposal year = this year)`

Compute `MIN(Proceeds, Capital cost)` in a helper column on the register so the disposition sum picks it up.  
A pivot table over the register by `Class` and year produces the same two totals if you prefer pivots to `SUMIFS`.  


## Posting to the ledger

The reference table maps each class to its GIFI accounts, so the pivot can total the register and schedule into ledger entries.  

At acquisition, the `Capital cost` posts to the balance-sheet cost line:
- Debit the `GIFI cost` line for the class (e.g. `1774` for Class 50)

Each year, the CCA posts as amortization:
- Debit the amortization-expense line: `8670` for a tangible class, `8570` for an intangible class
- Credit the accumulated-amortization contra line for the class (e.g. `1775` for Class 50, `2011` for Class 14.1)

The ledger records *book* amortization; CCA is the *tax* deduction.  
If you set book depreciation equal to CCA (common for a small corp), the per-class CCA is what you post.  
If book amortization differs, post the book figure and let Schedule 1 reconcile it against CCA (see [Ledger and Accounts](../../Ledger-And-Accounts.md)).  


## Worked tie-out

The Class 50 laptop and Class 8 polisher from [CCA Worked examples](CCA-Examples.md), both AIIP-eligible 2026 acquisitions, run through the schedule:

Class 50 (rate 55%), $4,000 addition in 2026, sold for $400 in 2028:

| Year | Opening UCC | Additions | Dispositions | Net add | Adjustment | CCA base | CCA (max) | Closing UCC | Recapture |
|------|------------:|----------:|-------------:|--------:|-----------:|---------:|----------:|------------:|----------:|
| 2026 | 0 | 4,000 | 0 | 4,000 | +2,000 | 6,000 | 3,300 | 700 | — |
| 2027 | 700 | 0 | 0 | 0 | 0 | 700 | 385 | 315 | — |
| 2028 | 315 | 0 | 400 | −400 | 0 | — | 0 | 0 | 85 |

In 2028, `Opening + Net add = 315 − 400 = −85`, so the pool goes negative: $85 of recapture, closing UCC reset to 0.  

Class 8 (rate 20%), $1,800 addition in 2026, no disposal:

| Year | Opening UCC | Additions | Net add | Adjustment | CCA base | CCA (max) | Closing UCC |
|------|------------:|----------:|--------:|-----------:|---------:|----------:|------------:|
| 2026 | 0 | 1,800 | 1,800 | +900 | 2,700 | 540 | 1,260 |
| 2027 | 1,260 | 0 | 0 | 0 | 1,260 | 252 | 1,008 |
| 2028 | 1,008 | 0 | 0 | 0 | 1,008 | 201.60 | 806.40 |

The 2026 figures ($3,300 and $540 of CCA) match the two worked examples; the later years apply the rate to the declining `Opening UCC`.  


## Notes

- The claim is discretionary every year: enter `CCA (claimed)` from 0 to `CCA (max)`; deferring leaves the balance in `Closing UCC` for a future year (see [Discretionary CCA](Capital-Cost-Allowance.md#discretionary-cca))
- An item sits in the register from its acquisition date but only enters `Additions` in the year of its `Available-for-use date`
- Keep the register even though the deduction is per class: it is the only record of what remains in each pool, which is what the terminal-loss test ("no items remain in the class") depends on


## Related

- [Capital Cost Allowance](Capital-Cost-Allowance.md)
- [CCA Classification](CCA-Classification.md)
- [CCA Worked examples](CCA-Examples.md)
- [Adjusted Cost Base Tracking](../../Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md)
- [Whole-dollar rounding](../../Whole-Dollar-Rounding.md)
- [Cost Recovery](../Cost-Recovery.md)
- [Ledger and Accounts](../../Ledger-And-Accounts.md)
- [Expense Classification](../../Expense-Classification.md)
- [Glossary](../../Glossary.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)): https://laws-lois.justice.gc.ca/eng/acts/I-3.3/
  - [s.13(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) - recapture; [s.13(7.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) - ITC reduction of UCC; [s.13(21)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) - UCC definition
  - [s.20(16)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - terminal loss
- Income Tax Regulations (C.R.C., c. 945): https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/
  - Regulation 1100(2) - half-year rule
  - Regulation 1100(2.5) - half-CCA on Class 10.1 disposition
  - Regulation 1100(3) - short-fiscal-year proration; exceptions
  - Regulation 1104(4) - AIIP definitions and phase-out
- CRA T2 SCH8 - Capital Cost Allowance (CCA): https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch8.html
- CRA RC4088 - General Index of Financial Information (GIFI), for the Schedule 100/125 codes: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088.html


## TODO

- Add a downloadable spreadsheet template (asset register + CCA schedule) and screenshots, as the [ACB tracker](../../Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md) has
- Confirm the Class 13 / Class 14 straight-line first-year limits against Schedule III before relying on them
