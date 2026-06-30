STATUS: AI GENERATED, REVIEW IN PROGRESS

# CCA tracking

**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) who keep their own CCA records in a spreadsheet rather than relying solely on tax software.  

This page gives the asset register, and the exact per-class formulas — including the half-year rule, the Accelerated Investment Incentive (AIIP), recapture, terminal loss, and short-year proration — for the years you compute or check CCA by hand.  
For the concepts see [Capital Cost Allowance](Capital-Cost-Allowance.md); for which class an asset goes in see [CCA Classification](CCA-Classification.md); for end-to-end narratives see [CCA Worked examples](CCA-Examples.md).  
It parallels [Adjusted Cost Base Tracking](../../Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md), the same idea for securities.  


## Three trackers: class reference, asset register, CCA schedule

The deduction is per class but the records are per item:
- *Class reference*:
  - One row per CCA class
  - Static lookup used by the register and schedule (rarely changes)
  - Class attributes: rate, method, tangibility, and half-year default
- *Asset register*:
  - One row per item bought, sold, or held
  - Source of truth for what exists
  - Feeds the additions and dispositions totals into the schedule
- *CCA schedule*:
  - One row per class per fiscal year
  - Holds each pool's year-end UCC, transcribed from the filed Schedule 8
  - Computed by hand only where there is no carryforward (first year, software switch, paper filing)

Keep all amounts in dollars and cents; round only when mapping to the whole-dollar T2 (see [Whole-dollar rounding](../../Whole-Dollar-Rounding.md)).  


## Class reference <!-- [done] -->

The tax constants that depend only on the CCA class. One row per `Class`. Columns:
- `Class`: the key (`8`, `10`, `10.1`, `12`, `13`, `14`, `14.1`, `50`, etc.)
- `Rate`: declining-balance rate for the class (blank when `Method` is not declining balance)
- `Method`:
  - `Declining balance`: UCC * (1 - Rate), the most common (default) method
  - `Straight-line`: capital cost / amortization period, classes 13 and 14 only (`Rate` is unused)
  - `Full expensing`: capital cost, full-expensing classes 53, 54, 55, 56, and 43.1/43.2 under AIIP (`Rate` is unused)
- `Tangibility`:
  - `Tangible`: equipment, vehicles, leasehold improvements, etc.
  - `Intangible`: incorporation costs, goodwill, limited-life rights, etc.
- `Half-year Default`:
  - The class's usual half-year treatment (`True` for most, `False` where the class is exempt)
  - The register inherits it; override per item where it varies (Class 12)
- `What Goes Here`:
  - A one-line cue for what the class covers, a reminder when classifying an item
  - Optional and informational; the canonical rules are in [CCA Classification](CCA-Classification.md)

| Class | Rate | Method | Tangibility | Half-year Default | What Goes Here |
|-------|-----|--------|-------------|-------------------|----------------|
| 8 | `20%` | `Declining balance` | Tangible | True | catch-all: office furniture, equipment, photocopiers |
| 10 | `30%` | `Declining balance` | Tangible | True | motor vehicles under the cost cap (shared pool) |
| 10.1 | `30%` | `Declining balance` | Tangible | True | passenger vehicle over the cost cap (own class) |
| 12 | `100%` | `Declining balance` | Tangible | True | app software bought outright (half-year applies) |
| 13 |  | `Straight-line` | Tangible | True | leasehold improvements |
| 14 |  | `Straight-line` | Intangible | False | limited-life intangibles (patents, term licences) |
| 14.1 | `5%` | `Declining balance` | Intangible | True | goodwill, incorp. costs over $3,000, customer lists |
| 50 | `55%` | `Declining balance` | Tangible | True | computers, peripherals, networking |

`Rate`, `Method`, and `Tangibility` are functions of the class.  
`Half-year Default` is the class's usual treatment, which the register inherits and can override per item — only a default because the property, not the class number, ultimately decides.

The GIFI account lines deliberately do *not* live here.  
They follow the asset's balance-sheet nature, not its class: a single class routinely spans several accounts (Class 8, the catch-all, splits across furniture, equipment, and machinery), and a single account can serve several classes (`1774` covers both Class 12 application software and Class 50 hardware).  
They are keyed on the account; see [Posting to the ledger](#posting-to-the-ledger).  


## Asset register <!-- [wip] -->

Columns:
- `Item`:
  - Short description that identifies the asset (e.g. "MacBook Pro 14")
- `Class`:
  - Choose from *class reference* `Class` (above)
  - Determined per [CCA Classification](CCA-Classification.md)
- `Account`:
  - Ledger account the item posts to, i.e. its balance-sheet name (e.g. "Equipment", "Land improvements")
  - Used to look up GIFI cost, contra, and amortization-expense lines for posting (see [Posting to the ledger](#posting-to-the-ledger))
  - Often follows from `Class`, but recorded per item because a class can span several accounts
- `Acquisition Date`:
  - When the corporation became entitled to the property (purchase date)
  - Drives eligibility and limits: AIIP eligibility, passenger-vehicle and zero-emission cost ceilings, available-for-use second-year fallback
  - Part of the audit trail, serves as documentary proof
- `Available-for-use Date`:
  - Often the acquisition date; later if the asset is not yet in service
  - Determines the year when the addition enters the pool (CCA starts), when the half-year or AIIP adjustment applies
- `Capital Cost`:
  - Amount added to the pool
  - Purchase price plus freight, installation, duty, and non-recoverable tax
  - Net of any HST input tax credit claimed
- `Disposal Date`:
  - Blank until the item is sold, scrapped, or otherwise disposed of
- `Proceeds`:
  - Blank until disposal
  - Sale price plus any insurance or compensation
- `AIIP Eligible`:
  - True if acquired after 2024 and available for use before 2030
  - Drives the first-year uplift
  - The accelerated-additions split you key into Schedule 8 reads off this flag
- `Half-year`:
  - True if the half-year rule applies to this addition, false if exempt
  - Inherits `Half-year Default` from the *class reference*; override per item where the property's treatment differs from the class default
  - Applies only when `AIIP Eligible` is false; an AIIP addition takes the uplift instead
  - The software applies the half-year rule by class on its own; this column only feeds the by-hand `Adjustment` or flags an item that departs from its class default
- `Note`:
  - Free-form text for anything worth recording about the row
  - For example, a plain-English breakdown of what `Item` bundles ("incorporation lawyer + appraisal + tax lawyer"), personal-use percentage, trade-in details, or ITC reductions
  - Can be left blank if there isn't anything noteworthy
- `Target Year`
  - Formula used to apply filtering in `Pivot table for Schedule 8`
  - = YEAR(`Acquisition Date`) = `Pivot table for Schedule 8`.`Year`

The register contributes to the CCA calculation:
- `Additions` and `Dispositions` amounts for each class
- The half-year and AIIP additions for each class, which set the `Adjustment`
- Whether a class still holds any item, which decides a terminal loss when its last asset is disposed

Calculation of the annual deduction is not done in the register; you roll these totals up per class and feed them to Schedule 8 (next).

The names and relative ordering of columns is not a fixed requirement, renaming or reordering (or adding extra informational columns) doesn't change the math.  
This guide uses the following convention:
- Lead with what identifies the row (`Item`), then `Class`
- Keep `Class` and the date columns to the left, so they stay visible when you freeze `Item` and are easy to filter and roll up on
- Keep flags and the free-form `Note` last
- You can choose to add informational columns, such as serial number, vendor, etc. 


## Pivot table for Schedule 8

T2 Schedule 8 uses one row per class, but the `Asset register` is per item.
To fill out S8, we build a pivot table which groups the year's additions by class:
- `Year`: use to select the desired year
- `Data`: `Asset register` A:
- 



Filing comes down to this rollup: the register is per item but , so you roll the register up to one set of totals per class and key those into the software.  


For each `Class` with a purchase or disposal in the year, take three totals off the register:
- `Additions` = `SUMIFS(Capital Cost, Class = this class, Available-for-use year = this year)`
  - Cost of the class's items that became available for use this year; an item bought but not yet in service waits for the year it is
- AIIP additions = `SUMIFS(Capital Cost, Class = this class, Available-for-use year = this year, AIIP Eligible = true)`
  - The accelerated share of `Additions`; the software wants it flagged separately to apply the first-year uplift
- `Dispositions` = `SUMIFS(per-item MIN(Proceeds, Capital Cost), Class = this class, Disposal year = this year)`
  - The `MIN` caps each item at its `Capital Cost`, so a sale above cost removes only the cost from the pool and the excess is a capital gain on Schedule 6, not recapture; put the `MIN` in a helper column on the register so the sum picks it up

A pivot table is the easier way to build this. Grouped by `Class` and year, it lists exactly the classes that had activity, so you never have to know the set in advance or risk omitting one; a `SUMIFS` grid only fills the classes you thought to list.  
The `SUMIFS` formulas above still define what each cell holds: the pivot's `Dispositions` needs the same `MIN` helper column, and a pivot is a snapshot, so refresh it after the register changes.  

Key these per-class totals into the software's Schedule 8; it applies the half-year rule and AIIP uplift, computes each pool's CCA, recapture, and terminal loss, and carries the UCC forward.  
Record what it produces in the [CCA schedule](#cca-schedule) below.  

If you instead compute the pool math by hand, the same register gives the first-year `Adjustment`:
- Half-year additions = `SUMIFS(Capital Cost, Class = this class, Available-for-use year = this year, AIIP Eligible = false, Half-year = true)`
- `Adjustment = +0.5 × AIIP additions − 0.5 × Half-year additions`
- The by-hand formulas take it from there, see [Computing the schedule yourself](#computing-the-schedule-yourself)


## CCA schedule

One row per `Class` per fiscal `Year`, holding that pool's year-end figures.  

After Schedule 8 is filed, the software has computed each pool's CCA and carried its UCC forward; you transcribe the filed result here so your own records hold the pool history independently of the vendor file.  
Transcribe per class:
- `Year`
- `Class`
- `Opening UCC`: last year's `Closing UCC` for the class
- `Additions`
- `Dispositions`
- `CCA (Claimed)`: what the return actually claimed
- `Closing UCC`: next year's `Opening UCC`
- `Recapture` or `Terminal Loss`: only in the rare year a pool has one

Saving the filed Schedule 8 itself (PDF or printout) does the same job, so this snapshot is optional.  
Its one real payoff is owning the per-class `Opening UCC` if you switch software or lose the vendor file.  

Compute each pool's UCC yourself only where there is no carryforward to lean on.  
That by-hand path is the [next section](#computing-the-schedule-yourself), plus the special cases and worked tie-out that follow it.  


## Computing the schedule yourself

When there is no carryforward to lean on: the first year (setting opening UCC), a software switch, a paper filing, or a figure you want to check by hand.  

For a declining-balance class in a normal (365-day) year, the columns run left to right, each computed from the columns to its left ([Special cases](#special-cases) cover the rest):
- `Opening UCC` = the prior year's `Closing UCC` for the class
  - `0` for a new class
- `Additions` = cost of items in this class that become available for use this year
  - Summed from the register by class and year, see [Rolling the register into Schedule 8](#rolling-the-register-into-schedule-8)
- `Dispositions` = sum over items disposed this year of `MIN(Proceeds, Capital Cost)`
  - The cap means a sale above original cost removes only the cost from the pool; the excess is a capital gain on Schedule 6, not recapture
- `Net Additions` = `Additions − Dispositions`
- `Adjustment` = the half-year or AIIP first-year adjustment to the base:
  - `0` if the class is half-year-exempt, or `Net Additions ≤ 0`
  - `+0.5 × Net Additions` if AIIP-eligible
  - `−0.5 × Net Additions` otherwise (half-year rule applies, no AIIP)
  - Non-zero only in the year an asset becomes available for use; later years have `Net Additions = 0`, which makes the half-year rule and AIIP uplift one-time first-year effects
- `CCA Base` = `Opening UCC + Net Additions + Adjustment`
- `Rate` = the class rate, from `Class reference`
- `CCA (Max)` = `Rate × MAX(0, CCA Base)`
- `CCA (Claimed)` = any value from `0` to `CCA (Max)`
  - Discretionary, and the only figure you choose by hand (see [Discretionary CCA](Capital-Cost-Allowance.md#discretionary-cca))
- `Closing UCC` = `Opening UCC + Net Additions − CCA (Claimed)`
  - Carried to next year's `Opening UCC`
- `Recapture` = `−Closing UCC` if `Closing UCC < 0`, else `0` (ITA [s.13(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html))
  - An income inclusion; `Closing UCC` then resets to `0`
- `Terminal Loss` = `Closing UCC` if `Closing UCC > 0` and no items remain in the class, else `0` (ITA [s.20(16)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html))
  - A deduction; `Closing UCC` then resets to `0`

`Recapture` and `Terminal Loss` are both always columns; at most one is non-zero in a class-year, since the pool cannot be both negative and emptied at once.  


## Special cases

The column formulas above cover a declining-balance class in a normal (365-day) year. Cases they do not cover:
- *Mixed first-year treatments in one class-year*: a class with both AIIP and half-year additions in the same year breaks the single-factor `Adjustment` above; compute the adjustment per addition and sum it (`+0.5 × AIIP additions − 0.5 × half-year additions`); the pool stays one line per class, matching Schedule 8's separate AIIP and regular addition columns
- *Full-expensing classes* (53, 54, 55, 56, 43.1 / 43.2 under AIIP): `CCA (Max) = Net Additions` in the year available for use (100%); any later residual depreciates at the class rate
- *Class 13 and Class 14* are straight-line, not declining balance: CCA is `Capital Cost ÷ amortization period` (the lease term + first renewal for 13; the remaining legal life for 14), subject to the first-year limit; the declining-balance formula does not apply
- *Class 10.1*: half-CCA in the year of disposition; no recapture or terminal loss
- *Short tax year* (under 365 days): multiply `CCA (Max)` by `days in tax year ÷ 365`, except for classes 12, 13, 14, and 15
- *Investment tax credits* claimed against capital cost reduce next year's `Opening UCC` (ITA s.13(7.1)); relevant only for SR&ED claimants


## Posting to the ledger

Posting is keyed on each item's `Account`, not its CCA class. The account resolves the GIFI lines from the chart of accounts ([Ledger and Accounts](../../Ledger-And-Accounts.md) is the canonical list). Common accounts:

| Account | GIFI cost | GIFI accum. amort. | GIFI amort. expense |
|---------|-----------|--------------------|---------------------|
| Furniture & equipment | `1740` | `1741` | `8670` |
| Vehicles | `1742` | `1743` | `8670` |
| Computer hardware & software | `1774` | `1775` | `8670` |
| Leasehold improvements | `1918` | `1919` | `8670` |
| Intangibles | `2010` | `2011` | `8570` |

The amortization-expense line follows the account's nature: `8670` tangible, `8570` intangible.  
For intangibles, use the specific line where one fits: `2012` goodwill, `2018` incorporation costs, `2020` trademarks/patents, `2022` customer lists, each with its own contra; otherwise `2010` Intangible assets.  

At acquisition, the `Capital Cost` posts to the balance-sheet cost line:
- Debit the account's `GIFI cost` line (e.g. `1774` for a computer)

Each year, the CCA posts as amortization:
- Debit the account's amortization-expense line (`8670` tangible, `8570` intangible)
- Credit the account's accumulated-amortization contra line (e.g. `1775` for a computer, `2011` for an intangible)

The ledger records *book* amortization; CCA is the *tax* deduction.  
If you set book depreciation equal to CCA (common for a small corp), the per-class CCA is what you post; where a class spans more than one account (Class 12), split that CCA across the accounts by the items' carrying values.  
If book amortization differs, post the book figure and let Schedule 1 reconcile it against CCA (see [Ledger and Accounts](../../Ledger-And-Accounts.md)).  


## Worked tie-out

The Class 50 laptop and Class 8 polisher from [CCA Worked examples](CCA-Examples.md), both AIIP-eligible 2026 acquisitions, run through the schedule:

Class 50 (rate 55%), $4,000 addition in 2026, sold for $400 in 2028:

| Year | Opening UCC | Additions | Dispositions | Net Add | Adjustment | CCA Base | CCA (Max) | Closing UCC | Recapture |
|------|------------:|----------:|-------------:|--------:|-----------:|---------:|----------:|------------:|----------:|
| 2026 | 0 | 4,000 | 0 | 4,000 | +2,000 | 6,000 | 3,300 | 700 | — |
| 2027 | 700 | 0 | 0 | 0 | 0 | 700 | 385 | 315 | — |
| 2028 | 315 | 0 | 400 | −400 | 0 | — | 0 | 0 | 85 |

In 2028, `Opening + Net Add = 315 − 400 = −85`, so the pool goes negative: $85 of recapture, closing UCC reset to 0.  

Class 8 (rate 20%), $1,800 addition in 2026, no disposal:

| Year | Opening UCC | Additions | Net Add | Adjustment | CCA Base | CCA (Max) | Closing UCC |
|------|------------:|----------:|--------:|-----------:|---------:|----------:|------------:|
| 2026 | 0 | 1,800 | 1,800 | +900 | 2,700 | 540 | 1,260 |
| 2027 | 1,260 | 0 | 0 | 0 | 1,260 | 252 | 1,008 |
| 2028 | 1,008 | 0 | 0 | 0 | 1,008 | 201.60 | 806.40 |

The 2026 figures ($3,300 and $540 of CCA) match the two worked examples; the later years apply the rate to the declining `Opening UCC`.  


## Notes

- The claim is discretionary every year: enter `CCA (Claimed)` from 0 to `CCA (Max)`; deferring leaves the balance in `Closing UCC` for a future year (see [Discretionary CCA](Capital-Cost-Allowance.md#discretionary-cca))
- An item sits in the register from its acquisition date but only enters `Additions` in the year of its `Available-for-use Date`
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
