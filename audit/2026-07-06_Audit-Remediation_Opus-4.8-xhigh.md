# Audit Remediation — 2026-07-04 audit (185 findings)

Living record of resolving `2026-07-04_Audit_Fable-5-max.md` (7 CRITICAL / 24 HIGH / 79 MEDIUM /
75 LOW). Produced by Opus 4.8 (1M context) at xhigh effort, opened 2026-07-06. Promoted from the
git-ignored working fix-log after a **material defect in the audit** surfaced during remediation
(below). Per-finding fix text lives in the audit; this file records dispositions, the audit's own
defects, and new work items discovered while fixing.

Disposition legend: `fixed` / `refuted` / `deferred-verify` (held for maintainer check) / `pending` / `n/a`.

---

## Material defect in the 2026-07-04 audit

The audit — and the independent `2026-07-06_Audit-Review_Opus-4.8-max.md`, which accepted it
wholesale — mishandled the `Foreign-Currency.md` GIFI account structure: it flagged a surface
symptom, prescribed an incorrect fix, and missed the real defects on the same table. Surfaced by
the maintainer during HIGH-tier review.

### 1. FX-5 prescribed an incorrect fix

The audit correctly noticed that `1060-1` was defined two ways (`T3.md`: *Investment distributions
receivable*; `Foreign-Currency.md`: trade *Accounts receivable*) and called it a collision. But it
prescribed renumbering FX's trade receivables to `1060-3` / `1060-4` — which perpetuates the
underlying error. Client/trade receivables belong on **GIFI 1062 (Trade accounts receivable)**, not
any `1060-x` sub-code: per RC4088, `1060` is the *aggregate* line that merely "includes … amounts
that would otherwise be reported under items 1062, 1064, 1066, 1067, 1068, 1069 and 1071." The audit
reasoned from consistency with the (unreviewed) Investments pages' use of `1060` and so endorsed the
wrong target. The doubtful-accounts allowance carries the same defect: trade AR uses **1063**
(*Allowance for doubtful trade accounts receivable*), not the aggregate **1061**.

### 2. Defects the audit missed on the same table

None of the following were flagged by the audit or the review:

- **Broken table structure.** The `## GIFI Mapping` table was a flat 4-column list, discarding the
  indented account-tree convention the hand-written `T3.md` establishes (parent/subtotal nodes
  `2599-valid` / `1599-calc` / `1060-parent`, `&ensp; └` nesting, code prefix = GIFI rollup).
- **`Investments - DLR/DLR.U` (2303-1)** — one account holding two currencies (DLR is CAD-listed,
  DLR.U USD-listed) and named for specific tickers; violates one-currency-per-account and is
  over-granular.
- **`1002-3` for USD deposits** — the prefix implies rollup to GIFI 1002, but the account rolls to
  **1003**; under the page's own "prefix = rollup" rule it should be plain **`1003`**.

### 3. Root cause (methodological)

Both the audit and my initial HIGH-tier application of FX-5 treated *consistency with the existing
unreviewed AI-generated pages* as evidence of correctness. It is not — those pages carry replicated
errors. The standard is correctness against RC4088 / the ITA / the reviewed hand-written pages
(`T3.md` and the other hand-authored pages define the real conventions). Recorded as a standing
working note.

---

## Corrections applied (supersede FX-5)

`Foreign-Currency.md` and `Ledger-And-Accounts.md`:

- Rebuilt the GIFI Mapping table as the `T3.md` indented account tree (parent/subtotal nodes,
  `&ensp; └` nesting, Account column first).
- USD deposits → plain **`1003`** (only account on that GIFI line).
- `Investments - DLR/DLR.U` → **`Brokerage`** (`2303-1`, CAD), matching T3's own `2303-1`; the
  DLR/DLR.U tickers stay in the worked-example prose as the securities traded.
- Trade receivables → **`Trade accounts receivable`** `1062-1` (CAD) / `1062-2` (USD); doubtful-
  accounts allowance → **`1063`**. All FX worked-example journal rows, the Schedule 100 reference,
  the mermaid diagram node, and the Ledger sub-code note + chart-of-accounts rows updated to match.

This **supersedes the audit's FX-5 fix** (`1060-3` / `1060-4`), which was applied first and then
corrected.

---

## New work items discovered (open)

- **W1 — Guide-wide GIFI receivables sweep.** The `1060`-for-trade-AR (and `1061`-for-allowance)
  error is guide-wide, not FX-local. Map trade/client receivables `1060` → `1062` and the doubtful-
  accounts allowance `1061` → `1063` on: `Receivables-And-Bad-Debts.md` (:10 / :32 / :36 / :67 AR;
  :43 / :69 allowance), `HST.md` (:148 / :154 coded; :167 / :360 / :370 / :385 name-only),
  `Inventory-And-COGS.md` (:202), `Glossary.md` (:11). Leave genuine non-trade receivables on their
  correct lines (T3 `1060-1` investment distributions; taxes receivable `1066`; interest receivable
  `1067`). Pending maintainer go-ahead — guide-wide and beyond the 2026-07-04 audit scope.
- **W2 — Audit AI-generated account / GIFI tables against the T3 convention.** The Foreign-Currency
  table defect is unlikely to be isolated. Other AI-generated pages carrying chart-of-accounts or
  GIFI tables should be checked for both structure (indented tree, parent nodes, prefix = rollup)
  and code correctness (right GIFI line, one currency per account, suffix only where a line is
  split). Not yet scoped.
- **W3 — Audit-method note.** This cycle's audit (Fable-5) and review (Opus-4.8) shared a blind
  spot: neither questioned GIFI-code correctness or account-tree structure on the AI-generated
  bookkeeping pages, and the audit's one receivables finding endorsed a wrong fix. Future audit
  passes should verify GIFI mappings against RC4088 directly rather than against sibling pages.

---

## Fix-log — disposition of all 185 findings

### CRITICAL (7) — Phase 1 (done)

| Code | Page | Joint group | Disposition |
|---|---|---|---|
| GL-1 | Glossary.md:8 | AAII trio | fixed |
| SBT-2 | Small-Business-Tax.md:241 | AAII trio | fixed |
| T3B26-1 | T3-Box-26-Other-Income.md:96 (signed off) | AAII trio | fixed |
| ACB-4 | Adjusted-Cost-Base.md:124-133 (signed off) | wash-sale | fixed |
| ACBT-6 | Adjusted-Cost-Base-Tracking.md:186 (signed off) | wash-sale | fixed |
| HST-8 | HST.md:242 | — | fixed |
| CRA-2 | CRA-Administration.md:135 | Reg 5800 | fixed |

Swept early in Phase 1 (same defect as a CRITICAL): **T3B25-1** (AII→AAII trigger, T3_Box-25:34);
**T5-1** (AII→AAII trigger, T5.md:173); **WD-6** (Reg 5800 dissolved side, Winding-Down:105);
`Dividends.md:228` "differs slightly" list aligned (AAII spillover, content-note).

### HIGH (24) — Phase 2 (non-gated done; 6 gated held)

| Code | Page | Joint/notes | Disposition |
|---|---|---|---|
| GL-6 | Glossary.md (phantom-distribution + superficial-loss) | ACB anchor confirmed | fixed |
| WD-1 | Winding-Down.md:37 diagram reorder + :94 TX19 + coherence bullet | — | fixed |
| WD-4 | Winding-Down.md:77 | per-flavour sizing (s.129(1) re-verified) | fixed |
| PSC-3 | Preferred-Share-Consideration.md:90 | TOSI (s.120.4 re-verified) | fixed |
| FX-4 | Foreign-Currency.md:82/:453/:569/:571 | s.39(2)→s.39(1)/s.40 (re-verified) | fixed |
| FX-5 | Foreign-Currency.md table+examples + Ledger | **audit fix (1060-3/4) DEFECTIVE — superseded**: trade AR → 1062, allowance 1063 (see defect report) | fixed |
| HST-13 | HST.md (Trust account convention bullet) | deemed trust s.222 (re-verified) | fixed |
| CCA-1 | Capital-Cost-Allowance.md:202 + CCA-Tracking:234 | Reg 1100(3): 12/13 prorate | fixed |
| CCA-2 | CCA hub/Classification/Examples/Tracking | 44/46/50 cascade; laptop → 4,000/0/400 | fixed |
| OCT-4 | Owner-Corporation-Transactions.md:248 | group-plan part fixed; admin hedge kept | fixed |
| DE-3 | Dividends-Examples.md:55 | GRIP prev-year (S53 line 300/590) | fixed |
| ACB-2 | Adjusted-Cost-Base.md:63-64 (signed off) | foreign spin-off (s.86.1/s.52(2)) | fixed |
| ACBT-4 | Adjusted-Cost-Base-Tracking.md:184 (signed off) | stock split | fixed |
| ACBT-5 | Adjusted-Cost-Base-Tracking.md:185 (signed off) | spin-off recipe | fixed |
| CIC-1 | Capital-Vs-Income-Character.md:33 | positions backwards | fixed |
| T5-2 | T5.md:182/:230 | S7 Part 1 box 032 added | fixed |
| CDA-2 | Capital-Dividend-Account.md:30/:36 (signed off) | s.83(2)(a) timing (re-verified) | fixed |
| PAY-1 | Payment.md (Corporate Income Tax section) | added corp-tax "when" group (s.157/s.248) | fixed |
| HST-5 | HST.md:228/:259/:283 | RC4058 | **deferred-verify** |
| HST-10 | HST.md:431 | RC4058 line-101 | **deferred-verify** |
| RBD-1 | Receivables-And-Bad-Debts.md:13/:79 | RC4058 | **deferred-verify** |
| CRA-3 | CRA-Administration.md:182-221 | IC00-1R7 | **deferred-verify** |
| T3-1 | T3.md:219-221 + T5008/T5/T5B18 | FutureTax S1-113/S7-V | **deferred-verify** |
| CCT-1 | CCA-Tracking.md:100 | FutureTax S8-225 | **deferred-verify** |

### MEDIUM (79) — Phase 3 (done; gated held)

All non-gated MEDIUM findings fixed this pass (Opus 4.8, 2026-07-06). By group:

- **Overview**: CM-3/SBT-4, GL-2, GL-3, GL-5, FR-1, FR-2, SC-1, SU-1.
- **Corporate Lifecycle**: WD-2, WD-3, BA-2, AVS-2, AVS-3, AVS-4, PSC-1, PSC-2, EF-2, EF-3, EF-6, EF-7.
- **Bookkeeping**: BK-2, LA-3, EC-1, EC-3, EC-4, FX-2, FX-3, FX-6, FX-8.
- **Operations**: HST-1, HST-2, HST-4, HST-9, HST-11, RBD-2, DON-1, RPI-1, RPI-2, CRV-1, MAT-1,
  CCA-3, CCA-6, CCL-1, CCT-2.
- **Paying Yourself**: PY-1, PR-3, PR-5, OCT-2, DIV-1, DIV-4, DIV-5/T2R-2, RD-5, RD-6, T2R-3, DE-1.
- **Investments**: IN-1, ACB-1, ACB-3, ACBT-2, CIC-2, T3B26-2, T3B25-2, T5-3, CDA-3.
- **Filing and CRA**: FC-1, PAY-2.

Swept-early check (the eight flagged "likely swept"): **WD-6, T3B25-1, T5-1 confirmed already fixed**
in Phase 1 — no action. **DIV-4, DIV-5/T2R-2, T2R-3, CDA-3, DE-1 were NOT swept** — fixed this pass.

Cross-file sweeps landed together:
- DE-1 budget "enacted" framing: `Dividends-Examples.md`, `Small-Business-Tax.md`, `Tax-Integration.md`,
  and the `Dividends.md` watch-TODO cleared (Concept-Map carried no live budget stanza).
- S53 conditional-filing (file only when an eligible dividend was paid or GRIP changed): `Dividends.md`,
  `T2-Reporting.md`, `T2-Schedules.md`.
- T2054 CDA-computation schedule (Reg 2101): `T2-Reporting.md`, `Dividends-Examples.md`,
  `Capital-Dividend-Account.md`.
- GST/HST instalment "$3,000 or more" boundary + lesser-of base: `HST.md`, `Payment.md`,
  `Small-Business-Tax.md` (corporate-tax "exceeds $3,000" left as-is — s.157(2.1) relieves at ≤ $3,000).

**Roster defect caught**: FX-3 (GIFI 8231 title misquoted) is a MEDIUM in the audit but was dropped from
this file's MEDIUM list. Fixed this pass — `Foreign-Currency.md:77` now uses the exact RC4088 title
`Foreign exchange gains/losses` (no "Realized").

PR-3 taken as the GIFI-aligned option: employer CPP half moved to **8622** *Employer's portion of
employee benefits* (TLDR, account list, journal table, TODO), not the "state 9060 as a deliberate
simplification" fallback.

Gated (held for maintainer): HST-3, HST-6, HST-7, T2S-1, T2S-3, WD-5, PR-6.

### LOW (75) — Phase 4 (pending; gated held)

R-3, R-4, R-5, R-6, R-7, OV-1, OV-2, CM-1, CM-2/SBT-3, GL-4, FR-3, SBT-1, CL-1, CS-1, SU-2,
BA-1, AVS-1, PSC-4, EF-1, EF-4, EF-5, BK-1, BK-3, LA-1, LA-2, EC-2, EC-5, FX-1, FX-7, OP-1,
HST-12, DF-1, DON-2, RPI-3, CCA-4, CCA-5, CCL-2, CCL-3, CCL-4, CCL-5, CCE-1, CCT-3, CCT-4,
PY-2, PY-3, PR-1, PR-2, PR-4, OCT-1, OCT-3, OCT-5, DIV-2, DIV-3, DIV-6, RD-1, RD-2, RD-4,
DP-1, T2R-1, DE-2, DE-4, IN-2, ACBT-1, ACBT-3, ACBT-7, T58-1, T1135-1, CDA-1, CDA-4, T2S-2(gated),
CRA-1(gated), PAY-3, WDR-1, R-1(README, MED), R-2(AGENTS, MED).
Disposition: pending. Gated: T2S-2, CRA-1.

### Refuted (no edit)

| Code | Page | Reason |
|---|---|---|
| RD-3 | ERDTOH-NERDTOH.md:65 | Parenthetical is ITA s.129(5)(a)(i)(B) variable D verbatim — do not delete. |

### Deferred — maintainer-verify-first

Held pending the maintainer's own check of canada.ca forms, FutureTax behaviour, and Ontario rules;
drafted in `audit/wip/verify-checklist.md`. Gated codes: HST-3, HST-5, HST-6, HST-7, HST-10, RBD-1,
CRA-1, CRA-3, T2S-1, T2S-2, T2S-3, T3-1, CCT-1, WD-5, PR-6.
