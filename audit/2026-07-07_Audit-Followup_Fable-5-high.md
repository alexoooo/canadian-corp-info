# Audit Follow-up — 2026-07-04 audit

**Date**: 2026-07-07
**Scope**: Verify the fixes for the 185 findings in `2026-07-04_Audit_Fable-5-max.md`, as recorded in
`2026-07-06_Audit-Remediation_Opus-4.8-xhigh.md`, held in the current guide and that nothing regressed.
Every finding scored against the remediation's disposition — where the remediation refuted or corrected
a finding (FX-5, WD-5, RD-3, R-1, SBT-1), the page is verified against the corrected statement, not the
audit's original suggested fix. Findings located by grepping their quoted text, not the audit's recorded
line numbers (which drifted as fixes landed).
**Method**: Eight page-group verification passes (Overview/repo-wide, Corporate Lifecycle, Bookkeeping,
Operations, Cost Recovery, Paying Yourself, Investments, Filing & CRA), one at a time, each checkpointed
to `audit/wip/` before the next. Every CRITICAL and HIGH finding — and every claimed citation — re-checked
against the primary source where reachable: the ITA, ETA, and Income Tax Regulations (incl. SOR/91-51 the
Streamlined Accounting (GST/HST) Regulations, SOR/2010-117) from `laws-lois.justice.gc.ca`, which is
fetchable headlessly; CRA forms (RC4058 Rev. 20, RC4088 Rev. 21, GST62, T2 Schedules 7/21/53/141) from
verbatim mirror PDFs read via pdftotext, since `canada.ca` returns HTTP 403 to fetchers; the Ontario
Director's Notice BCA 3-001 re-fetched from `forms.mgcs.gov.on.ca`; VDP IC00-1R7 via fetchable EY / KPMG /
Blakes / Fasken alerts. Repo-wide regression greps and a mechanical link/anchor/STATUS-marker sweep on the
main thread. Four claimed partial fixes were re-confirmed by hand before inclusion.

> **Notice — this pass spanned two models.** The filename records `Fable-5-high`, the session that
> performed the bulk of the review: seven of the eight page-group verification units (Overview/repo-wide,
> Corporate Lifecycle, Bookkeeping, Operations, Cost Recovery, Paying Yourself, Investments) plus every
> repo-wide regression grep and the main-thread independent verification, all at **Fable 5, high effort**.
> Fable 5 then reached its token limit; the session switched to **Opus 4.8 (1M context), xhigh effort**,
> which completed the eighth unit (Filing & CRA), independently re-confirmed the four partial fixes, and
> assembled this document. Both model-effort pairs were read programmatically from the live session, never
> guessed. Per the maintainer's naming call, the file is named for the driving session (Fable-5-high),
> consistent with how `2026-07-06_Audit-Remediation_Opus-4.8-xhigh.md` was named for its opening session.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

Of the 185 findings the remediation dispositioned, **181 are fully resolved** in the current guide and
**4 are only partially applied**. All **7 CRITICAL** and all **24 HIGH** findings are verified-fixed,
each re-checked against its primary source. No regressions: no fix broke a link, contradicted its
surrounding text, or introduced a new tax error. RD-3 — a candidate the audit itself refuted — was
confirmed correctly left unchanged (its parenthetical is ITA s.129(5)(a)(i) variable D verbatim).

The 4 partials are the only action items, all clerical and none touching a tax rule (all four were
resolved the same day on maintainer instruction — see the [addendum](#addendum--partials-resolved-2026-07-07)):

| Code | Sev | Page | What is still missing |
|---|---|---|---|
| EC-4 | MEDIUM | Ledger-And-Accounts.md | Inline s.67.1 cite landed on both rows and in Expense-Classification's Citations, but Ledger-And-Accounts' Citations section (`:341-345`) never gained the s.67.1 entry the fix specified (it lists only s.230). |
| ACBT-2 | MEDIUM | Adjusted-Cost-Base-Tracking.md | `:78` corrected to "use 1.0 (a blank multiplies as zero)", but the second flagged instance `:118` still reads "`FX CAD Rate` can be blank (or equivalently 1.0)" — re-raising the exact defect and contradicting `:78`. |
| GL-4 | LOW | Glossary.md | The DTC alphabetical relocation landed, but the paired Gross-up/GRIP swap did not: `:38` Gross-up still precedes `:39` GRIP (case-insensitive, "gri" < "gro"). |
| DIV-2 | LOW | Dividends.md | The misreadable "(non-SBD, Small Business Deduction)" gloss is cured, but the fix's second limb — expanding *Small Business Deduction* at first mention — never landed; "SBD" first appears at `:83` and is expanded nowhere on the page. |

Each fix-log row for these four is marked `fixed`; each is in fact partially applied. That is a
remediation-record completeness gap, not an audit error (see [Observations](#observations-on-the-prior-audit)).

A separate set of **minor residuals noticed while reading** — none a prior finding, none blocking — is in
[Content notes](#content-notes-beyond-the-findings): three stale TODOs that now contradict their fixed
bodies, one term-mix (`Dividends.md:248` "AII" for AAII), a singular "gain/loss" recurrence in the rebuilt
FX GIFI table, two TLDR-level simplifications lagging their fixed bodies, and a couple of missing Citations
entries.

## Disposition of prior findings

Scored against the remediation record. "Primary source re-pulled" means fetched and read this pass, not
trusted from the audit.

### CRITICAL (7 of 7 verified-fixed)

| Code | Page | Status | Re-verified against |
|---|---|---|---|
| GL-1 | Glossary.md:8 | verified-fixed | ITA s.125(7) AAII def. paras (a)/(b) + s.129(4)(b)(iii) — fetched; the "AAII = AII" claim is gone, every clause maps to statute |
| SBT-2 | Small-Business-Tax.md:241 | verified-fixed | same s.125(7)/s.129(4) fetch; divergence stated for the exact audience the defect misled |
| T3B26-1 | T3-Box-26-Other-Income.md:96 (signed off) | verified-fixed | s.125(5.1)(b)/s.125(7); grind mechanics intact |
| ACB-4 | Adjusted-Cost-Base.md:131-137 (signed off) | verified-fixed | s.40(3.3)/(3.4)/(2)(g)(i) + s.54(h) fetched — suspended loss for the corp, no s.53(1)(f) bump; direction correct |
| ACBT-6 | Adjusted-Cost-Base-Tracking.md:190-193 (signed off) | verified-fixed | same s.40 fetch; s.53(1)(f) row only individual→corp |
| HST-8 | HST.md:244-247 | verified-fixed | ETA s.227(2)(b)/(c)(i) fetched — annual filer's GST74 by first day of the second fiscal quarter; RC4058 mirror corroborates |
| CRA-2 | CRA-Administration.md:134-139 | verified-fixed | Reg 5800(1)(a)(iv)/(v) fetched — general ledger moved to the 2-year-after-dissolution class, out of the 6-year bucket; agrees with WD-6 |

### HIGH (24 of 24 verified-fixed)

| Code | Page | Status | Re-verified against |
|---|---|---|---|
| GL-6 | Glossary.md:56/69 | verified-fixed | promised vocabulary present; superficial-loss anchor resolves to Adjusted-Cost-Base.md:120 |
| WD-1 | Winding-Down.md:37 diagram + :100 TX19 | verified-fixed | ITA s.159(2)-(3) fetched; diagram STOP→ASSETS→SWEEP→T2A→CLR→DIST→T2B→DISS coherent with TLDR/body/example |
| WD-4 | Winding-Down.md:79-83 | verified-fixed | ITA s.129(1)(a)(i)/(ii) fetched — eligible dividends draw ERDTOH only; per-flavour sizing, no "designate everything eligible" |
| PSC-3 | Preferred-Share-Consideration.md:92-93 | verified-fixed | ITA s.120.4 fetched — excluded-business five-prior-years, s.120.4(1.1)(c) spousal-65 rule; recipient-age error gone |
| FX-4 | Foreign-Currency.md:82/464/580 | verified-fixed | ITA s.39 fetched — s.39(1)/s.40 on disposition, s.39(2) on obligation settlement; attribution correct |
| FX-5 | Foreign-Currency.md table + examples + Ledger | verified-fixed | **scored against the superseding 1062/1063 correction, not the audit's defective 1060-3/4**: RC4088 mirror confirms 1062 Trade AR / 1063 allowance, 1060/1061 aggregates; T3-style tree; USD deposits plain 1003; Brokerage 2303-1 |
| HST-13 | HST.md:469 | verified-fixed | ETA s.222(1)/(1.1)/(3) fetched — statutory deemed trust; inverted "debtor not trustee" gone |
| CCA-1 | Capital-Cost-Allowance.md:202 + Tracking:238 | verified-fixed | Reg 1100(3) fetched — Classes 12 and 13 ARE prorated (neither in the exclusion list); exception list = 14/15 + specialty |
| CCA-2 | CCA hub/Classification/Examples/Tracking | verified-fixed | Reg 1100(2) rows (c.1)/(c.2)/(c.3) fetched — 44/46/50 to 100% for post-Apr-15-2024/pre-2027; laptop 4,000/0/400 internally consistent |
| OCT-4 | Owner-Corporation-Transactions.md:251-254 | verified-fixed | ITA s.6(1)(a)(i)/(f) fetched — "group plan" qualifier carries the fix; individual-policy chain correctly hedged (IT-428 lineage) |
| DE-3 | Dividends-Examples.md:55-56 | verified-fixed | ITA s.89(1) GRIP element G + T2 SCH 53 form (mirror) — closing balance not reduced by in-year dividends; Example A recomputed |
| ACB-2 | Adjusted-Cost-Base.md:64-65 (signed off) | verified-fixed | ITA s.86.1(1)/(2)(f)/(3) + s.52(2) fetched — default taxable foreign dividend, election apportions by relative FMV |
| ACBT-4 | Adjusted-Cost-Base-Tracking.md:184 (signed off) | verified-fixed | recomputed against the sheet's documented column formulas — stock-split Buy row works, memo row inert |
| ACBT-5 | Adjusted-Cost-Base-Tracking.md:185-189 (signed off) | verified-fixed | recomputed — close-parent Sell nets to zero, two FMV-split Buys, restore acquisition date |
| CIC-1 | Capital-Vs-Income-Character.md:33 | verified-fixed | direction corrected — CRA argues income on gains / capital on losses, taxpayer the reverse; consistent with the page's own table |
| T5-2 | T5.md:182-183/231 | verified-fixed | **T2 SCH 7 form decrypted and read verbatim** — Part 1 Box 032 (world) + Part 3 Box 019 (foreign→445), both entries present |
| CDA-2 | Capital-Dividend-Account.md:30/36 (signed off) | verified-fixed | ITA s.83(2)(a) fetched — CDA measured immediately before the dividend becomes payable |
| PAY-1 | Payment.md:10-14 | verified-fixed | ITA s.157(1)/(1.1)/(1.2)/(2.1) fetched — monthly/quarterly/$500k/$10M/clean-record/$3,000 all match |
| HST-5 | HST.md:226-227/264/289 | verified-fixed | SOR/91-51 s.17(1) C(a)(i) fetched + RC4058 mirror ITC list — no imports ITC on operating inputs |
| HST-10 | HST.md:437 | verified-fixed | RC4058 line-101 instruction (mirror, verbatim) + GST62 form; Example 2 = $50,850, $50,850×8.8%−$300 = $4,174.80 recomputed |
| RBD-1 | Receivables-And-Bad-Debts.md:13/79 | verified-fixed | SOR/91-51 s.17(1) B(b)/C(b) fetched + RC4058 bad-debts passage — no s.231 adjustment for specified supplies |
| CRA-3 | CRA-Administration.md:182-189 | verified-fixed | IC00-1R7 via Fasken/EY/Blakes + canada.ca snippet — unprompted 100%/75%, prompted ≤100%/25%, education-letter unprompted, apps on/after 2025-10-01 |
| T3-1 | T3.md + T5008/T5/T5-Box-18/T2-Schedules (signed off) | verified-fixed | **scored against branch (a), the FutureTax-capture-corrected mapping**; T2 SCH 7 form (decrypted) confirms line 705 = eligible taxable cap gains, amount V = "Taxable capital gains from line 113 of Schedule 1" |
| CCT-1 | CCA-Tracking.md:97-103 | verified-fixed | **scored against the FutureTax-capture-corrected `AIIP Eligible` statement**; Reg 1104(4)/(4.01) fetched — carve-out only Classes 54–56, column 225 drives the enhanced allowance |

### MEDIUM (79: 77 verified-fixed, 2 partial)

Verified-fixed by page-group (primary source re-pulled where noted): **Overview** — CM-3/SBT-4 (s.157(2.1)
fetched), GL-2, GL-3, GL-5, FR-1, FR-2, SC-1, SU-1 (ETA s.148 fetched). **Corporate Lifecycle** — WD-2
(ETA s.171(3) fetched), WD-3, WD-5 (Director's Notice BCA 3-001 re-fetched — corrected statement confirmed),
WD-6 (Reg 5800(1)(b) fetched), BA-2, AVS-2, AVS-3, AVS-4, PSC-1, PSC-2, EF-2, EF-3, EF-6 (s.84.1(2.31)(h)/
(2.32)(i) fetched), EF-7 (s.74.4(2)(c) fetched). **Bookkeeping** — BK-2, LA-3, EC-1 (RC4088 bands re-read),
EC-3, FX-2 (bankofcanada.ca re-fetched), FX-3, FX-6, FX-8. **Operations** — HST-1 (ETA s.237 fetched),
HST-2 (SOR/2010-117 s.13 fetched), HST-3, HST-4, HST-6 (SOR/91-51 s.15(3)/s.2(2)-(3) fetched), HST-7
(s.16(1) fetched), HST-9, HST-11, RBD-2 (ETA s.231(4) fetched), DON-1 (ITA s.110.1(1)(a) fetched), RPI-1,
RPI-2, CRV-1 (s.13(28) fetched), MAT-1. **Cost Recovery** — CCA-3 (s.13(7)(e) fetched), CCA-6, CCL-1
(Schedule II Classes 46/50 fetched), CCT-2. **Paying Yourself** — PY-1, PR-3 (RC4088 8622 include-list
re-read), PR-5, PR-6 (Box 45 codes 1–5, archived evidence — canada.ca 403), OCT-2 (s.69(1) fetched), DIV-1
(EIA s.5(2)(b) fetched), DIV-4 (s.89(1) element G + SCH 53 form), DIV-5/T2R-2 (SCH 53 conditional-filing
header, verbatim), RD-5 (s.89(14.1) fetched), RD-6 (s.129(1)(a)(ii)(B) fetched), T2R-3. **Investments** —
IN-1, ACB-1, ACB-3, CIC-2, T3B26-2, T3B25-1 (s.125(5.1)), T3B25-2, T5-1, T5-3, CDA-3. **Filing & CRA** —
FC-1, T2S-1 (canada.ca form-index title; mirror carries the superseded "Notes Checklist" revision), T2S-3
(archived S24 mirror quote), PAY-2 (agrees with the ETA s.237 HST.md side).

Partial: **EC-4** (Ledger-And-Accounts.md Citations missing the s.67.1 entry), **ACBT-2**
(Adjusted-Cost-Base-Tracking.md:118 still allows a blank FX rate, contradicting the corrected :78).

### LOW (75: 73 verified-fixed, 2 partial)

Verified-fixed: R-3, R-4, R-5, R-6 (one CCA:257 instance deliberately kept), R-7, OV-1, OV-2, CM-1,
CM-2/SBT-3 (guide-wide "Feb 28" sweep held), CL-1, CS-1, SU-2, BA-1, AVS-1, PSC-4, EF-1, EF-4, EF-5, BK-1,
BK-3, LA-1, LA-2, EC-2, EC-5, FX-1, FX-7 (break-even recomputed from the page's own inputs), OP-1, HST-12,
DF-1, DON-2, RPI-3, CCA-4, CCA-5, CCL-2, CCL-3, CCL-4, CCL-5 (s.248(1) "automobile" fetched), CCE-1, CCT-3,
CCT-4, PY-2, PY-3, PR-1, PR-2, PR-4, OCT-1, OCT-3, OCT-5 (s.15(2.6) fetched), DIV-3, DIV-6, RD-1, RD-2,
RD-4, DP-1, T2R-1, DE-2 (semicolons kept inline, per the remediation's corrected form), DE-4, IN-2, ACBT-1,
ACBT-3, ACBT-7, T58-1, T1135-1, CDA-1, CDA-4, PAY-3, WDR-1, R-2.

Partial: **GL-4** (Glossary Gross-up/GRIP order un-swapped), **DIV-2** ("SBD" never expanded on Dividends.md).

Non-standard dispositions confirmed correct: **R-1** (MEDIUM) — n/a, premise stale; README `## Audit`
delegates to `audit/Audit-Summary.md`, which indexes the Coverage Review (the audit's suggested README edit
would have been wrong). **SBT-1** (LOW) — resolved on the deliberate-long-title branch; the H1 "Small
Business Tax Overview" is correctly unchanged and the stale hyphenated link texts (GL-2/FR-1/IN-2) it
coexisted with are all gone.

## Independent verification detail

Load-bearing claims re-derived from the primary source this pass, not trusted from the audit or remediation:

- **AAII ≠ AII (GL-1/SBT-2/T3B26-1/T3B25-1/T5-1)** — ITA s.125(7) "adjusted aggregate investment income"
  paras (a)/(b) and s.129(4) "aggregate investment income" (b)(iii) fetched verbatim. Para (b) rewrites AII
  (b)(iii) to exclude only dividends "from a corporation connected with it", so non-connected (portfolio)
  dividends flow into AAII though AII excludes all deductible dividends; para (a) carves active-asset
  gains/losses out and drops the s.111(1)(b) subtraction (= prior-year net capital losses added back). The
  guide's entries map to the statute clause-for-clause; the false equality is gone everywhere it appeared.
- **Corporate wash-sale = suspended loss (ACB-4/ACBT-6)** — ITA s.40(3.3)/(3.4) fetched: where the corp
  sells at a loss and an affiliated person holds a substituted property 30 days after, the loss is deemed
  nil and released when the affiliated group is out; s.54(h)/s.40(2)(g)(i) superficial-loss + s.53(1)(f)
  ACB addition run only individual→corp. Both signed-off pages state the correct direction and never bump a
  corporate ACB for the corp's own denied loss.
- **Quick Method (HST-5/6/7/8/10, RBD-1)** — SOR/91-51 ss.2(2)/(3), 15(3)/(5)/(5.1), 16(1), 17(1)
  B(b)/C(a)(i)/C(b) and ETA s.227(2) fetched; RC4058 Rev. 20 and GST62 re-extracted from mirrors. ITCs limited
  to real property and capital assets; $400k first-election window with base exclusions in s.2(2)/(3);
  365-day eligibility; GST74 by the first day of the second fiscal quarter for annual filers; line 101
  GST/HST-inclusive (the GST62 form itself so instructs); no s.231 bad-debt adjustment for specified
  supplies. Example 2's $50,850 line 101 and $4,174.80 net tax recompute.
- **T2 SCH 7 mapping (T3-1/T5-2)** — the cchwebsites SCH 7 mirror the remediation reported as encrypted was
  decrypted (AESV2/empty password) and read verbatim: Part 2 line 705 "Eligible portion of taxable capital
  gains", Part 6 amount V "Taxable capital gains from line 113 of Schedule 1", Part 1 line 032 (world),
  Part 3 line 019 (foreign→445). This is first-hand corroboration of branch (a) — line 113 auto-fills the
  taxable half, the full book gain is backed out separately — matching the maintainer's FutureTax capture.
- **CCA enhanced first-year (CCA-1/CCA-2/CCT-1)** — Reg 1100(2) rows (c.1)/(c.2)/(c.3), 1100(3), 1104(4)/
  (4.01), 1100(1)(b)/(c.1), Schedule II Classes 46/50, and ITA s.13(7)(e)/s.248(1) fetched. Classes 44/46/50
  reach 100% for post-Apr-15-2024/pre-2027 property; Classes 12 and 13 are prorated (neither in the 1100(3)
  exclusion list); Schedule 8 column 225 carries AIIP/ZEV additions and drives the enhanced allowance.
- **Ontario dissolution consent (WD-5)** — Director's Notice BCA 3-001 (effective 2021-10-19) re-fetched
  verbatim from `forms.mgcs.gov.on.ca`: "Minister of Finance consent is required … A request for consent
  will automatically be forwarded to the Ministry of Finance." Winding-Down.md:107 carries the remediation's
  corrected statement (consent still required, auto-forwarded, OBCA s.238(1) statements), NOT the audit's
  refuted "not required since October 2021". Caution recorded for future passes: WebFetch's summariser
  misread this PDF as saying the opposite of its verbatim text.
- **Records retention (CRA-2/WD-6)** — Reg 5800(1) fetched: general ledger = 5800(1)(a)(iv), special
  contracts = (a)(v), both under s.230(4)(a) (2 years after dissolution); 5800(1)(b) sweeps ordinary records
  into the same clock once dissolved. CRA-Administration.md and Winding-Down.md agree with the regulation and
  each other.
- **Instalments (PAY-1/CM-3/SBT-4/HST-1/PAY-2)** — ITA s.157(1)/(1.1)/(1.2)/(2.1) and s.157(2.1), ETA
  s.237(2)/(3) fetched. Corporate instalments monthly/quarterly with the $500k/$10M/clean-record conditions
  and the $3,000-or-less waiver; GST/HST instalments at "$3,000 or more" net tax; both stated consistently
  across Payment.md, HST.md, Small-Business-Tax.md, Concept-Map.md.

## Observations on the prior audit

- **Four fixes the remediation marked `fixed` are only partially applied** (GL-4, DIV-2, EC-4, ACBT-2 —
  see the TL;DR table). Each is a second limb of a two-part fix: a paired alphabetical swap, a first-mention
  acronym expansion, a Citations-section entry, and a second occurrence of a corrected caveat. The
  load-bearing halves landed; the fix-log overstates completion on these four. All LOW/MEDIUM, all clerical.
- **The audit's WIP-page census miscounts.** Its closing tally reads "44 REVIEW-marked pages / 16 signed-off
  pages, in a perfect two-way match with the README † markers", but its own per-group detail sums to **49
  REVIEW-marked / 11 signed-off**, which matches the mechanical count today (60 guide pages; 49 carry
  `STATUS: AI GENERATED, REVIEW IN PROGRESS`; 11 unmarked; README carries 49 †-marked links plus one legend
  dagger). No STATUS line changed between the audit commit and now (`git diff`). The per-group work was
  right; only the summary line is wrong.
- **WD-5 stands as the cycle's one factual mis-finding**, already caught and corrected in remediation and
  independently re-verified here from the primary source. The deferred-verify gate did its job: the audit's
  fix text would have introduced a new error. No other finding was factually wrong in its recommendation;
  the FX-5 defect (audit prescribed the wrong GIFI target) was likewise caught in remediation and its
  superseding 1062/1063 form re-verified against RC4088 this pass.
- **Precision note, not an error (FX-4).** The page's s.39(2) attribution is correct. Re-reading the statute
  this pass: s.39(2) excludes currency-disposition gains for *all* taxpayers (corporations via the s.39(1)
  branch, individuals via s.39(1.1)), and applies to corporations for FX gains arising *without* a
  disposition (e.g. settling a foreign-currency obligation), except on their own shares. The guide states
  this correctly; noted only to pin the reading for future passes.

## Content notes beyond the findings

Minor residuals noticed while reading — none a prior finding, none blocking, all the maintainer's call:

- **Stale TODOs now contradicting their own fixed bodies** (housekeeping, TODO-section only):
  `Receivables-And-Bad-Debts.md:127` still poses a wrong s.231(4) paraphrase that RBD-2 settled;
  `Donations.md:119` still asks the question DON-1 answered; `CCA-Tracking.md:410` still asks to confirm the
  Class 13/14 limits that CCT-2 fixed with the Reg 1100(1)(b) cite. Each audit "Fix" text is fully present in
  the body; the TODOs are safe to discharge.
- **`Dividends.md:248` term-mix** — after correctly pooling "the AAII of all associated corporations", the
  operative clause reverts to "an investment holdco's **AII** still grinds"; post-sweep the page otherwise
  distinguishes the two terms (`:229`, `:286`). Should read AAII. (This is the one residual with a whiff of
  correctness, though harmless in context.)
- **Rebuilt FX GIFI table wording (FX-5 side-effect)** — `Foreign-Currency.md:145` titles the 8231 parent
  node "Foreign exchange gain/loss" (singular), where RC4088's exact title — and the page's own `:77` after
  the FX-3 fix — is "Foreign exchange gains/losses"; the table's sub-account names also differ from the
  `FX gain/loss - CAD/USD` names the worked examples use. FX-3's defect class recurring one section below the
  fixed instance; cosmetic, no code numbers affected.
- **TLDR-level simplifications lagging their fixed bodies**: `CRA-Administration.md:15` still states a flat
  "6 years" without the general-ledger carve-out the CRA-2 body fix added; `T2-Schedules.md:11` lists S53
  among the "same core every year" while `:72` states the conditional trigger (consistent with the
  file-every-year habit the fix recommends, but the last spot presenting S53 as unconditional).
- **Missing Citations entries** (page convention): `HST.md:526` lists Memorandum 3.3 but not the 3-3-2 the
  body now cites (HST-2); `Ledger-And-Accounts.md` Citations lacks the s.67.1 entry (= EC-4); `Estate-Freeze.md:58`
  mentions the s.22 election inline with no link or Citations entry (the EF-3 optional addition).
- **`CCA-Tracking.md:98` RAIIP window** — "available for use before 2030" truncates Reg 1104(4.01)'s
  before-2034 window; accurate for every year through 2029 (same accurate-today shape as CCL-4), pre-existing,
  a future-proofing candidate.
- **Cross-doc / convention** (out of finding scope): `AGENTS.md:20` still calls Concept-Map the "start here"
  page while OV-1 settled Overview.md on a primer-first sequence; sentence-cased link text
  ("[Owner-corporation transactions]") remains pervasive guide-wide beyond BA-1's deliberately narrow scope;
  `Winding-Down.md:162` cites Notice BCA 3-001 under a paraphrased title; `Bookkeeping.md:33` carries the
  loosest surviving statement of Expense-Classification's scope.

## What was NOT re-flagged

- **No regressions.** All relative `.md` links across the guide + README + AGENTS resolve (62 files);
  every intra-guide anchor fragment resolves to a real heading (10 flagged by the slugifier were confirmed
  false positives — slash-headings and `<!-- [done] -->` comments); no fix broke a link or contradicted its
  surrounding prose; worked-example arithmetic still ties (Ledger $22,040; FX CAD 300 gain / 160 loss;
  laptop 4,000/0/400; Dividends Example A).
- **W1 receivables sweep holds** — repo-wide grep of `1060`/`1061` finds only the legitimate
  investment-distribution convention (`1060-parent` tree nodes, `1060-1` on the five Investments pages). No
  trade-AR `1060`/`1061` anywhere in `guide/`.
- **Repo-wide style sweeps clean** — no "Feb 28" slip-deadline shorthand; no "sketched"; no "GIFI NNNN-N"
  labels; no US spellings in prose (only `-ize`/`-ization` Canadian forms and a Mermaid `color:` directive);
  the only "simply" is the deliberately-kept `Capital-Cost-Allowance.md:257`.
- **RD-3 confirmed refuted** — the parenthetical at `ERDTOH-NERDTOH.md:65` is byte-identical to the audit's
  quote and is ITA s.129(5)(a)(i) variable D verbatim; the proposed deletion was correctly not applied.
- **W2 GIFI codes hold** — the load-bearing codes were re-verified against the RC4088 mirror directly this
  pass (1062/1063, the 1060/1061 aggregates, 8231, the 8300–9369 expense bands, and 12 investment-tree
  codes); all match. **W3 confirmed** — the GIFI-verification rule is live in
  `docs/Audit-Instructions.md` § Verification discipline with FX-5 as the cautionary tale.

## Status of WIP / pending-review pages

- **60 guide pages: 49 REVIEW-marked, 11 signed-off** (the correct count; see Observations). No STATUS
  marker changed since the audit commit. README's †-marker index is a two-way match (49 marked links).
- **Signed-off pages edited during remediation, all committed by the maintainer**: T3.md, T5008.md,
  T3-Box-26-Other-Income.md, Adjusted-Cost-Base.md, Adjusted-Cost-Base-Tracking.md, Capital-Dividend-Account.md,
  Small-Business-Tax.md, Concept-Map.md, Tax-Integration.md, Dividends.md, ERDTOH-NERDTOH.md. This pass read
  the six Investments signed-off pages in full — the CRITICAL/HIGH edits on them (ACB-4, ACBT-6, ACB-2,
  ACBT-4/5, CDA-2, T3-1) read cleanly, introduce no double-count or broken link, and match the primary
  sources. **T3.md and T5008.md remain flagged in the remediation record for the maintainer's re-sign-off**
  (edited on FutureTax-capture evidence); the followup independently re-verified those edits against the
  decrypted T2 SCH 7 form.
- **Payment.md** has grown a substantive "when" group (PAY-1) but is still the least mature page in shape
  (the audit's report-only observation stands); AGENTS.md still labels it a stub, consistent with the README
  annotations. Not a WIP-marker defect.

## Addendum — partials resolved 2026-07-07

After the verification pass, on the maintainer's instruction, the four partial fixes above were completed
in `guide/` (Opus 4.8, xhigh). This is post-audit remediation, not part of the read-only verification pass;
the edits are left in the working tree for the maintainer to commit.

- **EC-4** — `Ledger-And-Accounts.md` Citations section gains `Income Tax Act s.67.1 - 50% limit on the
  deduction for meals and entertainment`, matching the inline cite already present at `:276`.
- **ACBT-2** — `Adjusted-Cost-Base-Tracking.md:118` changed from "`FX CAD Rate` can be blank (or
  equivalently 1.0)" to "use 1.0 (a blank multiplies as zero under the `Gross Amount CAD` formula below,
  which would zero the CAD amount)", aligning it with the corrected `:78`.
- **GL-4** — `Glossary.md` GRIP and Gross-up entries swapped into case-insensitive alphabetical order
  (GIFI → GRIP → Gross-up → Half-year rule).
- **DIV-2** — `Dividends.md:83` first mention now expands the acronym: "SBD (Small Business Deduction)
  grind".

Two of the four sit on **signed-off pages** (`Adjusted-Cost-Base-Tracking.md`, `Dividends.md`) — both were
already edited during the 2026-07-06 remediation, and these completions are **flagged for the maintainer's
re-sign-off**. The other two (`Ledger-And-Accounts.md`, `Glossary.md`) are AI-generated / review-in-progress.
No tax rule, citation URL, or worked-example number changed; the s.67.1 URL is the one already verified live
on the same page. The content-note residuals (stale TODOs, the `Dividends.md:248` term-mix, the FX table
singular "gain/loss", the TLDR simplifications) were left untouched — those were flagged for the maintainer's
call, not part of the "resolve the partials" instruction.

---

*Follow-up verification. The verification pass itself is read-only over `guide/`; the four partial-fix
completions in the addendum above were applied afterward on maintainer instruction and, with the other
residuals, remain the maintainer's to commit. `audit/wip/` (this pass's checkpoints + the archived prior
cycle under `prev-2026-07-06/`) is scratch and can be cleared at the maintainer's discretion.*
