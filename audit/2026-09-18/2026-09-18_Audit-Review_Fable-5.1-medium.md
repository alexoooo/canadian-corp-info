# Audit Review

**Date**: 2026-09-18

**Scope**: Independent review of `audit/2026-09-18/2026-09-18_Audit_gpt-6-astra-medium.md` (21 CRITICAL / 20 HIGH /
15 MEDIUM / 0 LOW = 56 findings). Not a fix-verification follow-up: no remediation has landed and the cycle folder
holds the audit alone. The questions are whether the findings are right, whether the quotes are faithful, whether
the statutory attributions are sound, whether the *suggested fixes* are safe to apply, and whether the severities
fit the legend. Run by a different model than the one that produced the audit.

**Method**: Every quoted passage was located by script against the working tree rather than trusted by line number
(`audit/wip/review/quotecheck.py`), and the surrounding context of each cited passage was then read. Twenty-one
groups of ITA provisions were pulled as raw HTML from `laws-lois.justice.gc.ca` by one side agent (no summariser in
the path; extracts checkpointed to `audit/wip/review/ita-extracts.md`; consolidation current to 2026-07-21). The
Income Tax Regulations, ETA, Employment Insurance Act, UHTA and CBCA Regulations sections, and the CRA, CBSA and
issuer pages, were fetched by the main thread through a summarising fetcher, so those quotations are one step less
direct than the ITA extracts. `canada.ca` was reachable this session, as the audit reports. Arithmetic
counterexamples (`PAY-1`, `CCAT-1`, `INV-1`, `HSTE-1`, `CM-3`) were recomputed by hand. The audit's own `audit/wip/`
checkpoints were left untouched; review scratch is confined to `audit/wip/review/`.

Session identity, per [Audit Instructions § Session identity](../../docs/Audit-Instructions.md#session-identity):
the client exposes the model display name `Fable 5.1`, normalised to `Fable-5.1`. The live `effort.level` reaches
only the `statusLine` command, which does not persist it, so the effort token `medium` was read from
`~/.claude/settings.json` (`modelSettings."claude-fable-5-1".effortLevel`), the documented fallback. A session-only
override would not be visible to this check; rename the file if one was active.

Limits: the 56 guide pages on which the audit raised nothing were **not** swept for net-new findings (the
2026-08-02 review did that; this one did not). The Disposition-of-prior-audits table was read for consistency with
the current findings but its "Retained" rows were not independently re-verified.

## Severity Legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

**Accept the audit. No finding was refuted; the severities are inflated and three fixes need care.**

- All 56 quotes are faithful to the working tree (one, `EF-1`'s second line, drops link markup)
- Every statutory and CRA attribution checked holds, including the ones that looked most surprising
  (`LP-1`, `LOSS-1`, `R-7`, `SP-EI-1`, `FR-1`, `T5CG-1`)
- The tally is accurate: 21 / 20 / 15 / 0 = 56
- The one weak finding is `ACB-1`, which reads a brokerage-statement glossary line as a universal claim
- **Severity is the audit's main defect.** 21 CRITICALs overstates the state of the guide. Against the legend, six
  hold as CRITICAL (`PAY-1`, `LOSS-1`, `T3FX-1`, `CCAT-1`, `SBT-1`, `LP-1`); the other fifteen are correct findings
  about asides, summary tables, advisor-territory pages or edge cases, and fit HIGH or MEDIUM. Suggested
  recalibrated tally: **6 CRITICAL / 21 HIGH / 26 MEDIUM / 3 LOW**
- Three fixes need care before they are applied: `CCA-1` (must not delete the de minimis convention), `R-7` (must
  carry the exclusive-commercial-use exception or it will tell the reader to self-assess needlessly), and
  `CCAT-1`/`CCAT-2` (the current first-year factor for post-2024 property was not confirmed by either pass)
- Ten findings land on the five signed-off pages and need maintainer-driven evidence under the playbook

Ten of the findings are regressions or residue from the 2026-08-02 remediation (`R-1`/`PAY-1`, `R-4`, `SBT-1`,
`CM-1`, `AVS-1`, `AVS-2`, `WD-1`, `CCA-1`, `LP-1`, `SP-EI-1`). Two of them trace to statements the 2026-08-02 review
itself endorsed (`WD-1`'s "a later loss cannot reach back", `EF-2`'s dividend-offset sentence). That is the
strongest argument for the audit's closing advice: re-derive each fix from the source rather than from the finding.

## What Was Verified Independently

Pulled as raw statute text (ITA): 12(11) "investment contract" (i); 13(27)(b), 13(28)(c); 18(1)(p)(i)–(iv) and
closing words; 20(11), 20(12); 39(1)(c)(iv); 40(3.1), (3.11), (3.111), (3.12); 53(1)(e)(i); 70(5)(a);
74.4(2)(d)–(g); 78(1); 80.4(3)(b); 83(2); 84.1(1)(a); 85(2.1); 86(2.1); 89(1) "low rate income pool", 89(4),
89(8); 104(22.1); 111(1)(a), 111(5)(a); 118.2(3)(b); 125(5.1), 125(7) "adjusted aggregate investment income";
129(1)(a)(ii), 129(4) NERDTOH (a); 146(8.2); 249(4); and the page contents of `section-231`, `-231.1`, `-233`,
`-233.3`.

Fetched through the summarising fetcher: ITR 1100(2) element A (Class 12 expressly excluded from the uplift),
ITR 1104(4) and (4.01) ((b)(i) and (b)(ii) joined by "or"; (4.01) runs to available-for-use before 2034); ETA
167(1)(b), 238(1)(a)(ii); EIA 152.02(4)–(7); UHTA s.1.1 (2026, c. 3, s. 167); CBCA Regulations s.71(1); CRA T4130
(non-cash-only CPP exception), RC4058 (1% credit on line 107), T3 slip instructions (box 21 is line 921 × 2, plus
the foreign-gain footnote), T4012 line 078, GST/HST Memorandum 2-4, the CRA imports page, CBSA D13-2-3, and the
2026-06-22 Manulife release. RC4022 line 101 would not return its line instructions; the rule ("including zero-rated and
exempt supplies, and other revenue", with the optional line 90/91 split) was confirmed from the search index only.

Confirmed in the repository: the `SP-CPP-1` circular cross-reference (each page says the other "works" the due
dates; neither does); `SP-HST-1` (no "June 15" or "April 30" anywhere on the sole-proprietor HST page or the
corporate deadlines section it defers to); `CRA-1` and `T1135-1` link targets.

Taken on the audit's sources without a re-pull: ETA 168(9), 182, 169, 206, 228(2)(a); CBCA s.155; ITA 126(1);
IT-506; RC4088 (GIFI-Short); the VDP memorandum (`HST-2`); the CRA unused-RRSP-contributions page (`TR-1`); Intuit
and Xero (`FXC-1`); Interactive Brokers pricing (`NG-1`); Ontario medical thresholds (`DM-2`). Each is consistent
with what I know of the rule, and none carries a CRITICAL.

## Disposition of All 56 Findings

Verdict key: **agree** = correct as written; **agree, calibration** = correct, but rated more strongly than the
legend supports; **agree, fix needs care** = the finding is right but its fix should not be applied as drafted;
**weak** = technically true, not worth a finding. `Sev→` is the suggested severity. † marks a signed-off page.

| Code | Sev | Sev→ | Verdict | Basis |
|---|---|---|---|---|
| R-1 | CRITICAL | HIGH | agree, calibration | T4130 confirms no employee or employer CPP where a non-cash benefit is the year's only remuneration; boxes 14/26 still reported. Narrow case (a benefit with no cash salary) |
| R-2 † | CRITICAL | HIGH | agree, calibration | ITA 129(4): "the least of" three limbs, and limb (i) is reduced by the s.126(1) credit over 8% of foreign investment income. Unbound for the usual reader; bites on the T3 foreign-withholding workflow |
| R-3 † | HIGH | HIGH | agree | ITA 129(1)(a)(ii)(B) refunds the excess out of ERDTOH. The page states the ordering rule correctly nine lines above the sentence that contradicts it |
| R-4 | HIGH | HIGH | agree | S125 is the income statement; S7 line 019 is a classification, not a second deduction |
| R-5 | HIGH | MEDIUM | agree, calibration | ITA 13(27)(b)/(28)(c) wording confirmed. Needs a short *intervening* year to matter |
| R-6 † | MEDIUM | MEDIUM | agree | ITA 125(7) AAII confirmed; `Dividends.md` explains AAII correctly a few lines above the stale threshold bullets |
| R-7 | HIGH | HIGH | agree, fix needs care | CRA: only the 5% GST is collected at the border on commercial goods. See below |
| PAY-1 | CRITICAL | CRITICAL | agree | Recomputed: one debit and three credits; out of balance by twice the CPP. The employer-CPP expense leg is also absent |
| DIV-1 † | CRITICAL | MEDIUM | agree, calibration | ITA 89(1)/(8)/(4) confirm the direction is backwards. The operative sentence ("does not apply to a corporation that has always been a CCPC") is still true |
| LOSS-1 | CRITICAL | CRITICAL | agree | ITA 39(1)(c)(iv) parenthetical confirmed verbatim. The claimant on this page *is* a corporation, so the exclusion is the main case, not an edge |
| CRA-1 | MEDIUM | MEDIUM | agree | `section-231.html` is definitions; `section-231.1.html` is the power |
| T1135-1 | MEDIUM | MEDIUM | agree | `section-233.html` is the demand provision |
| T3FX-1 | CRITICAL | CRITICAL | agree | ITA 104(22.1) deems payment "for the purposes of this subsection and section 126" only. The line contradicts the same page seven lines later |
| T3FX-2 | CRITICAL | MEDIUM | agree, calibration | CRA's box 21 footnote ("non business income for foreign tax credit") confirmed. A refinement of a correct warning |
| T3CG-1 | MEDIUM | MEDIUM | agree | CRA: box 21 is Schedule 9 line 921 multiplied by 2 |
| ACB-1 † | MEDIUM | LOW | weak | The line sits in a glossary contrasting ACB, broker book cost and market value. Optional tightening |
| T5-1 | HIGH | HIGH | agree | `1002-2` is brokerage cash under the repo convention, and the page's own premise is that no cash moves |
| T5CG-1 | CRITICAL | HIGH | agree, calibration | Issuer release confirmed. The error costs the reader tax (missed ACB increase) rather than under-reporting |
| CCAT-1 | CRITICAL | CRITICAL | agree, fix needs care | ITR 1100(2) element A excludes Class 12; the $1,500-on-$1,000 counterexample recomputes. See below |
| CCAT-2 | HIGH | HIGH | agree, fix needs care | ITR 1104(4)(b)(i) "or" (ii) confirmed; (4.01) runs to 2034. Tracker and hub also disagree with each other. See below |
| CCA-1 | CRITICAL | HIGH | agree, fix needs care | Internal contradiction is real (`:330-334` versus `:355-360`). See below |
| CCAE-1 | HIGH | HIGH | agree | The $400 recapture computed four lines earlier never reaches the Schedule 1 list |
| INV-1 | HIGH | HIGH | agree | Recomputed: 100 + 10 − 90 = 20 against a true 10 |
| INV-2 | HIGH | MEDIUM | agree, calibration | "(or vice versa)" is wrong; the next bullet ("Book only inventory the corp owns") already corrects it |
| DR-1 | CRITICAL | HIGH | agree, calibration | ETA 168(9) itself contemplates a deposit later applied as consideration, so "applied against invoices ⇒ prepayment from day one" cannot be the test. The page's error is conservative on HST and timing-neutral on income |
| HSTR-1 | HIGH | MEDIUM | agree, calibration | Line 101 is informational; net tax is unaffected |
| HSTR-2 | HIGH | MEDIUM | agree, calibration | The defect is the word "residences"; both sections already carry the s.206 exception |
| HSTR-3 | HIGH | MEDIUM | agree, calibration | D13-2-3 confirmed. CBSA or the broker computes the figure; the page only tells the reader to book it |
| HSTE-1 | HIGH | HIGH | agree | RC4058: credit on line 107. The audit's replacement lines recompute (4,474.80 / 520 / 300 / 820 / 3,654.80) |
| SBT-1 † | CRITICAL | CRITICAL | agree | ITA 18(1)(p): (i) remuneration, (ii) benefits and allowances, (iii), (iv); the closing words are a condition. The invented bullet contradicts the line beneath it |
| CM-1 † | CRITICAL | HIGH | agree, calibration | ITA 70(5)(a) reaches the deceased's own capital property. One word in a parenthetical, on a signed-off page |
| CM-2 † | CRITICAL | MEDIUM | agree, calibration | ITA 80.4(3)(b) confirmed. The "also" is more naturally read as a second rule than as stacking; a precision fix |
| CM-3 † | HIGH | MEDIUM | agree, calibration | Counterexample holds (true component nil; the table yields $5,000). Summary table; the canonical page is right |
| SBT-2 † | CRITICAL | MEDIUM | agree, calibration | CBCA Regulations s.71(1) confirmed. Corporate-law formality with no tax consequence for a sole-shareholder corporation |
| FR-1 | MEDIUM | MEDIUM | agree | UHTA s.1.1 confirmed |
| FR-2 | MEDIUM | LOW | agree | Citation-annotation residue |
| AVS-1 | CRITICAL | HIGH | agree, calibration | ITA 111(1)(a) counts taxation years; a deemed year-end consumes one |
| AVS-2 | CRITICAL | HIGH | agree, calibration | ITA 111(5)(a)(i) requires *that* business; the similar-business limb sits in (ii)(B) only |
| WD-1 | CRITICAL | HIGH | agree, calibration | ITA 83(2)(a) tests "immediately before the particular time". Election and payable time usually coincide |
| AVS-3 | MEDIUM | MEDIUM | agree | ETA 167(1)(b) confirmed. For a registered vendor the page's statement is right in practice |
| WD-2 | CRITICAL | HIGH | agree, calibration | T4012 line 078: "already permanently dissolved". The diagram has the same order |
| EF-1 | HIGH | MEDIUM | agree, calibration | ITA 85(2.1) carves out s.84.1 dispositions; the three B ceilings differ as the audit says |
| EF-2 | CRITICAL | MEDIUM | agree, calibration | ITA 74.4(2)(f) excludes s.84 deemed dividends, and credits only dividends the *freezor* receives on excluded-consideration shares. Advisor-territory pointer |
| LP-1 | CRITICAL | CRITICAL | agree | ITA 40(3.11) adds current-period income only for a professional partnership; 53(1)(e)(i) reaches periods "ending … before that time". The page's own preceding bullet says the addition lands after period end |
| EC-1 | MEDIUM | MEDIUM | agree | Not re-pulled |
| HST-1 | HIGH | MEDIUM | agree, calibration | Memorandum 2-4 confirmed. One edge-case bullet |
| HST-2 | MEDIUM | MEDIUM | agree | Not re-pulled |
| DEBT-1 | MEDIUM | MEDIUM | agree | ITA 78(1)(a): third following year |
| FXC-1 | MEDIUM | MEDIUM | agree | The page's own "FX surfaces only at revaluation" is untrue of Xero and QuickBooks |
| NG-1 | MEDIUM | LOW | agree | Not re-pulled |
| TR-1 | HIGH | HIGH | agree | ITA 146(8.2) conditions confirmed |
| DM-1 | HIGH | MEDIUM | agree, calibration | ITA 118.2(3)(b) confirmed. A missing caveat rather than a broken promise |
| DM-2 | MEDIUM | MEDIUM | agree | Not re-pulled |
| SP-CPP-1 | HIGH | HIGH | agree | Both pages read; the loop is real |
| SP-HST-1 | HIGH | HIGH | agree | ETA 238(1)(a)(ii) confirmed |
| SP-EI-1 | MEDIUM | MEDIUM | agree | EIA: (7) is the 60-day rule, (6) December 31, (4) the after-benefits restriction |

Row count 56. Audit distribution 21 / 20 / 15 / 0; suggested 6 / 21 / 26 / 3.

## The Six Findings That Hold as CRITICAL

- **`PAY-1`**: a journal that cannot be posted. It is also the mechanism behind `R-1`, so fix the two together
- **`LOSS-1`**: the guide's reader claims as a corporation, so a loan to a sister or subsidiary corporation is the
  typical debt, and that is exactly what s.39(1)(c)(iv) excludes. The share limb (iii) carries no such exclusion;
  the fix should say so
- **`T3FX-1`**: offers a deduction the same page says is unavailable
- **`CCAT-1`**: a formula that claims more than cost. The tracker is a cross-check on the software rather than the
  filing itself, which is the only argument for HIGH
- **`SBT-1`**: on a signed-off page, and introduced by the last remediation
- **`LP-1`**: the most valuable catch in the audit. The assurance is the reverse of the rule for an ordinary
  portfolio LP, and the ordinary LP is this page's subject

## Fixes That Need Care

### `CCA-1`: do not delete the de minimis convention

The finding is right that `:355-360` argue as though the book floor sets tax timing, after `:330-334` say s.18(1)(b)
and Schedule 8 govern regardless. But the fix ("remove the claimed tax advantage … determine CCA independently")
would, applied literally, also remove the page's working convention: a small, consistently applied de minimis floor
whose items are deducted currently and never reach Schedule 8, which the page presents as CRA's administrative
tolerance (`:347-351`). Those are two different things:

- *Below the floor*: expensed for book and tax; there is no CCA alternative, so timing talk is moot
- *At or above the floor*: capital; book expensing (where a class allows it) changes presentation only

The contradiction exists because "Costs of setting the floor high" argues about the first case in the language of
the second. The maintainer should decide which convention the page teaches before anyone edits; this is a
signed-off-adjacent convention question, not a one-line correction.

### `R-7`: carry the exclusive-use exception

Correct that only the 5% GST is collected at the border on commercial goods, so "import HST … recoverable as an ITC"
overstates what was paid. The CRA page says the provincial part is then self-assessed on line 405. The audit's fix
mentions "commercial-use exceptions" in passing; that exception is the main case for this guide's reader. A
registrant importing goods for consumption, use or supply exclusively in commercial activities generally does not
self-assess the provincial part at all (ETA Division IV.1; not re-pulled here). A fix that adds a self-assessment
step without it swaps one error for another. Route through the deferred-verify gate.

### `CCAT-1` and `CCAT-2`: the post-2024 first-year factor is unconfirmed

The Class 12 exclusion and the 1104(4)/(4.01) eligibility structure are confirmed. What neither pass pinned down is
the factor itself for property acquired after 2024: the fetch of ITR 1100(2) returned element A's general factor as
one-half before 2024 and **nil after 2023**, and the page truncated at (2.2) before any A.1/B.1 text the audit cites.
The tracker's `+0.5 × Net Additions` for "acquired after 2024" therefore rests on text I could not read. Pull the
consolidated Regulations XML before rewriting the formula (the same truncation wall the two prior reviews hit).

## Signed-Off Pages

Ten findings touch the five signed-off pages and need maintainer-driven evidence and re-sign-off:

- `Small-Business-Tax.md`: `SBT-1`, `SBT-2`
- `Concept-Map.md`: `CM-1`, `CM-2`, `CM-3`
- `Dividends.md`: `DIV-1`, `R-2`, `R-3`, `R-6`
- `ERDTOH-NERDTOH.md`: `R-2`, `R-3`
- `Adjusted-Cost-Base.md`: `ACB-1`

The audit says this generically in its closing section but never marks which findings are affected.

## Defects in the Audit Document Itself

- **Severity inflation**, as above. The legend's CRITICAL is "will mislead a CCPC owner"; a backwards aside on a
  regime that does not apply to the reader (`DIV-1`) or a corporate-law formality (`SBT-2`) is not that
- **Two per-finding formats.** The main thread's findings run `**Fix:**` and `**Source:**` inline in one paragraph;
  the side agent's clusters (Overview, Lifecycle, Personal Tax, Sole Proprietorship) use separate `**Source:**` and
  `**Suggested fix:**` paragraphs. The same un-normalised concatenation the 2026-08-02 review flagged
- **Page-by-page findings are not grouped by page or cluster.** `SBT-1` and `SBT-2` sit six findings apart; `AVS-1`,
  `AVS-2` and `AVS-3` are interleaved with `WD-1`; Operations findings appear both before and after Overview
- **Dropped spaces throughout**: "Line101", "year3", "section231.html", "lines90 and91", "ITA89", "paragraphs5-10",
  "first-year50%". Mechanical, but it reaches headings and citations
- **Line numbers already stale in one file**: `Payroll.md` is cited at `:177-183` and `:185-186`; the text is at
  `:186-190` and `:192-193`
- **Signed-off exposure not itemised** (above)
- Everything else in the skeleton checks out: nine sections in order, legend verbatim, tally accurate, dropped
  candidates recorded by name in *What was NOT flagged* (the process ask from last cycle, honoured)

## Residual Verification Debt

1. ITR 1100(2) beyond the truncation point: the A.1/B.1 elements and the post-2024 factors (`CCAT-1`, `CCAT-2`)
2. ETA Division IV.1 exclusive-commercial-use exception (`R-7`)
3. RC4022 line 101 first-hand (`HSTR-1`)
4. The sources listed above as taken on the audit's word; none supports a CRITICAL
5. No net-new sweep of the 56 uncited pages

## Recommendation

**Accept the audit and proceed to fixes**, re-rating as in the table. Suggested sequencing:

1. The six CRITICALs, with `PAY-1` and `R-1` as one edit
2. The regressions from the last remediation as a group, each re-derived from the statute rather than from either
   audit's wording: `AVS-1`, `AVS-2`, `WD-1`, `WD-2`, `CM-1`, `R-4`, `SP-EI-1`
3. The HIGH tier, holding `R-7`, `CCAT-1`/`CCAT-2` behind the deferred-verify gate and `CCA-1` behind a maintainer
   decision on the de minimis convention
4. MEDIUM and LOW as routine cleanup; `ACB-1` is optional
