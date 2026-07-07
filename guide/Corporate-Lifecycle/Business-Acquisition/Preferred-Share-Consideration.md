STATUS: AI GENERATED, REVIEW IN PROGRESS

# Preferred-Share Consideration

See parent document: [Business Acquisition](Business-Acquisition.md)

**Who this is for**:
- Owner of a CCPC buying a business and paying the vendors with shares instead of cash
- Want to understand the rollover, the share terms, and how the vendors are taxed as they are paid out

**TLDR**:
- The buyer corporation issues *redeemable, retractable preferred shares* to the vendors, with a fixed redemption value equal to the price
- A *section 85 rollover* lets the vendors defer their gain on the exchange
- The corporation redeems the shares over time from retained earnings; each redemption above paid-up capital is a *deemed dividend* to the vendor (ITA s.84(3))
- Redeeming low-PUC shares mostly produces *dividend* treatment, not capital-gain treatment, which is a key planning difference from a cash sale

Limitations:
- Orientation only; the rollover election, the share terms, and the redemption schedule are set up by professionals
- The numeric illustration is schematic, not a worked T2 example; it shows the mechanics, not a filing
- Assumes Canadian-resident vendors and a Canadian-resident CCPC buyer
- The following is my understanding as of 2026


## Paying with Shares Instead of Cash

Rather than pay cash on closing, the buyer corporation issues the vendors *preferred shares* of the buyer (see [Share Capital](../Corporate-Structure/Share-Capital.md)).  
The shares are redeemable and retractable, with a fixed redemption value equal to the agreed purchase price.  

The vendors now hold a fixed, priority claim on the buyer corporation.  
The corporation redeems that claim over the following years out of its retained earnings, which is how the previous owners get paid.  

This is a *vendor take-back* in equity rather than debt:
- As *shares*, the redemptions are dividends, not interest-and-principal; the corporation gets no deduction for them
- As *equity*, the claim ranks behind the corporation's creditors, and redemptions are limited by the corporate-law solvency tests (CBCA s.34–36)


## The Section 85 Rollover

Handing the vendors shares is itself a disposition of what they gave up (their target shares, or the business assets), so without relief it would trigger their gain immediately.  
A *rollover* defers that gain.  

The main tool is the joint election under ITA [s.85(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.html):
- The vendor transfers the property to the buyer corporation and the two jointly elect an *elected amount*
- The elected amount, chosen between the property's tax cost and its fair market value, becomes the vendor's proceeds and the corporation's cost
- Electing at cost defers the whole gain; the consideration must include at least one share of the buyer
  - Any non-share consideration (cash, a note, assumed debt) sets a floor: the elected amount cannot be below the value of that boot (s.85(1)(b)), so full deferral needs boot no greater than the property's tax cost
- The election is made on Form T2057, with a strict filing deadline: the earliest of the parties' return due dates for the year of the transfer (s.85(6))
  - A late election is possible for up to three years, with a penalty

A share-for-share exchange between arm's-length parties can instead use ITA s.85.1, which applies automatically without an election.  


## Sizing the Shares: Redemption Value and PUC

Two numbers are set when the shares are issued:
- *Redemption value*: equal to the purchase price; this is what the corporation must pay to redeem the shares
- *Paid-up capital* (PUC): limited to the elected amount under the s.85(2.1) PUC grind, so it is usually low

The gap between the high redemption value and the low PUC is deliberate.  
That gap is the amount that will come out as a deemed dividend as the shares are redeemed.  


## Redeeming the Shares Over Time

The corporation redeems the preferred shares in tranches over the following years, as cash allows.  
Each redemption is a *deemed dividend* to the extent it exceeds the PUC of the shares redeemed (ITA [s.84(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.html)); the rest is treated as proceeds for the vendor's capital-gain calculation (see [Dividends — Deemed dividends](../../Paying-Yourself/Dividends/Dividends.md#deemed-dividends)).  

Schematic illustration:
- Preferred shares issued with total redemption value $1,000,000, total PUC $100, vendor ACB $100 (after a s.85 election at cost)
- The corporation redeems 10% of the class this year, paying $100,000
- PUC of the redeemed shares: 10% × $100 = $10
- Deemed dividend (s.84(3)): $100,000 − $10 = $99,990
- Proceeds for the capital-gain calculation: $100,000 − $99,990 = $10, against ACB of $10, for a nil capital gain

So almost the entire $100,000 is a dividend in the vendor's hands, with no corporate deduction.  
Repeating this each year pays the vendor out as a stream of dividends, spreading both the corporation's cash outflow and the vendor's tax over time.  


## Dividend Treatment vs a Cash Sale

The redemption route changes the *character* of the vendor's income, not just its timing:
- A straight share sale for cash or a note produces a *capital gain*, which can be sheltered by the lifetime capital gains exemption on QSBC shares (see [Asset vs Share Purchase](Asset-vs-Share.md))
- Redeeming low-PUC preferred shares produces a *deemed dividend*, which cannot use the exemption

Which is better depends on the vendor's exemption room, the parties' tax rates, and how long the payout runs.  
This is a central reason the structure is decided with an advisor rather than by default.  


## TOSI and Family Vendors

Where the vendors are family members, the dividends they receive, including deemed dividends on redemption, can be caught by the *Tax on Split Income* (TOSI) and taxed at the top marginal rate unless an exclusion applies (see [Dividends — TOSI](../../Paying-Yourself/Dividends/Dividends.md#tax-on-split-income-tosi)).  
Common exclusions include the vendor having been actively engaged in the business in any five earlier years (an *excluded business*), the shares being *excluded shares*, or the amount being a *reasonable return*.  
Amounts that would be an excluded amount for the vendor's spouse are also excluded once that spouse is 65 or older.  

TOSI is one of the conditions that pushes the family case onto its own page; see [Estate Freeze](Estate-Freeze.md).  


## Related

- [Business Acquisition](Business-Acquisition.md)
- [Asset vs Share Purchase](Asset-vs-Share.md)
- [Estate Freeze](Estate-Freeze.md)
- [Share Capital](../Corporate-Structure/Share-Capital.md)
- [Dividends](../../Paying-Yourself/Dividends/Dividends.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.85(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.html) - joint election for a tax-deferred rollover of property to a taxable Canadian corporation
  - [s.85(2.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.html) - grind limiting the paid-up capital of shares received to the elected amount
  - [s.85.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-85.1.html) - automatic rollover on an arm's-length share-for-share exchange
  - [s.84(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.html) - redemption proceeds over PUC deemed to be a dividend
  - [s.120.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-120.4.html) - Tax on Split Income (TOSI)
- Canada Business Corporations Act (R.S.C., 1985, c. C-44):
  - s.34-36 - redemption and purchase of shares, and the solvency tests that limit them
- CRA - Form T2057, Election on Disposition of Property by a Taxpayer to a Taxable Canadian Corporation: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2057.html
