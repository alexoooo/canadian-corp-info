STATUS: AI GENERATED, REVIEW IN PROGRESS

# Cost Recovery \[done]

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC)
- Need to classify a purchase the corp made and determine how it gets deducted

**TLDR**:
- Every purchase a CCPC makes eventually becomes a deduction; the question is *which channel and when*
- Three channels:
  - *Cost of sales* (COGS) for inventory at the moment of sale
  - *Capital Cost Allowance* (CCA) for depreciable property geometrically over years
  - *Construction in progress* (CIP) for self-constructed fixed assets, accumulating during the build then transferring to a CCA class on completion
- The channel is set by the corp's *purpose at acquisition*: hold for resale (inventory), use as a fixed asset (CCA), or build a fixed asset (CIP → CCA)
- A *change in use* later can move a property between channels at fair market value

Limitations:
- This page is an overview; the per-channel mechanics (LCM, half-year rule, UCC, recapture, terminal loss, available-for-use, CIP transfer entry) live on the three sub-pages
- Common cross-channel mechanics (HST recoverability on acquisition, FX translation at trade date, available-for-use, change-of-use) are summarized here and cross-referenced from the sub-pages
- Service-business work-in-process (s.10(11)), long-term construction contracts (percentage-of-completion under s.9 and CRA folio S4-F8-C1), real-estate developer inventory, manufacturing overhead absorption, and resource regimes are out of scope
- The following is my understanding as of 2026


## Three deduction channels

Channel is set by purpose at acquisition.

*Inventory* (mechanics in [Inventory](Inventory.md)):
- Property held for sale, or held to produce property for sale (ITA [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html))
- Cost: *landed cost* at acquisition (invoice price plus freight, duty, brokerage, and other costs of getting the unit to the corp's premises)
- Valuation: lower of cost or fair market value each year-end (ITA s.10(1))
- Deduction: COGS on Schedule 125 line 8518 at the moment a unit is sold

*Depreciable property* (mechanics in [Capital Cost Allowance](Capital-Cost-Allowance.md)):
- ITA s.18(1)(b) blocks immediate deduction; ITA s.20(1)(a) re-opens it through CCA
- Cost: pooled in the class's *undepreciated capital cost* (UCC) under [s.13(21)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html)
- Rate: per-class, set by Regulation 1100; geometric decline for most classes, straight-line for Classes 13 and 14
- Disposition: recapture (s.13(1)) or terminal loss (s.20(16)) closes the channel

*Self-constructed fixed asset* (mechanics in [Materials and CIP](Materials-And-CIP.md)):
- Materials and contractor labour going into a fixed asset built for the corp's own use; *not* inventory (s.18(1)(b) still blocks immediate deduction)
- Cost accumulates in a `Construction in progress` (CIP) balance-sheet asset
- Trigger: *available for use* (ITA s.13(26)–(27)) transfers the accumulated cost into the appropriate CCA class
- After transfer: standard CCA mechanics apply


## Cost-recovery flow

```mermaid
flowchart TB
    Buy(["Corp buys property"])
    Purpose{{"Purpose at acquisition"}}
    Inv[("Inventory<br/>weighted-avg / FIFO<br/>LCM at year-end")]
    Fixed[("Depreciable property<br/>fixed-asset GIFI line")]
    CIP[("Construction in progress<br/>asset balance; no deduction")]
    Avail{{"Available for use<br/>ITA s.13(26)–(27)"}}
    UCC[("UCC pool by class<br/>Schedule 8")]
    Sale(["Sale of a unit"])
    COGS["Cost of sales<br/>Schedule 125 line 8518"]
    CCA["Annual CCA<br/>rate × half-year-adjusted base"]
    Disp(["Disposition of a capital asset"])
    Rec["Recapture (s.13(1))<br/>or terminal loss (s.20(16))"]
    CG["Capital gain on Schedule 6<br/>if proceeds &gt; original cost"]
    CofU{{"Change in use<br/>ITA s.45 / s.13(7)"}}

    Buy --> Purpose
    Purpose -->|"hold for resale"| Inv
    Purpose -->|"use as fixed asset"| Fixed
    Purpose -->|"build fixed asset"| CIP
    CIP --> Avail
    Avail -->|"transfer at accumulated cost"| Fixed
    Fixed --> UCC
    UCC --> CCA
    CCA -.->|"− CCA, carry forward"| UCC
    Inv --> Sale
    Sale --> COGS
    Fixed --> Disp
    Disp --> Rec
    Disp -.->|"proceeds &gt; original cost"| CG
    Inv -.->|"FMV deemed disposition"| CofU
    Fixed -.->|"FMV deemed disposition"| CofU
    CofU -.->|"re-classify"| Inv
    CofU -.->|"re-classify"| Fixed
```


## Acquisition cost: what gets capitalized

The same rules govern what dollars enter the cost figure across all three channels.

Included in cost:
- Invoice price net of trade discounts
- Freight, customs duty, brokerage on inbound goods or equipment
- Installation, site preparation, professional fees directly attributable to bringing the asset into use
- Non-recoverable PST (in non-harmonized provinces)
- Non-recoverable GST/HST (when the corp is not registered, when the input is not eligible for an input tax credit, or when business use on personal-use-eligible property is 50% or less)
- Foreign-currency invoice converted at the *trade-date* Bank of Canada rate

Excluded from cost (booked elsewhere):
- Recoverable GST/HST claimed as an *input tax credit* (ITC): booked to `HST receivable`; see [HST](../HST.md)
- Interest on financing used for the purchase: deductible as `Interest and bank charges` (GIFI 8710) rather than capitalized (the s.21 election to capitalize interest into a depreciable asset is the narrow exception)
- Storage and handling after the asset reaches the corp's premises
- Realized FX gain or loss on settlement of the foreign-currency payable: booked to `Realized FX gain/loss` per [Foreign Currency](../Foreign-Currency.md); the landed cost stays at the trade-date figure
- Administrative overhead and indirect costs not attributable to a specific acquisition

The 50%-business-use rule on ITC eligibility for capital property is in [HST](../HST.md#capital-purchases); the FX trade-date convention is in [Foreign Currency](../Foreign-Currency.md#when-to-use-which-rate).


## Available for use

CCA cannot be claimed on a class addition until the property is *available for use* (ITA [s.13(26)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html)). The cost is in the UCC pool from the acquisition date, but the half-year-adjusted base feeds CCA only once the property is in service.

For non-buildings (s.13(27)), the earliest of:
- First time the property is used to earn income
- The property is capable of producing the intended commercially saleable product or service
- The end of the second tax year after acquisition (the rolling-two-year / 357-day rule)

For buildings (s.13(28)), the earliest of:
- All or substantially all (~90%) of the building first used for its intended purpose
- Construction is substantially complete

Two notes on coverage:
- A CIP balance produces no deduction in the interim: not inventory (no COGS), not yet available for use (no CCA). The available-for-use date is the trigger that moves the accumulated cost from CIP into the appropriate CCA class on Schedule 100; standard CCA mechanics apply from there
- Inventory has no available-for-use rule; cost flows through COGS only at the moment of sale


## Change of use

Property can move between channels when the corp's purpose changes after acquisition (ITA s.45, s.13(7)):
- Deemed disposition is at *fair market value* on the date of the change
- Book entry transfers the asset out of the source channel at FMV and into the destination channel at FMV
- Destination channel's mechanics apply prospectively from the change date

A gain or loss may arise on the deemed disposition:
- *Inventory → fixed asset*: the FMV-vs-cost difference is realized in inventory
- *Fixed asset → inventory*: recapture (s.13(1)) or terminal loss (s.20(16)) can trigger on the source CCA class

Common examples:
- A tool-retailer CCPC pulls a saw off the resale shelf to put it into its own workshop: inventory → Class 8 fixed asset at FMV
- A delivery van originally bought for resale is taken into operational use: inventory → Class 10 at FMV
- A computer originally bought for staff use is moved into a side reseller line: fixed asset → inventory at FMV (rare for a typical CCPC)

The HST-side equivalent is the deemed ITC adjustment under ETA s.206 when business-use proportion crosses 50% on capital property; see [HST](../HST.md#capital-purchases).


## T2 schedules touched

The cluster touches the same four T2 schedules across all three channels; the line items differ by channel.

- *Schedule 100* (balance sheet): inventory on the 1120-series GIFI codes; fixed assets on the fixed-asset codes (1740 / 1770 / 1780 / 1880-series / 1900); CIP as a sub-account within the fixed-asset section until transfer
- *Schedule 125* (income statement): COGS lines 8300–8518 for inventory; `Amortization of tangible assets` (8670) at the *book* amortization figure for depreciable property
- *Schedule 8* (CCA): one row per class with opening UCC, additions, dispositions, half-year adjustment, rate, CCA claimed, closing UCC; inventory not on Schedule 8
- *Schedule 1* (book-to-tax reconciliation): book amortization added back, CCA from Schedule 8 deducted; inventory typically produces no adjustment


## Disposition mechanics

Disposition closes the channel.

*Inventory disposition*:
- Revenue hits `Trade sales of goods and services` (GIFI 8000)
- Cost hits `Cost of sales` (GIFI 8518) at the unit's cost
- Year-end LCM write-downs (s.10(1)) and recoveries (s.10(2)) also run through COGS
- No capital-gains treatment on inventory

*Depreciable-property disposition* (full mechanics in [Capital Cost Allowance](Capital-Cost-Allowance.md#recapture-and-terminal-loss)):
- UCC reduction = lesser of (proceeds, original cost)
- Any "gain" above original cost is a capital gain on Schedule 6, not recapture
- Closing UCC negative at year-end is *recapture* (s.13(1)) included in income; UCC reset to zero
- Closing UCC positive with no asset left in the class is a *terminal loss* (s.20(16)) deducted from income
- Class 10.1, Class 14.1, and replacement-property rules carry exceptions

A CIP balance is never directly disposed of:
- *Cancelled project*: write-down (deductible if the project served a business purpose)
- *Completed project*: transfers to a CCA class and follows the depreciable-property rules from there


## Related

- [Small Business Tax Overview](../Small-Business-Tax-Overview.md): primer for the rest of the guide
- [HST](../HST.md): GST/HST mechanics, including ITC eligibility on inputs and the 50%-business-use line on capital property
- [Foreign Currency](../Foreign-Currency.md): trade-date FX convention used to convert foreign-currency invoices into landed cost
- [Adjusted Cost Base](../Adjusted-Cost-Base/Adjusted-Cost-Base.md): the investing-side analogue of inventory pooling, applied to securities rather than goods
- [Glossary](../Glossary.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)): https://laws-lois.justice.gc.ca/eng/acts/I-3.3/
  - [s.9](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-9.html) - income from a business or property; the parent rule that makes COGS a deduction from revenue
  - [s.10](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-10.html) - inventory valuation
  - [s.13](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) - recapture (s.13(1)); UCC definition (s.13(21)); available-for-use rules (s.13(26)–(32))
  - [s.18(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) - general deductibility test (expense for the purpose of gaining income)
  - [s.18(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) - block on direct deduction of capital expenditure; the rule that pushes capital purchases through CCA
  - [s.20(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - permission to deduct CCA per regulation
  - [s.20(16)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - terminal loss
  - [s.45](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-45.html) - change-of-use rules
  - [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) - definition of "inventory"
- CRA Income Tax Folio S3-F4-C1 - General Discussion of Capital Cost Allowance: https://www.canada.ca/en/revenue-agency/services/tax/technical-information/income-tax/income-tax-folios-index/series-3-property-investments-savings-plans/series-3-property-investments-savings-plans-folio-4-capital-cost-allowance/income-tax-folio-s3-f4-c1-general-discussion-capital-cost-allowance.html
- CRA RC4088 - General Index of Financial Information (GIFI): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088.html


## TODO

- A side-by-side worked example synthesizing the three channels (same $1,000 spend treated three ways) is not on this page; per the current scope it stays on the sub-pages
- A unified Cost-Recovery glossary subset (capitalize, expense, landed cost, available for use, UCC, COGS, change in use) may be worth pulling out once the sub-pages stabilize
