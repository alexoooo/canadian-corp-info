STATUS: AI GENERATED, REVIEW IN PROGRESS

# Donations

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) donating corporate money — or corporately-held securities — to charity
- Deciding whether to give from the corporation or personally, and booking it either way

**TLDR**:
- A corporate donation is a *deduction* (ITA s.110.1), not a credit like the personal one, claimed at the taxable-income level after an S1 add-back
- The annual claim is capped at 75% of net income; the excess carries forward 5 years on T2 Schedule 2
- Only gifts to *qualified donees* with an official receipt count; sponsorship with advertising value is an ordinary business expense instead, with no cap
- Donating appreciated publicly-listed securities in kind is the standout move: the capital gain's inclusion rate drops to zero and the full gain still credits the CDA
- Political contributions are not donations and are not deductible

Limitations:
- The corporate-vs-personal giving decision is sketched at the rate level only; the personal donation credit (s.118.1) and its mechanics are out of scope
- Gifts of ecological or cultural property (100% limits, special rules) are out of scope
- Gifts to US charities and treaty-limited claims are out of scope
- The following is my understanding as of 2026


## Deduction, limit, and carryforward

A corporation deducts charitable gifts in computing taxable income (ITA [s.110.1(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-110.1.html)):
- The gift must be to a *qualified donee* (a registered charity or the other listed categories); check CRA's public list of registered charities
- An official receipt with the prescribed content (Reg 3501) is the proof; keep it with the year's records
- The claim in any year is capped at 75% of the year's net income; the unclaimed excess carries forward 5 years
- The claim is discretionary up to the cap: like losses, a donation can be banked for a year with income to absorb it — but it expires in 5 years, sooner than a non-capital loss (see [Losses](../Filing-And-CRA/Losses.md#carrying-forward))

The books-to-return path takes one add-back:
- Book the gift to `Donations` (`8522`) as an expense
- Schedule 1 adds it back (a donation is not an expense incurred to earn income), and the deduction is taken instead in the taxable-income section of the T2 jacket
- Schedule 2 (*Charitable Donations and Gifts*) carries the continuity: gifts made, claimed, carried forward (see [T2 Schedules](../Filing-And-CRA/T2-Schedules.md#event-driven-schedules))

The net tax effect equals an ordinary deduction; the detour through S1 and S2 exists so the 75% cap and the carryforward can be tracked.  


## Donation versus sponsorship

Money to a charity is not always a donation:
- *Sponsorship*: the corporation gets advertising or promotion back (logo on the event banner, a program listing pitched at the corp's market) — an ordinary advertising expense (`8520`), fully deductible, no receipt needed, no 75% cap
- *Donation*: nothing of substance comes back; official receipt, s.110.1 regime
- The two are mutually exclusive for the same dollar: a receipted gift cannot also be advertising, and CRA can recharacterize either way based on what was actually received

For a small corporation whose gift buys genuine local visibility, sponsorship is often both the accurate label and the simpler deduction.  


## Donating appreciated securities

Donating publicly-listed securities *in kind* to a qualified donee stacks three benefits (ITA [s.38(a.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-38.html)):
- The receipt (and the s.110.1 deduction) is the securities' fair market value
- The capital gain's inclusion rate is zero — no taxable gain at all
- The *full* gain still credits the [Capital Dividend Account](../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md): the CDA adds the non-taxable portion of gains, which here is all of it

Selling first forfeits most of that: a sale realizes a taxable gain (50% inclusion), and only the untaxed half reaches the CDA.  

Shares with ACB $4,000 and FMV $10,000, held in the corporate account:

| Route | Deduction | Taxable gain | CDA addition |
|---|---|---|---|
| Donate in kind | 10,000 | 0 | 6,000 |
| Sell, donate cash | 10,000 | 3,000 | 3,000 |

The in-kind entry:

| Account | Debit | Credit |
|---|---|---|
| `Donations` (`8522`) | 10,000.00 | |
| `Long-term investments` (`2303`) | | 4,000.00 |
| `Realized gains/losses on sale of investments` (`8211`) | | 6,000.00 |

On the return: the disposition goes on Schedule 6 with the zero inclusion, S1 removes the $6,000 accounting gain and adds back the $10,000 donation, and the deduction is claimed through Schedule 2.  
The mechanics need the donee to accept securities in kind (most large charities and donor-advised funds do; small ones may not).  
Remove the position from the [ACB tracker](../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base-Tracking.md) as a disposition at FMV.  


## Corporate versus personal giving

Both routes reach a receipt; the difference is whose tax it reduces:
- *Corporate*: a deduction against corporate rates (12.2% SBD-rate Ontario 2026) — modest per dollar, but paid with pre-personal-tax corporate dollars, and the in-kind securities play above only exists for corporately-held positions
- *Personal*: a credit worth roughly 40–50% of the gift above the first $200 (province-dependent) — stronger per dollar, but paid with money that already bore personal tax on the way out of the corp
- The comparison is close to a wash under integration for cash gifts; corporately-held appreciated securities tilt it firmly corporate (zero inclusion plus the CDA credit)

Not a donation at all:
- *Political contributions*: never deductible to a corporation, and corporate contributions are prohibited outright federally and in Ontario; the `8522` GIFI line names them only to give the book expense a home — the S1 add-back has no offsetting deduction
- *Gifts to non-qualified recipients* (a GoFundMe, a foreign charity without status, an individual): no receipt, no deduction; if the recipient is connected to the owner, the payment risks being a shareholder benefit (see [Owner-corporation transactions](../Paying-Yourself/Owner-Corporation-Transactions.md))


## Related

- [Capital Dividend Account](../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md)
- [Adjusted Cost Base](../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md)
- [Losses](../Filing-And-CRA/Losses.md) (the other discretionary carryforward at the taxable-income level)
- [T2 Schedules](../Filing-And-CRA/T2-Schedules.md) (Schedule 2)
- [Expense Classification](../Bookkeeping/Expense-Classification.md) (sponsorship as advertising)
- [Small Business Tax Overview](../Overview/Small-Business-Tax.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.110.1(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-110.1.html) - corporate deduction for charitable gifts; the 75%-of-income limit and 5-year carryforward
  - [s.38(a.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-38.html) - zero inclusion rate on gifts of publicly-listed securities to qualified donees
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - *capital dividend account* definition (the non-taxable-portion addition)
  - [s.118.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-118.1.html) - the personal credit, for contrast
- Income Tax Regulations (C.R.C., c. 945): Reg 3501 - contents of an official receipt
- T2 Schedule 2 - Charitable Donations and Gifts: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch2.html
- CRA - List of charities and other qualified donees: https://www.canada.ca/en/revenue-agency/services/charities-giving/list-charities.html
- CRA - P113 *Gifts and Income Tax*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/p113.html


## TODO

- Verify the Schedule 2 layout (gifts by year of origin, ordering oldest-first) and the T2 jacket deduction line, then name them in the body
- Verify the corporate political-contribution prohibition wording (Canada Elections Act; Ontario Election Finances Act) before sign-off
- Verify the in-kind Schedule 6 presentation for a zero-inclusion disposition (whether the gain is reported and zeroed on S6 or excluded) against the S6 instructions
- Verify the corporate-vs-personal wash claim with a worked integration comparison, or soften it
- Confirm whether the 75% limit has additions for the taxable portion of gains on donated property (the historical 25% add-ons) in the current s.110.1 text
