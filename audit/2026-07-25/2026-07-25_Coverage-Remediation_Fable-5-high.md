# Coverage Remediation — 2026-07-25 (Fable-5-xhigh)

**Date**: 2026-07-25

**Scope**: filling the content gaps from
[`2026-07-25_Coverage_Opus-5-xhigh.md`](2026-07-25_Coverage_Opus-5-xhigh.md) (G-1..G-15 gaps,
X-1..X-7 thin items, B-1..B-6 boundary candidates) as corrected by
[`2026-07-25_Coverage-Review_Fable-5-high.md`](2026-07-25_Coverage-Review_Fable-5-high.md)
(CR-1..CR-8 corrections, NG-1..NG-4 net-new gaps). Run by the same model that produced the review,
on the maintainer's instruction to "fill in content gaps identified in the coverage and informed by
the associated review".

**Method**: every statutory claim written into the guide was either re-pulled live from
`laws-lois.justice.gc.ca` during this pass or inherited from the review's same-day verification
trail (`audit/wip/review-citations.md`); claims verifiable only through walled or secondary sources
were written with an explicit hedge and a `TODO` verify item on the page. All new pages carry
`STATUS: AI GENERATED, REVIEW IN PROGRESS` and a `†` README entry. Working checklist:
`audit/wip/remediation-plan.md`. No commits — the maintainer commits.

Disposition legend: `filled` (content written) / `logged` (Further-Reading entry per the finding's
own recommendation) / `corrected-and-filled` (the finding's framing was wrong; fixed differently) /
`open` (maintainer decision required).


## New Pages (5)

| Page | Fills | Notes |
|---|---|---|
| `guide/Bookkeeping/Period-Close.md` | G-1 | bank + credit-card reconciliation with worked example, monthly loop, 11-step year-end adjusting set (each step pointing at its owning page), trial-balance proof, closing entries, opening balances, work-down checklist |
| `guide/Operations/Paying-Contractors.md` | G-4, NG-2 | T4A trigger (Reg 200(1)/s.153(1)(g)) with the $500 administrative floor hedged; T5018 with subsection-exact citations per CR-2 (238(2) duty, 238(3) period, 238(4) deadline, 238(5) exceptions); Reg 105/T4A-NR branch incl. the remote-freelancer non-trigger |
| `guide/Operations/Government-Assistance.md` | G-5 | three destinations (s.12(1)(x) income, s.13(7.1) capital cost, s.53(2)(k) ACB — the review's confirmed item); UCC worked line; forgivable-loan timing at receipt; s.20(1)(hh) repayment; B-067 HST note |
| `guide/Paying-Yourself/Salary-Vs-Dividends.md` | G-2 | two-routes table, CPP cost/entitlement (2026 figures), RRSP room ($33,810 web-verified), SBD/AAII/GRIP levers, decided-outright cases; personal-side arithmetic kept structural with a TODO to work full numeric examples at verified T1 rates |
| `guide/Investments/T5013.md` | G-12 | slip trigger, character flow-through (s.96(1)), box table (verify-first flagged), allocation/distribution entries mirroring the ACB moves (s.53(1)(e)(i), s.53(2)(c)), negative-ACB deemed gain (s.40(3.1)); S71-S73 omitted per the Coverage's own caution |

All five are indexed in `README.md` (with `†`) and on their group hubs
(`Bookkeeping.md`, `Operations.md`, `Investments.md`, `Paying-Yourself.md`).


## Sections Added to Existing Pages

| Finding | Landed as | Notes |
|---|---|---|
| G-3 (+CR-7) | `Expense-Classification.md` `## Prepaid Expenses` | all four s.18(9) categories, incl. designated employee benefits (the PHSP case CR-7 flagged); 1484 entries with straddle example; ITC-follows-tax-point; capitalize-or-expense fork now names the third path |
| G-6 | `Receivables-And-Bad-Debts.md` `## Refunds, Credit Notes, and Adjustments` | s.232(1)/(2) windows, SOR/91-44 prescribed content, entries, Quick Method wrinkle (TODO verify vs RC4058), s.182 deposit-forfeiture pointer; cross-linked from `HST-Bookkeeping.md` |
| G-7 + X-4 | `Corporate-Structure.md` `## Related and Associated Corporations` | related (s.251) vs associated (s.256); the five s.256(1) tests, attribution, third-corporation rule and its election; S9/S23 and the s.125(2)-(4) allocation; group-level grinds; s.67 management-fee reasonableness with the ETA s.156 note; SBD consequence cross-linked from `Small-Business-Tax.md` |
| G-8 | `Corporate-Structure.md` `## Annual Corporate Maintenance` | annual resolutions, registry returns cross-linked not restated, CBCA s.21.1/s.21.21 ISC register and filing rhythm; Ontario transparency register from firm summaries (no annual provincial filing) with the OBCA section number left to a TODO — e-Laws remained unfetchable |
| G-9 (+CR-4) | `Starting-Up.md` `### Changing the Year-End Later` | beside the existing s.249.1(7) mention, as CR-4 argued; request mechanics, refused-if-tax-motivated, transitional short-year knock-ons, GST/HST fiscal-year note, s.249(4) deemed year-end case |
| G-10 | `CRA-Administration.md` `## Director Liability` | s.227.1 and ETA s.323 re-pulled live (closing two of the review's residual-debt items); preconditions, verbatim due-diligence wording, two-year limit, resignation trap, deemed-trust framing |
| G-11 | `Rental-And-Property-Income.md` `### Bare-Trust Reporting` | s.150(1.3) deeming in plain terms, (1.31)(a) same-persons carve-out, the $50,000 small-value exemption the review added, resume date (year-ends on/after 2026-12-31; first returns due 2027-03-31), re-check instruction kept in body and TODO |
| G-13 + NG-3 (+CR-5) | `Losses.md` `## Worthless Shares and Bad Debts` | s.50(1) debt and share conditions, election mechanics, nil-cost reacquisition and s.50(1.1); ABIL branch (s.39(1)(c), verified live) deciding character, with the CDA reduction confirmed (no BIL exclusion in s.89(1); corroborated by practitioner sources) and the s.40(2)(g)(ii) trap; cross-linked *from* `Receivables-And-Bad-Debts.md` as CR-5 required |
| G-14 | `HST-Registration-And-Filing.md` `## Sales Through a Marketplace` | s.211.23 deeming verified live: the platform collects only for unregistered vendors; registered-vendor position, gross booking with `8710` fees, simplified-regime no-ITC trap (TODO verify) |
| NG-1 | `Rental-And-Property-Income.md` `### Buying the Property` | s.221(2)/s.228(4) self-assessment, GST34-vs-GST60 routes, cash-neutral commercial case, closing-table advice, per-purchaser wrinkle on shared title (TODO verify) |
| X-1 | `Payment.md` rebuilt to the standard page shape | header block, Related/Citations/TODO added; dangling "canonical page" line fixed; new `## Instalment Computation` with the s.157(1)/(1.1) options, Reg 5301 bases, worked quarterly table, and the safe-harbour choice |
| X-2 + X-5 | `Ledger-And-Accounts.md` | `9990` in a new income-taxes table; petty cash on the `1001` row; `Credit card payable` as a `2620` sub-account row; Period-Close links |
| X-3 | `T5.md` `### Multi-Year GICs, Accrued but Unpaid` | **corrected-and-filled** — see below |
| X-6 | `T2-Schedules.md` | T2 Short eligibility stanza (web-verified conditions, TODO against the current guide) and the S140 more-than-one-S125 trigger; Return Assembly pointer |
| X-7 (per CR-1) | `Glossary.md` + TODO prunes | 11 entries added (adjusting entry, closing entry, exempt, net tax, place of supply, Quick Method, reconciling item, registrant, small supplier, zero-rated — and no *trial balance*, which existed); the stale `Foreign-Currency.md` and `HST.md` TODO batches rewritten to list only the still-missing terms |
| NG-4 | `Expense-Classification.md` placement note | s.20(10) pulled live: two conventions, business/professional organizer, territorial scope; `9201` note + citation |
| B-1 | `Payroll.md` limitation expanded | EHT $1,000,000 exemption named (web-verified, TODO at sign-off), WSIB classification trigger; Further-Reading first-employee entry |


## Boundary Items (logged in Further-Reading, per the findings' own recommendations)

- **G-15** — `open` for the admit/keep-out call, `logged` meanwhile: a *Deliberately Out of Scope*
  entry now names the four pages that defer contract revenue, so the reader learns it in one place.
  Writing `Contract-Revenue.md` remains the maintainer's decision; nothing was drafted
- **B-2**: the PST/QST entry now names the no-physical-presence registration trigger
- **B-3**: safe income / s.55(2) entry added under *Not Covered but Potentially Relevant*
- **B-4**: s.22 / s.20(24) asset-sale elections entry added (the Estate-Freeze s.22 mention CR-6
  surfaced is linked)
- **B-5**: shareholder's-death entry added (s.70(5), s.164(6), pipeline named as pointers)
- **B-6**: the US-nexus entry extended to state sales-tax economic nexus
- Housekeeping: the delivered instalment-computation entry was retired from *Touched on but Not
  Worked Through* (promoted into `Payment.md`), and the three pages that deferred the
  salary-vs-dividend decision (`Paying-Yourself.md`, `Tax-Integration.md`, `Dividends.md`, plus
  `Payroll.md`, `Payment.md`, `ERDTOH-NERDTOH.md`) now link `Salary-Vs-Dividends.md`


## Corrections to the Coverage Made While Filling

- **X-3's statutory frame was wrong for this audience.** The finding (inherited from the 2026-07-01
  review) asked for the s.12(4)/s.12(11) *anniversary-day* accrual. Pulled live: s.12(3) governs
  corporations — interest accrues to the end of *each taxation year*, no anniversary mechanics.
  `T5.md` already stated the s.12(3) rule; what was missing was the worked multi-year entries and
  the slip-reconciliation step, which is what was added. The subsection notes the s.12(4) contrast
  explicitly so the error does not recur
- **G-5's forgivable-loan timing was backwards.** The finding said the case "turns on when
  forgiveness occurs"; s.12(1)(x) and s.13(7.1) both treat a forgivable loan as assistance when
  *received* (subject to the post-2019 excluded-loan carve-out, flagged in the page TODO). The page
  states the at-receipt rule with the CEBA experience as the anchor
- **CR-2 honoured**: the new `Paying-Contractors.md` cites Reg 238's duty, period, deadline, and
  exceptions to their own subsections rather than bundling everything into 238(2)


## Verification Trail Added This Pass (all laws-lois, live)

ITA s.20(10); s.50(1)/(1.1); s.39(1)(c); s.89(1) (searched for a BIL exclusion — none; the CDA
reduction corroborated by Cadesky and Manulife commentary); s.12(1)(x); s.12(3) vs s.12(4)/(11);
s.13(7.1)/(7.4); s.20(1)(hh); s.157(1)/(1.1)/(2.1); s.227.1; s.251/s.256 (all five s.256(1) tests,
(1.2), (2), (5.1)); s.125(2)-(4); ETA s.323; s.211.23; Reg 105(1); Reg 200(1); Reg 238(1)-(5).
Web-verified (secondary): SOR/91-44 as the credit-note regulation; T2 Short eligibility; 2026 RRSP
dollar limit ($33,810); Ontario EHT $1M exemption; Ontario transparency-register mechanics (firm
summaries); Schedule 140 trigger. Carried from the review's same-day trail: s.18(9); s.53(2)(k);
s.150(1.3)/(1.31) + bare-trust dates; ETA s.221(2)/s.228(4); s.232; s.211.1; CBCA s.21.1/s.21.21;
Reg 238(3) election.


## Open Items After This Pass

- **G-15 admit/keep-out** — the only finding left `open`; the Further-Reading entry stands either way
- **OBCA s.140.2** — still unverified by statute text; the Corporate-Structure TODO carries it
- Per-page `TODO` verify items added this pass (Quick Method refund treatment, GST34 line 205,
  T5013 box numbers, T2 Short conditions, EHT figure, excluded-loan carve-out, s.161(4.1)
  safe-harbour check, full salary-vs-dividend numeric examples, and the bare-trust re-check before
  the 2026-12-31 first year-end)
- `AGENTS.md` architecture list still omits pages added since (pre-existing housekeeping item from
  the 2026-07-01 review's disposition; not expanded here)
