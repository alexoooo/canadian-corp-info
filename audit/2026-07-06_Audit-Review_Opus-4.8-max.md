# Audit Review

**Date**: 2026-07-06
**Scope**: Independent review of `audit/2026-07-04_Audit_Fable-5-max.md` (7 CRITICAL / 24 HIGH /
79 MEDIUM / 75 LOW = 185 findings) — not a fix-verification follow-up (no fixes have landed yet), but
a correctness check on the audit itself: are its findings right, are its quotes faithful, are its
statutory attributions and arithmetic sound, and does it contain false positives? This is the
adversarial second read the audit's own discipline asks for, run by a different model than the one
that produced it.
**Method**: Every CRITICAL quote was re-read fresh from the working tree. The load-bearing statutes
were re-fetched live from `laws-lois.justice.gc.ca` and compared to the finding text (ITA s.39(2),
s.125(7) AAII, s.129(4) AII; ETA s.227(2); Reg 5800(1)). Post-January-2026 facts — outside this
reviewer's training cutoff — were re-checked on the open web (Class 44/46/50 immediate expensing;
Ontario Bill 97 / S.O. 2026 c. 2; VDP IC00-1R7). Internal-consistency findings were reproduced by
grep (the `1060-1` sub-code collision; the missing Glossary terms). Worked-example arithmetic
(HST-10, WD-4, FX-6) was recomputed by hand. Severity tallies were grepped (7 CRITICAL + 24 HIGH
confirmed; 7+24+79+75 = 185). `canada.ca` returns 403 to fetchers, so findings resting on CRA
form/guide text (RC4058, form titles, T4 Box 45) were assessed against this reviewer's knowledge and
the reachable secondary web, not re-pulled first-hand — flagged individually in *Residual
verification debt*.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

- **Accept the audit.** Across all 7 CRITICAL, all 24 HIGH, and a broad sample of MEDIUM/LOW, I found
  **no substantive error** — no false positive, no misquote, no inverted statute, no arithmetic slip.
  Every CRITICAL quote is verbatim-accurate to the current tree; every statute I re-fetched confirms
  the finding; both post-cutoff enactment claims (CCA-2, DE-1) and the VDP rewrite (CRA-3) check out.
- **The two items the audit self-flagged were handled correctly.** RD-3 was rightly REFUTED (the
  parenthetical is s.129(5)(a)(i)(B) variable D verbatim — do not delete it), and CRA-3 was rightly
  ADJUSTED (the finder's education-letter example was inverted and corrected in the delivered entry).
  One refutation and one adjustment out of 185, each with a documented reason, is evidence the
  verification pass actually ran rather than being asserted.
- **The decision-relevant weight is the 31 CRITICAL+HIGH findings** — that is where the tax dollars
  and compliance risk sit. The 79 MEDIUM / 75 LOW are accuracy refinements and house-style nits that
  track the repo's own Style-Guide; safe to batch or defer.
- **Residual verification debt is small and honestly disclosed by the audit itself**: the
  canada.ca-403 findings rest on secondary sources, Reg 1100(3) (CCA-1) rests on the XML because the
  laws-lois HTML truncates, and three T2-form-internal mappings (T3-1, T5-2, CCT-1) want a live
  software check before the pages are edited. None of this undercuts a finding; it is the follow-up's
  to close.
- **My only wording caveat** is on the CRA-3 fix: keep the *education letter* (unprompted, top tier)
  vs *non-filer/demand-to-file notice* (prompted, lower tier) distinction sharp when it lands in the
  guide.

## What I verified independently vs. took on the audit's sources

Re-checked against a primary source or reproduced by me:

- **CRITICAL quotes** — all 7 read fresh: `Glossary.md:8`, `Small-Business-Tax.md:241`,
  `T3-Box-26-Other-Income.md:96`, `Adjusted-Cost-Base.md:124-133`,
  `Adjusted-Cost-Base-Tracking.md:186`, `HST.md:242`, `CRA-Administration.md:135`. Verbatim-accurate,
  correct file and line region.
- **Statutes** (laws-lois, live): ITA s.39(2) chapeau; s.129(4) AII property-income exclusion;
  s.125(7) AAII paragraph (b); ETA s.227(2)(b)/(c); Reg 5800(1)(a). All confirm the findings.
- **Post-cutoff facts** (open web): the Class 44/46/50 immediate-expensing measure is enacted (100%
  first year, acquired after 2024-04-15, available-for-use before 2027, confirmed by Budget 2025);
  Ontario Bill 97 received Royal Assent as S.O. 2026 c. 2, small-business rate 3.2%→2.2% effective
  2026-07-01; VDP IC00-1R7 effective for applications received on/after 2025-10-01 with two-tier
  75%/25% relief.
- **Consistency/arithmetic**: grep reproduced the `1060-1` collision (FX-5) and the empty Glossary
  entries (GL-6); HST-10 ($45,000 × 1.13 = $50,850; net tax $50,850 × 8.8% − $300 = $4,174.80) and
  WD-4 ($26,087 eligible sweep refunds $0 vs $10,000 non-eligible) recompute.

Assessed by reasoning + tax knowledge, correct-as-reasoned, but resting on a source I did **not**
re-pull first-hand (canada.ca 403, truncated HTML, or T2-form internals): HST-5/6/7 and RBD-1/-2
(RC4058 Quick-Method mechanics); HST-3 and T2S-1/-2/-3 (CRA form titles); PR-6 (T4 Box 45); WD-5
(Ontario consent-letter removal); FX-2 (BoC date); Reg 1100(3) exclusion list (CCA-1); T3-1 / T5-2 /
CCT-1 (S1/S7/S8 mappings). Each is consistent with what I know; the audit is transparent that these
rest on secondary sources.

---

## CRITICAL findings — all 7 agreed, all verified

**GL-1 / SBT-2 / T3B26-1 — "AAII equals AII for a corporate brokerage account" (one defect, three pages). AGREE.**
The flagship finding, confirmed three independent ways. s.129(4) excludes s.112-deductible dividends
from aggregate investment income; s.125(7) paragraph (b) rewrites that exclusion to catch only *a
dividend from a corporation connected with it* (s.186(4)). So Canadian portfolio dividends are **out
of AII but in AAII** — exactly what a corporate brokerage account holding Canadian dividend-payers
receives — and AAII exceeds AII by the portfolio-dividend amount. "Equals AII / bites on the same
number" is therefore false precisely for the guide's core audience, and on the SBD primer it can lead
an owner to conclude the grind is safe when portfolio dividends alone can trigger it. The audit's
scoping is careful and correct: it leaves `Dividends-Examples.md:89`'s interest/foreign/gains-only
case alone and notes foreign dividends sit in both pools. CRITICAL justified.

**ACB-4 / ACBT-6 — corporate wash-sale is a suspended loss, not a superficial loss (one defect, two pages). AGREE.**
The subtle heart of the audit, and it is right. For a **corporation** selling at a loss with an
affiliated repurchase, s.54(h) excludes the disposition from the "superficial loss" definition, and
s.40(3.3)/(3.4) applies instead: the loss is **deemed nil** (not merely denied under s.40(2)(g)(i)),
**no** s.53(1)(f) ACB bump lands anywhere, and the loss is **suspended in the corporation**, released
to it when the affiliated group is out of the position for 30 days. The controlling shareholder is
affiliated with the corp (s.251.1(1)(b)(i)), so the personal repurchase triggers the stop-loss.
Following the guide's current text migrates the corporation's denied loss into the owner's personal
ACB — permanently destroying a corporate capital loss and understating a future personal gain. The
audit's seller-split fix is correct in both directions (corp sells → s.40(3.3)/(3.4) suspended, no ACB
row; individual sells / corp repurchases → genuine superficial loss, s.53(1)(f) bump on the
*corporation's* ACB). CRITICAL justified.

**HST-8 — GST74 election timing for annual filers. AGREE.**
ETA s.227(2)(b): the effective date must be the first day of a reporting period; s.227(2)(c)(i): an
annual filer must **file** on or before the first day of the second fiscal quarter (≈ Apr 1 for a
calendar year). Confirmed verbatim from laws-lois. The guide's "takes effect on the first day of the
reporting period in which it is filed" misleads an August filer into thinking the Quick Method runs
from Jan 1 — an ineffective election and a full year of misremittance. The audit's replacement wording
is statute-accurate. (Directly relevant to this guide's canonical reader, an annual-filing
Quick-Method consulting CCPC.)

**CRA-2 — general ledger misfiled under 6-year records. AGREE.**
Reg 5800(1)(a)(iv) is, word for word, "the general ledger or other book of final entry containing the
summaries of the year-to-year transactions of a corporation" — confirmed from laws-lois. It sits in
the s.230(4)(a) class (until 2 years after dissolution → effectively permanent for a going concern),
not the s.230(4)(b) 6-year residual where `CRA-Administration.md:135` files it; special contracts
needed to understand the ledger are (a)(v). A reader following the page destroys the general ledger at
year six, in breach of s.230(4)(a). The "keep everything digital, never destroy" advice on the page
softens the practical harm but the rule statement is wrong. Coordinate with WD-6 (the dissolved-corp
side of the same regulation). CRITICAL justified.

---

## HIGH findings — all 24 agreed

"re-verified" = checked against the primary source or reproduced by me; "sound" = correct by tax/logic
analysis; "rests on audit's source" = correct-as-reasoned but dependent on a source I did not re-pull.

| Code | Verdict | Basis |
|---|---|---|
| GL-6 | re-verified | Grep: zero "phantom distribution" / "superficial loss" entries; both are AGENTS.md-listed guide vocabulary. |
| WD-1 | sound | Diagram sequences DIST → CLR — the exact s.159(2)/(3) liability trap the page warns of and the reverse of its own worked example. |
| WD-4 | re-verified | GRIP 100k / NERDTOH 10k / ERDTOH 0: a $26,087 sweep designated eligible refunds $0 (eligible draws only ERDTOH, s.129(1)(a)(i)); left non-eligible it refunds $10,000. |
| PSC-3 | sound | "Excluded business" (s.120.4(1), any 5 prior years) omitted; the age-65 rule (s.120.4(1.1)(c)) is about the *spouse* who ran the business, not the recipient's own age. |
| FX-4 | re-verified | s.39(2) chapeau excludes gains "that would…be a capital gain…to which subsection (1) or (1.1) applies" (laws-lois). Post-2013 currency dispositions run through s.39(1); guide's s.39(2) cite is off. |
| FX-5 | re-verified | Grep: `1060-1` = "Accounts receivable - CAD" in Foreign-Currency vs "Investment distributions receivable" in signed-off T3 + four Investments pages; LA:188 restates FX's meaning. Real collision. |
| HST-5 | sound / rests on RC4058 | No general imports carve-out under the Quick Method; import HST on operating inputs earns no ITC (SOR/91-51 s.15(1)/s.17(1) C(a)(i)). |
| HST-10 | re-verified | Line 101 is GST/HST-inclusive under the Quick Method: $45,000 × 1.13 = $50,850; net tax unchanged. |
| HST-13 | sound | ETA s.222(1) deems a trust over GST/HST collected; "debtor, not trustee" is backwards (s.222(1.1) pre-bankruptcy carve-out is the only wrinkle, which the audit notes). |
| RBD-1 | sound / rests on RC4058 | Quick-Method net-tax formula admits Division V bad-debt relief only for non-specified supplies; a consulting invoice is specified → no s.231 adjustment. |
| CCA-1 | sound (see debt #2) | Reg 1100(3) exclusions (ss.(0.1); (1)(c),(e),(f),(g),(m),(w),(x),(y),(ya)) cover Class 14/15, not Class 12 ((1)(a)) or 13 ((1)(b)) — both prorated. HTML truncates; not re-fetched. |
| CCA-2 | re-verified (web) | Class 44/46/50 immediate expensing (100% first year, acquired after 2024-04-15, AFU before 2027) is enacted. Laptop max is $4,000, not $3,300; $3,300 is legal only as a discretionary partial claim. |
| CCT-1 | sound / rests on Reg 1104 + Taxprep | M&P 53/43 and clean-energy 43.1/43.2 are AIIP (only 54-56 excluded by 1104(4)/(4.01)); "leave false" zeroes S8 column 225 and drops the software path to the half-year rule. |
| OCT-4 | sound | The no-benefit result is the *group*-plan rule (s.6(1)(a)(i)); a corp-paid *individual* DI policy — the single-owner norm — is a taxable benefit. |
| DE-3 | sound | S53 line 300 deducts eligible dividends paid in the *previous* year; closing GRIP (line 590) = opening + additions. Deducting the current year's dividend double-counts (instance of DIV-4). |
| ACB-2 | sound | Relative-FMV apportionment *is* the elective s.86.1 treatment; the no-election default for a foreign spin-off is a taxable dividend in kind at FMV (s.52(2)). Guide has the default backwards. |
| ACBT-4 | sound | A non-Buy/Sell memo row feeds `Quantity Change` = 0, so per-unit ACB doesn't recalculate; the "Buy of the additional units at $0" fix works under the page's own formulas. |
| ACBT-5 | sound | A zero-proceeds Sell books a phantom loss = full ACB into the reconciled S6/CDA column; sell-at-ACB (memo, excluded) is the correct recipe. |
| CIC-1 | re-verified (logic) | Backwards: capital favours the taxpayer on gains (50% inclusion) and income on losses (full deduction), so taxpayers argue capital-on-gains / income-on-losses and CRA the reverse. Guide inverts both. |
| T3-1 | agree, keep hedge | Real S1/S7 mapping issue (line 113 / 401 vs netted 705/395; the S7 Part 6 amount V knock-on). Appropriately routed to a FutureTax live-UI check; amount-V label rests on a form read + corroboration. |
| T5-2 | sound / repo screenshot | Foreign property income belongs on S7 Part 1 line 032 (→ AII → 440) *and* Part 3 line 019 (→ 445); naming only Box 019 understates AII/NERDTOH. |
| CDA-2 | sound | s.83(2)(a) measures CDA "immediately before" the dividend becomes *payable*, not at election-filing time; the page's own :48-49 already has it right, so :30/:36 contradict internally. |
| CRA-3 | re-verified (web), ADJUSTED | IC00-1R7 (apps on/after 2025-10-01), two-tier relief (unprompted 75% interest + full penalty; prompted 25% + up to full penalty) confirmed. Finder's inverted example correctly fixed. Wording caveat below. |
| PAY-1 | agree | Payment.md's Corporate Income Tax section carries only the line-840 note; balance-due day, instalment timing/eligibility, and the $3,000 threshold (s.157/s.248(1)(d)) are all absent, though the title and hub promise them. |

---

## MEDIUM / LOW — bulk agreement, no false positives found

I did not re-derive all 154, but I sampled across every section and every one I checked was correct
and fairly rated. Representative confirmations by knowledge or grep:

- **Statute-precision MEDIUMs**: SC-1 (BC BCA permits par-value shares — the real Canadian exception),
  DIV-1 (EIA s.5(2)(b): no EI for a >40% owner-manager), T5-3 (a mutual fund *corporation* cannot flow
  out foreign/interest character — only trusts do, s.104(22)), GL-3 (the "substantially all used" AFU
  limb is s.13(28) buildings, not s.13(27) non-buildings), RD-5 (s.89(14.1) late designation relieves
  the flat "cannot redesignate"), EF-3 (receivables are not s.85(1.1) eligible property and carry no
  accrued gain — s.22 is the right election), OCT-2 (s.69(1) makes *one-sided* adjustments, not a
  symmetric FMV cap), PR-6 (T4 Box 45 mandatory since the 2023 slip year). All correct.
- **Stale-filename cluster** (GL-2 / FR-1 / IN-2 / T3B26-2 / SBT-1): confirmed no
  `Small-Business-Tax-Overview.md` exists; the link *text* still names it.
- **Style/formatting LOWs** apply the repo's own Style-Guide and recorded maintainer feedback back at
  the guide (colons over em-dash labels; drop "really"/"simply"; "touched on but not worked through"
  for partial coverage; noun-phrase headings; no "GIFI NNNN-N" mislabels) — not new inventions.

Nothing in this tier reads as a false positive.

## Residual verification debt (the follow-up's to close; none undercuts a finding)

1. **canada.ca-403 findings** rest on search snippets / mirrors, not a live authoritative fetch:
   HST-3 (GST62 vs GST34-3), HST-5/6/7 and RBD-1/-2 (RC4058 mechanics), T2S-1/-2/-3 (S141/S24/S21
   titles), PR-6 (Box 45), WD-5 (Ontario consent), FX-2 (BoC noon-rate date), CRA-1. The reachable
   ones corroborate and my knowledge lines up with the rest; a signed-in CRA/canada.ca pass makes
   them airtight. The audit is explicit about this throughout — the right posture.
2. **Reg 1100(3) (CCA-1)**: the laws-lois HTML section page truncates before subsection (3) — this
   reviewer hit the identical wall the finder describes. The audit resolved it from the consolidated
   Regulations XML; I could not reproduce that path here, so I relied on the audit's XML read plus my
   own recollection of the exclusion list (which agree). Worth one belt-and-suspenders check before
   editing the four CCA pages.
3. **T2-form-internal mappings** (T3-1's S7 Part 6 amount V; T5-2's line 032 vs 019; CCT-1's S8 line
   225): these turn on how the forms and the maintainer's software (FutureTax) actually flow numbers.
   Treat these fixes as "verify in the software once, then edit," not "edit blind." The audit already
   routes T3-1 that way.

## Points of discussion (calibration only — no finding is wrong)

- **VDP fix wording (CRA-3)**: agree the section is stale and the two-tier reframe is correct. When
  the fix lands, keep a sharp line between an **education letter / general-guidance notice** (→
  application stays *unprompted*, top tier) and a **non-filer or demand-to-file notice** (→ *prompted*,
  lower tier). Some secondary sources class non-filer/demand letters as prompted; the audit's
  "education letter or notice offering general guidance" phrasing is right but, compressed into the
  guide, could read as "any CRA letter keeps you unprompted," which would be wrong. Confirm the split
  against IC00-1R7 directly.
- **Severity taste**: CIC-1 (a backwards *illustration* on a REVIEW-marked conceptual page) would be
  as defensible at MEDIUM as at HIGH; the AAII trio at CRITICAL vs HIGH is a judgment call I would
  resolve the same way the audit did (CRITICAL, because it is the SBD primer). These do not affect
  validity.

## Recommendation

Accept the audit and proceed to fixes. Land the 7 CRITICAL and 24 HIGH first (31 findings), grouping
the joint ones so each shared defect is fixed once and swept everywhere: the AAII trio
(GL-1/SBT-2/T3B26-1, plus the `Dividends.md:228` alignment), the corporate wash-sale pair
(ACB-4/ACBT-6), the Reg 5800 retention pair (CRA-2/WD-6), and the T2054 CDA-schedule pair
(T2R-3/CDA-3). Do the live/first-hand checks in *Residual verification debt #2 and #3* before editing
the CCA and S7/S8 pages. The MEDIUM/LOW tier can follow as a routine cleanup pass. Do **not** apply
RD-3 — the audited text is statute-verbatim.

## Note on this file

This is a new artifact type (`Audit-Review`), following the `Coverage-Review` precedent for the
filename pattern. `docs/Audit-Instructions.md` §Closeout documents a README `## Audit` index line for
`Audit`/`Audit-Followup` files only; the 2026-07-01 Coverage Review is not indexed there (the audit's
own R-1 finding). Whether `Audit-Review` files should be indexed is a maintainer convention call, so
this review does not touch `README.md` — flagged for decision.
