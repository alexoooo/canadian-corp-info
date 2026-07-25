# Tax Integration

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) paying themselves dividends
  - Trying to understand how the corporate-side and personal-side tax fit together

Limitations:
- Focus is on a single owner-manager shareholder of a CCPC
  - Multiple share classes, family-trust structures, and estate-freeze arrangements are out of scope
  - See [Share Capital](../Corporate-Lifecycle/Corporate-Structure/Share-Capital.md) and [Business Acquisition](../Corporate-Lifecycle/Business-Acquisition/Business-Acquisition.md)
- The shareholder is assumed to be a Canadian-resident *individual*
  - Non-resident treatment is touched on only for capital dividends
- This page focuses on dividend integration; salary integration is trivial
  - Salary is deductible to the corporation, taxed once on the personal side as employment income
- The salary-vs-dividend remuneration tradeoff is worked in [Salary vs Dividends](../Paying-Yourself/Salary-Vs-Dividends.md); WSIB stays out of scope
  - This page covers the dividend path only
- Tax information can change over time
- The following is my understanding as of 2026


## What Is Integration

*Integration* is the principle linking corporate and personal tax:
- There are two ways that a dollar of income can be earned:
  - Directly as an individual (personal income tax)
  - Flowing through a CCPC and out to shareholders (combined corporate + personal tax)
- The total tax for the above two scenarios should be roughly equal
- Corporate income that is paid out as a dividend is not "double-taxed"


## Gross-Up and Dividend Tax Credit

The mechanism is the *dividend gross-up and tax credit*.  
When the corporation pays a dividend, the shareholder:
- Grosses up the cash dividend to a notional pre-corporate-tax amount
- Pays personal tax on the grossed-up amount
- Claims a *dividend tax credit* (DTC) calibrated to offset the corporate tax the corporation already paid

The federal gross-up and credit come from ITA [s.82(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-82.html) and [s.121](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-121.html).  
Each province offers its own DTC at its own rate.  
Total integration depends on the shareholder's province of residence and marginal personal rate.  
Integration is approximate; different provinces and income sources produce small over- or under-taxation.  


## Integration by Dividend Flavour

*Eligible dividend*:
- Gross-up: 38% of cash dividend (ITA s.82(1))
- Federal DTC: 15.0198% of the grossed-up (taxable) amount (ITA s.121)
- The gross-up reflects the full general-rate corporate tax (~15% federal + the provincial general rate)
- Eligible dividends carry the lowest combined corp+personal tax of the two taxable flavours
  - This holds when the corporation actually paid tax at the general rate

*Non-eligible dividend*:
- Gross-up: 15% of cash dividend (ITA s.82(1))
- Federal DTC: 9.0301% of the grossed-up amount (ITA s.121)
- The smaller gross-up and credit reflect the lower SBD-rate corporate tax the corporation paid before distributing
- Combined corp+personal tax is calibrated to the SBD corp rate
  - The actual relative position vs an eligible dividend depends on the shareholder's province

*Capital dividend*:
- Not included in the shareholder's income at all (ITA [s.83(2)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html))
- No gross-up, no DTC, not reported on the T1
- The "tax already paid" at the corporate level is the tax on the *taxable* portion of the underlying capital gain
  - The *non-taxable* portion is what flows out tax-free as the capital dividend
- Integration on capital gains earned in a CCPC is imperfect
  - The AII path: taxable half taxed at ~50%, partly refunded via [NERDTOH](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md) on payout of a non-eligible dividend
  - It typically leaves a small "tax cost" vs realizing the gain personally, depending on province
- For non-resident shareholders this treatment does not apply
  - Part XIII withholding still applies (default 25%, often reduced by treaty)


## Corp-Side Preference Order

For an owner-manager who has access to all three accounts, the integration framework gives a corp-side preference order:
1. *Capital dividend* first (tax-free to the shareholder; constrained only by CDA balance and the s.83(2) election)
2. *Eligible dividend* next (lower combined tax than non-eligible; available only to the extent of GRIP)
3. *Non-eligible dividend* as the residual (always available; highest combined tax)

Often CDA and GRIP are both empty; the only available option is a non-eligible dividend.  


## Worked Example

Assumptions: $1,000 of corporate income, Ontario, shareholder at top marginal rate (53.53%).  
Combined corporate rates: SBD 12.2% (federal 9% + Ontario 3.2%), general 26.5% (federal 15% + Ontario 11.5%).  
DTC rates as % of the grossed-up (taxable) amount:
- Eligible: 25.02% (federal 15.02% + Ontario 10.0%)
- Non-eligible: 12.02% (federal 9.03% + Ontario 2.99%)

The 2026 Ontario budget, enacted as Bill 97 (S.O. 2026, c. 2), lowered two rates.  
The small-business rate drops to 2.2% (combined 11.2%) effective July 1, 2026.  
The non-eligible DTC drops to 1.9863% effective January 1, 2027.  
Restate for tax years straddling those dates (see [Dividends - worked examples](../Paying-Yourself/Dividends/Dividends-Examples.md#worked-examples)).  

```mermaid
flowchart TB
    Start["$1,000 corporate income"]

    Start --> E1["Eligible path<br/>Corp tax @ 26.5% = $265"]
    E1 --> E2["Cash dividend = $735<br/>Personal taxable = $735 × 1.38 = $1,014"]
    E2 --> E3["Personal tax @ 53.53% = $543<br/>less DTC 25.02% × $1,014 = $254"]
    E3 --> EFinal["Net to shareholder = $446<br/>Total tax = $554"]

    Start --> N1["Non-eligible path<br/>Corp tax @ 12.2% = $122"]
    N1 --> N2["Cash dividend = $878<br/>Personal taxable = $878 × 1.15 = $1,010"]
    N2 --> N3["Personal tax @ 53.53% = $540<br/>less DTC 12.02% × $1,010 = $121"]
    N3 --> NFinal["Net to shareholder = $459<br/>Total tax = $541"]

    Start --> D1["Direct path<br/>(no corporation)"]
    D1 --> D2["Personal income = $1,000<br/>Personal taxable = $1,000"]
    D2 --> D3["Personal tax @ 53.53% = $535"]
    D3 --> DFinal["Net = $465<br/>Total tax = $535"]

    EFinal --> Person(["Shareholder"])
    NFinal --> Person
    DFinal --> Person
```

Reading the bottom row:
- Direct: total tax \$535, net \$465 (the integration target)
- Non-eligible: total tax \$541, net \$459 (slight under-integration, ~\$6 leakage)
- Eligible: total tax \$554, net \$446 (slight under-integration, ~\$19 leakage)

The leakage on the eligible path is larger here, for two reasons:
- Ontario's combined general rate (26.5%) plus the DTC don't perfectly match the gross-up's notional 27.5% corporate rate
- The DTC also isn't fully tuned to the top marginal personal bracket
In other provinces, or at lower personal rates, the ranking between eligible and non-eligible can flip.  

The two taxable paths model different income streams, not one stream paid two ways.  
The eligible path assumes the $1,000 was taxed at the general corporate rate (26.5%).  
The non-eligible path assumes the SBD rate (12.2%).  
The non-eligible path's lower total tax reflects that lower corporate rate, not a flavour preference.  
For the *same* general-rate income, an eligible dividend beats a non-eligible one.  
That is the ranking the [corp-side preference order](#corp-side-preference-order) gives.  


## Related

- [Small Business Tax Overview](Small-Business-Tax.md)
- [Business Acquisition](../Corporate-Lifecycle/Business-Acquisition/Business-Acquisition.md)
- [Dividends](../Paying-Yourself/Dividends/Dividends.md)
- [ERDTOH and NERDTOH](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md)
- [Capital Dividend Account](../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.82(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-82.html) - dividend gross-up on the personal return
  - [s.121](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-121.html) - federal dividend tax credit
  - [s.83(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-83.html) - capital dividend election; s.83(2)(b) excludes the capital dividend from the shareholder's income
  - [s.212(2)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-212.html) - Part XIII withholding tax on dividends paid to non-residents (including capital dividends)
- CRA - Canadian income tax rates for individuals (federal and provincial brackets, including provincial DTC rates): https://www.canada.ca/en/revenue-agency/services/tax/individuals/frequently-asked-questions-individuals/canadian-income-tax-rates-individuals-current-previous-years.html
