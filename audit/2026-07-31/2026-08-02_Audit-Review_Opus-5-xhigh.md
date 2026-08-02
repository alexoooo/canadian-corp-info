# Audit Review

**Date**: 2026-08-02

**Scope**: Independent review of `audit/2026-07-31/2026-07-31_Audit_sol-5.6-xhigh.md` (6 CRITICAL / 40 HIGH /
34 MEDIUM / 3 LOW = 83 findings). Not a fix-verification follow-up — no remediation has landed, and the cycle
folder holds the audit alone. This is the correctness check the audit's own discipline asks for before effort is
spent on fixes: are the findings right, are the quotes faithful, are the statutory attributions sound, are the
*suggested fixes* safe to apply, and what did the pass miss? Run by a different model than the one that produced
the audit.

**Method**: Every finding was located by grepping its quoted text against the working tree rather than trusting
its line numbers. Forty-one distinct statutory provisions were re-fetched live from `laws-lois.justice.gc.ca`
(ITA, ETA, Income Tax Regulations, CBCA, Employment Insurance Act) and compared word-for-word against what each
finding asserts — the full list is in *What was verified independently*. `canada.ca` returns HTTP 403 to
fetchers, so CRA form and guide claims were resolved through the search index and reachable secondary sources,
and each one that could not be pulled first-hand is named individually in *Residual verification debt*.
Arithmetic was recomputed by hand (the Ontario straddle blend, the Norbert's Gambit loss, the salary/dividend
asymmetry). Every repo-wide finding's file list was tested for completeness by grep. `scripts/Validate-Docs.ps1`
was run as the structural baseline (88 pages indexed, 1,761 local links, 0 warnings, exit 0). The audit's own
`audit/wip/` checkpoints were read as evidence about the pass but were not modified.

Session identity, per [Audit Instructions § Session identity](../../docs/Audit-Instructions.md#session-identity):
the client exposes the model display name `Opus 5 (1M context)`, normalised to `Opus-5` with the qualifier
dropped; the effort token `xhigh` was read from `~/.claude/settings.json` `effortLevel`, the documented fallback,
with no session override active.

## Severity Legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

**Accept the audit, with four corrections applied before remediation starts.** No finding was refuted. All six
CRITICAL findings hold against the primary sources, and one of them (`SU-1`) bites harder than the audit claims.
The counts are accurate: 6 / 40 / 34 / 3 = 83, matching both the TL;DR and `audit/wip/findings.md`. The closing
census (88 pages, 77 `STATUS`-marked, 11 signed off, 0 stubs, README markers matching) is accurate.

Four items must not be carried into remediation as written:

1. **`OPS-CCA-3`'s suggested fix would produce a wrong T2.** The statutory attribution is right, but Regulation
   1100(1)(b)(i) applies its own 50% first-year restriction to a Class 13 addition. Setting the tracker's
   half-year flag to `False`, as the fix instructs, over-claims in year one. This is the `WD-5` failure mode:
   right that something is wrong, wrong about the fix.
2. **`FILE-REC-1` cites the wrong provision.** ITA s.230(4.1) is the electronic-readable-format rule. The
   late-filing extension the finding describes is real and statutory, but it is **s.230(5)**. A remediator
   re-deriving from the cited subsection finds nothing.
3. **`R-7` and `LA-4` are under-consolidated.** Both are framed as repo-wide but their file lists miss live
   instances — `R-7` misses a worked `12.2% → $12,200` figure in the guide's central remuneration table, and
   `LA-4`'s two-file scope covers a defect that spans thirteen files and collides with a signed-off convention.
   Applying either fix as scoped leaves the guide *more* inconsistent than it is now.
4. **`R-10`'s Inventory limb does not hold as stated.** The flagged sentence is about the rate *source*
   (Bank of Canada versus the corporation's own bank), and the page already fixes landed cost at trade-date and
   books the settlement difference separately — which is exactly what the fix demands. The T5008 limb is sound
   and carries the finding on its own.

Beyond those: five findings are correct but rated or framed more strongly than the pages support (`R-1`, `R-2`,
`R-4`, `EF-1`, `OPS-CCA-1`); five present paraphrases inside a `Quote` field; and three fixes ask for work the
guide has already done elsewhere. **Four net-new findings** (`NEW-1`–`NEW-4`) came out of the 25 pages the audit
produced no findings on. One process gap: the dropped-candidate record the playbook requires was written to
`audit/wip/` during the pass but never made the deliverable.

## What Was Verified Independently vs Taken on the Audit's Sources

Re-fetched from `laws-lois.justice.gc.ca` and compared to the finding text:

- **ITA**: 6(1)(b)(v)/(vii)/(vii.1), 6(1)(e), 6(1)(k), 6(2); 12(1)(b), 12(3); 13(7)(a), 13(7)(b), 13(7)(e),
  13(26), 13(27), 13(28); 15(2); 18(1)(p)(i)–(iv), 18(9)(a)/(b); 20(1)(b); 22(1)(a)/(b); 40(3), 40(3.1),
  40(3.15); 45(1)(c); 54 ("personal-use property"); 74.5(5), 74.5(9); 83(2)(a), 83(3), 83(4); 84(2), 84(4),
  84(4.1); 85(5), 85(6), 85(7), 85(7.1); 89(1) paragraphs (a)–(g); 95(1) ("foreign affiliate"); 111(1)(b),
  111(1.1), 111(4), 111(5), 111(8); 164(1), 164(1.5)(a), 164(5); 184(2)–(4); 225.1(7)–(8); 230(4), 230(4.1),
  230(5); 248(1) ("balance-due day")
- **ETA**: 123(1) and Schedule V Part VII s.1; 127(2); 132(2); 148(1)–(3); 156(2)–(2.1); 167(1)/(1.1); 217; 243;
  Schedule VI Part V s.7 and s.23
- **Regulations**: 1102(1)(a); 5800(1)–(2); 1100(12) via the CRA interpretation corpus (see debt #2)
- **CBCA**: 26(1)–(4); 158. **Employment Insurance Act**: 152.02(4)–(7)

Reproduced by me rather than taken from the audit:

- **Arithmetic**: the calendar-2026 Ontario blend (9% federal + 3.2% × 181/365 + 2.2% × 184/365 = 11.696%,
  so the audit's ≈11.7% is right); the Norbert's Gambit loss (13,600 − 9.95 − 13,613.53 = −23.48); the
  salary-route asymmetry in `Salary-Vs-Dividends.md:25-39` (the salary column consumes $100,000 *plus* employer
  CPP, the dividend column $100,000).
- **Consolidation completeness**: grep tested every repo-wide file list. `R-7` and `LA-4` failed (below);
  `R-1`, `R-3`, `R-4`, `R-5`, `R-6`, `R-8`–`R-11` passed.
- **Structure**: severity tallies, page census, README marker count (78 `†` less one legend line = 77), and the
  validator run.
- **Regression spot-check**: the 2026-07-04 `CIC-1` fix held — `Capital-Vs-Income-Character.md:42` now reads
  "CRA argues income on gains and capital on losses, and the taxpayer argues the reverse", which is the correct
  direction.

Correct as reasoned but resting on a source that would not re-pull first-hand (all listed again under *Residual
verification debt*): `FC-1` and `FXR-1` (archived IT-95R, folio S5-F4-C1); `R-8` (folio S1-F3-C2); `PAY-BEN-1`
(T4130 / T4001); `FILE-S44-1` (T2SCH44); `T1-1` (T4/T5 box-to-line mappings); `R-1`'s Regulation 2101 limb.

## Disposition of All 83 Findings

Verdict key: **agree** = correct as written; **agree, fix unsafe** = the finding is right but its suggested fix
must not be applied as drafted; **agree, cite wrong** = right rule, wrong primary source; **agree, scope short**
= right but the file list misses live instances; **agree, calibration** = right but rated or framed more strongly
than the page supports. Quote key: ✓ verbatim; ≈ substance exact, presented as a quotation but paraphrased.

| Code | Sev | Verdict | Quote | Basis |
|---|---|---|---|---|
| R-1 | CRITICAL | agree, calibration | ✓ | ITA 83(2) fetched; T5/Reg 2101 limbs not re-pulled |
| R-2 | CRITICAL | agree, calibration | ✓ | ETA Sch VI Pt V s.7(b) and s.23 fetched |
| R-3 | HIGH | agree | ✓ | ETA 148(1)/(2)/(3) fetched |
| R-4 | HIGH | agree, calibration | ✓ | ITA 18(1)(b), 20(1)(a); four cited sites already disclaim the reading |
| R-5 | HIGH | agree | ✓ | Equity-vs-cash distinction; CBCA 36/42 solvency tests |
| R-6 | HIGH | agree | ≈ | ITA 248(1) "balance-due day" fetched: preceding-year test confirmed |
| R-7 | HIGH | agree, scope short | ✓ | Blend recomputed to 11.696%; two instances missing from the list |
| R-8 | MEDIUM | agree | ✓ | ITA 45(1)(c) fetched: change in use, not CCA, is the trigger |
| R-9 | MEDIUM | agree | ✓ | ETA 217 para (a)/(c) exclusive-commercial exclusion fetched |
| R-10 | HIGH | agree (T5008), fails (Inventory) | ≈ | `T5008.md:98` sound; `Inventory-And-COGS.md:180` is a rate-source bullet |
| R-11 | HIGH | agree | ✓ | ITA 83(2)(a): "immediately before the particular time" fetched |
| SBT-3 | HIGH | agree | ✓ | ITA 18(1)(p)(i)–(iv) fetched: four preserved categories, not two |
| OV-1 | MEDIUM | agree | ✓ | Salary is deductible, pre-tax; the hub's own map says so |
| CM-3 | MEDIUM | agree | ✓ | ITA 13(26) fetched: nothing enters UCC before available-for-use |
| CM-4 | MEDIUM | agree | ✓ | ITA 40(3) fetched: excess ACB reduction is a deemed gain |
| CM-5 | MEDIUM | agree | ✓ | ITA 6(1)(b) exceptions and 15(1) fetched; neither grants a corporate deduction |
| SBT-5 | MEDIUM | agree | ✓ | Corroborated in-repo by `HST-Quick-Method.md:11-13` |
| TI-1 | MEDIUM | agree | ✓ | ITA 89(1) paragraphs (b), (d), (f) fetched: multiple CDA sources |
| GL-1 | MEDIUM | agree, fix needs care | ✓ | ITA 13(27)(a)/(b)/(d) fetched; audit's long-stop restatement is loose |
| FR-1 | MEDIUM | agree | ✓ | ITA 89(1)(d) fetched: proceeds less policy ACB, not a taxable split |
| FR-3 | MEDIUM | agree | ✓ | ITA 22(1)(a) fetched: face less consideration, no face-value requirement |
| OV-2 | LOW | agree | ✓ | `docs/Style-Guide.md:130-136`; two affected pages are signed off |
| SC-1 | CRITICAL | agree | ✓ | ITA 84(4), 53(2)(a)(ii), 40(3); coordinate wording with DIV-PUC-1 |
| SU-1 | CRITICAL | agree, understated | ✓ | ITA 85(5) fetched; CRA NAL guidance confirms the deemed prior CCA |
| CS-1 | HIGH | agree | ≈ | CBCA 158 fetched: directors approve the financial statements |
| AVS-1 | HIGH | agree | ✓ | Grep: acquisition of control appears nowhere in the acquisition cluster |
| BA-1 | HIGH | agree | ✓ | A corporation is the transferor of its own assets; CBCA 15, ITA 85 |
| SC-2 | MEDIUM | agree | ≈ | CBCA 26(3) fetched: "the whole or any part of the amount of the consideration" |
| AVS-2 | MEDIUM | agree | ✓ | ETA 167(1.1) fetched: three exclusions, and no tax payable ≠ zero-rated |
| PSC-1 | MEDIUM | agree | ✓ | ITA 85(7) and 85(7.1) fetched: the just-and-equitable route exists |
| EF-1 | MEDIUM | agree, calibration | ≈ | ITA 74.5(5)/(9) fetched; the page already reduces the base by dividends paid |
| WD-1 | MEDIUM | agree | ✓ | ITA 89(1) computes CDA at a time; a later loss cannot reach back |
| BA-3 | LOW | agree | ✓ | `docs/Style-Guide.md:133-136` rejects count-plus-generic-noun headings |
| FC-1 | CRITICAL | agree | ✓ | Character follows the source transaction; IT-95R not re-pulled (debt #1) |
| NG-1 | CRITICAL | agree | ✓ | Sch 6 amount Q → Sch 4 line 210; amount R → Sch 1 line 113. Loss recomputed |
| YE-1 | HIGH | agree | ✓ | ITA 18(9)(a)(i) and (b) fetched |
| GP-1 | HIGH | agree, fix duplicates | ✓ | ITA 12(1)(b) fetched; the accrual branch already exists (see below) |
| GP-2 | HIGH | agree | ✓ | IRS services-source rule and W-8BEN-E validity/30-day rule confirmed |
| LA-4 | MEDIUM | agree, scope short | ✓ | RC4088 1002 confirmed; the defect spans 13 files, not 2 |
| BC-1 | MEDIUM | agree | ✓ | The page's own one-native-currency rule at `Bookkeeping-Convention.md:10-22` |
| FXR-1 | MEDIUM | agree | ✓ | Attribution problem; neither folio re-pulled (debt #1) |
| FC-3 | MEDIUM | agree | ✓ | ITA 12(3) fetched: interest accruing to year-end is included |
| YE-2 | LOW | agree | ✓ | The March 1 mid-rate is absent, so the split cannot be asserted |
| OPS-T5018-1 | HIGH | agree | ✓ | $500 test excludes GST/HST; Box 22 includes it. Both confirmed |
| OPS-HST-1 | HIGH | agree | ✓ | ETA 148(3) fetched: financial services, capital property, s.167.1 goodwill |
| OPS-HST-2 | HIGH | agree | ✓ | ETA Sch V Pt VII s.1 fetched; insurance issuance is a financial service |
| OPS-HST-3 | HIGH | agree | ✓ | ETA 243 fetched: fiscal quarters, not calendar quarters |
| OPS-RENT-1 | HIGH | agree | ✓ | Reg 1100(12) principal-business exception confirmed (debt #2) |
| OPS-CCA-1 | HIGH | agree, calibration | ✓ | Book expensing does not exit the CCA system; CDA limb is thin |
| OPS-CCA-2 | HIGH | agree | ✓ | Verified in the page: `YEAR(...)` formulas key to the calendar year |
| OPS-CCA-3 | HIGH | **agree, fix unsafe** | ✓ | Reg 1100(1)(b)(i) restricts the Class 13 first year to 50% anyway |
| OPS-CCA-4 | HIGH | agree | ✓ | ITA 20(1)(b) and Reg 1102(1)(a) fetched |
| OPS-CCA-5 | HIGH | agree, second instance | ✓ | ITA 6(1)(e)/(k)/6(2) fetched; `Capital-Cost-Allowance.md:326` also affected |
| OPS-CIP-1 | HIGH | agree | ✓ | ITA 18(1)(a) is necessary, not sufficient; 18(1)(b) still applies |
| OPS-INV-1 | MEDIUM | agree | ✓ | Reversing a sale must reverse the carrying amount charged to COGS |
| OPS-HST-4 | MEDIUM | agree | ✓ | ETA 156(2) fetched: "deemed to have been made for no consideration" |
| PAY-COMP-1 | HIGH | agree | ✓ | Reproduced from the table; the columns fund unequal corporate outlays |
| PAY-REM-1 | HIGH | agree | ✓ | New employer MWA < $1,000 vs established AMWA < $3,000 confirmed |
| PAY-BEN-1 | HIGH | agree | ✓ | Non-cash automobile benefit is CPP-pensionable (debt #3) |
| PAY-QM-1 | HIGH | agree | ✓ | Corroborated in-repo by `HST-Quick-Method.md:10-13` |
| DIV-PUC-1 | HIGH | agree | ✓ | ITA 84(4) fetched: the deemed dividend is the excess over the PUC reduction |
| DIV-WIND-1 | HIGH | agree | ✓ | ITA 84(2) and the s.87/s.88 continuation rules |
| PAY-RRSP-1 | MEDIUM | agree | ✓ | The page's own `:62` says room accrues on prior-year earned income |
| PAY-PUP-1 | MEDIUM | agree | ✓ | ITA 54 fetched: "used primarily for the personal use or enjoyment" |
| DIV-PAY-1 | MEDIUM | agree | ✓ | ITA 15(2) fetched: the shareholder owes the corporation, not the reverse |
| INV-CDA-1 | HIGH | agree | ✓ | ITA 184(2) 60%, 184(3) alternative, 90 days, shareholder concurrence |
| INV-S6-1 | HIGH | agree | ✓ | Sch 6 line 875 is Part 8 capital gains dividends |
| INV-FEE-1 | HIGH | agree | ✓ | Sch 6 Part 1 carries an "outlays and expenses from disposition" column |
| INV-S7-1 | HIGH | agree | ✓ | Sch 7 line 019 is expressly "net of related expenses" |
| INV-CDA-2 | MEDIUM | agree | ✓ | ITA 83(3) and 83(4) fetched: late election with estimated penalty |
| INV-LP-1 | MEDIUM | agree | ✓ | ITA 40(3.1) end-of-fiscal-period test and 40(3.15) exception fetched |
| INV-FA-1 | MEDIUM | agree | ✓ | ITA 95(1) fetched: 1% own plus 10% with related persons |
| FILE-REC-1 | HIGH | **agree, cite wrong** | ✓ | The rule is ITA s.230(5), not s.230(4.1) |
| FILE-SHORT-1 | HIGH | agree | ✓ | Canadian currency, no Ontario transitional tax debit, no s.34.2 amount |
| FILE-ABIL-1 | HIGH | agree | ✓ | ITA 111(8) non-capital loss E(c) and net capital loss C fetched |
| FILE-S44-1 | MEDIUM | agree | ✓ | Rests on the CRA T2SCH44 trigger wording (debt #3) |
| FILE-INT-1 | MEDIUM | agree | ✓ | ITA 164(5) fetched: 30 days after the latest of four listed days |
| FILE-COLL-1 | MEDIUM | agree | ✓ | ITA 225.1(7) 1/2 collection and 225.1(8) $10M related-group test fetched |
| FILE-BOOK-1 | MEDIUM | agree | ✓ | Internal-selection defect; both GIFI lines exist |
| SP-HST-1 | HIGH | agree | ✓ | ETA 148 with 127(2) fetched: a controlling person is an associate |
| SP-EI-1 | MEDIUM | agree | ✓ | EIA 152.02(7) fetched: notice within 60 days deems the agreement never made |
| T1-1 | HIGH | agree | ✓ | The page does map no boxes; the box-to-line targets rest on CRA (debt #3) |
| MAC-1 | MEDIUM | agree | ✓ | ITA 164(1) three years and 164(1.5)(a) "may" fetched |

Row count 83; severity distribution 6 / 40 / 34 / 3, reproducing the audit's tally.

## The Six Critical Findings

**`R-1` capital dividends in the taxable path — AGREE, severity generous but defensible.**
`Small-Business-Tax.md:354` ("Each flavour has its own gross-up and DTC") sits under a bullet list introduced by
"*Dividends* are paid to the owner ... Trigger a *T5* slip", and `:353` names *capital* as one of the three
flavours. A capital dividend elected under ITA s.83(2) is excluded from a resident shareholder's income and has
no T5, no gross-up and no dividend tax credit, so that bullet is wrong on its face. `Concept-Map.md:44`'s
`T5 / T2054 to shareholder` label is likewise wrong: T2054 is the corporation's election filed with CRA. The
diagram limb is the weaker half — `Small-Business-Tax.md:105` states the rule correctly two lines below the
flowchart ("The capital dividend uses the T2054 election form; no T5 is issued"), and
`Dividends/Bookkeeping-And-Slips.md:71-72` states it correctly as well. On a page cluster with correct prose
adjacent, HIGH would fit the defect; CRITICAL is defensible only because both affected pages are **signed off**,
which means a reader is entitled to rely on them. Either way the fix is the same and should be applied.

**`R-2` non-resident status as sufficient for zero-rating — AGREE, statutorily confirmed, severity generous.**
ETA Schedule VI Part V s.7(b) expressly excludes "an advisory, consulting or professional service" from the
general export zero-rating, and s.23 is the provision that covers those services, subject to four exceptions
(Canadian litigation, Canadian real property, Canadian tangible personal property, agency/arranging). The audit's
statutory reasoning is exactly right. The practical exposure is narrower than CRITICAL implies for this guide's
audience: for remote consulting supplied to a non-resident corporate client, s.23 normally does zero-rate, so
the pages reach the right answer by the wrong route.

One trap the audit did not name, and which the fix should carry: **ETA s.132(2)** deems a non-resident with a
permanent establishment in Canada to be resident "in respect of, but only in respect of, activities of the person
carried on through that establishment." A US client with a Canadian branch can therefore fail the non-residence
limb itself, before any Schedule VI analysis begins. That is the case most likely to cause actual undercollection
by an Ontario consulting CCPC, and it belongs in the corrected text.

**`SC-1` PUC as a sufficient tax-free limit — AGREE.**
ITA s.84(4) deems a dividend only to the extent the amount paid exceeds the paid-up capital reduction, and
s.53(2)(a)(ii) reduces the shareholder's share ACB by a non-dividend return of capital, with s.40(3) deeming a
gain if the reductions exceed the remaining cost. "PUC is the amount that can be returned to shareholders
tax-free" is therefore false as a universal, and it is repeated across three operational pages. CRITICAL
justified.

One coordination point: `SC-1` states s.84(4) as "a reduction/distribution exceeding the relevant paid-up
capital", while `DIV-PUC-1` states it precisely as the excess over the **PUC reduction**. Both findings are
right about their pages, but they give the same provision two different formulations and never cross-reference.
Fix them together, using `DIV-PUC-1`'s wording.

**`SU-1` transferred-asset CCA history — AGREE, and the audit understates it.**
My planning read expected this finding to be technically right but inert on the page's own worked case, since
ITA 13(7)(e)'s gain-based grind does not engage on a depreciating laptop. That was wrong, and the finding is
stronger than the audit argues. CRA's own non-arm's-length transfer guidance is direct: where you buy
depreciable property in a non-arm's-length transaction **and pay less for it than the seller paid**, your capital
cost is the amount the seller paid, and you are considered to have already deducted the difference as CCA. ITA
s.85(5) does the same for a rollover in terms I fetched verbatim — capital cost deemed to be the transferor's,
and the excess "deemed to have been deducted by the transferee under paragraph 20(1)(a) ... for taxation years
that ended before that time."

Paying less than the owner originally paid is the *normal* case for used equipment, so the page's own $900 laptop
example is squarely inside the rule. `Starting-Up.md:170-171` ("The corporation's cost starts at the transfer
price; prior personal use is irrelevant to its books") is wrong on the guide's own worked transaction, and a
reader following it under-records capital cost and understates recapture on eventual disposal. CRITICAL
justified; the fix should say the corporation needs the owner's original cost before opening the class.

**`FC-1` operating USD moved to a trading account — AGREE.**
The account an amount sits in does not determine its FX character; the source transaction and the use of the
funds do. `FX-Rates-And-Character.md:97-99` makes an earmark the operative event ("Character would flip only if
the balance were committed to a capital purpose — E.g. moved to a trading account to buy securities"), which
would defer a fully includable income-account FX gain into a later half-taxed capital gain. The finding is
internally corroborated: `Norberts-Gambit.md:128-135` correctly keeps US-client invoice proceeds on income
account through the day-0 DLR.U purchase, so the guide already contradicts itself. CRITICAL justified. The
IT-95R paragraph 4 text could not be re-pulled first-hand (debt #1), but the principle is confirmed by the
reachable summaries of paragraphs 1 to 3 and by *Shell Canada*.

**`NG-1` an ordinary capital loss on Schedule 1 — AGREE, fully confirmed against the form.**
T2 Schedule 6 routes a gain through amount P × 1/2 to amount R and Schedule 1 line 113; a **loss** goes to
amount Q and **Schedule 4 line 210**. It never produces a half-deduction on Schedule 1. The guide's
"Half of the loss is an *allowable capital loss* on Schedule 1" is wrong twice over — wrong schedule and wrong
amount — and ITA s.111(1)(b)/(1.1) confine net capital losses to the capital-gain side, so the loss cannot
reduce consulting income at all. The worked figure recomputes exactly (13,600 − 9.95 − 13,613.53 = −23.48).
CRITICAL justified.

## Findings That Must Be Corrected Before Remediation

### `OPS-CCA-3` — the suggested fix would cause a first-year over-claim

The finding says Regulation 1100(2)'s ordinary half-year rule excludes Class 13, and instructs: "Set the
ordinary half-year flag to `False` for Class 13". The attribution is right — Class 13 is not computed from UCC
at a declining-balance rate, so the 1100(2) mechanism does not reach it. But the conclusion the fix draws is
wrong. Regulation **1100(1)(b)(i)** imposes its own restriction: where the capital cost was incurred in the
taxation year and the property is not accelerated investment incentive property, the deduction is **50% of the
amount calculated under Schedule III**. A Class 13 addition is therefore halved in year one regardless.

`CCA-Tracking.md:41-43` defines the column as "The class's usual half-year treatment (`True` for most, `False`
where the class is exempt) — Applied by the software per class." Class 13 is not exempt from a first-year
halving; it reaches the same outcome by a different provision. `True` produces the correct economic result, and
flipping it to `False` would double the allowable first-year claim. If the maintainer wants the mechanisms kept
distinct, the right change is the audit's *second* suggestion only — add a separate special-first-year field and
document that Class 13's halving comes from Reg 1100(1)(b)(i), not Reg 1100(2) — while leaving the flag at
`True`. Do not apply the first sentence of the fix.

### `FILE-REC-1` — right rule, wrong provision

The finding is correct that a late-filed return extends the retention clock, and the audit's `audit/wip/`
citation log records the check as "ITA s.230(4.1) plus T4012". Section 230(4.1) reads: "Every person required by
this section to keep records who does so electronically shall retain them in an electronically readable format
for the retention period referred to in subsection 230(4)." That is a format rule, not a duration rule.

The operative provision is **ITA s.230(5)**, which requires retention "until the expiration of six years from
the day the return for that taxation year is filed" where the return was not filed as required. The guide's own
text already cites s.230(4)(b) correctly for the default clock at `CRA-Administration.md:188`, so the fix is to
add s.230(5) beside it. Left as drafted, the finding sends the remediator to a subsection that says nothing on
the point — and the playbook's rule is that whoever applies a fix re-derives it from the source.

### `R-7` and `LA-4` — repo-wide findings with incomplete file lists

**`R-7`.** The arithmetic and the transition are right (calendar-2026 blend recomputes to 11.696%). The file
list misses two live instances:

- `guide/Paying-Yourself/Salary-Vs-Dividends.md:32` — `| Corporate tax | $0 on the paid-out amount |
  ≈ 12.2% → $12,200 (see note) |`. This is a worked dollar figure in the guide's central remuneration
  comparison, on the very table the audit separately flags as `PAY-COMP-1`. Fix both in one pass.
- `guide/Investments/Capital-Vs-Income-Character.md:116` — "Do not bank the 12.2% rate without advice".

Both pages also carry TODOs asking the maintainer to settle mid-year rate quoting
(`Salary-Vs-Dividends.md:128`, `Incorporation-Vs-Sole-Proprietorship.md:168`), which is the decision `R-7`
should be resolving repo-wide.

**`LA-4`.** The RC4088 semantics are right: 1001 is cash and cash instruments, 1002 is "Deposits in Canadian
banks and institutions — Canadian currency", and a corporate chequing balance is the latter. But the finding
names only `Ledger-And-Accounts.md` and `Period-Close.md`, and its fix says "use 1002 for the main CAD operating
bank account throughout the worked set and Period Close". The repository is split much more widely than that —
see `NEW-1`. Applying the fix as scoped corrects two files and leaves eleven others posting bank cash to 1001,
which is a worse state than the current uniform-within-cluster split.

### `R-10` — the Inventory limb does not survive

The T5008 limb is sound: `T5008.md:98` reads "Translate the proceeds at the trade-date rate (a settlement-date
rate is also defensible)", which offers an interchangeable date basis against the repository's load-bearing
trade-date convention. Remove that parenthetical.

The Inventory limb does not hold. The flagged sentence is `Inventory-And-COGS.md:180`: "Some bookkeepers use the
corp's bank's actual settlement rate, which is acceptable if applied consistently" — and it sits under
"Bank of Canada daily rates are the conventional source". It is a statement about which *rate source* is
acceptable, not about substituting settlement date for trade date, and an own-bank rate is an accepted source.
More decisively, the page already does what the fix demands: `:189-195` books the FX gain or loss on payable
settlement to its own P&L line, "not an adjustment to inventory cost", with the stated reason that "the landed
cost is fixed at the trade-date rate". Dropping this limb narrows `R-10` to a single-sentence T5008 fix, and the
HIGH rating should follow it down.

## Severity and Framing Calibrations

None of these changes a verdict; each affects how the finding should be worded when it lands.

- **`R-4`** — the headline "A book materiality policy is *allowed to determine* tax character" misrepresents four
  of the nine cited locations, which say the opposite in as many words: `Expense-Classification.md:50` ("a
  bookkeeping policy applied consistently, not a statutory threshold"), `Cost-Recovery.md:201` ("CRA sets no
  dollar threshold"), `Capital-Cost-Allowance.md:343-345` ("The Income Tax Act sets no dollar threshold"), and
  `Small-Business-Tax.md:184` ("the corporation's own policy, not a CRA rule"). The genuine defects are narrower
  and both real: `Concept-Map.md:134`'s absolute "Every purchase eventually becomes a tax deduction" (false for
  land, shares, and denied outlays), and the absence anywhere of the Schedule 1 bridge when book and tax
  diverge. Keep HIGH for the missing bridge; reframe the headline so the fix does not delete correct text.
- **`OPS-CCA-1`** — correct that book expensing does not remove property from the tax CCA system. The CDA limb
  is thin: recapture is ordinary income, so "proceeds are simply income" is right up to original cost, and the
  capital-gain-above-cost case is rare for the equipment the page describes. The finding's weight is the
  Schedule 8 tracking obligation, not the T2/CDA consequence.
- **`EF-1`** — the designated-person limb is exactly right (ITA s.74.5(5) covers the spouse or common-law
  partner and a person under 18 not at arm's length or a niece/nephew; a trust reaches the rules through
  s.74.5(9), not by being a designated person). The deemed-interest-base limb overstates: `Estate-Freeze.md:172`
  already says "The deemed amount is reduced by dividends actually paid out."
- **`GL-1`** — correct, but the audit's own restatement of the long-stop is loose. The statute is "immediately
  after the beginning of the first taxation year of the taxpayer that begins more than 357 days after **the end
  of the taxation year** in which the property was acquired", not 357 days after acquisition. Use the statutory
  wording in the fix.
- **`OV-2`** — the style guide does not "expressly reject rhetorical *What ...* headings"; its examples are
  `Why X matters`, `Understanding Y`, `What you need to know about Z`, and the operative rule at
  `docs/Style-Guide.md:133` is "Name the subject, don't gesture at it". The finding lands, but on that rule.

## Fixes That Ask for Work the Guide Has Already Done

- **`GP-1`** asks for "an unbilled/accrued-revenue branch for services rendered before billing". One exists, in
  full, at `HST-Bookkeeping.md:37-71`: the year-end straddle section, the accrual entry to
  `Accrued/unbilled receivable` (GIFI 1480), the January reclassification, and the reason `HST collected` stays
  in the later period. The correct fix is to qualify the categorical opening on
  `Getting-Paid-In-USD.md:7-9` and link that section, adding only the FX translation of the accrual. The audit's
  content note 2 ("no dependable contract-revenue workflow exists") should be narrowed the same way — the gap is
  contractual entitlement, milestones and retainers, not the unbilled-receivable mechanic.
- **`CS-1`** asks to move "appoint or validly waive the auditor" into the shareholder list. It is already there:
  `Corporate-Structure.md:131` reads "A unanimous resolution dispensing with the appointment of an auditor". The
  live defects are the other two bullets — approving the financial statements (CBCA s.158, directors) and
  appointing officers (CBCA s.121, directors).
- **`R-2`**'s fix should not simply add conditions to `Foreign-Currency.md:22-23`; that page already cites
  Schedule VI Part V. Point it at s.23 specifically, since s.7(b) excludes the very service being invoiced.

## Net-New Findings

Coded for remediation alongside the audit's 83.

### [HIGH] NEW-1 The guide runs two incompatible conventions for the operating bank account

**Files**: `guide/Bookkeeping/Ledger-And-Accounts.md:222,237,242` (and the `1001` posting at `:178`);
`guide/Bookkeeping/Period-Close.md`; `guide/Corporate-Lifecycle/Starting-Up.md:119`;
`guide/Filing-And-CRA/Losses.md:133`; `guide/Operations/Debt-And-Financing.md:54,55,65`;
`guide/Operations/Deferred-Revenue.md:81`; `guide/Operations/Government-Assistance.md`;
`guide/Operations/Receivables-And-Bad-Debts.md:48,124,157`; `guide/Overview/Small-Business-Tax.md`;
`guide/Paying-Yourself/Dividends/Bookkeeping-And-Slips.md:38,59`;
`guide/Paying-Yourself/Dividends/Dividends-Examples.md`;
`guide/Paying-Yourself/Owner-Corporation-Transactions.md:110,177,295,428`;
`guide/Paying-Yourself/Payroll.md:148,155` — versus
`guide/Bookkeeping/Foreign-Currency/Bookkeeping-Convention.md:135-136`,
`guide/Bookkeeping/Foreign-Currency/Bank-Conversions.md:28,40,46`,
`guide/Bookkeeping/Foreign-Currency/Getting-Paid-In-USD.md:36`,
`guide/Bookkeeping/Foreign-Currency/Norberts-Gambit.md:115`,
`guide/Bookkeeping/Foreign-Currency/Year-End-USD-Deposit.md:34`, and the Investments cluster
(`T3.md:89`, `T3-Box-26-Other-Income.md:175`, `T5.md`, `T5008.md:56`, `T5013.md:78`).

**Quoted text**: "`1001` Cash is the main operating chequing account" (`Ledger-And-Accounts.md:237`) versus
"`Deposits` | 1002-1 | CAD | Deposits in Canadian banks - Canadian currency"
(`Bookkeeping-Convention.md:135`).

**Explanation**: thirteen pages post the corporation's bank cash to `1001`; fourteen pages — including the two
convention-defining account trees and the signed-off `T3.md`, `T3-Box-26-Other-Income.md` and `T5008.md` — post
it to `1002-1` or `1002-2`. `Ledger-And-Accounts.md` straddles both, asserting 1001 at `:237` and conceding at
`:242` that a chequing balance is "equally codeable to `1002`". RC4088 makes 1002 the specific line for a
Canadian-bank deposit in Canadian currency and reserves 1001 for cash and cash instruments, and the audit
playbook directs GIFI verification at `T3.md` as the hand-written convention page — which uses `1002-1`. This is
the same defect the audit isolates as `LA-4`, but `LA-4`'s two-file scope and its "throughout the worked set and
Period Close" fix would convert a clean cluster split into a scattered one.

**Primary source**: CRA RC4088, items 1001 to 1003; repository convention pages
`guide/Investments/T3/T3.md:89-90` and `guide/Bookkeeping/Foreign-Currency/Bookkeeping-Convention.md:135-136`.

**Suggested fix**: settle the convention once at `1002-1` for the CAD operating account, `1002-2` for brokerage
cash, `1003` for USD, and `1001` for petty cash and cash instruments only; then sweep all thirteen `1001` pages
in the same commit as `LA-4`. Re-verify each affected signed-off page under the playbook's re-sign-off rule.

### [MEDIUM] NEW-2 `8250` is labelled "Bad debt recoveries" where RC4088 names it "Expense recoveries"

**Files**: `guide/Bookkeeping/Ledger-And-Accounts.md:288`;
`guide/Operations/Receivables-And-Bad-Debts.md:116,125`.

**Quoted text**: "| Bad debt recoveries | `8250` | collections on debts written off in a prior year |".

**Explanation**: two independent readings of the RC4088 listing give 8248 as "Insurance recoveries", 8249 as
life-insurance proceeds on the death of insured executives, and **8250 as "Expense recoveries"**; RC4088 appears
to carry no line named for bad-debt recoveries. Mapping a recovered bad debt to 8250 is defensible on the
substance — the corporation is recovering a previously expensed amount — but the guide presents "Bad debt
recoveries" as if it were the GIFI line name, inside a table whose other rows use RC4088's own names. Under the
repository's sub-code convention the honest form is `Expense recoveries` (8250) with a `-N` ledger sub-account.

**Verification status**: PLAUSIBLE, not confirmed. `canada.ca` is 403-walled and the RC4088 mirror PDFs would
not parse in this session, so this rests on the search index rather than a first-hand read of the guide. Route it
through the deferred-verify gate before editing.

**Suggested fix**: confirm 8250's official description in RC4088, then either rename the account to RC4088's
term with a sub-code, or move the recovery to `Other revenue` (8230) — and state which, once, on
`Ledger-And-Accounts.md`.

### [MEDIUM] NEW-3 The HST portion is excluded from the doubtful-debt reserve but included in the write-off

**File**: `guide/Operations/Receivables-And-Bad-Debts.md:60-61` and `:89-90`.

**Quoted text**: "The invoice's HST portion was never income — So the supportable reserve is the net-of-HST
share of the doubtful balance"; then "Under the Quick Method the s.231 line is unavailable for a quick-method
supply. The full $5,650 is then `Bad debt expense`."

**Explanation**: the page applies "HST collected was never income" to the s.20(1)(l) reserve base and then
writes off the full tax-included $5,650 under the Quick Method without explaining why the same reasoning stops
applying. The full write-off is economically right — the corporation remitted 8.8% of the tax-included amount in
cash and recognised the kept spread as revenue, so the net position ties — but a reader following the page sees
two opposite treatments of the same HST dollars two sections apart. The page's TODO flags the reserve side only.

**Primary sources**: ITA [s.20(1)(l)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html) and
[s.20(1)(p)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-20.html); Streamlined Accounting (GST/HST)
Regulations [s.17(1)](https://laws-lois.justice.gc.ca/eng/regulations/SOR-91-51/section-17.html).

**Suggested fix**: show the Quick Method arithmetic once — revenue $5,000 plus the kept spread, remittance paid
in cash, total deduction $5,650 — so the reader can see why the tax-included write-off is right there and the
net-of-HST base is right for the reserve.

### [MEDIUM] NEW-4 The unsettled T4A box 048 rule is stated flatly on a page the audit gates elsewhere

**File**: `guide/Sole-Proprietorship/Becoming-A-Sole-Proprietor.md:14`.

**Quoted text**: "A client paying you more than $500 of fees in a year reports it on a T4A (box 048); nothing is
withheld from it".

**Explanation**: the audit's content note 11 tells the maintainer not to promote `Paying-Contractors.md` "until
the T4A incorporated-provider/Box 048 rule is settled". The same rule is asserted without qualification on this
page, which the audit did not open. Whatever the maintainer concludes about box 048, the two pages must say the
same thing, and the gate should cover both.

**Suggested fix**: hold both pages behind one decision; when it lands, state the rule and CRA's administrative
position on box 048 once, on `Paying-Contractors.md`, and have the sole-proprietor page link it.

## Coverage: The 25 Pages With No Finding

The audit cites 63 of the 88 guide pages. The remaining 25 were swept for this review. Eight are hub/index pages
where nothing was expected. The substantive ones read clean, and the audit's silence on them is defensible:

- **`HST-Quick-Method.md`** — checked closely because it is this guide's canonical reader's actual regime. The
  $400,000 threshold, the exclusion base, the SOR/91-51 s.16(1) 365-day condition, the ETA s.227(2) annual-filer
  deadline, the 8.8% Ontario services rate, the 1% credit on the first $30,000, and the ITA s.9 treatment of the
  kept spread all check out. `:11-13` states the surviving capital-purchase ITC correctly, which is what makes
  `SBT-5` and `PAY-QM-1` cross-page inconsistencies rather than isolated errors.
- **`HST-Bookkeeping.md`** — ETA s.152(1)(a)/(b) tax point, the s.159 FX conversion date, and the year-end
  straddle accrual are all sound. This page holds the accrual branch `GP-1`'s fix asks for.
- **`Deferred-Revenue.md`** — ITA s.12(1)(a) inclusion with the s.20(1)(m) reserve, s.12(1)(e) add-back, ETA
  s.168(1)/(9) deposit carve-out, and GIFI 2770/3220 are all correct.
- **`Receivables-And-Bad-Debts.md`** — ITA s.20(1)(l)/(p)/12(1)(d)/12(1)(i) and ETA s.231/s.232 windows are
  correct; the 2026-07-04 `RBD-1` Quick Method correction held. Two items above (`NEW-2`, `NEW-3`).
- **`Government-Assistance.md`** — ITA s.12(1)(x), s.13(7.1), s.53(2)(k) and GIFI 8242 all correct.
- **`Debt-And-Financing.md`** — ITA s.20(1)(c)/(e)/(e.1) and s.78 correct.
- **`Materials-And-CIP.md`** — ITA s.13(26) available-for-use gate correct; the ETA s.199(3)/s.200(2)
  cross-reference is correctly labelled as ETA, not ITA.
- **`Whole-Dollar-Rounding.md`** — ITA s.117.1(3) is used as an explicit analogy for round-half-up, not as
  authority for whole-dollar filing, and the citation entry says so.
- **`TFSA-And-RRSP-Contributions.md`** — the $109,000 cumulative TFSA figure recomputes exactly for 2009–2026.
- **`Donation-And-Medical-Credits.md`** — the 15% → 14.5% (2025) → 14% (2026) lowest-rate sequence is right.
- **`Capital-Vs-Income-Character.md`** — the 2026-07-04 `CIC-1` inversion is fixed. Carries an `R-7` instance.
- **`Bookkeeping-And-Slips.md`** — states the capital-dividend/T5 rule correctly, which is the in-repo
  corroboration for `R-1`.
- **`Adjusted-Cost-Base.md`, `Adjusted-Cost-Base-Tracking.md`, `T3.md`, `T3-Box-26-Other-Income.md`** — signed
  off and heavily worked in prior cycles; sampled without a retained finding.

## Defects in the Audit Document Itself

- **Four different per-finding formats.** Overview and Corporate Lifecycle use bold-label paragraphs
  (`**Files**:` / `**Quoted text**:`); Bookkeeping uses bare bullets with no labels and unbolded "Primary
  sources:" / "Suggested fix:" lines; Operations through Sole Proprietorship use `- **File:**` bullets; Personal
  Tax uses `**File**:` with blockquotes. The section boundaries match the nine cluster checkpoints in
  `audit/wip/`, so the deliverable is a concatenation that was never normalised. The playbook's finding shape is
  one shape.
- **Mixed heading levels.** `## Severity Legend`, `## TL;DR`, `## Disposition of Prior Audits` and
  `## Repo-Wide Findings` are H2; `# Page-by-Page Findings`, `# Content Notes Beyond the Findings`,
  `# What Was NOT Flagged` and `# Status of WIP / Pending-Review Pages` are H1. The file therefore carries five
  H1s, against the style guide's one-per-file rule.
- **The dropped-candidate record never made the deliverable.** The playbook requires candidates that were
  checked and deliberately dropped to be recorded "so the next pass doesn't re-litigate them", and
  `audit/wip/findings.md` says they "will be consolidated in the deliverable". They were not. `audit/wip/`
  holds at least three by name — the ITA s.110.6(14)(f) QSBC relief on incorporating a proprietorship, the
  tentative 15% T5 Box 16 cap (dropped because it applies to individuals), and the retrospective-dividend-wording
  candidate at `Small-Business-Tax.md:362-364`. The delivered *What Was NOT Flagged* is thematic prose that names
  none of them. The QSBC one in particular has already cost a prior cycle a wrong turn.
- **Retired per-page codes are untraceable.** The gaps in the numbering (`SBT-1`, `SBT-2`, `SBT-4`, `CM-1`,
  `CM-2`, `FC-2`, `BA-2`, `LA-1`–`LA-3`) are benign — the checkpoints show they were consolidated into `R-1`,
  `R-2`, `R-5`, `R-3`, `R-4` and the `R-2` hub limb, exactly as the TL;DR describes. But the deliverable never
  maps them, so a reader cannot follow a cluster finding to its repo-wide successor.
- **Five paraphrases presented as quotations**: `R-6` ("generally due at three months"; `Starting-Up.md:174`
  actually says "the balance (if any) is due at 3 months" — unconditional, so the real defect is worse than
  quoted), `R-10` ("actual settlement rate is acceptable"), `CS-1` ("Electing directors and appointing officers"
  for "Electing the director(s) and appointing the officer(s) for the coming year"), `EF-1` ("a spouse" for "the
  freezor's spouse"), and `SC-2` ("that class's" for "the class's"). None changes a verdict.
- **One uncited second instance**: `OPS-CCA-5` cites `Capital-Cost-Allowance.md:394-397`, but `:326` carries the
  same personal-use-share shorthand ("The personal-use portion is a shareholder benefit (s.15) or not
  capitalized").
- **`AGENTS.md:35` is stale** — it still describes `guide/Filing-And-CRA/Payment/Payment.md` as "a stub for the
  corporate-tax payment workflow", while the file carries `STATUS: AI GENERATED, REVIEW IN PROGRESS` and README
  shows no stub annotation. Outside the audit's declared scope, but it is the kind of index-versus-reality drift
  the pass exists to catch.

Everything else in the skeleton checks out: the nine required sections are present in order, the severity legend
is verbatim, the *Disposition of Prior Audits* table is accurate (prior `FR-2` does exist as a 2026-07-04 MEDIUM
about the s.218.1 attribution, and reopening it as `R-9` for the *mechanism* rather than the citation is
legitimate), and the regression baseline claims reproduce.

## Residual Verification Debt

Not one of these undercuts a finding; each is a claim I could not pull first-hand.

1. **`canada.ca` 403 wall.** Archived IT-95R paragraph 4 (`FC-1`) and paragraphs 7 to 9 (`FXR-1`), folio
   S5-F4-C1 paragraphs 1.3–1.8 (`FXR-1`), folio S1-F3-C2 paragraphs 2.57–2.60 (`R-8`), folio S3-F2-C1
   (`INV-CDA-1`, `INV-CDA-2`), RC4088 line descriptions (`LA-4`, `NEW-2`, `FILE-BOOK-1`), RC4058 (`SBT-5`,
   `PAY-QM-1`), T4130/T4001 (`PAY-BEN-1`), T2SCH44 (`FILE-S44-1`), T4/T5 box-to-line guidance (`T1-1`), and
   Regulation 2101 (`R-1`). Each was resolved through the search index or a reachable secondary source and each
   is consistent with the finding; a signed-in CRA session would make them airtight.
2. **Regulation 1100 HTML truncation.** The `laws-lois` section page for Reg 1100 truncates at subsection (2.1)
   — the same wall the 2026-07-06 review hit at subsection (3). Reg 1100(11)/(12)/(13) (`OPS-RENT-1`) were
   confirmed from CRA's interpretation corpus rather than the consolidated text, and Reg 1100(1)(b)(i)
   (`OPS-CCA-3`, and the basis for rejecting its fix) likewise. Pull the consolidated Regulations XML before
   editing the CCA pages.
3. **`NEW-2` is PLAUSIBLE, not confirmed.** RC4088's official description for 8250 rests on the search index
   only. Treat it as a deferred-verify item.
4. **T2 form internals.** The Schedule 6 amount Q/R routing, line 875, the Part 1 outlays column and Schedule 7
   line 019 were all confirmed from CRA/DT-Max/T4012 material, but the *software* flow (`INV-S6-1`'s "confirm
   the software flow from Part 8", `INV-S7-1`'s worksheet derivation of lines 032/082) still wants one live
   FutureTax check before the Investments pages are edited.

## Recommendation

**Accept the audit and proceed to fixes**, with the four corrections in *Findings That Must Be Corrected* applied
first. Suggested sequencing:

1. **The six CRITICAL findings**, grouped so each shared defect is swept once: `R-1` with the
   `Bookkeeping-And-Slips.md:71-72` wording as the model; `SC-1` together with `DIV-PUC-1`, using `DIV-PUC-1`'s
   statement of s.84(4); `SU-1` with the transferor's original cost added to the transfer checklist; `FC-1`
   across all three Foreign-Currency pages plus their year-end examples; `NG-1` with the Schedule 6 → Schedule 4
   routing; `R-2` with ETA s.132(2) added.
2. **The two GIFI convention items together** — `LA-4` and `NEW-1` in one commit, or neither. A partial sweep is
   worse than the status quo. Both touch signed-off pages, so this needs maintainer-driven evidence and
   re-sign-off.
3. **The remaining HIGH tier**, holding `OPS-CCA-3` to its second suggestion only and rewriting `FILE-REC-1`
   against ITA s.230(5).
4. **MEDIUM and LOW as a routine cleanup pass**, with `R-4`'s headline reframed so the fix does not delete the
   four correct statements the finding cites as evidence against itself.

Two process asks for the next cycle: carry the `audit/wip/` dropped-candidate list into *What Was NOT Flagged*
by name, and normalise the per-finding format before the clusters are concatenated.
