STATUS: AI GENERATED, REVIEW IN PROGRESS

# Share Capital

See parent document: [Corporate Structure](Corporate-Structure.md)

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC)
- Want the vocabulary of shares: classes, authorized versus issued, paid-up capital, and redeemable/preferred features
- Reading the dividend or business-acquisition pages, which assume these terms

**TLDR**:
- A *share* is a unit of ownership; a *class* bundles the rights that attach to it (votes, dividends, capital on wind-up)
- *Common* shares carry the growth; *preferred* shares carry a fixed, priority claim
- *Authorized* shares are what the articles permit; *issued* shares are what is actually outstanding
- *Paid-up capital* (PUC) is the tax measure of capital contributed for a class, and it governs how much can come out tax-free
- *Redeemable* and *retractable* preferred shares are the building block of freezes and share-funded purchases (see [Business Acquisition](../Business-Acquisition/Business-Acquisition.md))

Limitations:
- This page defines the vocabulary; the tax mechanics of redemptions and deemed dividends live in [Dividends](../Dividends/Dividends.md), and restructuring is in [Business Acquisition](../Business-Acquisition/Business-Acquisition.md)
- Share rights are set by the articles of incorporation and corporate law; this is orientation, not legal advice
- The following is my understanding as of 2026


## What a share represents

A *share* is a unit of ownership in the corporation.  
What that ownership entitles the holder to is not fixed by the word "share"; it is set by the *class* the share belongs to, as described in the articles of incorporation.  

A class is defined by three rights, in any combination:
- *Voting*: the right to vote at shareholder meetings (one vote per share is typical, but not required)
- *Dividend*: the right to receive dividends the directors declare on that class
- *Capital on wind-up*: the right to a share of what is left after creditors are paid if the corporation is dissolved

The articles can create several classes, each with a different mix of these rights.  


## Common and preferred shares

The two broad families are common and preferred:

*Common shares*:
- Carry the *residual* claim: they receive what is left after preferred claims are met
- Participate in *growth*: their value rises and falls with the corporation's value
- Usually carry the vote
- Are the default class a corporation issues to its founder

*Preferred shares*:
- Carry a *priority* claim ahead of the common, for dividends and/or for capital on wind-up
- Usually carry a *fixed* entitlement (a set dividend rate, or a set redemption value), so they do not participate in growth
- Are often non-voting
- Are the class used to fix a value in place, which is what makes them central to freezes and share-funded purchases

The defining contrast: common shares ride the growth, preferred shares lock in a fixed amount.  


## Voting and non-voting

Votes attach to a class, not to shares generally.  
*Control* of the corporation follows the voting shares: whoever holds a majority of the votes elects the directors.  

This lets ownership of *value* and ownership of *control* be separated:
- Voting common shares can be held by one person while non-voting shares hold most of the economic value
- A freeze uses exactly this split, leaving control with the freezor while growth shifts to new common shares


## Authorized versus issued shares

Two counts that are easy to confuse:
- *Authorized*: the shares the articles permit the corporation to issue; Canadian articles commonly authorize an unlimited number of one or more classes
- *Issued (and outstanding)*: the shares actually subscribed for and held by shareholders

Only issued shares carry votes and receive dividends.  
Authorizing a class costs nothing and confers nothing until shares of that class are issued; creating a *new* class later requires an amendment to the articles.  


## No-par-value shares

Canadian corporate statutes require shares to be issued *without nominal or par value* (CBCA s.24(1)).  
The full consideration the corporation receives for a share is added to the *stated capital account* for that class (CBCA s.26).  

There is no "$1 par value" concept as in some other countries.  
The amount recorded for a class is what was paid in for it.  


## Paid-up capital (PUC)

*Paid-up capital* (PUC) is the tax measure of the capital contributed for a class of shares, defined at ITA [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html).  
It starts from the corporate-law stated capital, then is adjusted by the *Income Tax Act*, and it is averaged across all shares of the class.  

PUC is the amount that can be returned to shareholders tax-free, so it governs the tax outcome of taking money out through the shares:
- A distribution up to PUC is a tax-free *return of capital*
- A distribution above PUC is a *deemed dividend*: a reduction of PUC under ITA s.84(4), or redemption proceeds over PUC under ITA s.84(3) (see [Dividends — Deemed dividends](../Dividends/Dividends.md#deemed-dividends))

PUC is distinct from two other numbers it is often confused with:
- The shareholder's *adjusted cost base* (ACB): what the shareholder paid for the shares, used to compute their capital gain
- The shares' *fair market value* (FMV): what the shares are worth today

In a typical owner-manager CCPC whose founder shares were issued for $100, PUC is tiny, so there is almost no room for a tax-free return of capital.  
PUC becomes load-bearing in freezes and share-funded purchases, where the gap between a preferred share's redemption value and its low PUC is what later comes out as a deemed dividend.  


## Redeemable, retractable, convertible

Preferred shares usually carry one or more of these features, set in the articles:
- *Redeemable*: the corporation can buy the share back, at the corporation's option, for a set *redemption amount*
- *Retractable*: the holder can require the corporation to buy the share back, for that set amount
- *Convertible*: the share can be converted into another class on stated terms

A share that is both redeemable and retractable, at a fixed redemption value, behaves like a fixed claim on the corporation that either side can call.  
That is exactly the instrument used to fix today's value into preferred shares in a freeze, and to hand a vendor a fixed, payable-over-time claim in a share-funded purchase (see [Preferred-share consideration](../Business-Acquisition/Preferred-Share-Consideration.md)).  

Redemptions are constrained by corporate law: a corporation may not redeem shares if doing so would leave it unable to pay its liabilities (CBCA s.34–36).  


## Multiple share classes

A single founder needs only one common class.  
Reasons to add classes:
- *Different dividend entitlements*: a separate class can receive a dividend independent of the common, which supports paying co-owners different amounts (caught by TOSI for family members not active in the business; see [Dividends — Multiple owner-managers](../Dividends/Dividends.md#multiple-owner-managers) and [TOSI](../Dividends/Dividends.md#tax-on-split-income-tosi))
- *Separating control from value*: voting and non-voting classes let control sit with one holder while value sits elsewhere
- *Financing*: preferred shares can be issued to an investor for a fixed return without giving up growth or control
- *Estate freeze*: fixed-value preferred shares to the current owner, new growth common to the next generation (see [Estate Freeze](../Business-Acquisition/Estate-Freeze.md))

Creating a new class requires an articles amendment, and valuing shares when more than one class exists needs care.  


## Related

- [Corporate Structure](Corporate-Structure.md)
- [Dividends](../Dividends/Dividends.md)
- [Business Acquisition](../Business-Acquisition/Business-Acquisition.md)
- [Preferred-share consideration](../Business-Acquisition/Preferred-Share-Consideration.md)
- [Estate Freeze](../Business-Acquisition/Estate-Freeze.md)
- [Small Business Tax Overview](../Small-Business-Tax-Overview.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - definition of "paid-up capital" (PUC)
  - [s.84(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.html) - redemption proceeds over PUC deemed to be a dividend
  - [s.84(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-84.html) - PUC reduction by a private corporation deemed to be a dividend
- Canada Business Corporations Act (R.S.C., 1985, c. C-44): https://laws-lois.justice.gc.ca/eng/acts/C-44/
  - s.24 - shares without nominal or par value; classes and series of shares
  - s.26 - the stated capital account
  - s.34-36 - redemption and purchase of a corporation's own shares, and the solvency tests that limit them
- CRA - Corporation income tax (T2) overview: https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/corporations.html
