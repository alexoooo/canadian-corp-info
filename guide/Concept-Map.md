STATUS: AI GENERATED, REVIEW IN PROGRESS

# Concept map <!-- [done] -->

**Who this is for**:
- Anyone who wants to see how the pieces of this guide fit together before diving into a single topic

**TLDR**:
- Small business tax is presented from five aspects, with most concepts belonging to just one:
  - *Kinds of things* (trees): income, dividends, and purchases each sort into a hierarchy of types
  - *Running balances* (state): pools like GRIP, CDA, ERDTOH, and NERDTOH that carry forward year to year
  - *Events*: the year's transactions — earning income, receiving or paying a dividend, buying or selling an asset
  - *Effects*: the fixed rules mapping each event to the balances it moves
  - *The yearly flow* (a pipeline): slip → bookkeeping → pool → T2 → dividend → personal return

Limitations:
- This is an overview; rates and numbers are illustrative (Ontario, 2026)
- Diagrams are deliberately high-level; they drop edge cases that the detailed pages cover
- The following is my understanding as of 2026

Each section below renders one of these aspects as a diagram or table; the [relationship legend](#how-the-concepts-relate) at the end labels every cluster by its shape (tree, flow, matrix, or graph).


## The yearly flow

Annual pipeline stages:
- Economic activity becomes slips
- Slips become bookkeeping
- Bookkeeping sorts into pools
- Pools drive the year-end return and dividend

A *process flow* (DAG): each stage feeds the next, left to right, with no loop back.  

```mermaid
flowchart TB
    EV([Economic events<br/>sales · purchases · trades · distributions received])
    DOC[Slips received<br/>T3 · T5 · T5008]
    GL[(Bookkeeping<br/>general ledger to GIFI)]
    CLASS{{Income classification<br/>ABI · AII · dividends received}}
    POOLS[(Tax pools<br/>GRIP · CDA · ERDTOH · NERDTOH)]
    DEC{{Dividend decision<br/>eligible · non-eligible · capital}}
    T2[Year-end T2<br/>S3 · S53 · S55 · S6 · S8]
    OUT[Outputs<br/>dividend refund · T5 / T2054 to shareholder]
    T1([Shareholder T1<br/>gross-up plus DTC])

    EV --> DOC --> GL --> CLASS --> POOLS
    POOLS -->|capacity| DEC
    DEC --> T2 --> OUT --> T1
    GL -.-> T2
    POOLS -.->|refunds| T2
```

Owns the detail: [Small Business Tax Overview](Small-Business-Tax-Overview.md) (the same flow with every cash and designation edge), then the per-stage pages linked below.  


## Income taxonomy

How a dollar of corporate income is classified, and which pool each kind feeds.  
A *hierarchy* (tree): each kind of income is a leaf, annotated with the balance it lands in.  

```mermaid
flowchart TB
    CI([Corporate income])
    ABI([Active business income<br/>ABI])
    AII([Aggregate investment income<br/>AII])
    DR([Dividends received<br/>from other corps])

    SBD[SBD-rate, first $500K<br/>to retained earnings]
    GEN[General-rate portion<br/>to GRIP at 72%]
    INT[Interest, foreign income<br/>to NERDTOH at 30⅔%]
    CG[Capital gains<br/>taxable ½ to NERDTOH<br/>non-taxable ½ to CDA]
    DRE[Eligible received<br/>to GRIP plus ERDTOH]
    DRN[Non-eligible received<br/>to NERDTOH]

    CI --> ABI
    CI --> AII
    CI --> DR
    ABI --> SBD
    ABI --> GEN
    AII --> INT
    AII --> CG
    DR --> DRE
    DR --> DRN
```

Owns the detail: [Small Business Tax Overview — two buckets of corporate income](Small-Business-Tax-Overview.md#the-two-buckets-of-corporate-income).  


## The four tax pools

The running balances that determine how dividends are taxed on the corporation's side.  
*State* (event-sourced balances): solid arrows show what *fills* each pool during the year; arrows out show what *empties* it when a dividend is paid; dotted arrows are capacity or designation, not cash.  

```mermaid
flowchart TB
    GENABI([General-rate ABI])
    DivE([Eligible dividend received])
    DivNE([Non-eligible dividend received])
    AII([AII: interest, foreign,<br/>taxable cap gains, Box 26])
    CapGain([Capital gain: non-taxable ½])

    GRIP[(GRIP)]
    CDA[(CDA)]
    ERDTOH[(ERDTOH)]
    NERDTOH[(NERDTOH)]

    PayE([Pay eligible<br/>dividend])
    PayNE([Pay non-eligible<br/>dividend])
    PayC([Pay capital<br/>dividend])

    GENABI -->|+72%| GRIP
    DivE -->|full amount| GRIP
    DivE -->|+38⅓% Part IV| ERDTOH
    DivNE -->|+38⅓% Part IV| NERDTOH
    AII -->|+30⅔% Part I| NERDTOH
    CapGain --> CDA

    GRIP -.->|capacity| PayE
    ERDTOH -->|−38⅓% refund| PayE
    NERDTOH -->|−38⅓% refund| PayNE
    ERDTOH -.->|spillover if NERDTOH empty| PayNE
    CDA -.->|capacity| PayC
```

Owns the detail: [ERDTOH and NERDTOH](Dividends/ERDTOH-NERDTOH.md), [Dividends — GRIP](Dividends/Dividends.md#grip---capacity-for-eligible-dividends), [Capital Dividend Account](Capital-Dividend-Account/Capital-Dividend-Account.md).  


## Cost-recovery channels

The parallel structure on the spending side: every purchase becomes a deduction through one of three channels, set by purpose at acquisition.  
A *hierarchy* (tree) with one timing branch (CIP becomes a fixed asset once available for use).  

```mermaid
flowchart TB
    Buy([Corp buys property])
    Purpose{{Purpose at acquisition}}
    Inv[(Inventory)]
    CIP[(Construction in progress)]
    Fixed[(Depreciable property<br/>UCC pool by class)]
    COGS[Cost of sales<br/>at the moment of sale]
    CCA[Annual CCA<br/>over years]

    Buy --> Purpose
    Purpose -->|hold for resale| Inv
    Purpose -->|build fixed asset| CIP
    Purpose -->|use as fixed asset| Fixed
    Inv --> COGS
    CIP -->|available for use| Fixed
    Fixed --> CCA
```

Owns the detail: [Cost Recovery](Cost-Recovery/Cost-Recovery.md) (full flow with disposition, recapture, terminal loss, and change of use).  


## Dividend flavours at a glance

The three dividend flavours are one concept distinguished by a fixed set of attributes — a *matrix*.  
Federal rates shown; a provincial dividend tax credit applies on top (Ontario: 10% eligible, 2.9863% non-eligible of the grossed-up amount in 2026).  

| Attribute | Eligible | Non-eligible | Capital |
|---|---|---|---|
| Source pool | GRIP | SBD-rate retained earnings (default) | CDA |
| Corp action required | Designation (s.89(14)), at or before payment | None | Election (s.83(2)) on Form T2054, at or before payment |
| Personal gross-up | 38% | 15% | none (tax-free) |
| Federal DTC | 15.0198% of grossed-up | 9.0301% of grossed-up | none |
| Refund pool drawn | ERDTOH | NERDTOH, then ERDTOH spillover | none |
| Over-doing-it penalty | Part III.1, 20% (s.185.1) | none | Part III, 60% (s.184(2)) |
| Shareholder slip | T5 | T5 | none (notify; corp files T2054) |

Owns the detail: [Dividends — three flavours](Dividends/Dividends.md#three-dividend-flavours-eligible-non-eligible-capital), [Tax Integration](Tax-Integration.md) (gross-up and DTC mechanics).  


## Event → pool effects

The rule layer: a fixed map from each event to the pool balances it moves.  
This is the *matrix* at the heart of the corporate side — the four pools as columns, events as rows, cells as the delta.  

| Event | GRIP | CDA | ERDTOH | NERDTOH |
|---|---|---|---|---|
| Earn general-rate ABI | +72% of ABI | — | — | — |
| Earn AII (interest, foreign) | — | — | — | +30⅔% of AII |
| Realize capital gain | — | +non-taxable ½ | — | +30⅔% of taxable ½ |
| Realize capital loss | — | −non-taxable ½ (floored at 0) | — | — |
| Receive eligible dividend | +full amount | — | +38⅓% Part IV | — |
| Receive non-eligible dividend | — | — | — | +38⅓% Part IV |
| Pay eligible dividend | −amount | — | −38⅓% refund | — |
| Pay non-eligible dividend | — | — | − spillover after NERDTOH | −38⅓% refund (first) |
| Pay capital dividend | — | −amount | — | — |

Notes: a capital gain's taxable half is part of AII, which is why it also adds to NERDTOH; received dividends from a *connected* corporation differ (Part IV is tied to the payer's own refund). The 72% factor, the 30⅔% Part I rate, and the 38⅓% Part IV / refund rate are fixed by statute (see Citations).  

The upstream balances each live on a single page, so they are not a cross-pool matrix — each event touches one aggregate:

| Event | Aggregate | Effect | Owns the detail |
|---|---|---|---|
| Buy security | ACB (per security) | + cost and commissions (trade-date FX) | [ACB](Adjusted-Cost-Base/Adjusted-Cost-Base.md) |
| Return of capital (T3 Box 42) | ACB | − distribution | [ACB](Adjusted-Cost-Base/Adjusted-Cost-Base.md) |
| Sell security | ACB | remove sold units; realize gain or loss | [T5008](T5008/T5008.md) |
| Acquire depreciable asset | UCC (per class) | + capital cost (half-year on net additions) | [CCA](Cost-Recovery/Capital-Cost-Allowance.md) |
| Claim CCA | UCC | − CCA for the year | [CCA](Cost-Recovery/Capital-Cost-Allowance.md) |
| Dispose depreciable asset | UCC | − lesser of proceeds or cost; recapture or terminal loss | [CCA](Cost-Recovery/Capital-Cost-Allowance.md) |
| Buy inventory | Inventory | + landed cost | [Inventory](Cost-Recovery/Inventory-And-COGS.md) |
| Sell inventory | Inventory | − unit cost (to COGS) | [Inventory](Cost-Recovery/Inventory-And-COGS.md) |
| Incur construction cost | CIP | + materials and labour | [Materials and CIP](Cost-Recovery/Materials-And-CIP.md) |
| Available for use | CIP → UCC | transfer balance to a CCA class | [Materials and CIP](Cost-Recovery/Materials-And-CIP.md) |

Realizing a gain or loss is where the two halves meet: the disposition event closes an ACB or UCC balance and, in the same step, feeds the pool matrix above.  


## How the concepts relate

The same map, classified by the *shape* of each relationship — which is which:
- *Trees* (is-a / part-of): the income taxonomy, the three dividend flavours, the three cost-recovery channels, the CCA classes, and the T-slip / T2-schedule catalogues
- *State* (event-sourced balances): GRIP, CDA, ERDTOH, NERDTOH, ACB per security, UCC per class, inventory, CIP, and retained earnings — each is `opening + fold(year's events) → closing`, carried forward
- *Process flow* (a DAG): the yearly pipeline from slips through bookkeeping and pools to the T2, the dividend, and the personal return
- *Matrices* (combined attributes): the dividend flavour × attribute table, and the event × pool effect table
- *Cross-cutting graph edges* (genuinely networked, not a clean tree or flow):
  - The NERDTOH → ERDTOH spillover ordering when a non-eligible dividend is paid
  - AII's triple role: it fills NERDTOH, grinds the SBD over $50,000, and (by pushing ABI to the general rate) indirectly fills GRIP
  - Province → dividend tax credit, applied on top of every federal DTC
  - FX translation, HST recoverability, and whole-dollar rounding as aspects that touch every dollar amount on every page


## Related

- [Small Business Tax Overview](Small-Business-Tax-Overview.md)
- [Tax Integration](Tax-Integration.md)
- [Dividends](Dividends/Dividends.md)
- [Capital Dividend Account](Capital-Dividend-Account/Capital-Dividend-Account.md)
- [Cost Recovery](Cost-Recovery/Cost-Recovery.md)
- [Adjusted Cost Base](Adjusted-Cost-Base/Adjusted-Cost-Base.md)
- [Glossary](Glossary.md)


## Citations

Full citations live on each concept's owner page; the rates this map states come from:
- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.82(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-82.html) - dividend gross-up (38% eligible, 15% non-eligible)
  - [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) - capital dividend election; [s.184(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-184.html) - 60% Part III tax on over-elections
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - GRIP, CDA, ERDTOH, NERDTOH definitions and the 0.72 general-rate factor; [s.89(14)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - eligible designation
  - [s.121](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-121.html) - federal dividend tax credit (15.0198% eligible, 9.0301% non-eligible)
  - [s.125(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - SBD grind on AII over $50,000
  - [s.129](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - dividend refund (s.129(1)); 30⅔% Part I on AII and the 38⅓% pool rates (s.129(4))
  - [s.185.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-185.1.html) - 20% Part III.1 tax on excessive eligible designations
  - [s.186(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-186.html) - 38⅓% Part IV tax on dividends received
