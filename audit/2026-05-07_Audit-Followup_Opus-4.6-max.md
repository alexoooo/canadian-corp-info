# Documentation Audit — Follow-up to Re-pass

**Date**: 2026-05-07
**Scope**: All 15 top-level Markdown files plus `AGENTS.md`, `CLAUDE.md`, and the contents
of `media/`. Builds on the 2026-05-06 re-pass at
[2026-05-06_Audit_Opus-4.7-xhigh.md](2026-05-06_Audit_Opus-4.7-xhigh.md), which itself
built on the 2026-04-28 initial audit and 2026-04-29 follow-up.
**Method**: Each file was read in full. Line-number references were verified against the
current source. Cross-file references were traced (forward references, Related sections,
Citations vs Links overlap, media references). ITA section citations were spot-checked
against prior audit verifications. Glossary completeness was compared against the
Shareholder-Dividends.md TODO proposal.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

- All 14 findings from the 2026-05-06 re-pass are resolved in the current source — including
  the **CRITICAL** Part IV rate error (C-1), the folio citation fix (M-2), and all LOW-level
  cleanups.
- The Shareholder-Dividends.md WIP marker (prior H-1) remains by design: `AGENTS.md:26` now
  explicitly acknowledges the page's maturity while retaining the marker pending human review.
  This is an intentional choice, not an oversight.
- **No CRITICAL or HIGH findings this pass.**
- Six **MEDIUM** findings: two broken/imprecise forward references in `T3.md`, a stale TODO
  in `Shareholder-Dividends.md`, a duplicate citation in `Adjusted-Cost-Base.md`, an
  incomplete definition in `Shareholder-Dividends.md`, and a missing Related link in
  `Capital-Dividend-Account.md`.
- Six **LOW** findings: two comma splices in `T3.md`, a prohibited connective in
  `T3-Box-26-Other-Income.md`, a rounding inconsistency in a worked example, Glossary
  maturity vs its WIP marker, and a missing sub-page in a Related section.

---

## Disposition of the 2026-05-06 re-pass findings

| Finding | Status | Location |
|---|---|---|
| **C-1** [CRITICAL] Wrong Part IV rate and miscategorisation | fixed — now correctly states 38⅓% on non-connected dividends, flow-through on connected, destination (ERDTOH/NERDTOH) by dividend type | `T3.md:141-144` |
| **H-1** [HIGH] Shareholder-Dividends.md WIP marker vs maturity | acknowledged — `AGENTS.md:26` updated to note body maturity while retaining marker pending human review; intentional design choice | `AGENTS.md:26`, `Shareholder-Dividends.md:1` |
| **M-1** [MEDIUM] T3.md confuses ACB and Book Cost | fixed — split into clean sentences using "Book Cost" consistently | `T3.md:40-42` |
| **M-2** [MEDIUM] ACB.md wrong folio (S3-F3-C1) | fixed — now cites IT-387R2 (Archived); s.248(12) dropped from both inline and Citations | `Adjusted-Cost-Base.md:130-133`, `Adjusted-Cost-Base.md:159` |
| **M-3** [MEDIUM] Unused screenshot | fixed — `T5008.md:100` now references `T2_Schedule-6_Shares-and-Other-properties.png` | `T5008.md:100` |
| **M-4** [MEDIUM] SBTO EI/CPP inconsistency | fixed — parenthetical added clarifying EI applies only when EI-insurable | `Small-Business-Tax-Overview.md:292` |
| **M-5** [MEDIUM] AGENTS.md WIP list incomplete | fixed — Glossary.md added to WIP list; Shareholder-Dividends.md given its own entry | `AGENTS.md:25-26` |
| **L-1** [LOW] T5008.md typo "based on the to the" | fixed | `T5008.md:59` |
| **L-2** [LOW] T3.md double-space and run-on at L40 | fixed | `T3.md:40-42` |
| **L-3** [LOW] T3.md "feeds NERDTOH" | fixed — now "the resulting Part IV tax flows into NERDTOH" | `T3.md:133` |
| **L-4** [LOW] T5008.md comma splice at L83 | fixed — semicolon and clearer second clause | `T5008.md:83` |
| **L-5** [LOW] T3.md informal "up to 450" | fixed — now uses em-dash explanation | `T3.md:156` |
| **L-6** [LOW] Glossary.md only two entries | fixed — now 40+ entries covering all major terms | `Glossary.md:9-47` |
| **L-7** [LOW] T3.md S1 abbreviation-first | fixed — now "Schedule 1 (S1 — ...)" | `T3.md:251` |

---

## New findings

### [MEDIUM] M-1 Broken forward reference to non-existent CDA section in T3.md

`T3.md:117`:
> Capital dividend account (CDA): a tax-efficient way to pay dividends from capital gains (see the CDA section below)

T3.md has no CDA section. The Capital Dividend Account has its own page, which is linked
in T3.md's Related section at L261. The parenthetical should link directly:
"(see [Capital-Dividend-Account.md](Capital-Dividend-Account.md))".

### [MEDIUM] M-2 Imprecise forward reference to NERDTOH/ERDTOH section in T3.md

`T3.md:116`:
> Paying dividends: involves GRIP, ERDTOH, and NERDTOH (defined in the NERDTOH/ERDTOH section below); handled by T2 software

No section in T3.md is titled "NERDTOH/ERDTOH". The relevant content lives within the
"Eligible dividends - Box 49" section starting at L120. The parenthetical should say
"(covered in the Eligible dividends section below)" or simply reference the Shareholder-Dividends
page, which now provides the most detailed treatment.

### [MEDIUM] M-3 Stale TODO item in Shareholder-Dividends.md

`Shareholder-Dividends.md:660`:
> Propose Glossary entries for: GRIP, LRIP, CDA, ERDTOH, NERDTOH, AII, eligible dividend, non-eligible dividend, capital dividend, dividend gross-up, dividend tax credit (DTC), stated capital, paid-up capital (PUC), dividend refund, integration

All 15 proposed entries now exist in `Glossary.md`. The TODO item should be removed or
replaced with a note that the entries have been added.

### [MEDIUM] M-4 Duplicate T4037 citation in ACB.md

`Adjusted-Cost-Base.md:161` (Citations):
> CRA T4037 "Capital Gains" guide: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4037/capital-gains.html

`Adjusted-Cost-Base.md:168` (Links):
> https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4037/capital-gains.html

Same URL in both sections. The Citations entry is the authoritative placement per the
page's established structure. Remove the duplicate from Links.

### [MEDIUM] M-5 Incomplete "connected corporation" definition in Shareholder-Dividends.md

`Shareholder-Dividends.md:395`:
> The payer corp is connected to the recipient if the recipient owns >10% of votes and >10% of FMV of the payer's shares.

This states only the s.186(4)(b) ownership test. ITA s.186(4)(a) also deems a corporation
connected if the recipient *controls* the payer. For the typical Opco-Holdco case discussed
in the same paragraph (where Holdco owns 100% of Opco), both tests are met, so the omission
does not produce a wrong result. But the definition as written is technically incomplete —
a reader who takes the sentence as exhaustive might miss the control test in non-Holdco
scenarios.

Suggested fix: "The payer corp is connected to the recipient if the recipient controls the
payer, or owns >10% of votes and >10% of FMV of the payer's shares (s.186(4))."

### [MEDIUM] M-6 Capital-Dividend-Account.md missing Shareholder-Dividends.md in Related

`Capital-Dividend-Account.md:80-83` (Related section):
> - [Adjusted Cost Base](Adjusted-Cost-Base.md)
> - [T3](T3.md)
> - [T5008](T5008.md)

`Shareholder-Dividends.md` is now the most comprehensive page covering dividend mechanics
including the CDA election workflow, worked examples with capital dividends (Example D at
L573-605), and integration context. It links back to `Capital-Dividend-Account.md` in its
own Related section. The reverse link is missing.

Suggested fix: add `- [Shareholder Dividends](Shareholder-Dividends.md)` to the Related
section.

### [LOW] L-1 T3.md comma splice at L10

`T3.md:10`:
> Using a Dividend Reinvestment Plan (DRIP) increases paperwork and complexity, this document assumes DRIP is not used.

Comma splice between two independent clauses. Use a semicolon or split into two sentences.

### [LOW] L-2 T3.md comma splice at L249

`T3.md:249`:
> Report the amount as a capital gain, half of it will be taxed instead of the full amount (based on capital gains inclusion rate)

Comma splice. Suggested: "Report the amount as a capital gain; half of it will be taxed..."

### [LOW] L-3 T3-Box-26-Other-Income.md prohibited connective at L43

`T3-Box-26-Other-Income.md:43`:
> Broadly speaking, income can be classified in different ways:

`AGENTS.md:67` explicitly lists "broadly speaking" as connective tissue to avoid: "Stanzas
appear in sequence without connective tissue ('broadly speaking', 'in turn', ...)". Drop
the lead-in and start with "Income can be classified in different ways:".

### [LOW] L-4 Rounding inconsistency in Shareholder-Dividends.md Example C

`Shareholder-Dividends.md:532`:
> 2026 NERDTOH addition: $40,000 × 30⅔% = **$12,267**

The exact value is $12,266.67 (= $40,000 × 92/300). Rounding to $12,267 is acceptable.

`Shareholder-Dividends.md:536`:
> the corporation needs a non-eligible dividend of $12,267 ÷ 38⅓% = **$32,000**

$12,267 ÷ 38⅓% = $32,000.87, not $32,000. The exact chain works ($12,266.67 ÷ 38⅓% =
$32,000.00), but the rounded intermediate produces a non-integer result. The two rounded
figures are internally inconsistent.

Suggested fix: either use $12,267 and ~$32,000 (acknowledging the approximation), or
present the exact figures ($12,266.67 and $32,000).

### [LOW] L-5 Glossary.md maturity vs WIP marker

`Glossary.md` now contains 40+ entries covering all major terms from the guide, each with
cross-references to canonical pages. The `STATUS: WORK IN PROGRESS` marker and the WIP
classification in `README.md:27` no longer match the page's actual state — the same pattern
as the prior audit's H-1 (Shareholder-Dividends.md maturity vs marker).

This is not load-bearing: the Glossary functions correctly regardless of the marker.
Consider either promoting it alongside the matured pages in `README.md`, or adding a TODO
noting what is genuinely still missing (e.g. additional advanced terms, page-shape
completion with a Limitations block).

### [LOW] L-6 T3.md Related section missing sub-page link

`T3.md:258-261` (Related section):
```
- [Adjusted Cost Base](Adjusted-Cost-Base.md)
- [Capital Dividend Account](Capital-Dividend-Account.md)
```

`T3-Box-26-Other-Income.md` is a sub-page of T3.md (indexed under it in README.md and
linked twice in the body at L24 and L163) but is absent from the Related section. Other
parent pages include their sub-pages in Related — for example, `Adjusted-Cost-Base.md:143`
lists `Adjusted-Cost-Base-Tracking.md`.

Suggested fix: add `- [T3 - Box 26 Other Income](T3-Box-26-Other-Income.md)` to the
Related section.

---

## Re-evaluation of the previous audits

The 2026-05-06 re-pass was thorough and well-targeted. Every finding it raised has been
cleanly resolved. The layered-finding pattern noted in the re-pass (where fixing N-5 from
the 2026-04-29 follow-up exposed the M-2 folio error) has itself been resolved: IT-387R2
now replaces the incorrect S3-F3-C1 reference and s.248(12) has been dropped.

The Shareholder-Dividends.md WIP question (prior H-1) remains a judgment call. The
`AGENTS.md:26` update strikes a reasonable balance: it acknowledges the page's maturity
while preserving the marker as a human-review gate. The same reasoning now extends to
Glossary.md (L-5 above), which has similarly outgrown its stub classification.

Nothing from the previous three audits warrants reweighting.

---

## Status of WIP stubs

- `Foreign-Currency.md` — 4 headings + 2 links, unchanged since the 2026-04-28 audit
- `HST.md` — 2 headings, no body, unchanged
- `Payment.md` — ~24 lines, partial, unchanged
- `Glossary.md` — 40+ entries; see L-5 above; substantially outgrown its WIP classification
- `Shareholder-Dividends.md` — ~662 lines, four worked examples, full citations, TODO list;
  marker retained by design pending human review (see disposition of prior H-1)

---

## What was NOT flagged this pass

For traceability:

- The capital-gains-inclusion-rate cancellation sentence repeated across six pages remains
  correct as of 2026-05-07.
- The DRIP date convention, the BoC FX-rate convention, and the schedule-abbreviation-on-first-use
  rule are now consistently applied (no residuals found).
- All worked numerical examples — ROC pushing ACB through zero in `Adjusted-Cost-Base.md:56-61`,
  CDA crossing zero in `Capital-Dividend-Account.md:32-36`, the four Shareholder-Dividends.md
  examples at L476-606 — are load-bearing and well-formed (L-4 above is a rounding presentation
  issue, not a substantive error in the example's tax logic).
- Integration arithmetic in Shareholder-Dividends.md was verified: eligible gross-up (38%),
  non-eligible gross-up (15%), federal DTC rates (15.0198% and 9.0301% of grossed-up amounts),
  the 72% general-rate factor for GRIP, the 30⅔% AII-to-NERDTOH rate, the 38⅓% dividend-refund
  rate, the $2.61 per-dollar NERDTOH recovery ratio, and the AII grind arithmetic ($5 per $1
  above $50,000; $150,000 fully eliminates the SBD) all check out against the cited ITA sections.
- Ontario rates stated in Shareholder-Dividends.md (SBD 12.2%, general 26.5%, eligible DTC 10%,
  non-eligible DTC 2.9863%) are correct for the first half of 2026. The 2026 Ontario budget
  proposals are appropriately flagged as proposals with effective dates.
- PSB rate arithmetic in Small-Business-Tax-Overview.md (federal 33%, combined ~44.5% in Ontario)
  is correct.
- AII corporate rate (~50.2% in Ontario) in Small-Business-Tax-Overview.md is correct (28% net
  federal + 10⅔% refundable + 11.5% Ontario).
- All 11 media files are referenced from at least one Markdown page.
- All ITA section URLs spot-checked in the prior audit remain structurally valid (laws-lois.justice
  format).
- The Google Sheets template URL at `Adjusted-Cost-Base-Tracking.md:49` continues to redirect to
  a sign-in page when fetched headlessly — verify manually in a logged-in browser session.
- Net-new topics outside the repo's existing pages remain out of scope for findings.
