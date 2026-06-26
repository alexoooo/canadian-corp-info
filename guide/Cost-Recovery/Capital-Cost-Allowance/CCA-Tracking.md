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


## Asset register

One row per item. Columns:
- `Item`: a description that identifies the asset (e.g. "MacBook Pro 14, S/N …")
- `Class`: the CCA class (`8`, `10`, `10.1`, `12`, `13`, `14`, `14.1`, `50`, …); choose it with [CCA Classification](CCA-Classification.md)
- `Acquisition date`: the date the corp became entitled to the property
- `Capital cost`: the amount added to the pool — purchase price plus freight, installation, duty, and non-recoverable tax, net of any HST input tax credit claimed
- `Available-for-use date`: when CCA can start (often the acquisition date; later if the asset is not yet in service)
- `Disposal date`: blank until the item is sold, scrapped, or otherwise disposed of
- `Proceeds`: blank until disposal; then the sale price plus any insurance or compensation
- `AIIP eligible`: yes if acquired after 2024 and available for use before 2030 (drives the first-year uplift)
- `Note`: personal-use percentage, trade-in details, ITC reductions, anything that changes `Capital cost`

The register is a reference, not the deduction; the CCA math happens one row per class in the schedule below.  


## CCA schedule

One row per `Class` per fiscal `Year`. Columns:
- `Opening UCC`: the prior year's `Closing UCC` for the class (0 for a new class)
- `Additions`: cost of items in this class that become available for use this year
- `Dispositions`: the disposition value of items disposed this year (capped, see formula)
- `Adjustment`: the half-year or AIIP adjustment to the base
- `CCA base`: the amount the rate is applied to
- `Rate`: the class rate
- `CCA (max)`: the most that can be claimed this year
- `CCA (claimed)`: the amount actually claimed (discretionary, `0` to `CCA (max)`)
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


## TODO

- Add a downloadable spreadsheet template (asset register + CCA schedule) and screenshots, as the [ACB tracker](../../Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md) has
- Confirm the Class 13 / Class 14 straight-line first-year limits against Schedule III before relying on them
