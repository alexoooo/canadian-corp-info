# Documentation Audit — Follow-up

**Date**: 2026-05-29
**Scope**: Verify that the fixes for every finding in the 2026-05-28 audit at
[2026-05-28_Audit_Opus-4.8-xhigh.md](2026-05-28_Audit_Opus-4.8-xhigh.md) landed correctly in the
current source, and independently re-verify the load-bearing factual claims behind those fixes
(legislation, ITA/ETA sections, Regulations, GIFI codes, 2026 dollar limits) against primary
sources rather than trusting the prior pass. This is a targeted resolution-and-verification
follow-up, not a fresh full-content read.
**Method**: The 2026-05-28 audit and its fixes landed in a single commit (`6b0afb5`); `HEAD` is
clean, so the committed diff is the current source. Each finding was traced to its line(s).
Repo-wide greps confirmed no stale instances survive anywhere (`\[done]`/`\[meh]` markers,
`S4-F8-C1`, GIFI `1770/1780/1880/1740`, `s.84(4.1)`, `Memorandum 14`, the `$30`/`$150` ITC bands,
the `settlement-date` ACB phrasing, Reg 1801 mis-attributions). Every CRITICAL/HIGH/MEDIUM factual
claim was re-checked against the live primary source: the Finance Canada / Parliament Bill C-15
record, laws-lois.justice.gc.ca (ITA, ETA, C.R.C. c. 945), RC4088 (GIFI), and the Finance 2026
automobile-deduction-limit notice.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

- **17 of the 18 findings** from the 2026-05-28 audit are resolved in the current source, including
  the **CRITICAL** AIIP reinstatement (CCA-1) and the **HIGH** ITC documentary-threshold fix (HST-1).
  The exception is **R-1**, which was a mis-finding: the `\[done]` / `\[meh]` heading tags it stripped
  are the maintainer's intentional progress annotations and have been restored (see O-4).
- Every load-bearing factual claim behind the fixes was independently re-verified against primary
  sources and held up — the Bill C-15 legislative facts, all four ITA/ETA section re-attributions
  (s.84, s.10(2.1), s.185.1, s.13(2)), the corrected GIFI codes, and the 2026 vehicle caps.
- The other fixes are complete: repo-wide greps find no stale folios, codes, sections, or
  thresholds left behind on any page, and the new cross-reference anchors resolve.
- Two fixes correctly went **beyond** their finding: the s.185.1(2) "election unavailable when the
  30% rate applies" sentence, and the optional `Adjusted-Cost-Base.md` superficial-loss chain
  (s.40(2)(g)(i) denial, s.53(1)(f) ACB add-back). Both are accurate.
- **No CRITICAL or HIGH new issues.** Four observations about the 2026-05-28 audit itself (R-1
  wrongly flagged intentional heading tags as scaffolding; a TL;DR miscount; one citation suggestion
  the maintainer correctly overrode; one loose GIFI gloss) and a few currency/content notes are
  recorded below.

---

## Disposition of the 2026-05-28 findings

| Finding | Sev | Status | Verified against |
|---|---|---|---|
| **CCA-1** AIIP under superseded phase-out | CRITICAL | resolved — `Capital-Cost-Allowance.md:11/:118-125` and `Glossary.md:11` rewritten to the reinstated rules; worked examples (`:275-277`, `:324-325`) now show the enhanced deduction | Bill C-15 (Budget 2025 Implementation Act, No. 1), Royal Assent **2026-03-26**; AIIP + immediate expensing reinstated for property acquired ≥2025-01-01, available for use before 2030; 3× (half-year classes) / 1.5× (non-half-year) enhancement; phase-out 2030–2033 — confirmed against Finance Canada, Parliament of Canada, EY/PwC alerts |
| **CCA-2** Four wrong GIFI fixed-asset codes | MEDIUM | resolved — `1770→1774`, `1740→1742`, `1780→1787`, `1880-series→2010/2012` in `Capital-Cost-Allowance.md`, `Cost-Recovery.md:153`, and `HST.md:324` | RC4088: 1770 = *Small tools*, 1774 = *Computer equipment/software*, 1742 = *Motor vehicles*, 1787 = *Machinery, equipment, furniture and fixtures*, 2010 = *Intangible assets*. No stale code remains anywhere |
| **CCA-3** Class 13 half-year contradiction | MEDIUM | resolved — `:56` now states Class 13 is exempt from the Reg 1100(2) rule, with the Schedule III / para 1100(1)(b) first-year limit noted; aligns with `:116` and `Glossary.md` | consistent across the page and Glossary |
| **CCA-4** s.13(2) imprecision; DIEP proration | LOW | resolved — `:398` reworded; DIEP `:126/:200` now scope the removal to the deduction-level proration, noting the $1.5M limit still prorates under Reg 1104(3.5)(b) | ITA s.13(2) is precisely the no-recapture rule for a Class 10.1 passenger vehicle — see observation O-2 |
| **HST-1** ITC documentary thresholds outdated | HIGH | resolved — `:158-160` and Citations `:455` now use `$100 / $500` bands | Budget 2021 raised them effective 2021-04-20 (Input Tax Credit Information (GST/HST) Regulations, s.3) |
| **HST-2** Capital-property ITC proration | MEDIUM | resolved — `:166` rewritten to the s.199 all-or-nothing >50% test; s.199 added to Citations | ETA s.199 governs a corporation's capital personal property; 10–90% is the capital-real-property pattern |
| **HST-3** Memorandum 14 mismatch | LOW | resolved — citation and its TODO removed | — |
| **CR-1** Wrong folio S4-F8-C1 (three pages) | MEDIUM | resolved — removed from `Cost-Recovery.md`, `Inventory.md` (×2), `Materials-And-CIP.md`; IT-92R2 retained | S4-F8-C1 = *Business Investment Losses* (unrelated); grep finds zero references |
| **CR-2** CCA folio defines inventory FMV | MEDIUM | resolved — `Inventory.md:78` drops S3-F4-C1, points to archived IT-473R | — |
| **CR-3** Reg 1801 vs ITA s.10(2.1) | MEDIUM | resolved — method-change approval re-attributed to s.10(2.1)/s.10(2) at `:23/:84/:395/:425`; Reg 1801 kept for FMV valuation | ITA s.10(2.1) requires the Minister's concurrence; Reg 1801 permits valuing all inventory at FMV (C.R.C. c. 945) |
| **FC-1** Self-contradictory FX-date sentence | MEDIUM | resolved — `Foreign-Currency.md:229` rewritten to **trade-date**, with TI 2015-0588981C6 noted as the persuasive settlement-date alternative | matches the worked example and the guide-wide trade-date convention |
| **SD-1** Part III.1 30% trigger | MEDIUM | resolved — `:411` rewritten: 20% under s.185.1(1)(a), +10% under (1)(b) tied to para (c) of the s.89(1) EEDD definition (GRIP/LRIP manipulation); election unavailable when the 30% applies | ITA s.185.1(1)/(2) confirmed verbatim, including the (1)(b)→election-unavailable link |
| **SD-2** PUC reduction cites public-corp rule | MEDIUM | resolved — `s.84(4.1)→s.84(4)` at `:51/:612/:623` | ITA s.84(4) = private corporation, s.84(4.1) = public corporation |
| **EN-1** T2 form-location numbers | LOW | resolved (interim) — hedge sentence added at `ERDTOH-NERDTOH.md:130` | the page/line/box numbers themselves still want a maintainer spot-check against current forms; the hedge is the right interim move |
| **R-1** `\[done]` / `\[meh]` "authoring markers" | MEDIUM | **reverted — mis-finding.** These are the maintainer's intentional heading status tags, not scaffolding; restored on all 7 headings across `Cost-Recovery.md`, `Inventory.md`, `Materials-And-CIP.md`. AGENTS.md now carves out an explicit exception to the noun-phrase rule | — (see O-4) |
| **R-2** Ontario 2026 budget flag on one page | LOW | resolved — forward-reference added to `Small-Business-Tax-Overview.md:211` and `Tax-Integration.md:72`, both linking `#worked-examples` | anchor resolves (`Shareholder-Dividends.md:445`); rates correct as of this date |
| **Glossary AIIP** (tied to CCA-1) | LOW | resolved — `Glossary.md:11` updated to the reinstated rules | as CCA-1 |
| **GL-1** Glossary missing-link intro | LOW | resolved — intro softened to "where one exists"; links added to AII, Gross-up, ITC, PUC | LCGE/QSBC correctly left unlinked (no canonical page exists); the softened intro covers them |

---

## Independent verification detail

Confirmed against primary sources (the prior audit's claims all held up):

- **Bill C-15 / AIIP (CCA-1)** — Royal Assent 2026-03-26. The reinstated incentive applies to
  property acquired on or after 2025-01-01 and available for use before 2030, giving three times
  the first-year deduction for half-year-rule classes and one-and-a-half times for non-half-year
  classes, with a 2030–2033 phase-out. The repo's narrative, Glossary entry, and both worked
  examples ($4,000 × 1.5 × 55% = $3,300, closing UCC $700; $1,800 × 1.5 × 20% = $540, closing UCC
  $1,260) match.
- **ITA s.84(4) / s.84(4.1) (SD-2)** — s.84(4) opens on a "corporation resident in Canada"
  (the private-corporation rule); s.84(4.1) opens on "a public corporation". The swap is correct.
- **ITA s.10(2)/(2.1) and Reg 1801 (CR-3)** — s.10(2.1) requires "the concurrence of the Minister"
  to change valuation method; Reg 1801 permits valuing all inventory property at fair market value.
  Both now sit on the right rule.
- **ITA s.185.1 (SD-1)** — 20% under (1)(a); an additional 10% under (1)(b) triggered by paragraph
  (c) of the s.89(1) "excessive eligible dividend designation" definition; the (2) election is
  available only for an excess "not described in paragraph (1)(b)". The fix states all three.
- **ITA s.13(2) (CCA-4)** — is the provision that prevents recapture inclusion on a Class 10.1
  passenger vehicle. The fix's narrowed gloss ("no recapture on a Class 10.1 passenger vehicle")
  is the correct use of the citation.
- **GIFI codes (CCA-2)** — 1770/1774/1742/1787/2010 confirmed against RC4088 listings.
- **2026 dollar limits** — the audit certified the Class 10.1 cap at $39,000 (up from $38,000) and
  the Class 54 ZEV cap at $61,000; both confirmed against the Finance Canada 2026
  automobile-deduction-limit announcement.

---

## Observations on the 2026-05-28 audit

The audit was strong and well-calibrated: the AIIP reversal was rightly the single CRITICAL, the
"What was NOT flagged" section showed real verification discipline, and every claim re-checked here
survived. Its one substantive miss is R-1 (O-4 below); three lesser points follow:

### [LOW] O-1 The TL;DR undercounts the MEDIUM findings

The TL;DR says "Nine MEDIUM" and enumerates nine, but the body carries **ten** MEDIUM findings:
**HST-2** (capital-property ITC proration) is absent from the TL;DR list. The finding itself was
raised in full and resolved; only the headline count is off.

### O-2 CCA-4 — the maintainer's fix is more correct than the audit's suggestion

The audit called the `s.13(2)` citation "imprecise" and suggested replacing it with s.20(16.1) /
Reg 1100(2.5). But s.13(2) *is* the no-recapture rule for a Class 10.1 passenger vehicle. The fix
kept s.13(2) and narrowed its gloss rather than dropping it — the better call. Recorded so the
audit's recommendation here is not treated as the stronger one in a future pass.

### [LOW] O-3 GIFI 1787 vs 1900 is still slightly loose

The official description of 1787 is "Machinery, equipment, furniture **and fixtures**", so
machinery and equipment arguably belong in 1787, yet the repo routes "Machinery and equipment" to
1900 ("Other tangible capital assets"). The audit waved this through as "loose but acceptable"; it
is the one GIFI mapping that is not pinpoint. Not load-bearing for an owner-managed CCPC.

### O-4 R-1 was a mis-finding — it stripped the maintainer's intentional heading tags

R-1 treated the trailing `\[done]` / `\[meh]` tags on the Cost-Recovery cluster headings as authoring
scaffolding and removed all seven, and this follow-up initially endorsed that as "resolved". Both
were wrong: the maintainer uses these bracketed tags as a deliberate progress-tracking system. The
tags have been restored on all seven headings, and `AGENTS.md` now records an explicit exception to
the noun-phrase heading rule so they are not stripped again. The general lesson: a marker that looks
like scaffolding may be load-bearing to the author — leave author annotations in place unless the
maintainer says otherwise.

---

## Content notes beyond the findings

- **Naming currency on the reinstated incentive**: tax software now brands the reinstated measure
  *RIIP — Reaccelerated Investment Incentive Property*, and Budget 2025 wraps related measures under
  a *Productivity Super-Deduction*. The repo's continued use of "AIIP" is accurate (it remains
  CRA's page title), but a one-line "also called RIIP" note would help a reader cross-referencing
  recent software or commentary.
- **AIIP summary bullet**: `Capital-Cost-Allowance.md:11` hard-stops at "available for use before
  2030" and omits the 2030–2033 phase-out tail that the detail section covers. Fine as a summary,
  but a skimmer could read 2030 as a hard end date.
- **Biggest open content gap** (named in the prior audit's backlog, worth underlining): the
  salary-vs-dividend / payroll-T4 side. The integration story is half-told while the salary lever is
  out of scope on every page; it is the highest-value net-new topic.
- **Verification debt, correctly deferred**: the T2 form-layout numbers (Page 7 / line 784 / S3 Box
  450/500) and GST34 line numbers got hedges but not confirmation. These drift between form releases
  and are the items most likely to silently rot.

---

## What was NOT re-flagged this pass

For traceability:

- All eight signed-off Topics pages were left as the prior audit found them — clean; no regression
  introduced by the fix commit.
- The fixes did not introduce new broken links or anchors; every internal `[..](..md)` reference and
  the new `#worked-examples` cross-links resolve.
- The arithmetic in the rewritten CCA worked examples ties out (verified above); no new numeric
  error was introduced alongside the AIIP rewrite.
- The Google Sheets ACB-tracker URL (`Adjusted-Cost-Base-Tracking.md:49`) again redirects to a
  sign-in page when fetched headlessly; verify manually in a logged-in browser, as prior audits
  noted.

---

## Status of WIP / pending-review pages

- **Pending review (AI generated)**: `Cost-Recovery.md`, `Inventory.md`, `Capital-Cost-Allowance.md`,
  `Materials-And-CIP.md`, `Foreign-Currency.md`, `HST.md`, `ERDTOH-NERDTOH.md`,
  `Shareholder-Dividends.md`, `Glossary.md`. With this follow-up, every CRITICAL/HIGH/MEDIUM finding
  from the 2026-05-28 audit is cleared; the residual items before sign-off are the maintainer
  spot-checks called out under EN-1 and the content notes above, not content errors.
- **Work in progress**: `Payment.md` — still a stub; the "HST" and "Payroll remittance" sections are
  headings only. Unchanged and consistent with its marker.
