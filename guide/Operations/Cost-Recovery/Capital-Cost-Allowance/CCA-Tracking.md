STATUS: AI GENERATED, REVIEW IN PROGRESS

# CCA Tracking

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) who keep their own CCA records in a spreadsheet
  - Rather than relying solely on tax software

This page gives the asset register and the exact per-class formulas for computing or checking CCA by hand.  
The formulas cover the half-year rule, the Accelerated Investment Incentive (AIIP), and short-year proration.  
They also cover recapture and terminal loss.  
For the concepts see [Capital Cost Allowance](Capital-Cost-Allowance.md).  
For which class an asset goes in see [CCA Classification](CCA-Classification.md).  
For end-to-end narratives see [CCA Worked examples](CCA-Examples.md).  
It parallels [Adjusted Cost Base Tracking](../../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md), the same idea for securities.  


## Three Trackers: Class Reference, Asset Register, CCA History

The deduction is per class but the records are per item:
- *Class reference*:
  - One row per CCA class
  - Static lookup used by the register and the by-hand computation (rarely changes)
  - Class attributes: rate, method, tangibility, and half-year default
- *Asset register*:
  - One row per item bought, sold, or held
  - Source of truth for what exists
  - Rolls up two ways: by class for Schedule 8, by account for the balance-sheet cost and contra lines
- *CCA history*:
  - One row per class per fiscal year
  - Holds each pool's year-end UCC, transcribed from the filed Schedule 8
  - Computed by hand only where there is no carryforward (first year, software switch, paper filing)

Keep all amounts in dollars and cents; round only when mapping to the whole-dollar T2 (see [Whole-dollar rounding](../../../Filing-And-CRA/Whole-Dollar-Rounding.md)).  


## Class Reference <!-- [done] -->

The tax constants that depend only on the CCA class. One row per `Class`. Columns:
- `Class`: the key (`8`, `10`, `10.1`, `12`, `13`, `14`, `14.1`, `50`, etc.)
- `Rate`: declining-balance rate for the class (blank when `Method` is not declining balance)
- `Method`:
  - `Declining balance`: UCC * (1 - Rate), the most common (default) method
  - `Straight-line`: capital cost / amortization period, classes 13 and 14 only (`Rate` is unused)
  - `Full expensing`: capital cost (`Rate` applies to any residual)
    - Full-expensing classes 53 / 43 (M&P), 54, 55, 56, and 43.1/43.2 under AIIP
- `Tangibility`:
  - `Tangible`: equipment, vehicles, leasehold improvements, etc.
  - `Intangible`: incorporation costs, goodwill, limited-life rights, etc.
- `Half-year Default`:
  - The class's usual half-year treatment (`True` for most, `False` where the class is exempt)
  - Applied by the software per class
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
| 50 | `55%` | `Declining balance` | Tangible | True | computers, peripherals (data network gear is Class 46) |

`Rate`, `Method`, and `Tangibility` are functions of the class.  
`Half-year Default` is the class's usual treatment.  
The standard flow takes it as given and the software applies it by class.  
The property ultimately decides, not the class number, so a few items can depart from the default.  
See [Special cases](#special-cases) for per-item handling.  

The GIFI account lines deliberately do *not* live here.  
They follow the asset's balance-sheet nature, not its class.  
A single class routinely spans several accounts.  
Class 8, the catch-all, splits across furniture, equipment, and machinery.  
A single account can serve several classes (`1774` covers both Class 12 application software and Class 50 hardware).  
They are keyed on the account; see [Posting to the ledger](#posting-to-the-ledger).  


## Asset Register <!-- [wip] -->

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
  - Drives eligibility and limits
    - AIIP eligibility, passenger-vehicle and zero-emission cost ceilings, available-for-use second-year fallback
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
  - True if acquired after 2024 and available for use before 2030 (the reinstated incentive)
  - Not if you or a non-arm's-length party previously owned it, or it came in on a rollover
    - An arm's-length purchase of used property still qualifies
  - Set true for the full-expensing and ZEV classes too (M&P Class 53 / 43, clean energy 43.1 / 43.2, ZEV 54 / 55 / 56)
    - Qualifying M&P and clean-energy property is AIIP
      - Reg 1104(4)/(4.01) carve out only Classes 54–56, which have their own 100% rule
    - Schedule 8's accelerated column (225) carries AIIP and ZEV additions alike
    - Their expensing runs through that column, not on separate rules
  - Flagging them false leaves column 225 empty and the software falls back to the half-year rule
    - In FutureTax, a Class 53 addition entered in 203 alone computes at 25% of cost instead of the enhanced rate
  - Drives the first-year uplift; Schedule 8 reports these additions in their own column (225)
    - For the full-expensing and ZEV classes the uplift factor is the class's own, not the generic +0.5
    - 100% under the reinstated incentive, or the original regime's phase-down factors before it
      - 75% in a 2024–2025 available-for-use year
  - Rules and phase-out: [Half-year rule and AIIP](Capital-Cost-Allowance.md#half-year-rule-and-aiip)
- `Note`:
  - Free-form text for anything worth recording about the row
  - For example, a plain-English breakdown of what `Item` bundles ("incorporation lawyer + appraisal + tax lawyer")
    - Or personal-use percentage, trade-in details, or ITC reductions
  - Can be left blank if there isn't anything noteworthy
- `In Year`:
  - Filters the [Pivot for Schedule 8](#pivot-for-schedule-8) to items that add or dispose in its selected `Year`
  - = `OR(YEAR(Available-for-use Date) = Year, YEAR(Disposal Date) = Year)`
  - `Year` is the parameter cell on the pivot sheet
- `Year Additions`:
  - The item's contribution to its class's additions for the year
  - = `IF(YEAR(Available-for-use Date) = Year, Capital Cost, 0)`
  - Keyed to the available-for-use year, not the purchase year
    - An item bought but not yet in service waits for the year it goes into service
- `Year AIIP Additions`:
  - The accelerated subset of `Year Additions`, the Schedule 8 AIIP/ZEV split
  - = `IF(AND(YEAR(Available-for-use Date) = Year, AIIP Eligible), Capital Cost, 0)`
- `Year Dispositions`:
  - The item's contribution to its class's dispositions for the year
  - = `IF(YEAR(Disposal Date) = Year, MIN(Proceeds, Capital Cost), 0)`
  - The `MIN` caps each item at its `Capital Cost`, so a sale above cost removes only the cost from the pool
    - The excess is a capital gain on Schedule 6, not recapture

The register contributes to the CCA calculation:
- `Additions` and `Dispositions` amounts for each class
- The AIIP additions for each class, the accelerated split fed to Schedule 8
- Whether a class still holds any item, which decides a terminal loss when its last asset is disposed

Calculation of the annual deduction is not done in the register.  
You roll these totals up per class and feed them to Schedule 8 (next).  

The names and relative ordering of columns is not a fixed requirement.  
Renaming or reordering (or adding extra informational columns) doesn't change the math.  
This guide uses the following convention:
- Lead with what identifies the row (`Item`), then `Class`
- Keep `Class` and the date columns to the left
  - They stay visible when you freeze `Item` and are easy to filter and roll up on
- Keep flags and the free-form `Note` last, with the pivot helper columns to their right
- You can choose to add informational columns, such as serial number, vendor, etc. 


## Pivot for Schedule 8

T2 Schedule 8 uses one row per class, but the `Asset register` is per item.
To fill it out, build a `pivot table` that groups the year's additions and dispositions by class:
- `Year`: a parameter cell on the pivot sheet, set to the fiscal year you are filing
- `Data`: the whole `Asset register`
- `Filter`: `In Year` = TRUE, so only items that add or dispose in `Year` appear
- `Rows`: `Class`, which lists exactly the classes with activity that year
- `Values`:
  - `Sum of Year Additions` = the class's total additions, Schedule 8 "cost of acquisitions" (203)
  - `Sum of Year AIIP Additions` = the accelerated portion, the AIIP/ZEV column (225)
  - `Sum of Year Dispositions` = proceeds capped at cost, Schedule 8 "proceeds of dispositions"

The `Year Additions`, `Year AIIP Additions`, `Year Dispositions`, and `In Year` columns are pivot helpers.  
They live on the `Asset register` above, each keyed to `Year`.  
Additions key off the available-for-use year and dispositions off the disposal year.  
One year flag cannot select both, so the helpers settle each item before the pivot sums them.  
A pivot is a snapshot, so refresh it after the register changes.  

Key the three per-class totals into the software's Schedule 8.  
It applies the half-year rule and AIIP uplift and computes each pool's CCA, recapture, and terminal loss.  
It carries the UCC forward.  
The CCA it deducts is discretionary.  
Set the per-class claim in Schedule 8's `CCA` column (217), anywhere from `$0` to the computed maximum.  
Claiming less defers (see [Discretionary CCA](Capital-Cost-Allowance.md#discretionary-cca)).  
Deferring keeps the balance in the pool, but on AIIP additions it forfeits the accelerated boost.  
The boost applies only in the year the asset becomes available for use.  

FutureTax renders the half-year rule as a per-class control on Schedule 8.  
That is a *Half Rule* checkbox (column H) in version 2019.2 and earlier, or an automatic 0.5 factor (column 13) later.  
It applies the standard half-year reduction.  
With it on, only half of the year's net additions enter the first-year CCA base; with it off, the full additions do.  
Leave it on for ordinary additions subject to the half-year rule.  
It should be off for the half-year-exempt classes (12, 13, 14, 15, …).  
AIIP and ZEV additions need no override.  
The column-225 entry removes them from the half-year base automatically and the accelerated uplift applies instead.  
So a class holding both AIIP and ordinary additions keeps the control on for the ordinary part.  
It is not a deferral switch.  
Turning it off on a class subject to the half-year rule drops the mandatory reduction and over-claims first-year CCA.  
To defer, reduce the discretionary `CCA` claim (column 217) above instead.  
That is where the AIIP-forfeiture caution applies.  

Recapture and terminal loss are not discretionary.  
You can record what it produces in the [CCA history](#cca-history) below.  


## CCA History

**This sheet is optional.**
The filed Schedule 8 already preserves these figures.  
Keep a copy only to hold your own per-class `Opening UCC` if you switch software.  

One row per `Class` per fiscal `Year`, holding that pool's year-end figures.  

After Schedule 8 is filed, the software has computed each pool's CCA and carried its UCC forward.  
Transcribe per class:
- `Year`
- `Class`
- `Opening UCC`: last year's `Closing UCC` for the class
- `Additions`
- `Dispositions`
- `CCA (Claimed)`: what the return actually claimed
- `Closing UCC`: next year's `Opening UCC`
- `Recapture` or `Terminal Loss`: only in the rare year a pool has one

Compute each pool's UCC yourself only where there is no carryforward to lean on.  
That by-hand path is the [next section](#computing-the-schedule-yourself), plus the special cases and worked tie-out that follow it.  


## Computing the Schedule Yourself

Use this when there is no carryforward to lean on.  
That means the first year (setting opening UCC), a software switch, a paper filing, or a figure to check by hand.  

For a declining-balance class in a normal (365-day) year, the columns run left to right.  
Each is computed from the columns to its left ([Special cases](#special-cases) cover the rest):
- `Opening UCC` = the prior year's `Closing UCC` for the class
  - `0` for a new class
- `Additions` = cost of items in this class that become available for use this year
  - Summed from the register by class and year, see [Pivot for Schedule 8](#pivot-for-schedule-8)
- `Dispositions` = sum over items disposed this year of `MIN(Proceeds, Capital Cost)`
  - The cap means a sale above original cost removes only the cost from the pool
    - The excess is a capital gain on Schedule 6, not recapture
- `Net Additions` = `Additions − Dispositions`
- `Adjustment` = the half-year or AIIP first-year adjustment to the base:
  - `0` if the class is half-year-exempt, or `Net Additions ≤ 0`
  - `+0.5 × Net Additions` if AIIP-eligible
  - `−0.5 × Net Additions` otherwise (half-year rule applies, no AIIP)
  - Non-zero only in the year an asset becomes available for use
    - Later years have `Net Additions = 0`, making the half-year rule and AIIP uplift one-time first-year effects
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

`Recapture` and `Terminal Loss` are both always columns; at most one is non-zero in a class-year.  
One requires a negative closing balance and the other a positive one.  


## Special Cases

The column formulas above cover a declining-balance class in a normal (365-day) year.

Deliberately excluded to keep the standard flow simple, on a convention-over-configuration basis:
- *Per-item half-year overrides*: the register carries no `Half-year` column
  - The standard flow takes each class's `Half-year Default` and lets the software apply it
  - A few classes (Class 12 above all) hold items that can depart from the default
  - If you compute CCA by hand and need an exception, add the half-year input yourself

Cases they do not cover:
- *Mixed first-year treatments in one class-year*: both AIIP and half-year additions in the same year
  - This breaks the single-factor `Adjustment` above
  - Compute the adjustment per addition and sum it (`+0.5 × AIIP additions − 0.5 × half-year additions`)
  - The pool stays one line per class, matching Schedule 8's separate AIIP and regular addition columns
- *Full-expensing classes*: `CCA (Max) = Net Additions` in the year available for use (100%)
  - M&P Class 53 / 43, 54, 55, 56, 43.1 / 43.2 under AIIP
  - Also Classes 44 / 46 / 50 for property available for use before 2027 under the Budget 2024 measure
  - Any later residual depreciates at the class rate
- *Class 13 and Class 14* are straight-line, not declining balance
  - CCA is `Capital Cost ÷ amortization period`, and the declining-balance formula does not apply
    - The lease term + first renewal for 13; the remaining legal life for 14
  - Class 13 is subject to a 50% first-year cap (Reg 1100(1)(b))
  - Class 14's first year is the apportionment from the acquisition date, with no separate cap
- *Class 10.1*: half-CCA in the year of disposition; no recapture or terminal loss
- *Short tax year* (under 365 days): multiply `CCA (Max)` by `days in tax year ÷ 365`
  - Except for classes 14 and 15, plus specialty items
    - Timber limits, industrial mineral mines, Canadian film or video productions, certain mining allowances
- *Investment tax credits* claimed against capital cost reduce next year's `Opening UCC` (ITA s.13(7.1))
  - Relevant only for SR&ED claimants


## Posting to the Ledger

The register rolls up two ways.  
The [Pivot for Schedule 8](#pivot-for-schedule-8) groups it by `Class` for the tax return.  
For the books you group the same register by `Account`.  
Those are the balance-sheet cost lines (Schedule 100) and their accumulated-amortization contra accounts.  

Posting is keyed on each item's `Account`, not its CCA class.  
The account resolves the GIFI lines from the chart of accounts ([Ledger and Accounts](../../../Bookkeeping/Ledger-And-Accounts.md) is the canonical list).  

Common accounts:

| Account | GIFI cost | GIFI accum. amort. | GIFI amort. expense |
|---------|-----------|--------------------|---------------------|
| Furniture & equipment | `1740` | `1741` | `8670` |
| Vehicles | `1742` | `1743` | `8670` |
| Computer hardware & software | `1774` | `1775` | `8670` |
| Leasehold improvements | `1918` | `1919` | `8670` |
| Intangibles | `2010` | `2011` | `8570` |

The amortization-expense line follows the account's nature: `8670` tangible, `8570` intangible.  
For intangibles, use the specific line where one fits, each with its own contra; otherwise `2010` Intangible assets.  
The specific lines: `2012` goodwill, `2018` incorporation costs, `2020` trademarks/patents, `2022` customer lists.  

### Amortization by Account

Schedule 8 gives CCA per *class*; the books need it per *account*.  
Build a one-row-per-`Account` rollup for the year you are filing:
- `Account`: from the register
- `Amortization`: the year's amortization to post to the account
  - With book depreciation set equal to CCA, the usual simplification for a one-owner corp
    - This is the claimed CCA of the classes whose items post to the account
  - Several classes in one account (`1774` holds Class 12 software and Class 50 hardware): add their claimed CCA together
  - One class across several accounts (Class 8 spread over furniture, equipment, and machinery)
    - Split that class's claimed CCA across its accounts in proportion to the items' carrying value
    - Carrying value: opening UCC plus the year's additions
- `Expense line`: `8670` if the account is tangible, `8570` if intangible
- `Contra line`: the account's accumulated-amortization line (`1741`, `1775`, ...)

Where each class sits in exactly one account, `Amortization` is just that class's claimed CCA.  
That is the usual case for a one-owner consulting corp, and there is nothing to split.  
Both rollups read the same register.  
So the total `Amortization` across accounts equals the total CCA across classes; use that as a check.  

### Entries

At acquisition, `Capital Cost` posts to the cost line as an ordinary purchase, made when you buy rather than at year-end:
- Debit the account's cost line (e.g. `1774` for a computer)
- Credit `Cash` or the payable

At year-end, post each row of the amortization rollup:
- Debit the `Expense line` (`8670` tangible, `8570` intangible)
- Credit the `Contra line` (e.g. `1775` for a computer, `2011` for an intangible)
- Amount: the account's `Amortization`

On disposal, clear the item from the cost line and its contra:
- Credit the cost line by the item's original `Capital Cost`
- Debit the contra line by the amortization booked against it
- Debit `Cash` or the receivable by the proceeds
  - The balancing figure is the book gain or loss (GIFI `8210`, a loss entered negative)
- The tax result (recapture, terminal loss, or capital gain) is separate, not from this entry
  - Computed on Schedule 8 and Schedule 6 and reconciled on Schedule 1

The ledger records *book* amortization; CCA is the *tax* deduction.  
Setting book depreciation equal to CCA keeps one set of numbers, so the claim above is what you post.  
If you keep book amortization on a different basis (say straight-line over useful life), post that figure instead.  
Let Schedule 1 reconcile it against the CCA claimed (see [Ledger and Accounts](../../../Bookkeeping/Ledger-And-Accounts.md)).  


## Capital Asset Continuity

**This schedule is optional**, like [CCA history](#cca-history): once you keep double-entry books the ledger already carries these balances.  
Keep it as the workpaper that proves the Schedule 100 capital-asset lines.  
It also supplies the opening figures if you ever switch software.  

One row per `Account` per fiscal `Year`; the cost half and the amortization half each roll forward from last year's close:
- `Account`
- `Opening Cost`: the prior year's `Closing Cost` (`0` for a new account)
- `Additions`: cost of items acquired this year that post to the account
  - The register's additions grouped by `Account` rather than `Class`, on the acquisition year
    - An asset bought but not yet in service is booked here now while its CCA waits for available-for-use
    - So this can lead Schedule 8 by a year
- `Disposals`: original `Capital Cost` of the items disposed this year from the account
  - Full cost, not the `MIN(Proceeds, Capital Cost)` the pool uses
    - The books remove what the asset was carried at, and the gain or loss falls out in the disposal entry
- `Closing Cost` = `Opening Cost + Additions − Disposals`
  - The Schedule 100 cost line (e.g. `1774`)
- `Opening Accum. Amort.`: the prior year's `Closing Accum. Amort.` (`0` for a new account)
- `Amortization`: the year's amount, from [Amortization by account](#amortization-by-account)
- `Disposal Accum. Amort.`: accumulated amortization carried on the items disposed this year, removed with them
  - Pooled book-equals-CCA holds no exact per-item figure
    - Estimate it as the item's cost less its disposal-year carrying value
    - Let the gain or loss absorb the rounding
- `Closing Accum. Amort.` = `Opening Accum. Amort. + Amortization − Disposal Accum. Amort.`
  - The Schedule 100 accumulated-amortization contra line (e.g. `1775`)
- `Net Book Value` = `Closing Cost − Closing Accum. Amort.`
  - What the account carries on the balance sheet

`Closing Cost` and `Closing Accum. Amort.` should equal the ledger balances of the account's cost and contra lines.  
A gap means an entry was missed or misposted.  


## Worked Tie-Out

The Class 50 laptop and Class 8 polisher from [CCA Worked examples](CCA-Examples.md), both 2026 acquisitions, run through the schedule.  
The laptop is under the Budget 2024 100% measure, the polisher under AIIP:

Class 50 (rate 55%), $4,000 addition in 2026, sold for $400 in 2028:

| Year | Opening UCC | Additions | Disp. | Net Add | Adjustment | CCA Base | CCA (Max) | Closing UCC | Recapture |
|------|------------:|----------:|------:|--------:|-----------:|---------:|----------:|------------:|----------:|
| 2026 | 0 | 4,000 | 0 | 4,000 | — | 4,000 | 4,000 | 0 | — |
| 2027 | 0 | 0 | 0 | 0 | — | 0 | 0 | 0 | — |
| 2028 | 0 | 0 | 400 | −400 | — | — | 0 | 0 | 400 |

In 2028, `Opening + Net Add = 0 − 400 = −400`, so the pool goes negative: $400 of recapture, closing UCC reset to 0.  

Class 8 (rate 20%), $1,800 addition in 2026, no disposal:

| Year | Opening UCC | Additions | Net Add | Adjustment | CCA Base | CCA (Max) | Closing UCC |
|------|------------:|----------:|--------:|-----------:|---------:|----------:|------------:|
| 2026 | 0 | 1,800 | 1,800 | +900 | 2,700 | 540 | 1,260 |
| 2027 | 1,260 | 0 | 0 | 0 | 1,260 | 252 | 1,008 |
| 2028 | 1,008 | 0 | 0 | 0 | 1,008 | 201.60 | 806.40 |

The 2026 figures ($4,000 for the laptop and $540 for the polisher) match the two worked examples.  
The polisher's later years apply the rate to its declining `Opening UCC`.  

The same two assets on the books, each on its own account with book amortization set equal to CCA.  
Using [Capital asset continuity](#capital-asset-continuity) (Accum. = accumulated amortization):

Computer hardware & software (`1774`), the Class 50 laptop, sold in 2028:

| Year | Opening Cost | Additions | Disp. | Closing Cost | Open. Accum. | Amort. | Disp. Accum. | Close. Accum. | NBV |
|------|-------------:|----------:|------:|-------------:|-------------:|-------:|-------------:|--------------:|----:|
| 2026 | 0 | 4,000 | 0 | 4,000 | 0 | 4,000 | 0 | 4,000 | 0 |
| 2027 | 4,000 | 0 | 0 | 4,000 | 4,000 | 0 | 0 | 4,000 | 0 |
| 2028 | 4,000 | 0 | 4,000 | 0 | 4,000 | 0 | 4,000 | 0 | 0 |

The 2028 disposal entry books a $400 gain (`8210`), proceeds 400 less net book value 0.  
That is the same $400 that lands as recapture on Schedule 8.  

Furniture & equipment (`1740`), the Class 8 polisher, never disposed:

| Year | Opening Cost | Additions | Closing Cost | Open. Accum. | Amort. | Close. Accum. | NBV |
|------|-------------:|----------:|-------------:|-------------:|-------:|--------------:|----:|
| 2026 | 0 | 1,800 | 1,800 | 0 | 540 | 540 | 1,260 |
| 2027 | 1,800 | 0 | 1,800 | 540 | 252 | 792 | 1,008 |
| 2028 | 1,800 | 0 | 1,800 | 792 | 201.60 | 993.60 | 806.40 |

Each account's `NBV` equals its class's `Closing UCC` above (laptop 0, 0, 0; polisher 1,260, 1,008, 806.40).  
That holds because book amortization was set to CCA and each class maps to a single account.  
Where that holds the continuity is just the class schedule restated on the books.  
The split in [Amortization by account](#amortization-by-account) is what pulls them apart when a class spans accounts.  


## Notes

- The claim is discretionary every year: enter `CCA (Claimed)` from 0 to `CCA (Max)`
  - Deferring leaves the balance in `Closing UCC` for a future year (see [Discretionary CCA](Capital-Cost-Allowance.md#discretionary-cca))
- An item sits in the register from its acquisition date
  - It only enters `Additions` in the year of its `Available-for-use Date`
- Keep the register even though the deduction is per class
  - It is the only record of what remains in each pool
  - The terminal-loss test ("no items remain in the class") depends on that


## Related

- [Capital Cost Allowance](Capital-Cost-Allowance.md)
- [CCA Classification](CCA-Classification.md)
- [CCA Worked examples](CCA-Examples.md)
- [Adjusted Cost Base Tracking](../../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md)
- [Whole-dollar rounding](../../../Filing-And-CRA/Whole-Dollar-Rounding.md)
- [Cost Recovery](../Cost-Recovery.md)
- [Ledger and Accounts](../../../Bookkeeping/Ledger-And-Accounts.md)
- [Expense Classification](../../../Bookkeeping/Expense-Classification.md)
- [Glossary](../../../Overview/Glossary.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)): https://laws-lois.justice.gc.ca/eng/acts/I-3.3/
  - [s.13(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) - recapture; [s.13(7.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) - ITC reduction of UCC; [s.13(21)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) - UCC definition
  - [s.20(16)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - terminal loss
- Income Tax Regulations (C.R.C., c. 945): https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/
  - Regulation 1100(2) - half-year rule; AIIP / DIEP first-year factors and phase-out
  - Regulation 1100(2.5) - half-CCA on Class 10.1 disposition
  - Regulation 1100(3) - short-fiscal-year proration; exceptions
  - Regulation 1104(4), (4.01) - AIIP / reaccelerated-AIIP definitions
  - Regulation 1104(3.1)-(3.2) - DIEP definitions
- CRA T2 SCH8 - Capital Cost Allowance (CCA): https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch8.html
- CRA RC4088 - General Index of Financial Information (GIFI), for the Schedule 100/125 codes: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088.html


## TODO

- Add a downloadable spreadsheet template (asset register + CCA history) and screenshots, as the [ACB tracker](../../../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md) has
- Confirm the Class 13 / Class 14 straight-line first-year limits against Schedule III before relying on them
