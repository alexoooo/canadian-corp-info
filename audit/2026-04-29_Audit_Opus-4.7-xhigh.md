# Documentation Audit — Follow-up

**Date**: 2026-04-29
**Scope**: Verify that fixes from the 2026-04-28 audit landed correctly and re-read all top-level
Markdown for any new issues. The previous audit at
[2026-04-28_Audit_Opus-4.7-xhigh.md](2026-04-28_Audit_Opus-4.7-xhigh.md) is treated as the baseline.
**Method**: Each file read in full; every original finding traced to the corresponding line(s) in
the current source; cross-references checked for newly-introduced inconsistencies.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

- The fix work is thorough. All HIGH items, all MEDIUM items, and all LOW items from the
  original audit were addressed.
- No CRITICAL or HIGH new issues found. A handful of MEDIUM/LOW residuals and a few items the
  original audit did not catch are listed below.
- Two genuinely valuable new pieces of content landed: the worked ROC-pushes-ACB-below-zero
  example in `Adjusted-Cost-Base.md` and the worked CDA-crosses-zero example in
  `Capital-Dividend-Account.md`. Both were called out by the previous audit and both are now
  load-bearing aids on those pages.

---

## Original-audit findings — disposition

### Repo-wide

- **[HIGH] DRIP date convention** — fixed. `Adjusted-Cost-Base.md:41-43` and
  `Adjusted-Cost-Base-Tracking.md:179` both now specify the payment/reinvestment date and tie the
  FX rate to the same date. The two files are consistent.
- **[MEDIUM] Bank of Canada FX rate convention** — fixed. `Adjusted-Cost-Base.md:105` defines
  "indicative midpoint at approximately 16:30 ET; the legacy noon rate is no longer published".
  `Adjusted-Cost-Base-Tracking.md:79,111` forward-reference the convention.
- **[LOW] Schedule abbreviation drift** — *mostly* fixed. The repo now uses
  "Schedule N (SN)" on first use within a section. Two spots still introduce abbreviations first;
  see new finding **N-2** below.

### Adjusted-Cost-Base.md

| Original finding | Status | Location |
|---|---|---|
| s.40(3) inline anchor at "excess becomes a capital gain" | fixed | L53 |
| s.86.1 spin-off carve-out note | fixed | L65-66 |
| "decreases the *total* ACB" (sale wording) | fixed | L46 |
| Date-of-acquisition triple-statement | fixed (consolidated to one paragraph) | L96-100 |
| Superficial-loss bullet placement | fixed (now a forward reference) | L80 |
| Distribution-date FX vs balance-sheet/income-statement rates split | fixed | L105-110 |
| **Worked numerical example for ROC ↓ ACB ↓ 0** | fixed (4-year example, very clear) | L56-61 |
| Stock-split / spin-off walk-through | fixed (in Tracking.md L175-178) | — |
| Define "identical property" | fixed | L130-133 |
| Inline ITA citations (s.47(1), s.54, s.40(3)) | fixed | L98, L127, L53 |
| DRIP run-on sentence split | fixed | L41-43 |
| Drop "and it's not reinvested" parenthetical | fixed | L44 |

### Adjusted-Cost-Base-Tracking.md

| Original finding | Status | Location |
|---|---|---|
| ROC formula `MIN` rationale at the formula | fixed | L160 |
| Buy-vs-Sell commission convention note | fixed | L167 |
| `Symbol\$1` backslash-escape rendering bug | fixed (now `Symbol`$1, no stray backslash) | L137 |
| FX rate convention statement | fixed | L77-80 |
| De-duplicate cancellation paragraph | fixed (forward-references ACB.md) | L15 |
| "name/symbol" slash split | fixed | L25 |
| FX sourcing when BoC has no rate (US-only trading day) | fixed | L80 |
| Splits / spin-offs / superficial-loss workarounds | fixed (added in Notes) | L175-178 |
| Standard sections (Related, Citations, TODO) | partially fixed — Related and Citations added; no TODO, but acceptable for a companion page | L182-191 |
| Limitations run-on (L12) | fixed (split into bullets) | L11-15 |
| Quote-style for *Horizons ETFs*, *Global X* | fixed (italics) | L33 |

### T3.md

| Original finding | Status | Location |
|---|---|---|
| Box 42 gloss tightened ("typically a downward adjustment, most often Return of Capital") | fixed | L23 |
| Part IV rate clarity (25% / 38⅓%) | fixed | L142-144 |
| Schedule 21 / line 705 — connect double-dip rationale | fixed (now leads with the why) | L172-179 |
| Brokerage-tone contradiction with T5008 | fixed (T5008.md L81 carries the qualifier) | — |
| Trade-off lead at 2303-1 reconciliation | fixed | L107-111 |
| GRIP/ERDTOH/NERDTOH/CDA spoiler converted to forward references | fixed | L115-116 |
| Move S3 personal-vs-corporate caveat to top of section | fixed | L125 |
| State $500k SBD scope cap directly | fixed | L9 |
| Promote "Dividends" parenthetical | fixed | L44 |
| Acknowledge T3 Box 23 (non-eligible dividends) | fixed | L132 |
| Superficial-loss link to ACB.md | fixed | L39 |
| NERDTOH/ERDTOH refund formulae (30⅔% / 38⅓%) | fixed | L147-148 |
| Replace blog with CRA citation in load-bearing position | fixed (CRA T4012 added at L152; the blog remains in *Links* — acceptable) | L152 |
| Expand CDS / CTBS acronyms | fixed | L50 |
| Comma splice "are not final, they can…" | fixed (semicolon) | L46 |
| "tradeoff" → "trade-off" | fixed | L107 |
| "(you did not dispose of anything)" | fixed (re-cast as "no actual disposition occurred") | L240 |
| Audience/scope heading uneven | **finding was unnecessary** — see "Re-evaluation" below | — |

### T3-Box-26-Other-Income.md

| Original finding | Status | Location |
|---|---|---|
| **"Why a CCPC owner cares" — SBD grind + NERDTOH** | fixed (s.125(5.1) $50k → $150k phase-out and 30⅔% NERDTOH leg both stated) | L96-97 |
| "Risk of overpaying" → "this typically pays slightly more tax" | fixed | L71 |
| "practical" vs "conservative" filing-position drift | fixed in spirit — the two phrases now describe distinguishable things, not a single stance | L66-71 |
| "Active business carried on by the trust" placement | fixed (moved out of the Box-26 examples list) | L54 |
| Vanilla-ETF qualifier sharpened to explicit out-of-scope | fixed | L108 |
| AII / SBD threshold definition | fixed | L96 |
| GIFI 8094 vs 8090 boundary worked example | fixed | L117 |
| Locate "issuer tax notes" | fixed | L65 |
| Drop quotes around "official confirmation" | fixed (re-cast wording) | L59 |
| Code-style → italics for tax-term emphasis | fixed | L38 |
| Related: cross-link to ACB.md | fixed | L219-220 |

### T5008.md

| Original finding | Status | Location |
|---|---|---|
| Where to put commission when Box 21 is gross | fixed (S6 "Outlays and expenses from disposition") | L16 |
| Brokerage-tone contradiction with T3.md | fixed (sales vs T3-driven adjustments distinguished) | L81 |
| Drop "true" before ACB | fixed | L65 |
| **WAC vs date-convention reordering** (s.47(1) anchored to WAC, conservatism attached only to date) | fixed | L100-103 |
| "Earliest date of continuous ownership" forward-reference / definition | fixed | L22 |
| Loss-case journal mirroring the gain case | fixed (parallel debit/credit block) | L75-78 |
| Partial-sale walk-through | fixed | L103 |
| T5008-not-received case | fixed | L91 |
| s.47(1) inline citation | fixed | L102 |
| "coarse-grained" hyphen | fixed | L58 |
| Trust-units claim scoped to Canadian-listed equity ETFs | fixed | L97 |

### Capital-Dividend-Account.md

| Original finding | Status | Location |
|---|---|---|
| Per-shareholder allocation record-keeping | fixed | L46 |
| s.184(2) penalty rate (60%) and s.184(3) election | fixed | L49-50 |
| Box 21 - ACB clarification ("not Box 20") | fixed | L20 |
| "Year-end lag" → 6-12 weeks for routine returns | fixed | L39 |
| **Worked example crossing zero** | fixed (3-year worked example) | L32-36 |
| Reading the CDA at the s.83(2) election date | fixed | L30 |
| "I hereby certify…" sample resolution removed | fixed (replaced with a one-line definition of certification) | L42 |

---

## New findings (not in the previous audit)

### N-1 [MEDIUM] Ledger description still says "Amount minus book value"

`T3.md:84` and `T5008.md:54` describe the `Disposition of capital property` (8211-1) account as
"Comes from T5008 - Amount minus book value". Every other passage in both files (and in
`Capital-Dividend-Account.md`) now insists that the gain/loss is computed against the
independently-calculated ACB, not the brokerage Book Cost / T5008 Box 20. The account-tree
description should mirror that — "Amount minus ACB" or "Box 21 minus ACB" — to avoid implying the
ledger should follow Box 20.

### N-2 [LOW] Two "abbreviation-first" introductions remain in T3.md

Per `AGENTS.md` style ("spell out on first use within a section, then abbreviate"), the *Capital
gains distribution - Box 21* section in `T3.md:237,241` introduces two schedules abbreviation-first:

- `S6 (Summary of Dispositions of Capital Property) / Part 4 …`
- `S1 (Net Income (Loss) for Income Tax Purposes) / Page 4 …`

These are the section's first uses of S6 and S1 respectively. They should be
"Schedule 6 (S6 — Summary of …)" and "Schedule 1 (S1 — Net Income …)".

### N-3 [MEDIUM] T3.md ROC section is one-sided about Box 42 sign

`T3.md:23` correctly tightened the Box 42 gloss to "typically a downward adjustment". `ACB.md:48-50`
correctly handles the bidirectional case (negative Box 42 increases ACB). But the dedicated section
heading at `T3.md:187` still reads "*Amount resulting in cost base adjustment, typically Return of
Capital (ROC) - box 42*" and the section narrative (L189-209) walks only the positive case. A
reader who jumps straight to this section will not learn that a negative Box 42 is even possible,
nor how to journal it.

Suggested fix: one short paragraph at the top of the section noting that Box 42 is normally
positive (ROC reducing ACB) but can be negative (over-distribution correction), with a pointer to
`ACB.md:48-50` for the sign rule. The bookkeeping side then continues to address the positive case.

A related minor wording issue at `T3.md:195`: "if ROC would reduce it below zero then the negative
amount instead becomes an immediate capital gain". The phrase "the negative amount" reads
ambiguously now that the document acknowledges Box 42 can itself be negative — re-cast as
"the excess that would push ACB below zero".

### N-4 [LOW] Tracking.md ITA reference is not hyperlinked

`Adjusted-Cost-Base-Tracking.md:160` adds the helpful gloss "(ITA s.40(3))" beside the ROC formula
but leaves it unlinked, while the new Citations block at L190 hyperlinks s.47(1). For consistency,
hyperlink s.40(3) inline too.

### N-5 [LOW] s.40(3) and s.248(12) not enumerated in ACB.md citations block

`Adjusted-Cost-Base.md:152-157` lists s.40(1), s.47(1), s.53, s.54, s.251.1. The follow-up edits
introduced inline references to **s.40(3)** (L53, L60) and **s.248(12)** (L132). These are
clickable inline, so a reader is not stuck — but the Citations block exists precisely to be the
canonical list. Add both.

### R-1 [MEDIUM] Shareholder-Dividends.md exists but is not in README.md

A new stub `Shareholder-Dividends.md` (currently `STATUS: WORK IN PROGRESS`, single heading) was
added but not linked from `README.md`'s **Work in progress** list. Either drop the file (if it was
created by mistake) or add it to the index under WIP, alongside `Foreign-Currency.md`,
`HST.md`, `Payment.md`, and `Glossary.md`.

### R-2 [LOW] DRIP-as-Buy date is special, but the inputs table doesn't say so

`Adjusted-Cost-Base-Tracking.md:60-62` lists "Buy/Sell: trade date / ROC/Phantom: payment date".
The DRIP rule at L179 then says DRIP-entered-as-Buy uses the payment/reinvestment date — i.e.
DRIP is a Buy that does *not* use trade-date FX. A reader reading the inputs table top-to-bottom
will miss the asterisk. Add a one-line note next to the Buy entry: *"For DRIP, see Notes below
— payment/reinvestment date is used as the trade date."*

---

## Re-evaluation of the previous audit

These items from the 2026-04-28 audit were arguably not worth flagging:

- **`T3.md` page-shape "audience/scope heading"** — flagged as "uneven against ACB.md and CDA.md".
  In fact, all three pages use the same `**Who this is for**:` bolded inline format at the very
  top. The complaint did not match the source. No change to T3.md was needed.
- **`T3-Box-26-Other-Income.md` Related section "essentially see T3.md"** — the original Related
  section was already adequate; the added ACB.md cross-link is a small improvement but not a
  defect that needed fixing.

These were genuine findings but turned out to be lower-impact than the severity suggested:

- **[MEDIUM] T5008 commission destination when Box 21 is gross** — addressed, but the practical
  frequency is low (most Canadian brokers report Box 21 net of fees). Reasonable to keep the fix.

Everything else in the previous audit was, on second read, correctly weighted.

---

## Items the previous audit missed

Three of the new findings above (**N-1**, **N-3**, **R-1**) are genuine pre-existing or
fix-introduced issues that the 2026-04-28 audit did not surface. **N-1** in particular is a
straightforward consistency item: the ledger account description has always read
"Amount minus book value", which sits awkwardly against the ACB-vs-Box-20 message that the rest of
the repo emphasises.

The other items (**N-2**, **N-4**, **N-5**, **R-2**) are minor follow-throughs from the fixes the
user has already done.

---

## Status of WIP stubs

Unchanged since the previous audit and consistent with the repository's WIP markers:

- `Foreign-Currency.md` — still 4 headings + 2 links
- `HST.md` — still 2 headings, no body
- `Payment.md` — still ~22 lines, partial
- `Glossary.md` — new minimal stub (T2 + Schedule definitions); appropriately listed under WIP in README
- `Shareholder-Dividends.md` — new minimal stub; **not yet listed in README** (see R-1)

No expansion to mature-page parity is expected at this point.
