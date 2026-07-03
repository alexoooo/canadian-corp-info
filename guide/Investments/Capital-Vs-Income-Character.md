STATUS: AI GENERATED, REVIEW IN PROGRESS

# Capital versus Income Character

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC) with a corporate investment account
- Checking that the guide's standing assumption — securities gains are *capital* gains — actually holds for their trading pattern

**TLDR**:
- The whole ACB / Schedule 6 / CDA chain in this guide assumes gains on securities are on *capital account*; frequent, short-term, speculative trading can make them fully-taxed *income* instead
- Character is decided by the facts — frequency of trades, holding periods, intention, time spent, financing — not by what the taxpayer calls the account
- A buy-and-hold portfolio of retained earnings in broad ETFs and dividend payers sits comfortably on capital account
- The s.39(4) election locks in capital treatment, but only for *Canadian* securities and never for a trader or dealer — it does not cover US-listed holdings
- Getting it wrong overstates the CDA: an income-account gain adds nothing, and a capital dividend paid from the phantom balance attracts Part III tax

Limitations:
- Scope is the character of gains on portfolio securities; real-property flips (which have their own deeming rule for residential property) are out of scope
- Whether a securities-trading business's income is active for SBD purposes is flagged but not resolved; get advice before relying on either answer
- The following is my understanding as of 2026


## Why character matters

| Attribute | Capital account | Income account |
|---|---|---|
| Inclusion | 50% of the gain | 100% of the gain |
| Non-taxable half | credits the [CDA](Capital-Dividend-Account/Capital-Dividend-Account.md) | no CDA addition |
| Losses | allowable capital losses, capital-gain-only offset (see [Losses](../Filing-And-CRA/Losses.md)) | fully deductible against any income |
| Reporting | [Schedule 6](T5008/T5008.md#t2---s6), ACB mechanics | business income on Schedule 125 |
| Cost tracking | [adjusted cost base](Adjusted-Cost-Base/Adjusted-Cost-Base.md), superficial-loss rule | inventory of a trading business |

Everything downstream in this guide — the [T5008 workflow](T5008/T5008.md), the ACB tracker, the capital-dividend sweep — sits on the capital-account side of this table.  
The loss side cuts the other way: an income-account loss is fully deductible, which is why CRA argues capital on gains and taxpayers argue capital on losses — character is symmetric and cannot be chosen per trade.  


## The character factors

Gains are income when the activity amounts to a business of trading — or a single *adventure in the nature of trade* — rather than investing.  
The courts weigh (and CRA's IT-479R catalogues) the same factors either way:
- *Frequency*: many transactions, rapid turnover
- *Holding period*: positions held briefly rather than for yield
- *Intention*: bought to resell at a profit rather than to hold for dividends and growth; a *secondary intention* to flip on a good offer counts too
- *Knowledge and time*: securities expertise, hours spent, trading as an occupation
- *Financing*: margin and debt-funded positions lean income
- *Nature of the security*: speculative, non-yielding instruments lean income; dividend payers and broad funds lean capital

No single factor decides; the pattern does.  
The same corporation can have both: a long-term portfolio on capital account and a separately-identifiable speculative program whose gains are income.  


## Where a typical owner-managed CCPC lands

The scenario this guide assumes — retained earnings parked in broad ETFs and blue-chip dividend payers, bought with cash, held for years, traded a handful of times a year for rebalancing or [Norbert's Gambit](../Bookkeeping/Foreign-Currency.md) — is squarely capital:
- Turnover is low and holdings yield income while held
- The corporation's business is consulting or operations, not trading; nobody spends their days on the book
- Norbert's Gambit round trips are currency conversion, not a trading pattern, though each is still a disposition

The pattern that breaks the assumption: day- or swing-trading with corporate cash, high turnover, margin, options programs, crypto flipping.  
If that describes the account, the T5008 chain on this guide's pages does not apply as written — the gains are business income, there is no CDA accretion, and professional advice is warranted.  


## The s.39(4) election

ITA [s.39(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) lets a taxpayer elect that every *Canadian security* it owns is capital property:
- Filed once (Form T123 with the return); irrevocable, and it covers all Canadian securities in the election year and every later year
- *Canadian security* (s.39(6)): a share of a Canadian-resident corporation, a unit of a Canadian-resident mutual fund trust, or a bond or debenture of a Canadian-resident issuer
- Not available to a *trader or dealer* in securities (s.39(5)) — the election certifies a boundary, it cannot manufacture one for an actual trading business

Its practical limits for this guide's portfolios:
- Canadian-listed ETFs (`VUN`, `XUU`, `DLR`) are units of Canadian trusts and are covered; US-listed holdings (`VTI`, `AAPL`) are not Canadian securities and stay under the general facts-based test
- A corporation whose pattern is genuinely buy-and-hold rarely needs the election; it earns its keep when a one-off disposition could be attacked as an adventure in the nature of trade

Whether to file it pre-emptively is a judgement call: it buys certainty on the Canadian side at the cost of permanently forfeiting income-account loss treatment on those securities.  


## Consequences of income treatment

If CRA recharacterizes gains as income:
- The gains are fully included as business income; prior years' 50% inclusions are reassessed within the normal window (see [CRA Administration](../Filing-And-CRA/CRA-Administration.md#the-reassessment-clock))
- The CDA additions from those gains evaporate — and any capital dividend already paid against them becomes *excessive*, attracting Part III tax (60% of the excess) unless an election converts it to a taxable dividend (see [Capital Dividend Account](Capital-Dividend-Account/Capital-Dividend-Account.md))
- Whether the trading income is *active* business income (SBD-eligible) or investment-like is itself contested territory — a securities-trading business is not a specified investment business (its income is from trading, not from property), but do not bank the 12.2% rate without advice

The CDA exposure is the sharpest edge: character risk should be settled *before* a capital-dividend sweep, not after (see [Winding Down](../Corporate-Lifecycle/Winding-Down.md)).  


## Related

- [Adjusted Cost Base](Adjusted-Cost-Base/Adjusted-Cost-Base.md)
- [T5008](T5008/T5008.md)
- [Capital Dividend Account](Capital-Dividend-Account/Capital-Dividend-Account.md)
- [Losses](../Filing-And-CRA/Losses.md)
- [Foreign Currency](../Bookkeeping/Foreign-Currency.md) (income-vs-capital FX character, the same distinction on the currency side)
- [Rental and Property Income](../Operations/Rental-And-Property-Income.md) (the parallel character question for rent)
- [CRA Administration](../Filing-And-CRA/CRA-Administration.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.39(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) - Canadian-securities election; s.39(5) - unavailable to traders or dealers; s.39(6) - *Canadian security* definition
  - [s.248(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-248.html) - *business* includes an adventure or concern in the nature of trade
  - [s.184](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-184.html) - Part III tax on an excessive capital-dividend election
- CRA - IT-479R *Transactions in Securities* (archived): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/it479r.html
- Form T123 - Election on Disposition of Canadian Securities: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t123.html


## TODO

- Verify that the T123 / s.39(4) election is available to corporations without restriction beyond s.39(5) (the provision says "taxpayer"; confirm no corporate carve-out)
- Verify IT-479R's status (archived but still cited) and whether a folio has replaced it
- Verify the residential-property flipping deeming rule's scope (s.12(13)–(14), individuals vs corporations) before saying more than the Limitations line
- Firm up or hedge further the active-vs-investment character of genuine trading income in a CCPC (case law splits; CRA positions vary) — currently flagged as contested
- Consider a pointer to this page from the signed-off ACB and T5008 pages on a maintainer pass (their Limitations sections assume capital character)
