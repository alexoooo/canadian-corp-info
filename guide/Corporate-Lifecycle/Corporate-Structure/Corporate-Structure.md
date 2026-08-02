STATUS: AI GENERATED, REVIEW IN PROGRESS

# Corporate Structure

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC)
- Want to understand how the corporation is put together: who owns it, who runs it, and the shares it issues
- Orientation before the share-capital, dividend, and business-acquisition pages

**TLDR**:
- A corporation is a separate legal person, distinct from the people who own and run it
- Three roles sit on top of it: *shareholders* own, *directors* govern, *officers* run
- In an owner-managed CCPC, one person usually fills all three roles
- *Share capital* is the foundation the dividend and acquisition pages build on (see [Share Capital](Share-Capital.md))
- A second corporation raises the *association* question: associated CCPCs share one $500,000 business limit
- The minute book is filled by an annual cycle: resolutions, registry filings, and the significant-control register

Limitations:
- This page is orientation and reference, not legal advice
  - Corporate law is federal or provincial and the details vary by jurisdiction
- Incorporation mechanics (name search, articles filing, annual returns) are touched on, not worked through
- CCPC status and the control tests live in [Small Business Tax Overview](../../Overview/Small-Business-Tax.md) and are not repeated here
- The following is my understanding as of 2026


## A Separate Legal Person

A corporation is a legal person separate from its owners.  
It can own property, owe debts, sign contracts, sue, and be sued in its own name.  

Two consequences follow for an owner-manager:
- *Limited liability*: the shareholders' financial exposure is normally limited to what they paid for their shares
  - The corporation's debts are its own
- *Two taxpayers*: the corporation files its own T2 return and the owner files a personal T1
  - Money crossing between them is salary, a dividend, a loan, or a benefit (see [Owner-corporation transactions](../../Paying-Yourself/Owner-Corporation-Transactions.md))

The separateness is the whole reason the rest of this guide exists.  
A sole proprietor and their business are one taxpayer; a corporation and its owner are two.  


## Three Roles: Shareholders, Directors, Officers

A corporation is acted on through three roles, each with a different job:
- *Shareholders*: own the corporation by holding its shares
  - They elect the directors and vote on fundamental changes, but do not run day-to-day operations
- *Directors*: govern the corporation
  - They declare dividends, issue shares, and are accountable for the corporation's affairs
- *Officers*: run the corporation day to day (president, secretary, treasurer), appointed by the directors

In a single-owner CCPC the same person is the sole shareholder, the sole director, and every officer.  
The roles still matter.  
The *Income Tax Act* taxes the owner differently depending on which hat they are wearing in a given transaction.  


## Federal or Provincial Incorporation

A corporation is created under one of two regimes:
- *Federal*: incorporated under the Canada Business Corporations Act (CBCA)
  - Can carry on business across Canada subject to extra-provincial registration
- *Provincial*: incorporated under a provincial statute (e.g. the Ontario Business Corporations Act)
  - Tied to that province's regime

The choice affects filing fees, residency requirements for directors, and name protection.  
It does not change the income-tax treatment in this guide.  
The T2 and the CCPC rules apply the same way to a federal and a provincial corporation.  


## The Minute Book

The *minute book* is the corporation's permanent legal record.  
It holds the articles of incorporation, the by-laws, and the share register.  
It also holds the directors' and shareholders' resolutions.  

The dividend, share-issuance, and restructuring steps elsewhere in this guide all produce resolutions.  
Each belongs in the minute book.  
A dividend declared without a recorded resolution, or a share issuance without a register entry, is a gap.  
CRA and a future buyer will both look for it.  


## Share Capital

*Share capital* is how ownership of the corporation is divided and recorded.  
Share classes, authorized vs issued shares, paid-up capital, and preferred-share features live in [Share Capital](Share-Capital.md).  

Those concepts are the vocabulary the [Dividends](../../Paying-Yourself/Dividends/Dividends.md) and [Business Acquisition](../Business-Acquisition/Business-Acquisition.md) pages depend on.  


## Related and Associated Corporations

The moment a second corporation enters the picture — the owner incorporates another company, a spouse owns one, a holdco is set up — two ITA labels attach, and they are not the same:
- *Related* (ITA [s.251](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-251.html)): persons connected by blood, marriage, common-law partnership, or adoption, and a corporation related to the person or group controlling it
  - Related persons are deemed not to deal at arm's length; this label drives transfer-pricing-style scrutiny of prices between them
- *Associated* (ITA [s.256](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-256.html)): the narrower test that shares the small-business deduction
- T2 Schedule 9 asks about both, which is why the distinction cannot be skipped

The s.256(1) association tests, in the cases a small business actually hits:
- One corporation controls the other (s.256(1)(a))
- The same person or group controls both (s.256(1)(b)) — the owner incorporating a second company lands here
- Each is controlled by a related person, and either controller owns 25% or more of a non-specified class of shares in each corporation (s.256(1)(c)) — two spouses' corporations with cross-shareholdings land here
  - Without the 25% cross-ownership, two spouses each wholly owning their own corporation are *not* associated
- The remaining tests (s.256(1)(d)-(e)) extend the same pattern to groups of related persons with 25% cross-ownership
- *Control* reaches beyond votes: control in fact through influence (s.256(5.1)), and attribution through holdcos, trusts, partnerships, and minor children (s.256(1.2)-(1.3))

The third-corporation rule (s.256(2)): two corporations each associated with the same third corporation are associated with each other.  
The third corporation can elect out (for SBD purposes only), at the price of its own business limit becoming nil for the year.  

What association costs:
- One $500,000 business limit shared across the group (ITA [s.125(2)-(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html))
  - The group files an allocation agreement on Schedule 23 assigning each corporation a percentage; totals over 100% collapse every limit to nil
  - With no agreement after CRA demands one, the Minister allocates (s.125(4))
- The taxable-capital and passive-income grinds of the limit also apply at the group level
  - See [Small Business Tax Overview](../../Overview/Small-Business-Tax.md#corporate-tax)
- Schedule 9 discloses the related and associated corporations on each T2; Schedule 23 carries the allocation
  - See [T2 Schedules](../../Filing-And-CRA/T2-Schedules.md#event-driven-schedules)
- The GST/HST small-supplier threshold also aggregates across associated corporations
  - See [HST Registration and Filing](../../Operations/HST/HST-Registration-And-Filing.md#registration)

Management fees between related corporations get looked at, not waved through:
- The fee must be reasonable for services actually rendered (ITA [s.67](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-67.html)); a fee that only moves income risks denial in the payer with the income still taxed in the recipient
- Paper it: a services agreement, invoices, and evidence of the services (who did what)
- The fee is a taxable supply, so HST applies between the corporations unless a joint ETA s.156 election is in place (out of scope; see [HST](../../Operations/HST/HST.md))
- Book it to `8871` Management and administration fees; see [Expense Classification](../../Bookkeeping/Expense-Classification.md)


## Annual Corporate Maintenance

The [minute book](#the-minute-book) is the artifact; this is the cycle that fills it each year:
- *Annual directors' resolutions*, signed once the financial statements are ready:
  - Approving the financial statements — a board act, not a shareholder one (CBCA [s.158](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-158.html)); a director signs them before they go to the shareholders
  - Appointing the officers for the coming year (CBCA [s.121](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-121.html))
  - Any other board approvals for the year
- *Annual shareholder resolutions*, normally signed at the same sitting:
  - Electing the director(s) (CBCA [s.106](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-106.html))
  - Receiving the approved financial statements
  - A unanimous resolution dispensing with the appointment of an auditor — required yearly for a private corporation that skips audits (CBCA [s.163](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-163.html))
- In a one-owner CCPC the same person signs in both capacities, but the resolutions are still separate acts
  - The governing corporate statute controls; provincial acts differ in detail from the CBCA model cited here
- *Dividend and bonus resolutions* as they happen, not just at year-end; see [Declaring and Paying](../../Paying-Yourself/Dividends/Declaring-And-Paying.md)
- *Registry annual return*: the corporate-registry filing that is separate from the T2
  - Deadlines and the administrative-dissolution consequence are in [Small Business Tax Overview](../../Overview/Small-Business-Tax.md#filing-deadlines-and-instalments)
- *Register updates* when facts change: a new address, a director change, a share transfer
  - Federal corporations notify Corporations Canada within 15 days of a change of directors or registered office

A federal corporation also maintains and files its register of *individuals with significant control* (ISC):
- The register (CBCA [s.21.1](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-21.1.html)) lists each individual with significant control: name, birth date, address, tax jurisdiction, and when and how the control arose
  - A single-shareholder CCPC is not exempt; the exemptions (s.21.1(7)) cover reporting issuers and listed corporations
- The information is filed with Corporations Canada annually and within 15 days after a change is recorded in the register (CBCA [s.21.21](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-21.21.html))
  - In practice the annual ISC filing rides along with the federal annual return
  - Non-compliance carries fines up to $100,000
- The public can search part of the filed information on the Corporations Canada ISC registry

An Ontario (OBCA) corporation maintains the equivalent *transparency register* at its registered office:
- Same idea, different mechanics: keep it current (updates within 15 days of learning of a change), confirm it at least once each financial year, and produce it to law enforcement and tax authorities on request
- There is no annual filing of the Ontario register with the province (see TODO)


## Related

- [Share Capital](Share-Capital.md)
- [Small Business Tax Overview](../../Overview/Small-Business-Tax.md)
- [Owner-corporation transactions](../../Paying-Yourself/Owner-Corporation-Transactions.md)
- [Dividends](../../Paying-Yourself/Dividends/Dividends.md)
- [Business Acquisition](../Business-Acquisition/Business-Acquisition.md)
- [T2 Schedules](../../Filing-And-CRA/T2-Schedules.md) (Schedule 9 and Schedule 23)


## Citations

- Canada Business Corporations Act (R.S.C., 1985, c. C-44): https://laws-lois.justice.gc.ca/eng/acts/C-44/
  - Separate legal existence, the shareholder/director/officer roles, and the records a corporation must keep
  - [s.21.1](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-21.1.html) - register of individuals with significant control; exemptions in s.21.1(7)
  - [s.21.21](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-21.21.html) - annual ISC filing with the Director, and within 15 days of a recorded change
- Business Corporations Act (Ontario), R.S.O. 1990, c. B.16 - the transparency register for OBCA corporations: https://www.ontario.ca/laws/statute/90b16
- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.125(7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - definition of "Canadian-controlled private corporation" (covered in [Small Business Tax Overview](../../Overview/Small-Business-Tax.md))
  - [s.125(2)-(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) - the shared business limit, the Schedule 23 allocation agreement, and the Minister's default allocation
  - [s.251](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-251.html) - related persons and arm's length
  - [s.256](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-256.html) - association tests (s.256(1)), attribution (s.256(1.2)-(1.3)), third-corporation rule and election (s.256(2)), control in fact (s.256(5.1))
  - [s.67](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-67.html) - reasonableness limit on deductions, incl. inter-corporate management fees
- CRA - Corporation income tax (T2) overview: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/corporations.html


## TODO

- Verify the Ontario transparency-register section numbers (OBCA s.140.2 and following) against the statute; e-Laws could not be fetched during drafting
  - The maintain / annual-confirmation / produce-on-request / no-annual-filing description follows firm summaries (McMillan, EY, Stikeman Elliott, Fasken, 2022-2023)
- Verify the s.256(1)(c) "non-specified class" 25% wording and whether the spouses-without-cross-ownership example needs the s.256(1.3) minor-children attribution caveat
- Confirm the ISC filing rides with the federal annual return and the $100,000 fine figure against the current Corporations Canada guidance
