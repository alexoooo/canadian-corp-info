STATUS: AI GENERATED, REVIEW IN PROGRESS

# CCA worked examples

**Who this is for**: owners of a Canadian-controlled private corporation (CCPC) who want end-to-end CCA walkthroughs with ledger entries and the matching T2 schedules.  

Four multi-year walkthroughs: three common owner-managed CCPC scenarios, plus a Class 3 dock for a waterfront business.  
Each shows the ledger entries, the relevant Schedule 8 column, and the Schedule 1 reconciliation.  
For the underlying rules see [Capital Cost Allowance](Capital-Cost-Allowance.md); for which class an asset goes in see [CCA Classification](CCA-Classification.md); for the per-row spreadsheet formulas see [CCA Tracking](CCA-Tracking.md).  
Calendar fiscal year (Jan 1 to Dec 31) is assumed unless noted.  


## Example 1: Class 50 laptop (IT consulting CCPC)

Setup: single-shareholder IT consulting CCPC.  
Buys a laptop for $4,520 (including 13% HST) on Mar 1 2026; the corp is HST-registered and claims the $520 ITC; capitalizes the $4,000 net to Class 50.  

IT-consulting-specific allocation calls:
- Systems software bundled with the laptop (Windows, drivers) → same Class 50; do not split
- Standalone application software (e.g. a $200 perpetual licence for an IDE) → Class 12 (100%); application software is subject to the half-year rule, halving the first-year claim outside the AIIP window
  - The reinstated AIIP suspends it for a 2026 acquisition
- SaaS subscriptions (Office 365, AWS, Claude) → operating expense, GIFI 9150 Computer-related expenses; never capitalized regardless of annual cost
- A separate $300 second monitor → Class 50 (computer peripheral), or expensed if it falls below your de minimis floor; pick a convention in the bookkeeping policy and apply it consistently

Year 1 (2026):

Mar 1 entry:
- Debit `Computer equipment - cost` (GIFI 1774) = $4,000
- Debit `HST receivable` = $520
- Credit `Cash` = $4,520

The laptop is available for use on Mar 1 (turned on, used to deliver consulting that day).  

Schedule 8 Class 50 row:
- Opening UCC: $0
- Cost of additions: $4,000
- Dispositions: $0
- Standard Class 50 declining-balance rate: 55%
- Without AIIP, the half-year adjustment would give a base of $2,000 and CCA of $2,000 × 55% = $1,100
- Under the reinstated AIIP (this 2026 acquisition is available for use before 2030), the half-year rule is suspended and the first-year base is 150% of the addition: CCA of $6,000 × 55% = $3,300 (three times the half-year figure)
- Closing UCC: $4,000 − CCA claimed (e.g. $700 with the AIIP deduction)

Year 2 (2027):

No transactions.  
Schedule 8 Class 50 row:
- Opening UCC: from year 1
- Additions: $0; dispositions: $0; half-year adjustment: none (no additions)
- CCA: 55% × opening UCC
- Closing UCC: opening UCC − CCA

Year 3 (2028): laptop sold for $400 cash on Aug 15 2028.

Aug 15 entry (book side, GAAP-style books):
- Debit `Cash` = $400
- Debit `Accumulated amortization - computer equipment` for the cumulative book amortization
- Credit `Computer equipment - cost` (GIFI 1774) = $4,000
- Plug the residual to `Gain on disposal of capital assets` (GIFI 8210) or `Loss on disposal of capital assets`

Schedule 8 Class 50 row:
- Opening UCC: from year 2
- Dispositions: $400 (lesser of proceeds $400 and original cost $4,000 = $400)
- Closing UCC: opening UCC − $400 − CCA claimed
- If the laptop was the only Class 50 asset and the resulting balance is positive, claim the residual as a *terminal loss* (ITA s.20(16))
- If the resulting balance is negative, the excess is *recapture* (ITA s.13(1))

Schedule 1 reconciliation for year 3:
- Add back: book amortization expense for the year and the accounting gain/loss on disposal
- Deduct: CCA from Schedule 8 (including any terminal loss)


## Example 2: Class 8 floor polisher (physical-service CCPC)

Setup: single-shareholder commercial cleaning CCPC.  
Buys a $1,800 floor polisher on Jun 15 2026; the corp is HST-registered and claims the $234 ITC; capitalizes $1,800 to Class 8.  

No other class fits, so the catch-all Class 8 applies at 20% declining balance with the half-year rule.  

Year 1 (2026):

Jun 15 entry:
- Debit `Machinery and equipment - cost` (GIFI 1900) = $1,800
- Debit `HST receivable` = $234
- Credit `Cash` = $2,034

Schedule 8 Class 8 row:
- Opening UCC: $0
- Cost of additions: $1,800
- Dispositions: $0
- Without AIIP, half-year-adjusted base = $900, and CCA = 20% × $900 = $180
- Under the reinstated AIIP, the first-year deduction is $1,800 × 1.5 × 20% = $540 and closing UCC is $1,260; the multi-year tail below is shown on the pre-AIIP $1,620 basis to illustrate the declining-balance mechanics
- Closing UCC: $1,800 − $180 = $1,620

Year 2 (2027) and onward (no further transactions in the class):
- Each year: CCA = 20% × opening UCC; the pool asymptotes to zero, never reaches it under pure declining balance
- Year 2 closing: $1,620 × 0.80 = $1,296
- Year 3 closing: $1,296 × 0.80 = $1,036.80
- By year 5 of this schedule, ~$664 of UCC remains; by year 10, ~$217

When to trigger a terminal loss: when the corp disposes of every piece of Class 8 property in the year, the residual UCC becomes a deduction (ITA s.20(16)).  
For a multi-asset pool, this is rarely useful; for a single-asset class that has been sold or scrapped, it cleans up the pool.  


## Example 3: Class 14.1 incorporation expenses

Setup: corp is incorporated on Apr 1 2026 (first fiscal year Apr 1 2026 to Mar 31 2027) at a total cost of $4,200 in incorporation expenses (legal fees, name search, registry filing, minute book).  

Year 1 (first fiscal year):

The first $3,000 is *immediately deductible*; only the excess of $1,200 is capitalized to Class 14.1.

Apr 1 entry:
- Debit `Professional fees` (GIFI 8860) = $3,000
- Debit `Goodwill / intangible assets - cost` (GIFI 2010 intangible assets, which includes organization/incorporation costs; goodwill is 2012) = $1,200
- Credit `Cash` = $4,200

Schedule 8 Class 14.1 row:
- Opening UCC: $0
- Cost of additions: $1,200
- Class 14.1 declining-balance rate: 5%
- Without AIIP, the half-year adjustment would give a base of $600 and CCA of $600 × 5% = $30
- Under the reinstated AIIP (available for use before 2030), the half-year rule is suspended and the first-year base is 150% of the addition: CCA of $1,800 × 5% = $90 (three times the half-year figure)
- Closing UCC: $1,200 − $90 = $1,110

Short fiscal year: this first fiscal year is exactly 365 days (Apr 1 2026 to Mar 31 2027 in a non-leap-year alignment), so no proration.  
If incorporation had been Oct 1 2026 with a Mar 31 2027 year-end, the first fiscal year would be 182 days and CCA would be prorated under Regulation 1100(3): $90 × (182 / 365) ≈ $44.88.  
Class 14.1 is *not* in the Regulation 1100(3) proration-exception list.

Year 2 onward:
- Each year: CCA = 5% × opening UCC
- Year 2 closing: $1,110 × 0.95 = $1,054.50
- Year 3 closing: $1,001.78
- After 20 years of full-rate CCA, ~$420 of UCC remains; the pool decays geometrically

Incorporation expenses under $3,000: the entire amount is immediately deductible in year 1, nothing goes to Class 14.1, and Schedule 8 has no Class 14.1 entry.  
This is the common case for a corporation set up online for a few hundred dollars (e.g. through Ownr or a similar service).

Missing the year-1 deduction:
- The under-$3,000 slice is *deductible* under s.20(1)(b), so s.13(35) keeps it out of Class 14.1
  - The test is whether the amount is *deductible*, not whether it was *deducted*
- It never enters a pool, so it cannot be amortized in a later year
- The only ways to claim it are in the year incurred, or by adjusting that year's return
- A CCPC has three years from the original notice of assessment to request that adjustment
  - Unlike an individual, a corporation cannot use the s.152(4.2) ten-year relief, so the deduction is lost once that window closes
- The amortize-it-later path applies only to the excess over $3,000, because only that excess is added to Class 14.1

If the first $3,000 was capitalized instead of expensed:
- *CCA was claimed on it*: the $3,000 is deducted at 5% a year rather than at once
  - That under-claims the s.20(1)(b) entitlement, in the CRA's favour, so leave it and let the pool run down
  - The forbearance is a shield against reassessing a closed under-claim, not proof the $3,000 belongs in the pool
- *No CCA was ever claimed*: once the year is statute-barred the deduction is forgone, and the amount lingers as a phantom asset with book value but no tax basis
  - Tidy it off through *retained earnings* as a prior-period correction (debit retained earnings, credit the incorporation-cost asset), not through the income statement
  - Do *not* expense it: the write-off is non-deductible, adds back on Schedule 1, and leaves the books no cleaner; retained earnings reaches the same tax result with a clean income statement

Starting the 5% now, rather than expensing or tidying off, splits on the same $3,000 line:
- *The excess over $3,000*: yes
  - It joined Class 14.1 in year one, and discretionary CCA keeps its full cost in the pool when nothing was claimed
  - Begin the 5% in any open year off the standing UCC: a current-year deduction, not a reassessment, so the statute bar does not bite
  - Set the opening UCC from the year-one addition and be ready to substantiate it
- *The first $3,000*: no
  - It was never a valid Class 14.1 addition (the deductible-not-deducted test above), so there is no pool to draw down
  - The leave-it tolerance forgives a completed slow claim, it does not license starting one

So when a phantom incorporation-cost asset bundles both, tidy off only the first-$3,000 slice; the excess is a live pool to start claiming on, not book value to write off.  

An immaterial Class 14.1 pool: continue claiming the geometric tail year by year.  
There is no CRA "write off below $X" rule; the only ways to clear a Class 14.1 pool are:
- Acquire more Class 14.1 property and eventually dispose of all of it (rare for owner-managed CCPCs)
- The corporation ceases business (triggers terminal loss under the s.20(16.1)(c) cessation exception)
- The corporation winds up

Most owner-managed CCPCs carry the small residual on Schedule 8 indefinitely.  
Leaving a $50 line on S8 is correct: CRA expects pool continuity.  
Merging low-balance pools in the corp's own asset register is fine internally, but the S8 filing must still show the running UCC by class.


## Example 4: Class 3 wooden dock (waterfront-business CCPC)

Setup: single-shareholder waterfront-business CCPC (boat rentals and a small marina).  
Builds a small wooden dock on poles over April 2026 for $6,780 (including 13% HST), available for use May 1 2026; the corp is HST-registered and claims the $780 ITC; capitalizes the $6,000 net to Class 3.  
Small fishing boats and pontoons tie up to it; it is not a loading wharf, so it is a *dock* (Class 3, 5%), not a wooden wharf (Class 6, 10%) — see [Example 1: Small wooden dock](CCA-Classification.md#example-1-small-wooden-dock) for that classification call.  
While the dock is being built the costs sit in construction-in-progress and are not yet depreciable; they move to Class 3 and start CCA only when it is available for use (see [Materials and CIP](../Materials-And-CIP.md)).  

Year 1 (2026):

May 1 entry:
- Debit `Wharves - cost` (GIFI 1906) = $6,000
- Debit `HST receivable` = $780
- Credit `Cash` = $6,780

Schedule 8 Class 3 row:
- Opening UCC: $0
- Cost of additions: $6,000
- Dispositions: $0
- Class 3 declining-balance rate: 5%
- Without AIIP, the half-year adjustment would give a base of $3,000 and CCA of $3,000 × 5% = $150
- Under the reinstated AIIP (available for use before 2030), the half-year rule is suspended and the first-year base is 150% of the addition: CCA of $9,000 × 5% = $450 (three times the half-year figure)
- Closing UCC: $6,000 − $450 = $5,550

Year-end book amortization, where book depreciation is set equal to CCA (the common small-corp convention):
- Debit `Amortization of tangible assets` (GIFI 8670) = $450
- Credit `Accumulated amortization - wharves` (GIFI 1907) = $450

Year 2 (2027) and onward (no further transactions in the class):
- Each year: CCA = 5% × opening UCC
- Year 2 closing: $5,550 × 0.95 = $5,272.50
- Year 3 closing: $5,272.50 × 0.95 = $5,008.88
- A 5% pool decays very slowly: by year 20 roughly $2,100 of the $6,000 still sits in the pool, so a dock stays on Schedule 8 for decades

Disposal: a dock is usually removed or scrapped rather than sold.
- If the corp holds no other Class 3 property when the dock is removed, the remaining UCC is a *terminal loss* (ITA s.20(16))
- If a storm or ice destroys it and insurance pays out, proceeds (capped at the $6,000 cost) above the then-current UCC are *recapture* (ITA s.13(1)); any insurance above $6,000 is a capital gain on Schedule 6, not recapture


## Related

- [Capital Cost Allowance](Capital-Cost-Allowance.md)
- [CCA Classification](CCA-Classification.md)
- [CCA Tracking](CCA-Tracking.md)
- [Cost Recovery](../Cost-Recovery.md)
- [Materials and CIP](../Materials-And-CIP.md)
- [HST](../../HST.md)
- [Glossary](../../Glossary.md)


## Citations

- Income Tax Act (R.S.C., 1985, c. 1 (5th Supp.)): https://laws-lois.justice.gc.ca/eng/acts/I-3.3/
  - [s.13(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) - recapture
  - [s.20(1)(a)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - permission to deduct CCA per regulation
  - [s.20(16)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) - terminal loss
- Income Tax Regulations (C.R.C., c. 945): Regulation 1100(2) half-year rule; Regulation 1100(3) short-fiscal-year proration: https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/
- CRA T2 SCH8 - Capital Cost Allowance (CCA): https://www.canada.ca/en/revenue-agency/services/forms-publications/forms/t2sch8.html
