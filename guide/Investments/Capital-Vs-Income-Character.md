STATUS: AI GENERATED, REVIEW IN PROGRESS

# Capital vs Income Character

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) with a corporate investment account
- Checking that the guide's standing assumption (securities gains are *capital* gains) holds for their trading pattern

**TLDR**:
- The ACB / Schedule 6 / CDA chain in this guide assumes gains on securities are on *capital account*
  - Frequent, short-term, speculative trading can make them fully-taxed *income* instead
- Character is decided by the facts, not by what the taxpayer calls the account
  - The facts: frequency of trades, holding periods, intention, time spent, financing
- A buy-and-hold portfolio of retained earnings in broad ETFs and dividend payers sits comfortably on capital account
- The s.39(4) election locks in capital treatment, but only for *Canadian* securities and never for a trader or dealer
  - It does not cover US-listed holdings
- Getting it wrong overstates the CDA: an income-account gain adds nothing
  - A capital dividend paid from the phantom balance attracts Part III tax

Limitations:
- Scope is the character of gains on portfolio securities
  - Real-property flips are out of scope; they have their own deeming rule for residential property
- Whether a securities-trading business's income is active for SBD purposes is flagged but not resolved
  - Get advice before relying on either answer
- The following is my understanding as of 2026


## Capital Account vs Income Account

| Attribute | Capital account | Income account |
|---|---|---|
| Inclusion | 50% of the gain | 100% of the gain |
| Non-taxable half | credits the [CDA](Capital-Dividend-Account/Capital-Dividend-Account.md) | no CDA addition |
| Losses | allowable capital losses, capital-gain-only offset (see [Losses](../Filing-And-CRA/Losses.md)) | fully deductible against any income |
| Reporting | [Schedule 6](T5008/T5008.md#t2---s6), ACB mechanics | business income on Schedule 125 |
| Cost tracking | [adjusted cost base](Adjusted-Cost-Base/Adjusted-Cost-Base.md), superficial-loss rule | inventory of a trading business |

Everything downstream in this guide sits on the capital-account side of this table.  
That includes the [T5008 workflow](T5008/T5008.md), the ACB tracker, and the capital-dividend sweep.  

The loss side cuts the other way: an income-account loss is fully deductible.  
That is why CRA argues income on gains and capital on losses, and the taxpayer argues the reverse.  
Character is symmetric and cannot be chosen per trade.  


## The Character Factors

Gains are income when the activity amounts to a business of trading rather than investing.  
A single *adventure in the nature of trade* is taxed the same way.  
The courts weigh (and CRA's IT-479R catalogues) the same factors either way:
- *Frequency*: many transactions, rapid turnover
- *Holding period*: positions held briefly rather than for yield
- *Intention*: bought to resell at a profit rather than to hold for dividends and growth
  - A *secondary intention* to flip on a good offer counts too
- *Knowledge and time*: securities expertise, hours spent, trading as an occupation
- *Financing*: margin and debt-funded positions lean income
- *Nature of the security*: speculative, non-yielding instruments lean income
  - Dividend payers and broad funds lean capital

No single factor decides; the pattern does.  
The same corporation can have both.  
A long-term portfolio stays on capital account while a separately-identifiable speculative program produces income.  


## Where a Typical Owner-Managed CCPC Lands

The scenario this guide assumes: retained earnings parked in broad ETFs and blue-chip dividend payers.  
Bought with cash, held for years, traded a handful of times a year for rebalancing or [Norbert's Gambit](../Bookkeeping/Foreign-Currency/Norberts-Gambit.md).  
That pattern is squarely capital:
- Turnover is low and holdings yield income while held
- The corporation's business is consulting or operations, not trading; nobody spends their days on the book
- Norbert's Gambit round trips are currency conversion, not a trading pattern
  - Each round trip is still a disposition

The pattern that breaks the assumption: day- or swing-trading with corporate cash.  
High turnover, margin, options programs, and crypto flipping all point the same way.  
If that describes the account, the T5008 chain on this guide's pages does not apply as written.  
The gains are business income, there is no CDA accretion, and professional advice is warranted.  


## The s.39(4) Election

ITA [s.39(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) lets a taxpayer elect that every *Canadian security* it owns is capital property:
- Filed once (Form T123 with the return); irrevocable
  - Covers all Canadian securities in the election year and every later year
- *Canadian security* (s.39(6)):
  - A share of a Canadian-resident corporation
  - A unit of a Canadian-resident mutual fund trust
  - A bond or debenture of a Canadian-resident issuer
  - Excludes a *prescribed security* (Reg 6200): mainly private-company shares and non-arm's-length debt
    - Listed portfolio holdings are not prescribed
- Not available to a *trader or dealer* in securities (s.39(5))
  - The election certifies a boundary; it cannot manufacture one for an actual trading business

Its practical limits for this guide's portfolios:
- Canadian-listed ETFs (`VUN`, `XUU`, `DLR`) are units of Canadian trusts and are covered
- US-listed holdings (`VTI`, `AAPL`) are not Canadian securities and stay under the general facts-based test
- A corporation whose pattern is genuinely buy-and-hold rarely needs the election
  - It earns its keep when a one-off disposition could be attacked as an adventure in the nature of trade

Whether to file it pre-emptively is a judgement call.  
It buys certainty on the Canadian side.  
The cost: income-account loss treatment on those securities is permanently forfeited.  


## Consequences of Income Treatment

If CRA recharacterizes gains as income:
- The gains are fully included as business income
  - Prior years' 50% inclusions are reassessed within the normal window (see [CRA Administration](../Filing-And-CRA/CRA-Administration.md#the-reassessment-clock))
- The CDA additions from those gains evaporate
  - Any capital dividend already paid against them becomes *excessive*, attracting Part III tax (60% of the excess)
  - An election can convert the excessive dividend to a taxable dividend (see [Capital Dividend Account](Capital-Dividend-Account/Capital-Dividend-Account.md))
- Whether the trading income is *active* business income (SBD-eligible) is contested territory
  - A securities-trading business is not a specified investment business (its income is from trading, not property)
  - Do not bank the 12.2% rate without advice

The CDA exposure is the sharpest edge.  
Settle character risk *before* a capital-dividend sweep, not after (see [Winding Down](../Corporate-Lifecycle/Winding-Down.md)).  


## Related

- [Adjusted Cost Base](Adjusted-Cost-Base/Adjusted-Cost-Base.md)
- [T5008](T5008/T5008.md)
- [Capital Dividend Account](Capital-Dividend-Account/Capital-Dividend-Account.md)
- [Losses](../Filing-And-CRA/Losses.md)
- [Foreign Currency](../Bookkeeping/Foreign-Currency/Foreign-Currency.md) (income-vs-capital FX character, the same distinction on the currency side)
- [Rental and Property Income](../Operations/Rental-And-Property-Income.md) (the parallel character question for rent)
- [CRA Administration](../Filing-And-CRA/CRA-Administration.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.39(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) - Canadian-securities election
    - s.39(5) - unavailable to traders or dealers
    - s.39(6) - *Canadian security* definition
  - [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) - *business* includes an adventure or concern in the nature of trade
  - [s.184](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-184.html) - Part III tax on an excessive capital-dividend election
- CRA - IT-479R *Transactions in Securities* (archived): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it479r.html
- Form T123 - Election on Disposition of Canadian Securities: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t123.html


## TODO

- Verify that the T123 / s.39(4) election is available to corporations without restriction beyond s.39(5)
  - The provision says "taxpayer"; confirm no corporate carve-out
- Verify IT-479R's status (archived but still cited) and whether a folio has replaced it
- Verify the residential-property flipping deeming rule's scope (s.12(13)–(14), individuals vs corporations)
  - Needed before saying more than the Limitations line
- Firm up or hedge further the active-vs-investment character of genuine trading income in a CCPC
  - Case law splits; CRA positions vary; currently flagged as contested
- Consider a pointer to this page from the signed-off ACB and T5008 pages on a maintainer pass
  - Their Limitations sections assume capital character
