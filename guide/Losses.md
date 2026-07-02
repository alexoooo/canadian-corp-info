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
- A dollar of loss is worth the tax rate of the income it displaces, so where it lands matters: displacing refundable investment-income tax recovers much less than the headline rate suggests
- Claim less CCA before banking a loss: a non-capital loss expires after 20 years, UCC never does

Limitations:
- Focus is the owner-managed CCPC's two common loss types: non-capital and net capital; farm, restricted-farm, and limited-partnership losses are out of scope
- *Allowable business investment losses* (ABIL) are out of scope
- The loss-streaming rules on an *acquisition of control* (ITA s.111(4)–(5.5)) are out of scope; they matter when the corporation is sold, see [Business Acquisition](Business-Acquisition/Business-Acquisition.md)
- Personal (T1) loss mechanics are out of scope
- The following is my understanding as of 2026


## Two kinds of loss

| Attribute | Non-capital loss | Net capital loss |
|---|---|---|
| Source | Operating deductions exceed the year's income | Allowable capital losses exceed the year's taxable capital gains |
| Statute | ITA [s.111(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) | ITA [s.111(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) |
| Carry back | 3 years | 3 years |
| Carry forward | 20 years | Indefinite |
| Usable against | Any income | Taxable capital gains only |
| Tracked on | Schedule 4 | Schedule 4 |
| Side effect | | The non-taxable half of the capital loss also reduces [CDA](Capital-Dividend-Account/Capital-Dividend-Account.md) |

The two do not mix:
- An excess of capital losses cannot create or increase a non-capital loss; it becomes a net capital loss instead
- A non-capital loss can shelter a year's taxable capital gains (they are income), but a net capital loss cannot shelter operating income

The capital-loss side (superficial-loss rule, the realized-loss mechanics, the CDA effect) is covered in [Adjusted Cost Base — Capital loss carry forward / back](Adjusted-Cost-Base/Adjusted-Cost-Base.md#capital-loss-carry-forward--back--superficial-loss); this page covers the T2 machinery and the non-capital side.  


## The loss year on the T2

Taxable income on the T2 has a floor of zero.  
When the year's deductions exceed income, the return shows nil taxable income and the excess becomes the year's non-capital loss (defined in ITA [s.111(8)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html)).  

What still happens in a loss year:
- The T2 is still due 6 months after year-end; a loss does not remove the filing requirement
- Schedule 4 (*Corporation Loss Continuity and Application*) records the loss arising and carries the running balances forward
- Schedule 100 shows the retained-earnings hit; the books close normally (see [Ledger and Accounts](Ledger-And-Accounts.md))
- Instalments for the following year usually stop: with no tax payable, the prior-year total falls under the $3,000 threshold (see [Filing deadlines and instalments](Small-Business-Tax-Overview.md#filing-deadlines-and-instalments))

CRA's response to a nil return is a *nil assessment*, and a nil assessment cannot be objected to.  
To lock in a disputed or material loss amount, request a *determination of loss* under ITA [s.152(1.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-152.html); the determination is binding and carries objection rights.  
For an uncontroversial loss, filing Schedule 4 and carrying the balance is the normal course; the determination is a tool for when the amount is challenged.  


## Carrying back

A carryback applies the loss against one of the three preceding tax years; CRA reassesses that year and refunds its tax.  

The request:
- Made on Schedule 4 of the *loss-year* return: enter the amount to apply against each of the three prior years
- No separate form and no amended prior-year return; the reassessment follows from the S4 entries
- The refund arises only once the loss-year return is filed; refund interest runs from that point, not from when the prior year's tax was paid (ITA [s.164(5)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-164.html))

Bookkeeping, in tax-basis books:

Filing the loss-year return with a carryback request:

| Account | Debit | Credit |
|---|---|---|
| `Taxes recoverable` (`1483`) | 7,320.00 | |
| `Current income taxes` (`9990`) — recovery | | 7,320.00 |

Receiving the reassessment refund:

| Account | Debit | Credit |
|---|---|---|
| `Cash` (`1001`) | 7,320.00 | |
| `Taxes recoverable` (`1483`) | | 7,320.00 |

Any refund interest CRA adds is interest income in the year received.  


## Carrying forward

An unapplied loss carries forward as an opening balance on next year's Schedule 4.  

Applying it:
- Deducted on the T2 jacket in computing taxable income (the non-capital and net-capital loss lines in the taxable-income section)
- The amount is discretionary: apply any amount up to the smaller of the balance and the year's income
- Within each type, losses apply oldest-first (ITA [s.111(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html)); you cannot save an older loss while spending a newer one
- A non-capital loss expires at the end of its 20th following tax year (losses from tax years ended before 2006 had shorter limits); a net capital loss never expires

Track the balances in a small continuity schedule mirroring S4, one row per origin year:

| Origin year | Arose | Applied | Balance | Expires after |
|---|---|---|---|---|
| FY2026 | 60,000.00 | 12,000.00 (FY2027) | 48,000.00 | FY2046 |

The expiry column is the point of the schedule: an expiring balance should redirect the [discretionary CCA](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md#discretionary-cca) decision and the salary/bonus level in the years before it dies.  


## What a loss dollar is worth

A loss displaces the tax on whichever income it is applied against; income types are taxed at very different permanent rates.  
Combined Ontario 2026 rates, and what a displaced dollar permanently saves:

| Income displaced | Tax saved now | Refundable portion forfeited | Permanent saving |
|---|---|---|---|
| SBD-rate ABI | 12.2% | | 12.2% |
| General-rate ABI | 26.5% | | 26.5%, less the forfeited GRIP addition |
| AII (investment income) | 50.2% | 30⅔% | ≈ 19.5% |

The AII row is the trap:
- Investment income's 50.2% headline rate includes the 30⅔% refundable portion that feeds [NERDTOH](Dividends/ERDTOH-NERDTOH.md) and comes back on paying a non-eligible dividend
- A loss applied against AII saves the full 50.2% in cash now but shrinks the refundable portion with it, so the permanent saving is only about 19.5%
- Displacing general-rate ABI (26.5%, none of it refundable) recovers more permanent tax per loss dollar
- General-rate ABI displaced also stops feeding GRIP (72¢ of eligible-dividend capacity per dollar), a smaller second-order cost on the personal side

The lever is target-year selection, not line-item selection:
- A loss applied to a year reduces that year's taxable income as a whole; you cannot direct it at one income type within the year
- But you choose *which* year (three back, twenty forward) and *how much*, so aim it at years whose marginal income is high-permanent-rate
- Timing still counts: a 12.2% refund today can beat a 26.5% saving that only materializes years out

Deferring CCA is the other half of the decision (see [Discretionary CCA](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md#discretionary-cca)):
- Claiming full CCA in a loss year deepens a balance that expires in 20 years
- Skipping the claim leaves the deduction in UCC, which never expires; take it in a profitable year instead


## Worked example

FY2025: taxable income $80,000, all SBD-rate ABI → tax at 12.2% = $9,760 paid.  
FY2026: deductions exceed income by $60,000 → taxable income nil, non-capital loss $60,000.  

Carryback (chosen here):
- Schedule 4 of the FY2026 return: loss arising $60,000, $60,000 applied to FY2025
- CRA reassesses FY2025: taxable income $80,000 − $60,000 = $20,000 → tax $2,440
- Refund: $9,760 − $2,440 = $7,320 (the journal entries above)
- S4 closing balance: $0

Carryforward (the alternative):
- Worth considering if FY2027+ income will be taxed above 12.2%: general-rate ABI from an SBD grind, or a mix with AII (mind the refundable-portion trap above)
- At 26.5% the same $60,000 saves $15,900 later instead of $7,320 now
- The cost is time and risk: the refund is immediate and certain, the higher-rate future income is neither


## Related

- [Concept Map — Loss carryforwards](Concept-Map.md#loss-carryforwards)
- [Adjusted Cost Base](Adjusted-Cost-Base/Adjusted-Cost-Base.md) (capital-loss mechanics, superficial loss, CDA effect)
- [Capital Cost Allowance](Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md) (discretionary CCA in a loss year)
- [Capital Dividend Account](Capital-Dividend-Account/Capital-Dividend-Account.md)
- [ERDTOH and NERDTOH](Dividends/ERDTOH-NERDTOH.md)
- [Small Business Tax Overview](Small-Business-Tax-Overview.md)
- [Ledger and Accounts](Ledger-And-Accounts.md)
- [CRA Administration](CRA-Administration.md) (reassessments, objections, the statute-barred clock)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)):
  - [s.111(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) - non-capital loss carryover: 3 years back, 20 forward
  - [s.111(1)(b)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) - net capital loss carryover: 3 years back, indefinite forward, against taxable capital gains only
  - [s.111(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) - ordering: within a type, losses apply in the order they arose
  - [s.111(8)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-111.html) - definitions of *non-capital loss* and *net capital loss*
  - [s.152(1.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-152.html) - determination of loss on the taxpayer's request; binding and carries objection rights
  - [s.164(5)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-164.html) - effect of a carryback on refund-interest timing
  - [s.129(4)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-129.html) - *refundable portion* of Part I tax, the least-of formula behind the AII row of the loss-value table
- T2 schedules and guides:
  - Schedule 4 - Corporation Loss Continuity and Application: https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch4.html
  - CRA T4012 - T2 Corporation Income Tax Guide (Schedule 4 chapter): https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html


## TODO

- Verify the Schedule 4 carryback line numbers (901–903 for a non-capital loss) and the T2 jacket taxable-income deduction lines (331 non-capital, 332 net capital) against the current forms, then name them in the body
- Verify `9990` Current income taxes against RC4088 and add it to the [Ledger and Accounts](Ledger-And-Accounts.md) chart; the guide has no established convention for booking income-tax expense yet
- Verify the s.129(4) least-of interaction in the loss-value table: confirm a carryback into an AII year retroactively shrinks that year's NERDTOH addition, and whether CRA reassesses the dividend refund side
- Confirm the refund-interest start date under s.164(5) (30 days after the latest of the listed dates, including the loss-year filing date)
- Add a worked S4 screenshot (redacted) once available; move the page into a `Losses/` folder when media lands
