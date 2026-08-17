STATUS: AI GENERATED, REVIEW IN PROGRESS

# Losses

**Who this is for**:
- Owners of a Canadian-controlled private corporation (CCPC)
- Handling a year in which deductions exceed income, or applying an earlier year's loss

**TLDR**:
- Taxable income never goes negative: the shortfall becomes a *non-capital loss*, tracked on T2 Schedule 4
- A non-capital loss carries back 3 years (CRA refunds the earlier year's tax) and forward 20 years, against any income
- A *net capital loss* carries back 3 years and forward indefinitely, against taxable capital gains only
- Both carryover amounts are discretionary: you choose how much to apply, but each type applies oldest-first
- A dollar of loss is worth the tax rate of the income it displaces, so where it lands matters
  - Displacing refundable investment-income tax recovers much less than the headline rate suggests
- Claim less CCA before banking a loss: a non-capital loss expires after 20 years, UCC never does
- A worthless share or bad capital debt has no disposition until an s.50(1) election creates one
  - If the issuer was a *small business corporation*, the loss may be an ABIL, deductible against any income

Limitations:
- Focus is the owner-managed CCPC's two common loss types: non-capital and net capital
  - Farm, restricted-farm, and limited-partnership losses are out of scope
- *Allowable business investment losses* are covered only as the s.50(1) worthless-holding branch below
  - The full ABIL regime (s.39(9) exemption grinds, disputes over SBC status) is professional-advice territory
- The loss-streaming rules on an *acquisition of control* (ITA s.111(4)–(5.5)) are out of scope
  - They matter when the corporation is sold; see [Business Acquisition](../Corporate-Lifecycle/Business-Acquisition/Business-Acquisition.md)
- Personal (T1) loss mechanics are out of scope; the T1's common situations are worked in [Personal Tax](../Personal-Tax/Personal-Tax.md)
- The following is my understanding as of 2026


## Two Kinds of Loss

| Attribute | Non-capital loss | Net capital loss |
|---|---|---|
| Source | Operating deductions exceed the year's income | Allowable capital losses exceed taxable capital gains |
| Statute | ITA [s.111(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) | ITA [s.111(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) |
| Carry back | 3 years | 3 years |
| Carry forward | 20 years | Indefinite |
| Usable against | Any income | Taxable capital gains only |
| Tracked on | Schedule 4 | Schedule 4 |
| Side effect | | The non-taxable half of the capital loss also reduces [CDA](../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md) |

The two do not mix:
- An excess of capital losses cannot create or increase a non-capital loss; it becomes a net capital loss instead
- A non-capital loss can shelter a year's taxable capital gains (they are income)
  - A net capital loss cannot shelter operating income

This page covers the T2 machinery and the non-capital side.  
The capital-loss side (superficial-loss rule, the realized-loss mechanics, the CDA effect) is in [Adjusted Cost Base](../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md#capital-loss-carry-forward--back--superficial-loss).  


## Worthless Shares and Bad Debts

The capital-loss machinery above assumes a disposition — usually a sale.  
When an issuer goes bankrupt or a loan the corporation made goes bad, nothing is sold and no T5008 arrives.  
Without an election there is no disposition, so the loss stays unrealized indefinitely.  

ITA [s.50(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-50.html) supplies the disposition, by election in the return for the year:
- *A debt*: owing to the corporation at year-end and established to have become bad in the year
- *A share*: still owned at year-end, where in the year the issuer went bankrupt or was ordered wound up insolvent, or where at year-end the issuer is insolvent, carries on no business, the share is worth nil, and dissolution is reasonably expected
- The election deems the debt or share disposed of at year-end for nil proceeds and reacquired immediately after at nil cost
- There is no prescribed form; elect by a signed statement filed with the T2 for the year

The nil-cost reacquisition writes the ACB record down to zero:
- Close the holding's ACB pool at nil; any later recovery or sale is a gain from a nil base
- If the issuer resumes business within 24 months while the share is still held, the election reverses at the original ACB (s.50(1.1))

The loss on a plain portfolio holding is a capital loss:
- Half is allowable, usable against taxable capital gains only, on the net-capital-loss continuity above
- The non-taxable half reduces the [CDA](../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md)

Where the issuer was a *small business corporation* — a CCPC using all or substantially all of its assets in an active business carried on primarily in Canada — the character improves.  
ITA [s.39(1)(c)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) makes the loss a *business investment loss*:
- Qualifying dispositions: an s.50(1) election, or an actual sale to an arm's-length person
- Qualifying property: a share of a small business corporation, or a debt owing by a CCPC that is one (or was one when it went bankrupt or into an insolvent winding-up)
- The allowable half (the *ABIL*) deducts against income from any source, not just capital gains
- An ABIL the year cannot absorb joins the non-capital loss pool rather than the net-capital one, but only for a while
  - It stays in the non-capital loss through the **10** following tax years (ITA [s.111(8)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html), the `non-capital loss` definition, paragraph E(c))
  - Whatever is still unused then moves into the *net capital loss* computation (amount C of that definition)
  - After year ten it can shelter only capital gains — the against-any-income advantage is gone
  - So it is the 10-year clock that governs, not the ordinary 20-year non-capital-loss rule described below
- The CDA is still reduced: for CDA purposes the business investment loss counts like any other capital loss (ITA [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html))
  - A corporation holding CDA capacity can pay the capital dividend out before realizing the ABIL

The debt-side trap: a capital loss on a debt is nil unless the debt was acquired to earn income (ITA [s.40(2)(g)(ii)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html)).  
An interest-bearing loan qualifies; an interest-free advance to another corporation may not, and needs advice before the loss is claimed.  

A client invoice that will not be paid is none of this.  
Trade receivables are written off on income account under s.20(1)(p); see [Receivables and Bad Debts](../Operations/Receivables-And-Bad-Debts.md).  


## The Loss Year on the T2

Taxable income on the T2 has a floor of zero.  
When the year's deductions exceed income, the return shows nil taxable income.  
The excess becomes the year's non-capital loss (defined in ITA [s.111(8)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html)).  

What still happens in a loss year:
- The T2 is still due 6 months after year-end; a loss does not remove the filing requirement
- Schedule 4 (*Corporation Loss Continuity and Application*) records the loss arising
  - It carries the running balances forward
- Schedule 100 shows the retained-earnings hit; the books close normally (see [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md))
- Instalments for the following year usually stop
  - With no tax payable, the prior-year total falls under the $3,000 threshold
  - See [Filing deadlines and instalments](../Overview/Small-Business-Tax.md#filing-deadlines-and-instalments)

CRA's response to a nil return is a *nil assessment*, and a nil assessment cannot be objected to.  
To lock in a disputed or material loss amount, request a *determination of loss* under ITA [s.152(1.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-152.html).  
The determination is binding and carries objection rights.  
For an uncontroversial loss, filing Schedule 4 and carrying the balance is the normal course.  
The determination is a tool for when the amount is challenged.  


## Carrying Back

A carryback applies the loss against one of the three preceding tax years; CRA reassesses that year and refunds its tax.  

The request:
- Made on Schedule 4 of the *loss-year* return: enter the amount to apply against each of the three prior years
- No separate form and no amended prior-year return; the reassessment follows from the S4 entries
- The refund arises only once the loss-year return is filed
  - Refund interest does *not* run from when the prior year's tax was paid
  - Under ITA [s.164(5)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-164.html) the overpayment is deemed
    to arise 30 days after the *latest* of the listed days, which include the first day after the loss year, the day
    the loss-year return was filed, and the day any later prescribed form or written request was filed
  - Filing is one input into that test, not the interest start date

Bookkeeping, in tax-basis books:

Filing the loss-year return with a carryback request:

| Account | Debit | Credit |
|---|---|---|
| `Taxes recoverable` (`1483`) | 7,320.00 | |
| `Current income taxes` (`9990`) — recovery | | 7,320.00 |

Receiving the reassessment refund:

| Account | Debit | Credit |
|---|---|---|
| `Deposits` (`1002-1`) | 7,320.00 | |
| `Taxes recoverable` (`1483`) | | 7,320.00 |

Any refund interest CRA adds is interest income in the year received.  


## Carrying Forward

An unapplied loss carries forward as an opening balance on next year's Schedule 4.  

Applying it:
- Deducted on the T2 jacket in computing taxable income
  - The non-capital and net-capital loss lines in the taxable-income section
- The amount is discretionary: apply any amount up to the smaller of the balance and the year's income
- Within each type, losses apply oldest-first (ITA [s.111(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html)); you cannot save an older loss while spending a newer one
- A non-capital loss expires at the end of its 20th following tax year; a net capital loss never expires
  - Losses from tax years ended before 2006 had shorter limits
  - An unused *ABIL* inside the non-capital loss is the exception: it converts to a net capital loss after 10 years

Track the balances in a small continuity schedule mirroring S4, one row per origin year *and type* — an ABIL inside
the non-capital pool runs on its own clock and needs its own row:

| Origin year | Type | Arose | Applied | Balance | Expires after |
|---|---|---|---|---|---|
| FY2026 | Non-capital | 60,000.00 | 12,000.00 (FY2027) | 48,000.00 | FY2046 |
| FY2029 | Non-capital (ABIL) | 15,000.00 | 0.00 | 15,000.00 | FY2039, then converts to a net capital loss |

The expiry column is the point of the schedule.  
The ABIL row does not disappear at its date; it changes character, and from then on can shelter only capital gains.  
An expiring balance should redirect the [discretionary CCA](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md#discretionary-cca) decision and the salary/bonus level before it dies.  


## What a Loss Dollar Is Worth

A loss displaces the tax on whichever income it is applied against.  
Income types are taxed at very different permanent rates.  
Combined Ontario rates for a calendar-2026 tax year, and what a displaced dollar permanently saves:

| Income displaced | Tax saved now | Refundable portion forfeited | Permanent saving |
|---|---|---|---|
| SBD-rate ABI | ≈ 11.7% | | ≈ 11.7% |
| General-rate ABI | 26.5% | | 26.5%, less the forfeited GRIP addition |
| AII (investment income) | 50.2% | 30⅔% | ≈ 19.5% |

The AII row is the trap:
- Investment income's 50.2% headline rate includes the 30⅔% refundable portion
  - The refundable portion feeds [NERDTOH](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md) and comes back on paying a non-eligible dividend
- A loss applied against AII saves the full 50.2% in cash now but shrinks the refundable portion with it
  - The permanent saving is only about 19.5%
- Displacing general-rate ABI (26.5%, none of it refundable) recovers more permanent tax per loss dollar
- General-rate ABI displaced also stops feeding GRIP (72¢ of eligible-dividend capacity per dollar)
  - A smaller second-order cost on the personal side

The lever is target-year selection, not line-item selection:
- A loss applied to a year reduces that year's taxable income as a whole
  - You cannot direct it at one income type within the year
- But you choose *which* year (three back, twenty forward) and *how much*
  - Aim it at years whose marginal income is high-permanent-rate
- Timing still counts: an 11.7% refund today can beat a 26.5% saving that only materializes years out

Deferring CCA is the other half of the decision (see [Discretionary CCA](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md#discretionary-cca)):
- Claiming full CCA in a loss year deepens a balance that expires in 20 years
- Skipping the claim leaves the deduction in UCC, which never expires; take it in a profitable year instead


## Worked Example

FY2025: taxable income $80,000, all SBD-rate ABI → tax at the 2025 combined rate of 12.2% = $9,760 paid.  
FY2026: deductions exceed income by $60,000 → taxable income nil, non-capital loss $60,000.  

Carryback (chosen here):
- Schedule 4 of the FY2026 return: loss arising $60,000, $60,000 applied to FY2025
- CRA reassesses FY2025: taxable income $80,000 − $60,000 = $20,000 → tax $2,440
- Refund: $9,760 − $2,440 = $7,320 (the journal entries above)
- S4 closing balance: $0

Carryforward (the alternative):
- Worth considering if FY2027+ income will be taxed above 11.2%, the combined SBD rate from July 1, 2026
  - General-rate ABI from an SBD grind, or a mix with AII (mind the refundable-portion trap above)
- At 26.5% the same $60,000 saves $15,900 later instead of $7,320 now
- The cost is time and risk: the refund is immediate and certain, the higher-rate future income is neither


## Related

- [Concept Map — Loss carryforwards](../Overview/Concept-Map.md#loss-carryforwards)
- [Adjusted Cost Base](../Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md) (capital-loss mechanics, superficial loss, CDA effect)
- [Capital Cost Allowance](../Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md) (discretionary CCA in a loss year)
- [Capital Dividend Account](../Investments/Capital-Dividend-Account/Capital-Dividend-Account.md)
- [ERDTOH and NERDTOH](../Paying-Yourself/Dividends/ERDTOH-NERDTOH.md)
- [Receivables and Bad Debts](../Operations/Receivables-And-Bad-Debts.md) (trade receivables, written off on income account)
- [Capital vs Income Character](../Investments/Capital-Vs-Income-Character.md)
- [Donations](../Operations/Donations.md) (the other discretionary carryforward, on a shorter 5-year clock)
- [Small Business Tax Overview](../Overview/Small-Business-Tax.md)
- [Ledger and Accounts](../Bookkeeping/Ledger-And-Accounts.md)
- [CRA Administration](CRA-Administration.md) (reassessments, objections, the statute-barred clock)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.111(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) - non-capital loss carryover: 3 years back, 20 forward
  - [s.111(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) - net capital loss carryover: 3 years back, indefinite forward, against taxable capital gains only
  - [s.111(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) - ordering: within a type, losses apply in the order they arose
  - [s.111(8)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) - definitions of *non-capital loss* and *net capital loss*
  - [s.50(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-50.html) - deemed disposition election for a bad debt or a worthless share; s.50(1.1) 24-month reversal
  - [s.39(1)(c)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-39.html) - business investment loss on small-business-corporation shares and debt
  - [s.40(2)(g)(ii)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-40.html) - loss on a debt is nil unless acquired to earn income
  - [s.89(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-89.html) - *capital dividend account*: capital losses, including business investment losses, reduce it
  - [s.152(1.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-152.html) - determination of loss on the taxpayer's request; binding and carries objection rights
  - [s.164(5)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-164.html) - effect of a carryback on refund-interest timing
  - [s.129(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - *refundable portion* of Part I tax, the least-of formula behind the AII row of the loss-value table
- T2 schedules and guides:
  - Schedule 4 - Corporation Loss Continuity and Application: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch4.html
  - CRA T4012 - T2 Corporation Income Tax Guide (Schedule 4 chapter): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html


## TODO

- Verify the ABIL carryforward clock in the s.111(8) *non-capital loss* definition
  - The understanding: an unapplied ABIL carries as a non-capital loss for 10 years, then reverts to a net capital loss
  - Confirm against the current definition and CRA Folio S4-F8-C1 (*Business Investment Losses*), then name the clock in the body
- Verify the Schedule 4 carryback line numbers (901–903 for a non-capital loss) against the current forms
  - Also the T2 jacket taxable-income deduction lines (331 non-capital, 332 net capital)
  - Then name them in the body
- Verify `9990` Current income taxes against RC4088 and add it to the [Chart of Accounts](../Bookkeeping/Chart-Of-Accounts.md) chart
  - The guide has no established convention for booking income-tax expense yet
- Verify the s.129(4) least-of interaction in the loss-value table
  - Confirm a carryback into an AII year retroactively shrinks that year's NERDTOH addition
  - Also whether CRA reassesses the dividend refund side
- Confirm the refund-interest start date under s.164(5)
  - 30 days after the latest of the listed dates, including the loss-year filing date
- Add a worked S4 screenshot (redacted) once available; move the page into a `Losses/` folder when media lands
