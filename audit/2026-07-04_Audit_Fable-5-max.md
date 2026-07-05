# Documentation Audit

**Date**: 2026-07-04
**Scope**: Full pass — all 60 Markdown content pages under `guide/` (the seven-section hierarchy
introduced after the 2026-06-30 audit), plus `README.md`, `AGENTS.md`, and the `docs/` process
files. The guide has grown from 38 pages to 60 since the last full pass; roughly 20 pages drafted
after the 2026-07-01 coverage review had never been audited before this pass.
**Method**: 11 page-cluster finder passes plus repo-wide mechanical sweeps
(links, README index, STATUS markers, style greps, Mermaid, heading case), each checkpointed under
`audit/wip/`; then four independent verification batches (2026-07-05) that re-read every quoted
guide line fresh from the working tree and re-fetched every statute live from
laws-lois.justice.gc.ca. canada.ca returns 403 to fetchers, so CRA form/guide content was
established via search snippets, fetchable mirrors (including the full RC4088 Rev. 21 and T2 SCH 53
E (19) PDFs read first-hand), and the repo's own form screenshots. Every finding resting on a
source claim was independently re-verified by a batch that never trusted the finder — verdicts:
1 REFUTED (RD-3, recorded under *What was NOT flagged*), 1 ADJUSTED (CRA-3), all others CONFIRMED.
Worked-example arithmetic was recomputed by hand.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

- **7 CRITICAL / 24 HIGH / 79 MEDIUM / 75 LOW — 185 findings**, counted per finding code (paired
  page instances share an entry). The last full pass found no CRITICALs; this one found seven,
  four of them on signed-off pages, with the volume concentrated in the ~20 pages drafted since
  the coverage review and never audited before.
- **The AAII ≠ AII trio (GL-1 / SBT-2 / T3B26-1)** — the Glossary, the signed-off SBD primer, and
  the signed-off T3-Box-26 page all assert that for a plain corporate brokerage account AAII
  equals AII. s.125(7) includes Canadian portfolio dividends in AAII while s.129(4) excludes them
  from AII, so the claim is false precisely for the guide's core audience: portfolio dividends
  alone can trigger or deepen the SBD grind the pages say cannot happen. One defect on three
  pages — fix jointly.
- **The corporate wash-sale pair (ACB-4 / ACBT-6)** — both signed-off ACB pages teach the
  individual superficial-loss mechanism (s.40(2)(g)(i) denial + s.53(1)(f) ACB bump) for a
  corporation's loss followed by an affiliated repurchase; the actual rule is the
  s.40(3.3)/(3.4) suspended loss — deemed nil, no ACB bump anywhere, released to the corporation
  only when the affiliated group is out of the position. Following the pages permanently destroys
  the corporate loss and overstates the owner's personal ACB.
- **HST-8** — HST.md tells an annual filer the Quick Method election takes effect from the start
  of the year it is filed in; ETA s.227(2)(c)(i) requires GST74 by the first day of the second
  fiscal quarter of that year, so an August filer misremits for a full year on an ineffective
  election. **CRA-2** — CRA-Administration files the general ledger under 6-year transaction
  records; Reg 5800(1)(a)(iv) makes it an until-2-years-after-dissolution record, so a reader
  following the page destroys the GL six years in.
- **Verification**: four independent batches (2026-07-05) re-read every quoted guide line and
  re-fetched every statute live; every finding resting on a source claim was independently
  re-verified. Verdicts: 1 REFUTED (RD-3 — the guide's text is statute-verbatim and the proposed
  deletion must not be applied; recorded under *What was NOT flagged*), 1 ADJUSTED (CRA-3 — the
  defect and severity stand; the finder's education-letter example was inverted and is corrected
  in this document), all others CONFIRMED. Zero false positives in the assigned sets.
- **What held up**: all 61 findings of the 2026-06-30 cycle stay fixed — no regressions anywhere,
  including the high-value baseline (s.129(4) pools, T2054 deadline, GIC/ISA T5 example,
  Class 43 M&P handover, GIFI 1740, Quick Method close entry); every worked example not itself
  coded recomputes to the dollar; the 2026 figures (CPP, vehicle caps, LCGE, Quick Method rates,
  Ontario budget rates) are current; and the mechanical sweeps came back clean — all 1,244 links
  resolve, the README index and STATUS markers match perfectly, and no US spellings or
  smart quotes exist in guide prose.

---

## Disposition of prior audits

Eleven audit-folder files precede this pass (five audits, five followups, one coverage review,
2026-04-28 → 2026-07-01). The guide was reorganised into the seven-section hierarchy after the last
cycle (commit `de7e8e5`, which also renamed `Small-Business-Tax-Overview.md` →
`Overview/Small-Business-Tax.md`), so all prior line numbers are stale; every disposition below was
re-traced to the current tree. Prior finding codes are qualified by audit date — several collide
across cycles (and with this document's own codes).

| Prior cycle | Disposition in current source |
|---|---|
| 2026-04-28 → 2026-05-29 (three audits + followups) | every coded finding traces to fixed, or reverted for the known mis-finding (the 2026-05-28 R-1 heading-tag strip); nothing re-opened |
| 2026-06-10 audit + 2026-06-11 followup (21 findings) | all fixed; held through the 2026-06-30 re-verification and no regression found this pass |
| 2026-06-30 audit (0 CRITICAL / 6 HIGH / 34 MEDIUM / 21 LOW = 61) | 59 fixed per the 2026-07-01 followup; BAS-1 partial → NEW-1, since fixed repo-wide (per-return-type penalty framing on all three pages, verified 2026-07-04); T3-2 deferred by the maintainer |
| 2026-07-01 followup (NEW-1, NEW-2, three LOW spillovers) | all fixed in the working tree (verified 2026-07-04); NEW-2's FutureTax "Half Rule" note now matches the vendor FAQ, live-UI spot-check still recommended |
| 2026-07-01 coverage review | Tier 1–3 gaps all acted on — Payroll, T1135, Losses, CRA-Administration, Starting-Up, Winding-Down, and the six Tier-3 pages all exist and are drafted; the review itself is the only `audit/` file not indexed in README `## Audit` (now finding R-1) |

The 2026-06-30 fix regression baseline (ERDTOH/NERDTOH under s.129(4), the T2054 becomes-payable
deadline, the GIC/ISA T5 example, the Class 43 M&P handover, GIFI 1740, the Quick Method close
entry, the s.162(7.01) per-return-type penalty, and the rest of the high-value fixes) was re-checked
from scratch: all hold; no regressions.

Still open from prior cycles:

- *EN-1 (2026-05-28, LOW) verification debt*: largely discharged this pass — RC4088 Appendix A,
  T2 SCH 53 E (19), SCH 3 E (21), and the S1 / S7 / S21 form PDFs were read first-hand (finder
  passes plus V1/V2), the T5008 S6 columns and S7 Part 1 boxes were checked against the repo's own
  form screenshots, Schedule 8 field codes 203/225/217 were confirmed via S8 software
  documentation, Schedule II class texts were pulled verbatim from the consolidated Regulations
  XML, T2 line 784 was re-verified via secondary documentation, and line 840 ("Tax instalments
  paid", page-9 Summary) was positively confirmed against CRA guidance, the DT Max line index, and
  the repo's own FutureTax screenshot. Residue: the T2 jacket and page-7 pool boxes (the line
  320/400/440/445 class) and GST34 line numbers beyond line 101 still lack a first-hand
  current-form check.
- *T3-2 (2026-06-30, LOW)*: the "Note:" sentences on the signed-off `T3.md` — deferred by the
  maintainer; not re-raised as new.
- *Uncoded debt*: the ACB tracker's Google-Sheets URL still needs a signed-in browser check
  (redirects headlessly every cycle); the ACB-1 (2026-06-30 not-flagged) "same currency of issue"
  ← IT-387R2 attribution still awaits a maintainer spot-check (canada.ca 403).
- *Coverage-review residue graduating to codes this pass*: the README Audit-index gap → R-1; the
  AGENTS.md "stubs" staleness → R-2; the missing balance/instalment content in `Payment.md` →
  PAY-1; the bank-account GIFI convention split (1001 Cash vs 1002 Deposits) → LA-3. Still open
  without a code: the CDA life-insurance component (scope-out mention only in
  `Capital-Dividend-Account.md`). The review's T5.md GIC s.12(4)/(11) anniversary-accrual item
  closes as N/A — s.12(3), already cited at `T5.md:162`, is the corporate accrual rule and s.12(4)
  applies only to taxpayers outside it (see *Content notes*).

Closed as stale:

- *EF-2 upper limb (2026-07-01 followup observation on the 2026-06-30 EF-2 fix)*: the optional
  "until the final sale, if later" limb is present at `Estate-Freeze.md:98` and matches
  s.84.1(2.32)(g) — the open item is discharged.

---

## Repo-wide findings

### [MEDIUM] R-1 Coverage Review absent from the README Audit index

- `audit/2026-07-01_Coverage-Review_Fable-5-high.md` (exists, committed); `README.md:85-96` (Audit section)

README `## Audit` lists all 10 dated Audit/Audit-Followup files through the 2026-07-01 followup;
the Coverage Review, committed 2026-07-01, has no index line — the only file in `audit/` not
listed. Neither the document's own text nor the followup explains the omission; the review
self-describes as a living document with a progress tracker (all boxes now checked), and
`docs/Audit-Instructions.md` §Closeout requires an index line but only documents the
`Audit`/`Audit-Followup` artifact types, so the closeout step arguably never applied to it. It is
referenced from `guide/Overview/Further-Reading.md:71` in prose, unlinked. Fix: add
`- [2026-07-01 Coverage-Review Fable-5-high](audit/2026-07-01_Coverage-Review_Fable-5-high.md)` to
`## Audit` (its tracker shows the review complete); alternatively record in Audit-Instructions that
coverage reviews exist as an artifact type and whether they are indexed.

### [MEDIUM] R-2 AGENTS.md repository description drift

- `AGENTS.md:27` — "**`guide/Bookkeeping/Foreign-Currency.md`, `guide/Operations/HST.md`, `guide/Filing-And-CRA/Payment/Payment.md`** — stubs covering FX bookkeeping, GST/HST, and corporate-tax payment workflows respectively"
- `AGENTS.md:10` — "The root holds `README.md`, `AGENTS.md`, `CLAUDE.md`, a `docs/` folder…"

Foreign-Currency.md is 609 lines and HST.md is 547 — both mature multi-section pages carrying the
REVIEW marker, not stubs (only Payment.md, 48 lines, is still close to one); the 2026-07-01
coverage review flagged this exact staleness and it remains unfixed. Separately, no `CLAUDE.md`
exists at the root — it lives at `.claude/CLAUDE.md`. Agents take AGENTS.md as the source of truth,
so both misstatements propagate. Fix: reword line 27 (keep Payment as the stub, describe FX and HST
as full pages) and correct line 10 to `.claude/CLAUDE.md` or drop it from the root list.

### [LOW] R-3 .gitignore comment contradicts Audit-Instructions on `audit/wip/` retention

- `.gitignore:9` — "# Transient audit working folder (see docs/Audit-Instructions.md); removed on delivery" vs `docs/Audit-Instructions.md:28` — "Leave `audit/wip/` in place when the audit finishes…"

Commit `c123652` reversed the wip-folder retention policy in Audit-Instructions but left the
.gitignore comment on the old policy; the comment now contradicts the document it cites, and an
agent reading only the comment could delete `audit/wip/` mid-cycle. Fix: reword the comment, e.g.
"# Transient audit working folder (see docs/Audit-Instructions.md); cleared at the start of the
next audit".

### [LOW] R-4 "small-business business limit" duplicated word

- `guide/Investments/T3/T3.md:238` and `guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md:195` — "reduction of the small-business business limit when adjusted aggregate investment income exceeds $50,000" (identical Citations bullet in both files)

"Small-business business limit" is a word stutter; the s.125(2) defined term that s.125(5.1)
reduces is the *business limit*. T3.md is a signed-off page. Fix: "reduction of the business limit
when adjusted aggregate investment income exceeds $50,000" (or "small-business limit") in both
files.

### [LOW] R-5 Deprecated "sketched" for partial coverage

- `guide/Operations/Donations.md:17` — "The corporate-vs-personal giving decision is sketched at the rate level only…"

Style-Guide §Sentences: for partial coverage write "touched on but not worked through"; this is the
only remaining "sketched" in guide prose. Fix: "…is touched on at the rate level only; …".

### [LOW] R-6 Residual filler intensifiers (really / simply) in guide prose

- `guide/Bookkeeping/Ledger-And-Accounts.md:32` — "revenue, expenses, and dividends are really sub-balances of equity"
- `guide/Corporate-Lifecycle/Starting-Up.md:11` — "the year-end is chosen simply by filing the first T2 with that date"
- `guide/Investments/T3/T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md:173` — "so it simply reduces the after-tax yield"
- `guide/Operations/Cost-Recovery/Capital-Cost-Allowance/Capital-Cost-Allowance.md:256` — "an expensed item's proceeds are simply income"

Style-Guide §Sentences bans the filler intensifiers. The first three lose nothing on deletion; the
fourth is the most defensible ("simply income" contrasts with recapture's capped treatment) —
maintainer's call there. Fix: delete "really"/"simply" in the first three; optionally recast the
fourth ("an expensed item's proceeds are income in full").

### [LOW] R-7 US spellings in the process docs (guide itself is clean)

- `AGENTS.md:64` — "brokerage-specific behavior"; `docs/Style-Guide.md:145` — "debits/credits as labeled ledger lines"

Guide pages consistently use Canadian spelling (zero US spellings anywhere in `guide/` or README)
and Style-Guide §Canadian English mandates it; yet "labeled" is the Style-Guide's own prose, and
AGENTS.md's "behavior" sits in the editorial-conventions section agents copy from. Fix: "behaviour"
in AGENTS.md:64; "labelled" in Style-Guide.md:145.

---

## Page-by-page findings

### Overview

(`Tax-Integration.md` produced no findings — see *What was NOT flagged*.)

#### [LOW] OV-1 Two different pages designated as the starting point

- `Overview.md:11` — "Start with the [primer](Small-Business-Tax.md) … then the [concept map](Concept-Map.md)" vs `:25`/`:36` — Concept-Map "is the 'start here' page"

The TLDR tells the reader to start with the primer; the body and sub-page list both designate
Concept-Map as the start (AGENTS.md:20 calls Concept-Map the orienting "start here" page). Fix:
pick one sequence, or drop "start here" from `:25`/`:36`.

#### [LOW] OV-2 Em-dash pair used as parenthetical

- `Overview.md:25` — "lays the same territory out as a single map — the kinds of things, … — and names the page that owns each concept"

Paired em-dash appositive; Style-Guide treats one em-dash per paragraph as the soft ceiling and the
em-dash appositive as a leading raw-AI tell. Fix: parentheses or a colon.

#### [LOW] CM-1 Trailing period on a bullet

- `Concept-Map.md:212` — "…2.9863% non-eligible of the grossed-up amount in 2026."

The only bullet on the page carrying a terminal period (Style-Guide §Bullets drops them). Fix:
delete the period.

#### [LOW] CM-2 / SBT-3 Slip deadline stated as "Feb 28" rather than last day of February

- `Concept-Map.md:313` — "*T4 and T5 slips*: to CRA and the recipient by Feb 28"
- `Small-Business-Tax.md:280`, `:391` — "due *Feb 28* of the year following the calendar year covered"

Reg 205(1) sets the deadline at "on or before the last day of February" — Feb 29 in a leap year
(e.g. 2028); `Payment.md:34` already states it correctly, so the guide is internally inconsistent.
Verified against: Income Tax Regulations s.205(1) (fetched 2026-07-05; independently re-verified,
V1). Fix: "by the last day of February" in all three spots.

#### [MEDIUM] CM-3 / SBT-4 Instalment trigger stated on prior-year tax only

- `Concept-Map.md:319` — "*T2 instalments*: monthly or quarterly once prior-year tax tops $3,000"
- `Small-Business-Tax.md:388` — "*Instalments*: required when prior-year tax exceeds $3,000; …"

s.157(2.1) waives instalments when EITHER the current year's taxes OR the first instalment base
(≈ prior-year tax) is equal to or less than $3,000 — a corp whose current-year tax ends up
≤ $3,000 owes no instalments even if prior-year tax topped it. `Further-Reading.md:24` states the
either-year exemption correctly, so the cluster is internally inconsistent. Verified against: ITA
s.157(2.1) (fetched 2026-07-05; independently re-verified, V1). Fix: "once both the prior and
current year's tax top $3,000 (s.157(2.1))", or add "(waived if the current year's tax also ends up
≤ $3,000)".

#### [CRITICAL] GL-1 AAII glossed as equal to AII for a corporate brokerage account

- `Glossary.md:8` — "…the $50,000 SBD grind under ITA s.125(5.1) runs on AAII, though for a plain corporate brokerage account it equals AII"

False for the guide's core audience — one defect on three pages with SBT-2 and T3B26-1; fix
jointly. The s.125(7) AAII definition (paragraph (b)) rewrites subparagraph (b)(iii) of the
s.129(4) AII definition so that only "a dividend from a corporation connected with it" stays
excluded from property income; original AII (b)(iii) excludes all s.112-deductible dividends
(including s.104(19) trust-designated ETF dividends). Canadian portfolio dividends are therefore
excluded from AII but INCLUDED in AAII — exactly what a "plain corporate brokerage account" holding
Canadian stocks or ETFs receives. A reader with, say, $60k of eligible portfolio dividends and low
interest income would conclude the grind cannot touch them; in fact AAII tops $50,000 and the SBD
limit is ground. The entry's adjustment list also omits this add-in (it names only the two
adjustments that happen to be right). `Dividends-Examples.md:89` is correct in context (its
$40,000 is interest/foreign/gains only, scoped "here"). Verified against: ITA s.125(7) "adjusted
aggregate investment income" and s.129(4) "aggregate investment income" (fetched 2026-07-05;
independently re-verified with the divergence re-derived from fresh fetches, V1). Fix: "…broadly
AII with prior-year net capital losses added back, gains on active-business or
connected-corporation property excluded, and taxable dividends from non-connected corporations
(portfolio dividends, which AII excludes) added; for a brokerage account earning Canadian
dividends, AAII exceeds AII by those dividends."

#### [MEDIUM] GL-2 Link text names the old filename Small-Business-Tax-Overview.md

- `Glossary.md:8`, `:9`, `:12`, `:57` — "see [Small-Business-Tax-Overview.md](Small-Business-Tax.md)"

The page was renamed in the restructure (commit `de7e8e5`); the glossary's filename-as-link-text
convention now displays a file that does not exist. Cross-cluster instances of the stale name:
`Investments/Investments.md:61`, `Investments/T3/T3-Box-26-Other-Income.md:221` (IN-2, T3B26-2).
Premise reproduced by glob this pass — no file by that name anywhere (V1). Fix: display
`Small-Business-Tax.md` in all four entries.

#### [MEDIUM] GL-3 Available-for-use entry applies the building test to non-buildings

- `Glossary.md:14` — "for a self-constructed asset, the earlier of substantially all of it being used for its intended purpose or the beginning of the second tax year after acquisition (s.13(27) non-buildings, s.13(28) buildings)"

Definition drift vs the canonical page: "all or substantially all … used" is the buildings test
(s.13(28)(a)); the s.13(27) non-building triggers are first use to earn income and
delivered-and-capable, and s.13(27) has no all-or-substantially-all limb at all.
`Cost-Recovery.md:200-208` states the two lists correctly and separately. Verified against: ITA
s.13(27)/(28) (fetched 2026-07-05; independently re-verified, V1). Fix: "…the trigger under
s.13(27) (non-buildings: first use to earn income) or s.13(28) (buildings: substantially all first
used for its purpose), in each case no later than the beginning of the second tax year after
acquisition."

#### [LOW] GL-4 Two entries out of alphabetical order

- `Glossary.md:28` (DTC between DIEP and Dividend refund), `:38-39` (Gross-up before GRIP)

The list otherwise sorts case-insensitively. Fix: move DTC after Double-entry; swap GRIP and
Gross-up.

#### [MEDIUM] GL-5 Entries missing the cross-reference their canonical page exists for

- `Glossary.md:21` (CCPC), `:31` (Eligible dividend), `:48` (LCGE), `:53` (Non-eligible dividend), `:59` (QSBC), `:64` (SBD), `:65` (Schedule \<N\>), `:67` (Stated capital), `:73` (T4), `:78` (TOSI)

AGENTS.md:26 and Overview.md:29 both describe the glossary as "each cross-referenced to its
canonical page", and the header hedges only "where one exists" — but canonical pages exist for all
of these (SBD/CCPC → Small-Business-Tax; Eligible/Non-eligible dividend and TOSI → Dividends;
Stated capital → Share-Capital; T4 → Payroll; Schedule \<N\> → T2-Schedules; LCGE/QSBC →
Winding-Down / Asset-vs-Share). Fix: add the see-links; T1/T2 may reasonably stay unlinked.

#### [HIGH] GL-6 Established guide vocabulary missing from the Glossary

- `Glossary.md` (page-wide) — header: "Short definitions of the acronyms and tax terms used across this guide."

*Phantom distribution* — one of the seven established terms AGENTS.md:74 says the guide uses
("ACB, ROC, phantom distribution, CDA, ERDTOH, NERDTOH, GRIP"; used in 8 guide files) — has no
entry; the other six all do. *Superficial loss* (an ACB.md section topic, used in 6 guide files
including Concept-Map's loss-section link) is also absent. The page's stated scope promises both.
Verified against: repo-wide greps and the AGENTS.md seven-term list (reproduced exactly;
independently re-verified, V1). Fix: add entries for phantom distribution
(→ Adjusted-Cost-Base.md) and superficial loss
(→ Adjusted-Cost-Base.md#capital-loss-carry-forward--back--superficial-loss — the anchor exists).

#### [MEDIUM] FR-1 Link text names the renamed page Small-Business-Tax-Overview

- `Further-Reading.md:25`, `:29`, `:51` — "…and [Small-Business-Tax-Overview](Small-Business-Tax.md#filing-deadlines-and-instalments)"

Same stale-name defect as GL-2; no page by that name exists since the restructure (premise
reproduced, V1). The Related entry sits beside "[Concept map]" and "[Glossary]", which use current
names. Fix: "Small-Business-Tax" (or the page's own title) in all three spots.

#### [MEDIUM] FR-2 Imported-services self-assessment attributed to ETA s.218.1 alone

- `Further-Reading.md:26`, `:62` — "the ETA [s.218.1](…) self-assessment nets to zero for a CCPC using the imported service entirely in commercial activity"; Citations: "[s.218.1](…) - self-assessment on imported services and intangibles"

The GST-level Division IV self-assessment on imported taxable supplies is imposed by s.218 ("every
recipient of an imported taxable supply" pays 5%); s.218.1 imposes only the participating-province
component. Citing s.218.1 alone pins the whole mechanism on the add-on section. (Strictly, a
service acquired exclusively in commercial activity is excluded from "imported taxable supply" by
s.217, so no self-assessment arises — the same framing sits at `HST.md:287`.) Verified against: ETA
s.218, s.218.1(1), s.217 (fetched 2026-07-05; independently re-verified, V1). Fix: cite "ETA s.218
(and s.218.1 for the provincial part)" or "ETA Division IV (ss.217–218.1)" in both spots.

#### [LOW] FR-3 T106 grouped under "foreign-affiliate reporting"

- `Further-Reading.md:44` — "foreign-affiliate reporting (T1134 / T106)"

T1134 is the foreign-affiliate return ("Information Return Relating to Controlled and
Not-Controlled Foreign Affiliates"); T106 is the information return for non-arm's-length
transactions with non-residents — no foreign affiliate needed, so a reader who pays a related
non-resident would not find it under this label (form titles re-verified, V1). Fix: "cross-border
information returns (T1134 foreign affiliates, T106 non-arm's-length transactions with
non-residents)".

#### [LOW] SBT-1 Page title still carries the pre-rename name

- `Small-Business-Tax.md:1` — "# Small Business Tax Overview"

The file was renamed to `Small-Business-Tax.md` but the H1 kept "Overview", so three names now
circulate: "Small-Business-Tax" (README:18, Overview.md:24/35), "Small Business Tax Overview"
(this H1; CM/TI Related entries), and the stale "Small-Business-Tax-Overview(.md)" link texts
(GL-2/FR-1). Fix: if the shorter name is intended, retitle the H1 "Small Business Tax" and align
the Related-entry link texts; if the long title is deliberate, fixing GL-2/FR-1 to the filename
still resolves the stale forms.

#### [CRITICAL] SBT-2 "For a plain corporate brokerage account AAII equals AII"

- `Small-Business-Tax.md:241` — "The small-business-deduction grind keys off *adjusted* aggregate investment income (AAII), which is AII with a few adjustments; for a plain corporate brokerage account AAII equals AII, so the $50,000 threshold bites on the same number."

Same factual error as GL-1 and T3B26-1, on the canonical SBD primer — fix the trio jointly. AAII
includes taxable dividends from non-connected corporations, while AII excludes all deductible
dividends; a brokerage account holding Canadian dividend-paying stocks or ETFs therefore has
AAII > AII by the full portfolio-dividend amount, and "bites on the same number" is wrong precisely
for the guide's stated audience. The page's own next stanza (`:243-245`) puts portfolio dividends
in the picture as s.112-exempt, so the sentence genuinely asserts equality as a rule — no scoped
reading saves it. The claim can lead an owner to conclude their SBD is safe when portfolio
dividends alone can trigger or deepen the grind. Verified against: ITA s.125(7) and s.129(4)
(fetched 2026-07-05; independently re-verified, V1). Fix: "…which is AII with a few adjustments —
the main one for a brokerage account is that Canadian portfolio dividends count toward AAII even
though AII excludes them; interest, foreign income, and taxable capital gains land in both" (and
align `Dividends.md:228`'s "differs slightly" example list, cross-cluster).
### Corporate Lifecycle

#### [LOW] CL-1 Sub-page list entry not title-cased to match the page

- `Corporate-Lifecycle.md:38` — "- [Preferred-share consideration](…): paying with preferred shares"

Every other Sub-Pages entry uses its page title; this one is sentence-cased against the H1
"Preferred-Share Consideration" and README:30. Fix: title-case the list entry (sentence-position
inline links elsewhere can stay).

#### [LOW] CS-1 Subject-verb agreement in the minute-book stanza

- `Corporate-Structure.md:64` — "A dividend declared without a recorded resolution, or shares issued without a register entry, is a gap…"

With "or" joining a singular and a plural subject, the verb agrees with the nearer subject. Fix:
make both disjuncts singular ("…or a share issuance without a register entry, is a gap…").

#### [MEDIUM] SC-1 "Canadian corporate statutes require" no-par shares over-generalizes

- `Share-Capital.md:79` — "Canadian corporate statutes require shares to be issued *without nominal or par value* (CBCA s.24(1))."; `:81` — "There is no \"$1 par value\" concept as in some other countries."

True for the CBCA and Ontario/Alberta-style statutes, but not all Canadian statutes: the BC
Business Corporations Act expressly permits par-value shares (s.52(1)(a) allows an authorized
share structure with "shares with par value"; s.53(c) requires the notice of articles to state the
par value). "There is no '$1 par value' concept" is too absolute for Canada as a whole. Verified
against: CBCA s.24(1) and BC BCA ss.52-53 (fetched 2026-07-05; independently re-verified, V2).
Fix: "The CBCA and most provincial statutes require shares to be issued without nominal or par
value (CBCA s.24(1)); British Columbia still permits par-value shares", and scope `:81` to those
statutes.

#### [MEDIUM] SU-1 GST/HST registration-timing one-liner contradicts ETA s.148 and HST.md

- `Starting-Up.md:130` — "registration is required from the quarter the $30,000 rolling threshold is crossed (see [HST — Registration](…))"

Wrong on both statutory limbs: under the four-quarter test (s.148(1)) the corp remains a small
supplier throughout the crossing quarter *and the first month of the following quarter*; under the
single-quarter test (s.148(2)) small-supplier status ends immediately before the crossing supply —
mid-quarter, from that sale. `HST.md:37-41`, which this line points at, states both clocks
correctly, so the summary contradicts its own link target. Verified against: ETA s.148(1)-(2)
(fetched 2026-07-05; independently re-verified, V2). Fix: "registration is required from the sale
that crosses $30,000 within a single quarter, or after a one-month grace following the quarter in
which the four-quarter total crosses".

#### [LOW] SU-2 "simply" filler in the TLDR

- `Starting-Up.md:11` — "the year-end is chosen simply by filing the first T2 with that date"

Style-Guide filler intensifier (also swept as R-6); the body states the same fact without it
(`:61`). Fix: delete "simply".

#### [HIGH] WD-1 Wind-down diagram puts the final distribution before the clearance certificate

- `Winding-Down.md:37` (diagram) — "STOP --> ASSETS --> SWEEP --> T2A --> DIST --> T2B --> CLR --> DISS", against `:13` (TLDR), `:92-95` (body), `:119-122` (worked example)

The flowchart sequences Final distribution (DIST) → final T2 (T2B) → TX19 clearance certificate
(CLR) — property distributed before the certificate is obtained, exactly the sequence the page
itself warns creates personal liability ("Directors who distribute property before obtaining a
certificate under ITA s.159(2) are personally liable … (s.159(3))") and the opposite of the worked
example, which files TX19, receives the certificate, and only then distributes. The centerpiece
diagram instructs the risky order. Verified against: ITA s.159(2)-(3) (fetched 2026-07-05;
independently re-verified, V2 — "before distributing … obtain a certificate"; liability "to the
extent of the value of the property distributed"). Fix: reorder to STOP → ASSETS → SWEEP → T2A →
CLR → DIST → T2B → DISS (the worked example's order), keeping the dashed HST node; align the `:94`
bullet "Request it on Form TX19 after the final returns are filed" with the example's actual
timing ("after all returns due to date are filed and assessed" — the stub-year final T2 cannot
exist before dissolution).

#### [MEDIUM] WD-2 Deregistration deemed disposition stated as FMV for all property

- `Winding-Down.md:65` — "Property still held on deregistration is deemed disposed at fair market value, with the GST/HST self-assessed on the final return (ETA [s.171](…))"

ETA s.171(3)(a) deems an FMV supply only for property "(other than capital property)"; for capital
property s.171(3)(b) instead deems a cessation of commercial use, self-assessed under the
change-in-use rules on basic tax content. For this page's audience the leftover assets (computers,
furniture) are capital property, so the blanket FMV framing misstates the measure (the page's TODO
already flags the RC4022 verification). Verified against: ETA s.171(3)(a)-(b) (fetched 2026-07-05;
independently re-verified, V2). Fix: "Non-capital property still held is deemed sold at fair
market value (s.171(3)); capital property instead self-assesses on its basic tax content under the
change-in-use rules — either way, deregister after the assets are gone, not before".

#### [MEDIUM] WD-3 Payroll-closure pointer targets content Payroll.md does not have

- `Winding-Down.md:66` — "remit the final source deductions and file the final T4s promptly after the last pay (see [Payroll](…); the T4001 end-of-business deadlines are days, not months)"

Payroll.md contains no end-of-business / RP-account-closure content (grep finds none; its only
T4001 references are remitter-threshold ones), so the pointer promises coverage that is not there;
WD's own TODO plans to "add the figures to the Payroll page", confirming the gap. Fix: drop the
"(see Payroll …)" parenthetical or keep only the T4001 reference until Payroll.md gains an
end-of-business section.

#### [HIGH] WD-4 "Designate the taxable dividends eligible up to the GRIP balance" can strand NERDTOH

- `Winding-Down.md:77` — "*GRIP alongside*: designate the taxable dividends eligible up to the GRIP balance, capturing the lower personal rate on the way out"

An eligible dividend triggers a refund only out of ERDTOH — never NERDTOH (s.129(1)(a)(i); only
the other-than-eligible limb (ii) reaches NERDTOH, plus leftover ERDTOH). "The taxable dividends"
here are the sweep dividends of the previous bullet (`:76`), sized to drain NERDTOH; designating
them eligible up to GRIP forfeits the NERDTOH refund whenever GRIP covers the sweep and NERDTOH
exceeds what ERDTOH supports (e.g. GRIP $100,000 / NERDTOH $10,000 / ERDTOH $0: a $26,087 sweep
designated fully eligible refunds $0; left non-eligible it refunds $10,000). The sibling page
states the ordering rule correctly ("An eligible dividend draws only on ERDTOH; it cannot use
NERDTOH", `ERDTOH-NERDTOH.md:138`), so Winding-Down is the defective side of the pair. Verified
against: ITA s.129(1)(a)(i)-(ii) (fetched 2026-07-05; independently re-verified with the
forfeiture example re-derived, V2; the RD page's statement of the rule confirmed statute-verbatim).
Fix (per-flavour sizing): size the two flavours separately — the non-eligible dividend at least
NERDTOH ÷ 38⅓% (an eligible dividend never draws a NERDTOH refund), and the eligible designation
up to GRIP (the Part III.1 bound), ideally at least ERDTOH ÷ 38⅓% so ERDTOH drains too; remaining
GRIP can still be designated eligible for the personal-rate benefit even though it draws no
further refund (see [ERDTOH and NERDTOH](…)).

#### [MEDIUM] WD-5 Ontario dissolution "consent prerequisites" are five years stale

- `Winding-Down.md:101` — "Ontario has its own consent prerequisites — check the current Ontario Business Registry requirements"

The Minister-of-Finance consent letter for an Ontario voluntary dissolution was eliminated when
the Ontario Business Registry launched on 2021-10-19; asserting live "consent prerequisites" sends
the reader hunting for a letter not required since 2021 (the page's TODO already targets this
verification — it resolves as "no longer required"). Verified against: multiple consistent
secondary sources (ontario.ca not fetchable headlessly; snippets re-checked 2026-07-05;
independently re-verified, V2). Fix: "Ontario dissolutions file through the Ontario Business
Registry; the former Minister-of-Finance consent letter has not been required since October 2021".

#### [MEDIUM] WD-6 Post-dissolution retention for transaction records is 2 years, not "their normal 6"

- `Winding-Down.md:105` — "Records stay: the permanent corporate records survive until 2 years after dissolution, transaction records for their normal 6 years"

For a dissolved corporation, Reg 5800(1)(b) prescribes the retention period for *all* records and
books not in the permanent list, "together with the vouchers and accounts necessary to verify the
information", as two years after dissolution — the 2-year post-dissolution clock covers
transaction records too, displacing the s.230(4)(b) six-year default. Error in the safe
(over-retention) direction. Coordinate with CRA-2: `CRA-Administration.md:135-137` misfiles the
going-concern side of the same regulation. Verified against: Income Tax Regulations s.5800(1)
(fetched 2026-07-05; independently re-verified, V2). Fix: "once the corporation is dissolved, all
records — permanent and transactional — must be kept until 2 years after dissolution
(Reg 5800(1)(b)); keeping everything digital costs nothing, so retention beyond that is the
practical default".

#### [LOW] BA-1 Related/inline link text casing doesn't match target page titles

- `Business-Acquisition.md:61` (also `:69`, `:94`, `:98`; same pattern at `Asset-vs-Share.md:85`, `Estate-Freeze.md:77`, `:122`) — "[Preferred-share consideration](…)", "[Owner-corporation transactions](…)"

The target H1s are "Preferred-Share Consideration" and "Owner-Corporation Transactions" (README
matches); every other Related entry on these pages matches its target's casing. Fix: title-case at
all seven spots.

#### [MEDIUM] BA-2 s.86 grouped under "Filing the elections" with "strict timing"

- `Business-Acquisition.md:86` — "*Filing the elections*; the s.85 rollover (Form T2057) and a s.86 reorganization have strict timing and must be done correctly to defer the gain"

s.86 involves no election and no filing deadline — it applies automatically to a share exchange in
the course of a reorganization of capital. The label and shared predicate wrongly extend the T2057
machinery to s.86 and contradict the sub-page the hub introduces (`Estate-Freeze.md:41`: "no
election form is required (ITA s.86)"). Verified against: ITA s.86(1) (fetched 2026-07-05;
independently re-verified, V2 — no election, prescribed form, or filing requirement anywhere in
the section). Fix: "*Filing the elections*; the s.85 rollover (Form T2057) has a strict filing
deadline, and a s.86 reorganization must be structured correctly to defer the gain".

#### [LOW] AVS-1 Soft (non-noun-phrase) heading "What You Are Buying"

- `Asset-vs-Share.md:23` — "## What You Are Buying"

Indirect-question heading, the family the Style-Guide bans and that the 2026-06-30 BA-1 fix
renamed on these same two pages. (Transparency note: the prior audit saw this heading and did not
flag it, so it may be a deliberate keep.) Fix: a noun phrase, e.g. "The Two Structures".

#### [MEDIUM] AVS-2 AAII-aggregation claim carries no citation

- `Asset-vs-Share.md:55` — "they then share one $500,000 small-business limit (s.125(3)) and their adjusted aggregate investment income aggregates for the AAII grind"

The association and limit-sharing halves are cited; the AAII-aggregation half has no inline cite
and no Citations entry. The rule lives in s.125(5.1): element E totals the AAII "of the
corporation, or of any corporation with which it is associated" for years ending in the preceding
calendar year. (The content itself is the 2026-06-30 AVS-4 fix, which landed without the
pinpoint.) Verified against: ITA s.125(5.1) variable E (fetched 2026-07-05; independently
re-verified, V2). Fix: append s.125(5.1) to the s.256(1)/s.125(3) Citations line.

#### [MEDIUM] AVS-3 "Taxed again" stated absolutely, ignoring CDA and the dividend refund

- `Asset-vs-Share.md:65` — "…the after-tax proceeds are then taxed again when the vendor extracts them as a dividend or on wind-up"

Overstated as an absolute: the non-taxable half of the target's gains credits its CDA and extracts
tax-free as a capital dividend, and RDTOH refunds on taxable dividends soften the second layer —
the guide's own Capital-Dividend-Account page (in this page's Related) states the tax-free
extraction rule. Verified against: ITA s.83(2) and s.129(1)(a) (fetched 2026-07-05; independently
re-verified, V2). Fix: add a qualifier, e.g. "(the capital dividend account and the dividend
refund soften the second layer, but rarely eliminate it)".

#### [MEDIUM] AVS-4 QSBC gloss omits the 24-month holding (ownership) test

- `Asset-vs-Share.md:69` — "only if the QSBC tests are met (broadly: a CCPC, at least 90% active-business assets at the time of sale, and more than 50% active-business assets throughout the preceding 24 months)"

The gloss names two of the three QSBC tests but drops the ownership test — throughout the 24
months before the sale the share must not have been "owned by anyone other than the individual or
a person or partnership related to the individual" (s.110.6(1) QSBC para (b)). A vendor who
acquired the shares from an unrelated person within 24 months fails the exemption even with
perfect asset composition. Verified against: ITA s.110.6(1) "qualified small business corporation
share" (fetched 2026-07-05; independently re-verified, V2). Fix: extend the parenthetical with
"…and no unrelated owner of the shares during those 24 months".

#### [MEDIUM] PSC-1 Elected-amount range stated without the s.85(1)(b) boot floor

- `Preferred-Share-Consideration.md:44` — "The elected amount, chosen between the property's tax cost and its fair market value, becomes the vendor's proceeds and the corporation's cost"

The stated range holds only for all-share consideration. Any non-share consideration (cash on
closing, a note, assumed liabilities) sets a floor: where the elected amount is less than the FMV
of the boot, it is deemed equal to that FMV (s.85(1)(b)), so boot in excess of tax cost forces
gain recognition. The section presents itself as the general description, and the hub explicitly
offers cash/note alongside shares. Verified against: ITA s.85(1)(b) (fetched 2026-07-05;
independently re-verified, V2). Fix: add a sub-bullet — "Any non-share consideration (cash, a
note, assumed debt) sets a floor: the elected amount cannot be below its value (s.85(1)(b)), so
full deferral needs boot no greater than the property's tax cost".

#### [MEDIUM] PSC-2 "Strict filing deadline" never says what the deadline is

- `Preferred-Share-Consideration.md:46` — "The election is made on Form T2057, with a strict filing deadline"

The page (and the BA hub at `:86`) invokes the deadline twice without stating it, though it is one
line: due by the earliest of the electing parties' return due dates for the year of the transfer
(s.85(6)); late election possible up to three years with the s.85(8) penalty (s.85(7); beyond
that, s.85(7.1) where just and equitable). Verified against: ITA s.85(6)/(7)/(7.1) (fetched
2026-07-05; independently re-verified, V2). Fix: "…with a strict filing deadline (the earliest of
the parties' return due dates for the year of the transfer, s.85(6); late filing is possible for
up to three years with a penalty)".

#### [HIGH] PSC-3 TOSI exclusion list omits *excluded business* and misstates the age-65 rule

- `Preferred-Share-Consideration.md:90` — "Common exclusions include the owner being 65 or older, the shares being *excluded shares*, or the amount being a *reasonable return*."

Two defects in the paragraph that decides whether the family payout is taxed at top rate. (1) It
omits *excluded business* — amounts from a business in which the recipient was actively engaged on
a regular, continuous and substantial basis in the year or in **any five prior taxation years**
(s.120.4(1); 20-hours-per-week deeming in s.120.4(1.1)(a)) — the exclusion that most directly
covers a retiring vendor who ran the business, with no age condition and no share-attribute test;
the canonical `Dividends.md:107` this paragraph links names it. (2) "The owner being 65 or older"
is not itself an exclusion: the age rule (s.120.4(1.1)(c)) excludes amounts received by an
individual where the amount would have been an excluded amount for their **spouse or common-law
partner** (the one who ran the business) and that spouse attained 64 before the year (i.e. is 65
by year-end) — the recipient's own age does nothing. As listed, an under-65 retired vendor holding
non-voting freeze preferreds (which fail the *excluded shares* 10%-of-votes test) would wrongly
conclude no exclusion is available. Verified against: ITA s.120.4(1) definitions and
s.120.4(1.1)(a)/(c) (fetched 2026-07-05; independently re-verified, V2). Fix: "Common exclusions
include the vendor having been actively engaged in the business in any five earlier years (an
*excluded business*), the shares being *excluded shares*, or the amount being a *reasonable
return*; amounts that would be excluded for the vendor's spouse are also excluded once that spouse
is 65 or older".

#### [LOW] PSC-4 CBCA citation entry unlinked

- `Preferred-Share-Consideration.md:113` — "s.34-36 - redemption and purchase of shares, and the solvency tests that limit them"

The only Citations entry on the page without a laws-lois link (the 2026-06-30 PSC-1 fix
established the pattern on this very page); CBCA section pages exist on laws-lois. Fix: link the
entry.

#### [LOW] EF-1 Soft (non-noun-phrase) heading "What a Freeze Does"

- `Estate-Freeze.md:24` — "## What a Freeze Does"

Same family as AVS-1 and the headings renamed under the 2026-06-30 BA-1 fix (which covered only
the other two pages). Fix: a noun phrase, e.g. "The Freeze Outcome".

#### [MEDIUM] EF-2 Low-PUC claim has no statutory anchor (s.86(2.1) uncited)

- `Estate-Freeze.md:44` — "The preferred shares take a low paid-up capital, and their fixed redemption value is set by a *valuation* of the business."

The low PUC is load-bearing (it is why each later redemption is almost entirely a s.84(3) deemed
dividend), but the page never cites the rule that produces it on the classic s.86 route: the
s.86(2.1) grind caps the new shares' PUC at the old shares' PUC less any boot. The sibling PSC
page cites the parallel s.85(2.1) grind for its route; EF's Citations carry no PUC authority at
all. Verified against: ITA s.86(2.1) (fetched 2026-07-05; independently re-verified, V2). Fix:
cite s.86(2.1) inline or add a Citations entry ("PUC of the new freeze shares limited to the old
shares' PUC").

#### [MEDIUM] EF-3 Receivables listed among accrued gains a s.85 election defers

- `Estate-Freeze.md:56` — "electing agreed amounts to defer the accrued gains on goodwill (Class 14.1), depreciable property, inventory, and receivables"

Trade receivables of an accrual-basis business carry no accrued gain to defer — the revenue was
already income when billed — and accounts receivable are not a named "eligible property" category
in s.85(1.1). Standard practice transfers them at face with a joint s.22 election so the
corporation keeps bad-debt deductions; rolling them under s.85 adds nothing and (as capital
property) would turn future bad debts into capital losses. Verified against: ITA s.85(1.1) and
s.22(1) (fetched 2026-07-05; independently re-verified, V2). Fix: drop "and receivables" from the
accrued-gains list; optionally add "receivables usually pass at face with a joint s.22 election,
which preserves bad-debt deductions".

#### [LOW] EF-4 "Agreed amounts" vs PSC's "elected amount"

- `Estate-Freeze.md:56` — "electing agreed amounts to defer the accrued gains"

PSC (the page EF leans on for the rollover mechanics) introduces and uses "*elected amount*"; EF
switches terms for the same concept without connecting the two. Fix: reuse PSC's term.

#### [LOW] EF-5 "Meets the higher, then refundable, tax"

- `Estate-Freeze.md:66` — "and meets the higher, then refundable, tax on passive investment income"

"Meets" is the wrong verb for incurring a tax; the double-comma appositive reads awkwardly. Fix:
"and faces the higher (partly refundable) tax on passive investment income".

#### [MEDIUM] EF-6 Intergenerational-exception summary omits the mandatory joint election

- `Estate-Freeze.md:96-101` — "The transfer must follow one of two pathways: … A further condition: the parent can use the exception only once for shares deriving their value from the same business."

The page promises "the intergenerational-transfer conditions are summarized" (`:19`) but omits the
procedural gate: for both pathways the parent and child(ren) must jointly elect in prescribed
form, filed on or before the parent's filing-due date for the year of the disposition
(s.84.1(2.31)(h) immediate; s.84.1(2.32)(i) gradual) — without the election the exception is
unavailable however genuine the transfer, and it is the one condition a reader could not infer
from the pathway descriptions. Verified against: ITA s.84.1(2.31)(h) and (2.32)(i) (fetched
2026-07-05; independently re-verified, V2 — identical election text in both pathways). Fix: extend
the "A further condition:" stanza with the joint-election requirement and deadline.

#### [MEDIUM] EF-7 Corporate-attribution stanza omits the small-business-corporation carve-out

- `Estate-Freeze.md:114-116` — "A freeze that benefits a *designated person* … can trigger corporate attribution under ITA s.74.4(2): the freezor is taxed on deemed interest, at the prescribed rate, on the value frozen, reduced by dividends actually paid out."

s.74.4(2) applies only for periods throughout which the corporation is **not** a small business
corporation (s.74.4(2)(c)) — a freeze of a corporation that stays all-or-substantially-all
active-business (the typical operating CCPC) is outside the rule; the trap bites mainly where the
frozen corporation holds investment assets or drifts from SBC status. As written the stanza reads
as if every spouse/minor-benefit freeze triggers deemed interest. Verified against: ITA s.74.4(2)
conditions incl. (2)(c) (fetched 2026-07-05; independently re-verified, V2 — the (f)
dividend-reduction gloss also confirmed). Fix: add "the rule applies only while the corporation is
not a *small business corporation* (s.74.4(2)(c)), so it is mostly a concern where the frozen
corporation holds investments".
### Bookkeeping

#### [LOW] BK-1 GIFI expansion lowercased

- `Bookkeeping.md:22` — "roll up through the general index of financial information (GIFI)"

The expansion is a proper name — "General Index of Financial Information" (RC4088 title page read
first-hand; independently re-verified, V2); `Expense-Classification.md:7` and `Glossary.md:37`
both capitalise it. Fix: "the General Index of Financial Information (GIFI)".

#### [MEDIUM] BK-2 Hub promises a "deductibility limited or denied" scope the sub-page does not have

- `Bookkeeping.md:25` (also `:12`) — "[Expense Classification](…) answers … which account a given cost belongs in, and where deductibility is limited or denied."

Expense-Classification covers account placement and the capitalize-vs-expense fork; the only
limitation it mentions is the meals 50% parenthetical, and it covers no denied deductions at all
(no club dues s.18(1)(l), fines s.67.6, life-insurance premiums, personal/living s.18(1)(h)). EC's
own scope line claims only "whether a cost is a current expense or a capital asset, and which
Schedule 125 line it belongs on". Fix: narrow the hub line to what EC covers, or add a short
limited/denied block to EC (see *Content notes*).

#### [LOW] BK-3 Related link text names the group but targets a sub-page

- `Bookkeeping.md:41` — "[Filing and CRA](../Filing-And-CRA/T2-Schedules.md)"

Link text is the hub name but the target is `T2-Schedules.md` (same shape as the prior cycle's
SBO-3; `Operations.md:48` carries the identical pattern — see OP-1). Fix: rename the text to
"T2 Schedules", or retarget the hub.

#### [LOW] LA-1 Banned filler intensifier "really"

- `Ledger-And-Accounts.md:32` — "revenue, expenses, and dividends are really sub-balances of equity"

Style-Guide §Sentences bans the filler intensifiers (also swept repo-wide as R-6). Fix: delete
"really".

#### [LOW] LA-2 Em-dash appositive pairs in bullets

- `Ledger-And-Accounts.md:60-61` — "*Permanent* (balance-sheet) accounts — assets, liabilities, equity — carry their balance forward…"

Em-dash appositive insertion in both bullets of the stanza; the Style-Guide reserves em-dashes and
lists this shape as a raw-draft tell. Fix: parentheses, or split the gloss to a sub-bullet.

#### [MEDIUM] LA-3 "1001 Cash used throughout the guide" contradicts Foreign-Currency's operating account

- `Ledger-And-Accounts.md:210-211` — "Cash-line convention used throughout the guide: `1001` Cash is the main operating chequing account; `1002` / `1003` hold any separate savings, second, or foreign-currency account"
- `Foreign-Currency.md:128`, `:167`, `:177`, `:332`, `:468` — main CAD operating account booked to `Deposits` (1002-1) in every example

Foreign-Currency never uses 1001 — including for receiving customer payments and funding the USD
float — so the "used throughout the guide" claim is false for the sibling page LA cross-references
in the same sentence. (This codes the still-open 2026-06-30 bank-account-GIFI content note.)
Verified against: grep of Foreign-Currency.md (zero occurrences of 1001). Fix: restate as "this
page's convention" with a pointer that Foreign-Currency runs its operating account at 1002-1, or
align one of the two pages.

#### [MEDIUM] EC-1 Operating-expense band misstated as 8500–9899

- `Expense-Classification.md:22` (also `:20`) — "Operating expenses occupy the 8500–9899 band; cost of sales sits separately at 8300–8519"

The two clauses overlap (8500–8519 cannot be in both bands) and both ends are wrong: in RC4088 the
operating-expenses section runs 8520–9369 (9367 Total operating expenses, 9368 Total expenses,
9369 Net non-farming income), while 8500/8518/8519 are cost-of-sales items and 9370–9899 is the
farming section (farming *revenue* 9370–9659, farming expenses 9660–9899). The `:20` bullet's
"expenses (8300–9899)" likewise sweeps farming revenue into "expenses". Verified against: RC4088
Appendix A complete GIFI listing (Rev. 21 PDF read first-hand; independently re-verified, V2).
Fix: "Operating expenses occupy the 8520–9369 band; cost of sales sits separately at 8300–8519";
in the prior bullet, "expenses (8300–9369; farming codes 9370–9899 are out of scope here)".

#### [LOW] EC-2 GIFI-Short called "a condensed return"

- `Expense-Classification.md:23` — "*GIFI-Short* (Form T1178): a condensed return for smaller corporations"

T1178 is a condensed GIFI financial-statement-information form filed with the T2, not a return
(RC4088 read first-hand: "the paper version of Form T1178, General Index of Financial Information –
Short"; independently re-verified, V2). Fix: "a condensed GIFI form for smaller corporations".

#### [MEDIUM] EC-3 s.18(1)(a) glossed as the current-expense deduction authority

- `Expense-Classification.md:34`, `:150` — "deducted in full this year (ITA s.18(1)(a))"; Citations: "[s.18(1)(a)](…) (current expense)"

s.18(1)(a) is the general limitation — it *denies* any outlay not made for an income-earning
purpose; it says nothing about timing or full current deduction (that flows from s.9(1) profit
computation, with s.18(1)(b) barring the capital side). Three sibling pages gloss it correctly
(`Owner-Corporation-Transactions.md:361`, `Inventory-And-COGS.md:456`, `Cost-Recovery.md:290`), so
EC is also inconsistent with house usage. The body cites at `:34-35` are unlinked, against the
inline-cite convention. Verified against: ITA s.18(1)(a)/(b) (fetched 2026-07-05; independently
re-verified, V2). Fix: "→ Schedule 125, deducted in full this year (ITA s.9(1), subject to the
income-earning-purpose limitation in s.18(1)(a))"; re-gloss the Citations entry as "general
limitation — income-earning purpose".

#### [MEDIUM] EC-4 Meals-and-entertainment 50% limit carries no citation

- `Expense-Classification.md:62` and `Ledger-And-Accounts.md:276` — "client meals and entertainment (income-tax deduction limited to 50%)"

A load-bearing statutory limitation with no inline cite and no Citations entry on either
Bookkeeping page (grep: zero `67.1` hits in `guide/Bookkeeping/`). The rule itself is correct —
s.67.1(1) deems 50% of the lesser of the amount paid and a reasonable amount. Verified against:
ITA s.67.1(1) (fetched 2026-07-05; independently re-verified, V2). Fix: "(income-tax deduction
limited to 50%, ITA s.67.1)" on both rows, with a Citations entry; optionally cross-link
Owner-Corporation-Transactions for the ETA s.236 ITC mirror.

#### [LOW] EC-5 Two-sentence bullet in Placement notes

- `Expense-Classification.md:83` — "…a management or admin fee to a related service entity → `8871`. The distinction drives source-deduction and T4 / T4A obligations, not just the code."

Mid-bullet period packing two facts into one bullet (Style-Guide §Bullets). Fix: move the second
sentence to a sub-bullet.

#### [LOW] FX-1 "Mentioned once" meta-line is also inaccurate

- `Foreign-Currency.md:22` — "*Functional currency* election (ITA s.261) is mentioned once and excluded from scope"

Narrates the document about itself (the body speaks only to the reader), and the election is in
fact treated in three places (`:22`, `:43-46`, `:544`). Fix: "*Functional currency* election (ITA
s.261) is out of scope; it is a multinational filing…".

#### [MEDIUM] FX-2 Noon-rate discontinuation date wrong

- `Foreign-Currency.md:36` — "replacing the legacy noon rate that was discontinued on 2017-03-01"

The Bank of Canada's legacy noon and closing rates were last published 2017-04-28; 2017-03-01 is
the day the new single daily rate *began* (the next line states the post-2017-02-28 rule
correctly, so only this date is off). Verified against: bankofcanada.ca legacy-rates page ("These
rates were last updated 28 April 2017"; fetched 2026-07-05; independently re-verified, V2). Fix:
"replacing the legacy noon rate (last published 2017-04-28)".

#### [MEDIUM] FX-3 GIFI 8231 title misquoted as "Realized gains/losses on foreign exchange"

- `Foreign-Currency.md:77` — "Reported on Schedule 125 under `Realized gains/losses on foreign exchange` (GIFI 8231)"

The RC4088 title of 8231 is "Foreign exchange gains/losses" (no "Realized"), as
`Ledger-And-Accounts.md:252` has it; the invented title collides with the page's own use of the
line for *unrealized* year-end revaluation. Verified against: RC4088 Appendix A (read first-hand;
independently re-verified, V2 — the item description covers both realized amounts and amortized
deferred exchange gains/losses). Fix: use the exact RC4088 title.

#### [HIGH] FX-4 Capital-account FX on currency dispositions misattributed to s.39(2)

- `Foreign-Currency.md:82` — "Recognized only on disposition (ITA [s.39(2)](…)), not on year-end revaluation"
- `:453` — "(ITA s.39(2) realizes FX only on disposition)"
- `:571` (Citations) — "[s.39(2)](…) - capital gain or loss on FX from the disposition of foreign currency, or settlement of a foreign-currency capital obligation"

Since the 2013 amendments, s.39(2) opens "(other than a gain or loss that would, in the absence of
this subsection, be a capital gain or capital loss to which subsection (1) or (1.1) applies…)" —
it expressly does NOT apply where the gain is already a s.39(1) capital gain from a disposition of
property. A corporation disposing of foreign-currency funds held on capital account (the page's
own cases: converting USD to CAD, using USD to buy securities) realizes a s.39(1)/s.40 capital
gain; s.39(2) is the residual for FX gains arising otherwise than from dispositions — canonically
the settlement of a foreign-currency obligation, the second limb of the `:571` gloss (which is
correct). `:453`'s "s.39(2) realizes FX only on disposition" inverts the provision's role —
s.39(2) is precisely the limb that operates without a disposition. The page's operational rule
(recognize on disposition only; no year-end revaluation on capital account) is unaffected; the
framing matches the pre-2013 s.39(2) that IT-95R (1980) describes. Verified against: ITA s.39
current text — s.39(2) chapeau and s.39(1.1) chapeau quoted verbatim (fetched 2026-07-05;
independently re-verified, V2, with the Bill C-48 explanatory-note history corroborated: "39(2)
will no longer apply to dispositions of foreign currency"). Fix: at `:82` cite s.39(1) (with s.40)
for dispositions, keeping s.39(2) for the obligation-settlement case; at `:453` "(capital gain
under s.39(1) on disposition only)"; split the `:571` gloss — s.39(1)/s.40 for dispositions of
currency, s.39(2) for FX on the settlement of foreign-currency obligations (a s.39(1) Citations
entry already exists at `:569`).

#### [HIGH] FX-5 Internal sub-code 1060-1 collides with the Investments pages' convention

- `Foreign-Currency.md:121` — "Internal codes carry a `-N` suffix (matching the convention in [T3](../Investments/T3/T3.md))"; `:131` — table row "1060-1 | Accounts receivable - CAD"
- `Ledger-And-Accounts.md:188` — "…or `1060-1` / `1060-2` for CAD and USD receivables"

Five Investments pages — including the signed-off `T3.md` (:70, :124, :169, :198) and
`T3-Box-26-Other-Income.md`, plus `T3_Box-25…`, `T5.md`, and `T5-Box-18…` — define `1060-1` as
`Investment distributions receivable`; Foreign-Currency assigns the same number to trade
`Accounts receivable - CAD`, and LA:188 restates that meaning as the guide's. A reader building
one chart of accounts from the guide gets two different accounts numbered 1060-1, and FX's
"matching the convention in T3" sits directly over the mismatch (FX's 1002-1/1002-2/8211-1 rows do
match T3, so the claim reads as verified alignment). Verified against: repo-wide grep of `1060-1`
(re-run 2026-07-05 with all hits enumerated and the sign-off split confirmed — T3.md/T3-Box-26
carry no STATUS line, FX/LA/T5/T3B25/T5B18 do; independently re-verified, V2). Fix: renumber FX's
trade receivables (e.g. `1060-3` CAD / `1060-4` USD) and fix LA:188's example to match; the
Investments pages are signed off, so FX should move.

#### [MEDIUM] FX-6 Gambit spread cost computed on the USD notional but labelled CAD

- `Foreign-Currency.md:256` (knock-ons `:258-259`) — "DLR.U bid-ask spread ~10 bps + DLR bid-ask spread ~7 bps: ≈ CAD 85"

17 bps of the conversion amount is USD 50,000 × 0.0017 = USD 85 — the stated figure is the
USD-notional result mislabelled as CAD (same error class as the prior cycle's FC-4, one line
above). In CAD it is ≈ 68,000 × 0.0017 ≈ CAD 116 (recomputation reproduced, V2). Knock-ons if
corrected: all-in ≈ CAD 130–140 (not 100–120), savings ≈ CAD 1,220, and the `:259` ratio becomes
≈ 10×. Fix: "≈ USD 85 (≈ CAD 116)", and adjust the total, savings, and "about 12×" (→ "about
10×") to match.

#### [LOW] FX-7 Break-even thresholds do not follow from the page's own cost inputs

- `Foreign-Currency.md:260-263` — "Bank broker with $9.95 commissions: ~CAD 1,500 … NBDB or Questrade with $9.95 journal fee and $0 commissions: ~CAD 1,000"

Solving 2% × X = fixed costs + 17 bps × X with the page's own figures gives ≈ CAD 1,285 and
≈ CAD 615 — the second threshold is ~60% high. Directionally safe (conservative) and "~"-hedged.
Fix: "~CAD 1,300" and "~CAD 600–650", or state the basis for the rounder figures.

#### [MEDIUM] FX-8 Gambit year-end note mischaracterizes the trading-account residual

- `Foreign-Currency.md:298-300` — "the net of 8231-1 and 8231-2 (translated) is the income-account FX gain or loss attributable to having held USD for the journal window. In practice the Gambit window is one or two business days and the FX drift contributes only cents"

No USD is held during the journal window — the USD is disposed of on day 0 (the DLR.U buy) and the
position sits in the CAD-native investment account, so the window's FX movement lands in the
Schedule 6 gain/loss, not in 8231. The 8231-1/8231-2 residual from the buy leg reflects the
*pre-Gambit* holding of the USD and, in full books, nets against the bridge entries that brought
the USD in; translated in isolation at a moved closing rate it would book a phantom FX result far
above "cents" (e.g. closing 1.38 → CAD 200.20 on the example's figures). Verified against:
recomputation under the page's own multi-currency convention (buy-leg balances 8231-1
CAD 13,613.53 credit, 8231-2 USD 10,009.95 debit). Fix: reword to "…is the income-account FX gain
or loss on the USD from when it arrived until the day-0 buy; in full books it nets against the
bridge entries booked when the USD came in, and the journal-window drift shows up in the
Schedule 6 result, not in 8231".
### Operations

(`Deferred-Revenue.md` produced no findings — see *What was NOT flagged*.)

#### [LOW] OP-1 Related link labelled "Filing and CRA" targets T2-Schedules.md

- `Operations.md:48` — "- [Filing and CRA](../Filing-And-CRA/T2-Schedules.md) (where they land on the T2)"

The link text names the group hub but the target is the sub-page; `:16` links the actual hub under
the same name (same pattern as BK-3 and the prior cycle's SBO-3). Fix: rename the text to
"T2 Schedules".

#### [MEDIUM] HST-1 Instalment rule: "over $3,000" boundary and prior-year-only base

- `HST.md:20` — "annual filers with prior-year net tax over $3,000 also pay quarterly instalments"; `:108` — "must pay quarterly instalments at one-quarter of the prior-year net tax"

Two imprecisions: (1) the threshold is "$3,000 or more" — ETA s.237(3) deems the instalment base
nil only where it is "less than $3,000", so exactly $3,000 requires instalments; (2) the
instalment base is the *lesser of* the current year's net tax and the preceding year's annualized
net tax (s.237(2)), not the prior year alone — a corp expecting a lower current year may instal on
the lower estimate. The same boundary wording sits at `Payment.md:19` (PAY-2) and
`Small-Business-Tax.md:402`. Verified against: ETA s.237(2)-(3) (fetched 2026-07-05; independently
re-verified, V3). Fix: "net tax of $3,000 or more" and "one-quarter of the instalment base (the
lesser of the prior year's net tax and the current year's estimate)".

#### [MEDIUM] HST-2 Place-of-supply rules attributed to Schedule IX / Memorandum 3.3

- `HST.md:71` (and Citations `:512`, `:520`) — "the *place of supply* rule, not by where the supplier is located (ETA Schedule IX; CRA GST/HST Memorandum 3.3)"

The rules as stated are correct, but the authorities are off: the recipient-address rule for
services quoted at `:73` lives in the New Harmonized Value-added Tax System Regulations
(SOR/2010-117, s.13, with a where-performed fallback), which displaces Schedule IX's older service
rules via the Schedule IX Part IX s.3 prescribed-rules hook; CRA's province-level guidance is the
Memorandum 3-3-2 … 3-3-6 series, while Memorandum 3-3 covers in-or-outside Canada. Verified
against: SOR/2010-117 s.13(1)-(2) and ETA Schedule IX Part IX s.3 (fetched 2026-07-05;
independently re-verified, V3; memoranda titles via search index). Fix: cite SOR/2010-117 for the
services/IPP rules and Memorandum 3-3-2 (and 3-3-6) for guidance; keep Schedule IX for goods if
desired.

#### [MEDIUM] HST-3 GST34-3 mislabelled as the non-personalized return

- `HST.md:90` — "Form *GST34-3* is the non-personalized version for registrants without a GST34-2 on file"

GST34-3 is the Electronic Filing Information sheet CRA sends to registrants who filed their last
return electronically (it carries the access code; it is not a return). The non-personalized
return is Form GST62. Verified against: form titles via search snippets and fetchable mirrors
(canada.ca 403; independently re-verified, V3). Fix: "Form *GST62* is the non-personalized return;
registrants who file electronically receive the *GST34-3* electronic filing information sheet
instead of a GST34-2".

#### [MEDIUM] HST-4 Body sentence addressed to the maintainer

- `HST.md:186` — "GIFI rollup of the two control accounts is verified against CRA RC4088 by the maintainer before sign-off; this draft leaves the specific rollup line as a TODO."

Body content narrating the drafting/review process — the guide body speaks only to the reader; the
same point already lives in the page's `## TODO` (`:542`), its proper channel. Fix: delete the
sentence.

#### [HIGH] HST-5 "ITCs on imports" claimed to survive the Quick Method election

- `HST.md:228` — "ITCs on *capital purchases* and on *imports* are still claimable separately under the regular method, even after the Quick Method election."; `:259` — "Quick-Method ITCs that are still claimed (capital purchases, imports) follow the standard regular-method posting"

There is no general imports carve-out. Under the Quick Method net-tax formula (SOR/91-51 s.17(1),
variable C(a)(i)) the ongoing ITCs are those "in respect of property (other than specified
property) acquired, imported or brought into a participating province … or an improvement to that
property" — i.e. real property and capital assets, whether bought domestically or imported, plus
pre-election periods and narrow agent/auctioneer cases; "specified property" is everything except
real property and capital assets (s.15(1)). Import HST paid to CBSA on *operating* inputs gets no
ITC while the election is in effect — the remittance-rate spread is its only compensation — so a
Quick Method registrant following the page over-claims on every operating import. RC4058's
exhaustive still-claimable list has no imports category, and the Imports section at `:283`
radiates the same defect ("recoverable as an ITC" with no Quick Method caveat). Verified against:
SOR/91-51 s.15(1) and s.17(1) variable C (fetched 2026-07-05; independently re-verified, V3, with
RC4058 Rev. 20 p.8 quoted verbatim from a text-extracted mirror). Fix: replace "and on imports"
with wording limited to capital purchases (noting imported *capital* property qualifies); drop
"imports" at `:259`; add the Quick Method caveat to the Imports section.

#### [MEDIUM] HST-6 Quick Method $400k test: window and base simplified past the rule

- `HST.md:231` — "Worldwide *taxable supplies* (including those of associated corps) in the previous fiscal year, plus the HST charged on those supplies, total $400,000 or less"

(1) Window: "previous fiscal year" is the continuing-eligibility test once elected (SOR/91-51
s.15(3)(b)); for a first election the threshold period is any four consecutive fiscal quarters
ending in one of the last two fiscal quarters before the election takes effect (s.15(3)(a);
RC4058's "four consecutive fiscal quarters out of your last five"). (2) Base: the $400k base
excludes supplies of financial services and sales of real property, capital assets, and goodwill —
a year with a large capital-asset sale does not blow eligibility. Verified against: SOR/91-51
s.15(3) (fetched 2026-07-05; independently re-verified, V3, with the RC4058 exclusions quoted from
the text-extracted mirror). Fix: state the 4-of-last-5-quarters window for electing (previous
fiscal year once elected) and add the exclusions.

#### [MEDIUM] HST-7 Quick Method eligibility list: missing 365-day conditions, invented Simplified-ITC condition

- `HST.md:230-238` — "Eligibility requires *all* of the following: … The corp is not under an *election to use the Simplified Method for ITCs* (a separate ITC-side simplification, different from the Quick Method)"

The statutory conditions (SOR/91-51 s.16(1)) are (a) specified-registrant status (the page's
professions list is right), (b) the $400k threshold, and (c) engaged in commercial activities
throughout the 365-day period ending immediately before the reporting period AND no streamlined
election ceased by revocation in that window. The page omits both (c) limbs (RC4058's
new-registrant accommodation softens the first) and instead lists a condition that does not exist
— the simplified ITC method involves no standing election to be "under". Verified against:
SOR/91-51 s.16(1) (fetched 2026-07-05; independently re-verified, V3). Fix: replace the third
bullet with the 365-day continuous-activity and no-revocation-in-365-days conditions.

#### [CRITICAL] HST-8 GST74 election timing wrong for annual filers

- `HST.md:242` — "The election takes effect on the first day of the reporting period in which it is filed (for an annual filer, the start of the fiscal year), or a later date specified on the form"

This tells an annual filer that filing GST74 any time in the year makes the Quick Method effective
from the start of that year. ETA s.227(2) sets the opposite discipline: the election states an
effective date that must be the first day of a reporting period (s.227(2)(b)), and where the first
reporting period it covers is a fiscal year — the annual filer's case, the guide's default reader
— it must be *filed* on or before the first day of the second fiscal quarter of that year
(s.227(2)(c)(i); Minister may allow later); for other reporting periods, by the due date of the
return for the first period the election covers (s.227(2)(c)(ii)). An annual filer who files GST74
in August expecting Quick Method treatment from January 1 has an ineffective election and
misremits (keeps the quick-method spread) for the whole year. Both halves of the page's sentence
fail: the effective date is not a function of the filing period at all, and the filing deadline is
early in the year, not open-ended. The revocation sentence at `:243` is correct and stands.
Verified against: ETA s.227(2)(b)/(c) (fetched 2026-07-05; independently re-verified, V3, with
RC4058 Rev. 20 p.6 quoted verbatim from a text-extracted mirror: "If you file annual GST/HST
returns, you have to make the election by the first day of your second fiscal quarter"). Fix: "The
election takes effect on the first day of a reporting period you specify on the form. An annual
filer must file GST74 by the first day of the second fiscal quarter of the year it first applies
to (e.g. by Apr 1 for a calendar year); quarterly and monthly filers must file by the due date of
the return for the first period the election covers."

#### [MEDIUM] HST-9 Zero-rated goods-export description matches s.12, cited to s.1

- `HST.md:268` (and Citations `:511`) — "*Exports of tangible goods* shipped to a non-resident purchaser outside Canada (Schedule VI, Part V, s.1)"

Goods the *supplier ships* to a destination outside Canada (or sends by mail/courier) are
zero-rated under Schedule VI, Part V, s.12; s.1 is the different case where the *recipient* (not a
consumer) takes delivery in Canada intending to export, subject to conditions (exports as soon as
reasonable, no prior use in Canada, satisfactory evidence). The page's description is the s.12
pattern. Verified against: ETA Schedule VI Part V s.1 and s.12 (both quoted verbatim from the ETA
XML, 2026-07-05; independently re-verified, V3). Fix: cite s.12 for supplier-shipped exports, or
describe s.1's recipient-export conditions if s.1 is kept.

#### [HIGH] HST-10 Quick Method worked example reports line 101 net of HST

- `HST.md:431` — "GST34 annual return for 2026, filed by 2027-03-31: - Line 101: $45,000"

Under the Quick Method, line 101 is completed *including* GST/HST — RC4058: "add your revenues
from taxable supplies (include the GST/HST at the rate that applied at that time) and enter the
total on line 101". Example 2's line 101 should be $50,850; Example 1's regular-method $45,000
(`:393`) is correct. No net-tax effect (the remittance recomputes identically: $50,850 × 8.8% −
$300 = $4,174.80), but a reader copying the example files line 101 wrong on every return.
Verified against: RC4058 Rev. 20 line-101 instruction (quoted verbatim from a text-extracted
mirror, 2026-07-05; independently re-verified, V3). Fix: line 101 = $50,850 in Example 2, with a
note that Quick Method line 101 is GST/HST-inclusive.

#### [MEDIUM] HST-11 Late-registration effective date contradicts the page's own rule

- `HST.md:457` — "register now with the effective date set to the day after the threshold was crossed"

Inconsistent with `:39-40`: under the single-quarter blow-out the crossing supply is itself
taxable, so the effective date is the day of that supply (not the day after); under the
four-quarter test the corp stays a small supplier through the month following the crossing
quarter, so the effective date is the first taxable supply after that grace. Verified against: ETA
s.148(1)-(2) (re-fetched 2026-07-05; independently re-verified, V3 — the page's `:39-40` statement
is the statutorily correct one). Fix: "with the effective date the day it ceased to qualify as a
small supplier (the day of the crossing supply under the single-quarter test; after the one-month
grace under the four-quarter test)".

#### [LOW] HST-12 s.190 cited for a goods-to-shareholder bullet

- `HST.md:462` — "the *self-supply* and *change-of-use* rules can trigger GST/HST on the deemed disposition (ETA s.172, s.190)"

s.172(2) (appropriation of property to a shareholder — deemed FMV supply) is the operative rule
for the bullet's subject; s.190 is real-property/residential-conversion machinery and does not
bear on goods (both fetched 2026-07-05; independently re-verified, V3). Fix: drop s.190 (or move
it to the residential-conversion sentence on Rental-And-Property-Income.md).

#### [HIGH] HST-13 "The corp is the debtor to CRA, not a trustee" — HST collected is a statutory deemed trust

- `HST.md:463` — "*Trust account convention*: HST collected is the corp's money in a legal sense (the corp is the debtor to CRA, not a trustee), but practical bookkeeping often treats it as a quasi-trust…"

Backwards. ETA s.222(1) deems every person who collects an amount as or on account of Division II
tax to hold it — "for all purposes and despite any security interest" — in trust for the Crown,
separate and apart from the person's property, until remitted; s.222(3) extends the deemed trust
over the person's property ahead of most security interests on non-remittance; the exception is
amounts collected before bankruptcy (s.222(1.1)). This differs from corporate income tax (no
equivalent deemed trust on the corp's own T2 liability) and is precisely why segregation matters.
The bullet's practical advice is right; its legal characterization is inverted. Verified against:
ETA s.222(1)/(1.1)/(3) (fetched 2026-07-05; independently re-verified, V3). Fix: "HST collected is
held in a statutory deemed trust for the Crown (ETA s.222) — stronger than an ordinary debt; keep
it segregated in practice".

#### [HIGH] RBD-1 s.231 bad-debt recovery presented as available; Quick Method filers get none on eligible supplies

- `Receivables-And-Bad-Debts.md:13` — "The HST charged on a written-off invoice comes back through a bad-debt adjustment (ETA s.231), claimable within four years"; `:79` — "Under the *Quick Method* the interaction is not the plain s.231 formula; verify the treatment in RC4058 before claiming (see TODO)"

For supplies subject to the Quick Method remittance rate there is no bad-debt adjustment at all:
s.231 relief is a Division V net-tax deduction, and the Quick Method net-tax formula admits
Division V deductions only "in respect of a supply (other than a specified supply)" (SOR/91-51
s.17(1) variable C(b)) — an ordinary consulting invoice IS a specified supply. Nor does the
remittance base give relief ("net specified supplies" nets only amounts paid or credited to the
customer, s.15(5.1)); the symmetric recovery re-remittance is likewise regular-method-only
(s.17(1) B(b)). RC4058: adjustments for bad debts are not available "except for supplies that are
not eligible for the quick method calculation". The TLDR states the recovery unconditionally and
the `:79` hedge implies a modified formula exists when the true answer is "none for quick-method
supplies" — and this guide's canonical reader is a Quick Method consulting CCPC. The write-off
journal at `:66` and the recovery re-remittance at `:88-96` are regular-method entries. This also
settles the page's second TODO item. Verified against: SOR/91-51 s.17(1) B(b)/C(b), s.15(1)
"specified supply", s.15(5.1) (fetched 2026-07-05; independently re-verified, V3, with the RC4058
bad-debts passage quoted verbatim from a text-extracted mirror). Fix: state plainly that the s.231
adjustment applies under the regular method; under the Quick Method no bad-debt adjustment (and no
recovery re-remittance) is available for quick-method supplies — the remittance rate is unaffected
by the write-off (relief survives only for supplies not eligible for the quick-method calculation,
e.g. sales of capital assets or real property).

#### [MEDIUM] RBD-2 s.231(4) window is four years from the return due date, not "of the period"

- `Receivables-And-Bad-Debts.md:78` (also TLDR `:13` "claimable within four years") — "Claim it as an adjustment on a return filed within four years of the period in which the write-off was made"

s.231(4) allows the deduction only in a return "filed within four years after the day on or before
which a return of the person was required to be filed for the reporting period in which the
supplier has written off the bad debt" — the clock runs from the return DUE DATE for the write-off
period (annual filer writing off in calendar 2026: claim window to 2031-03-31, not 2030-12-31).
The page's own TODO guessed a third variant; this settles it. Verified against: ETA s.231(4)
(fetched 2026-07-05; independently re-verified, V3, which also corrected the quote's line to
`:78`). Fix: "on a return filed within four years after the due date of the return for the period
in which the debt was written off".

#### [LOW] DF-1 GIFI label "Short-term debt (2701)" vs canon 2700/2701

- `Debt-And-Financing.md:11`, `:42-43` — "a line of credit books to `Short-term debt` (`2701`); a term loan splits between `2701` (due within a year) and `Long-term debt` (`3140`)"

`Ledger-And-Accounts.md:223` has 2700 as the Short-term debt rollup and 2701 the
loans-from-Canadian-banks item, so the label-code pairing mismatches the canonical table (the code
choice itself is consistent). GIFI labels re-verified via RC4088 snippets (V3). Fix: label the
account `Loans from Canadian banks` (`2701`) or cite the rollup as `Short-term debt` (`2700`).

#### [MEDIUM] DON-1 75% limit stated without the gift-gain/recapture add-ons

- `Donations.md:11` — "The annual claim is capped at 75% of net income"; `:28` — "The claim in any year is capped at 75% of the year's net income"

s.110.1(1)(a) caps the deduction at the lesser of income for the year and 0.75A + 0.25(B + C + D)
— 75% of income *plus* 25% of taxable capital gains from gifted property and 25% of recapture from
gifted depreciable property, so gifts of appreciated capital property can push the effective limit
toward 100%. Immaterial to the page's own worked example (an s.38(a.1) gift has a nil taxable
gain) and to cash gifts, but the flat 75% understates the rule the section heading promises; this
resolves the page's last TODO item. Verified against: ITA s.110.1(1)(a) formula (quoted in full,
2026-07-05; independently re-verified, V3). Fix: add a parenthetical — the 75% base is topped up
by 25% of taxable gains and recapture arising from the gifted property itself.

#### [LOW] DON-2 Account label "Long-term investments (2303)" vs canon

- `Donations.md:70` — "| `Long-term investments` (`2303`) | | 4,000.00 |"

`Ledger-And-Accounts.md:208` defines 2300 as the Long-term investments rollup with 2303 the
Canadian-shares item; the Investments pages label 2303 "Investment – Securities" (GIFI labels
re-verified, V3). Fix: label the line `Investment – Securities` (`2303`) (or `Canadian shares`).

#### [MEDIUM] RPI-1 Separate-class rule conflated with the rental CCA cap

- `Rental-And-Property-Income.md:75` — "Each rental building acquired for $50,000 or more sits in its own CCA class (Reg 1101(1ac)), so one building's CCA cannot shelter another's income past the cap"

The "so" clause is wrong on both ends: Reg 1100(11) applies in the *aggregate* — total rental CCA
is capped at total net rental income across all rental properties, so within the cap one
building's CCA freely shelters another building's income; and the separate-class rule (1101(1ac),
capital cost "not less than $50,000") exists to isolate recapture and terminal loss per property
on disposition, not to police the loss cap. A two-building reader could wrongly conclude each
building's CCA is limited to that building's own income. Verified against: Reg 1100(11) and Reg
1101(1ac) (both quoted verbatim, 2026-07-05; independently re-verified, V3 — the regulation text
is decisive on its own; IT-195R4's confirming sentence could not be reproduced headlessly and
rests on snippets). Fix: "the Reg 1100(11) cap applies to rental properties in aggregate; the
separate class per $50,000+ rental property (Reg 1101(1ac)) instead keeps recapture and terminal
loss per building when one is sold".

#### [MEDIUM] RPI-2 Citation entry names an irrelevant folio to disclaim it

- `Rental-And-Property-Income.md:123` — "CRA - Income Tax Folio S4-F15-C1 *Manufacturing and Processing* is not the source here; see IT-73R6 *The Small Business Deduction* (archived) for the SIB discussion"

A citation entry that cites a wrong-topic folio only to negate it reads as leftover drafting
reasoning and breaks the Citations convention (source + what it covers). Folio and bulletin titles
re-verified: S4-F15-C1 is "Manufacturing and Processing"; IT-73R6 is the on-point archived SIB
source (V3). Fix: "CRA - IT-73R6 *The Small Business Deduction* (archived) - specified investment
business and the more-than-five-employees test".

#### [LOW] RPI-3 Rhetorical heading "Why the Character Matters"

- `Rental-And-Property-Income.md:23` — "## Why the Character Matters"

The Style-Guide bans this exact pattern ("no `Why X matters`"). Fix: a noun phrase, e.g.
"## Rate Gap by Character".

(`Inventory-And-COGS.md` produced no findings — see *What was NOT flagged*.)

#### [MEDIUM] CRV-1 Building available-for-use limb misquoted as "substantially complete"

- `Cost-Recovery.md:207` — "Construction is substantially complete"; `Capital-Cost-Allowance.md:141` — "Construction substantially complete"

s.13(28)(b) reads "the time the construction of the building is complete" — no "substantially".
The softer wording moves the AFU trigger earlier than the statute allows (a nearly-finished
building would start CCA too soon); the neighbouring limb (a) correctly keeps "all or
substantially all", which is where the statute's "substantially" actually lives. Verified against:
ITA s.13(28) (quoted verbatim from the consolidated XML, 2026-07-05; independently re-verified,
V3). Fix: "Construction of the building is complete" on both pages.

#### [MEDIUM] MAT-1 Shed available-for-use test drops the construction-complete limb

- `Materials-And-CIP.md:54` (cf. `:206`) — "the earlier of substantially all of it being used for its intended purpose, or the beginning of the second tax year after the acquisition year"

s.13(28) is an earliest-of test with three operative limbs for a self-built shed: (a)
all-or-substantially-all first use, (b) construction complete, (c) the 357-day rule. The page
lists only (a) and (c) — yet its own Example 1 uses limb (b) as the trigger ("Sep 1 2027,
available-for-use date (construction complete, shed in service…)"). A shed finished in November
but not yet used would be AFU under (b); the two-limb list says otherwise, and it is inconsistent
with the three-limb lists on `Cost-Recovery.md:205-208` and the CCA hub `:139-142`. Verified
against: ITA s.13(28) (fetched 2026-07-05; independently re-verified, V3). Fix: "the earliest of:
substantially all of it first used for its intended purpose, construction complete, or the
beginning of the second tax year after the acquisition year".

#### [HIGH] CCA-1 Classes 12 and 13 wrongly listed as exempt from short-year proration

- `Capital-Cost-Allowance.md:201-202` — "Exceptions to proration: — Classes 12, 13, 14, 15"
- `CCA-Tracking.md:234` — "*Short tax year* (under 365 days): multiply `CCA (Max)` by `days in tax year ÷ 365`, except for classes 12, 13, 14, and 15"

Reg 1100(3) prorates everything except subsection (0.1) and paragraphs (1)(c), (e), (f), (g), (m),
(w), (x), (y), (ya) — i.e. Class 14 ((1)(c)), Class 15 ((1)(f)), timber limits, industrial mineral
mines, Canadian film or video productions, and mining specialty allowances. Class 12 CCA arises
under (1)(a)(xii) and Class 13 under (1)(b) — neither is in the exclusion list, so both ARE
prorated. A CCPC with a short first year (the incorporation-year case the page itself raises)
following this list claims unprorated Class 12 software or Class 13 leasehold CCA — an over-claim.
`CCA-Examples.md:127` states, correctly, that Class 14.1 is *not* in the exception list; the wrong
12/13 entries sit on the other two pages. Verified against: Reg 1100(3) (quoted verbatim from the
consolidated Regulations XML, 2026-07-05, which defeats the section-1100.html truncation the
finder hit; paragraph-to-class mapping re-derived; independently re-verified, V3; T4012-derived S8
lists corroborate — no 12, no 13). Fix: "Exceptions to proration: Classes 14 and 15 (plus
specialty items: timber limits, industrial mineral mines, Canadian film or video productions, and
certain mining allowances)" on both pages.

#### [HIGH] CCA-2 Missing current 100% first-year expensing for Classes 44/46/50 — laptop example understates the maximum

- `Capital-Cost-Allowance.md:111-114` (also `:252`) — full-expensing list names only M&P 53/43, clean-energy 43.1/43.2, ZEV 54-56
- `CCA-Classification.md:30` (Class 50 half-year "yes"), `:43` — "a regular class gets an enhanced first-year allowance of 1.5× its normal rate"
- `CCA-Examples.md:38-41` — "…the first-year base is 150% of the addition: CCA of $6,000 × 55% = $3,300"
- `CCA-Tracking.md:324-330`, `:342`, `:346-354` — tie-out tables carrying CCA (Max) 3,300 / 385 / recapture 85

Reg 1100(2) now carries per-class rows for the Budget 2024 productivity measure (enacted with Bill
C-15): Class 50 factor 9/11, Class 46 factor 2 1/3, Class 44 factor 3, each for property acquired
after April 15, 2024 that becomes available for use before 2027 — arithmetic: 55% × 20/11 = 100%,
30% × 10/3 = 100%, 25% × 4 = 100% of cost in year one. None of the four pages mentions it: the
hub's full-expensing list omits 44/46/50; the classification table's "1.5×" note is wrong for
Class 50 through AFU-2026; Example 1's laptop (acquired Mar 1 2026, AFU same day) has a stated
first-year figure of $3,300 that is not the maximum — the maximum is $4,000 (closing UCC $0), and
on a full claim the 2028 sale for $400 produces $400 of recapture, not $85 — and the CCA-Tracking
tie-out tables inherit the same understatement even though the register column is labelled
"CCA (Max)". The window expires for property available for use after 2026, so this is precisely
the current-year rule for the audience's most common asset class. $3,300 stays legal as a
discretionary partial claim; presenting it as the maximum is the defect. Verified against: Reg
1100(2) descriptions of A and A.1, rows (c)/(c.1)–(e) (quoted verbatim from the consolidated XML,
last amended 2026-03-26 — the Bill C-15 RA date the hub itself pins; laptop maximum recomputed to
$4,000 / $0 / $400; independently re-verified, V3). Fix: add the 44/46/50 window to the hub's
full-expensing list and the classification table (Class 50: "100% first year for property acquired
and available for use after Apr 15 2024 and before 2027"); recompute Example 1 and the
CCA-Tracking tie-out on the 100% basis, or keep $3,300 only as an explicitly labelled partial
discretionary claim while stating the $4,000 maximum. Severity calibrated to the prior cycle's
CEX-2 (same understated-first-year-maximum shape).

#### [MEDIUM] CCA-3 s.13(7)(e) glossed as capping "UCC at the seller's UCC"

- `Capital-Cost-Allowance.md:297` — "deemed-cost rules in s.13(7)(e) cap UCC at the seller's UCC plus a fraction of any gain"

s.13(7)(e) deems the transferee's *capital cost* to be the transferor's cost/capital cost plus 1/2
of the transferor's gain — neither side of the formula is a UCC figure. As written the sentence
teaches the wrong base (a seller's UCC is usually well below their capital cost, and capital cost
sets the buyer's future recapture ceiling). Verified against: ITA s.13(7)(e) (quoted verbatim,
2026-07-05; independently re-verified, V3). Fix: "deemed-cost rules in s.13(7)(e) cap the buyer's
capital cost at the seller's capital cost plus half of the seller's gain".

#### [LOW] CCA-4 Class 13 first-year cap attributed to Schedule III

- `Capital-Cost-Allowance.md:105` — "Schedule III imposes its own first-year limit on leasehold improvements"; `CCA-Classification.md:35` — "exempt (Sch. III first-year limit)"

Schedule III only computes the annual straight-line amount; the 50% first-year cap is imposed by
Reg 1100(1)(b)(i)(B) (150% under clause (A) for AIIP/RAIIP). Attribution off by one level;
practical guidance right (re-verified from the verbatim clauses, V3). Fix: "Reg 1100(1)(b) caps
the first year at 50% of the Schedule III amount".

#### [LOW] CCA-5 Reg 1104(4) cited for DIEP definitions and the phase-out

- `Capital-Cost-Allowance.md:337` — "Regulation 1104(4) - AIIP / DIEP phase-out and definitions"; `CCA-Tracking.md:397` — "Regulation 1104(4) - AIIP definitions and phase-out"

1104(4) defines only "accelerated investment incentive property" (1104(4.01) the reaccelerated
kind); DIEP definitions live in 1104(3.1)-(3.2), and the phase-out factors are the A/A.1 rows of
Reg 1100(2) (re-verified, V3). Fix: "Regulation 1104(4), (4.01) - AIIP / reaccelerated-AIIP
definitions; Regulation 1104(3.1)-(3.2) - DIEP definitions; first-year factors and phase-out in
Regulation 1100(2)".

#### [LOW] CCA-6 Recapture-is-ABI claim carries no citation

- `Capital-Cost-Allowance.md:173` — "Recapture is *active business income* when the asset was used in the active business, so it benefits from the *Small Business Deduction* (SBD)"

Correct but load-bearing (it drives the rate applied to recapture) and stated with no inline cite
or Citations entry. The hook is the s.125(7) "income of the corporation for the year from an
active business" definition ("…including any income … pertaining to or incident to that
business") — fetched this pass (independently re-verified, V3). Fix: add "(income incident to the
active business, s.125(7) definition)" or a Citations entry.

#### [MEDIUM] CCL-1 "Networking equipment" placed in Class 50; data network gear is Class 46

- `CCA-Classification.md:30` — "| `50` | 55% declining | computers, peripherals, networking equipment (acquired after Mar 18 2007) | yes |"; `CCA-Tracking.md:59` — "computers, peripherals, networking"

Data network infrastructure equipment (routers, data switches, hubs, and their systems software)
acquired after Mar 22 2004 is Class 46 at 30% (Class 8 before that) — never Class 50, whose
definition covers general-purpose electronic data processing equipment and excludes electronic
communications control equipment. Filing network gear at 55% over-claims. (Class 46 also carries
its own 100% first-year window through AFU-2026 — see CCA-2.) Verified against: Regulations
Schedule II Classes 46 and 50 (quoted verbatim from the consolidated XML, 2026-07-05 — a
primary-text upgrade over the finder's snippet basis; Class 46's 30% rate confirmed at Reg
1100(1)(a)(xxxii); independently re-verified, V3). Fix: drop "networking equipment" from the
Class 50 row (or move it to a Class 46 line); align CCA-Tracking's `What Goes Here` cue.

#### [LOW] CCL-2 Dock example's "$5,000" dangles on the boats bullet

- `CCA-Classification.md:77` — "Small fishing boats (under 20 ft) and pontoon boats tie up to it, cost $5,000"

The $5,000 reads as the boats' cost; it is presumably the dock's build cost, which the previous
bullet already gives as "a few thousand dollars". Fix: move the cost to the first bullet or delete
it.

#### [LOW] CCL-3 Capitalization-floor decision step answers a different question

- `CCA-Classification.md:82` — "Below the capitalization floor (< $500)? No, a built structure is capital, not a current expense"

The floor test turns on cost vs the corp's policy floor; the stated reason answers the
capital-vs-current-expense question instead. Fix: "No — the build cost is well above the floor".

#### [LOW] CCL-4 Class 14.1 transitional 7% missing its 2027 sunset

- `CCA-Classification.md:151` — "pre-2017 CEC transitional balances use 7%"

The extra 2% (5% + 2% = 7%) on pre-2017 CEC balances exists only for taxation years ending before
2027; after that the balance reverts to 5%. Accurate today, wrong from next year — cheap to
future-proof. Verified against: Reg 1100(1)(c.1) (quoted verbatim, 2026-07-05 — a primary-text
upgrade over the finder's secondary basis; independently re-verified, V3). Fix: "pre-2017 CEC
transitional balances use 7% (taxation years ending before 2027; 5% after)".

#### [LOW] CCL-5 Class 10 row applies the passenger-vehicle cap to vans and pickups generally

- `CCA-Classification.md:32` — "motor vehicles, vans, light and pickup trucks under the passenger-vehicle cost cap; one shared pool"

Only a *passenger vehicle* is capped into Class 10.1; a van or pickup within the s.248(1)
"automobile" carve-outs (seating/goods-transport use) is a plain motor vehicle and stays in
Class 10 at any cost. As compressed, the row implies an expensive work truck moves to 10.1
(s.248(1) definitions re-fetched, V3). Fix: "motor vehicles (any cost), and passenger vehicles
under the cost cap; one shared pool".

#### [LOW] CCE-1 Schedule 1 direction wrong for a book gain on disposal

- `CCA-Examples.md:68` — "Add back: book amortization expense for the year and the accounting gain/loss on disposal"

On Schedule 1 a book *loss* on disposal is added back (line 111) but a book *gain* is deducted
(line 401) — and this example's own disposal produces an $85 book gain per the CCA-Tracking
tie-out, which the bullet as written would add rather than back out (S1 line structure
corroborated via software documentation, V3). Fix: "Add back: book amortization and any book loss
on disposal; deduct: any book gain on disposal and the Schedule 8 CCA (including any terminal
loss)".

#### [HIGH] CCT-1 "Leave false for the full-expensing and ZEV classes" breaks the register's own Schedule 8 column-225 mapping

- `CCA-Tracking.md:100` (vs `:116-117`, `:148`, `:155`) — "Leave false for the full-expensing and ZEV classes (M&P Class 53 / 43, 54, 55, 56, 43.1, 43.2), which expense on their own rules"

Two defects. (1) Factually: M&P (53/43) and clean-energy (43.1/43.2) property that meets the
date/no-prior-use conditions IS AIIP/reaccelerated-AIIP — Reg 1104(4)/(4.01) exclude only Classes
54-56 — so "leave false" is wrong for them. (2) Operationally: the page defines `Year AIIP
Additions` as the Schedule 8 AIIP/ZEV split feeding column 225, and Reg 1100(2)'s accelerated base
elements D/D.1 expressly pull Classes 54-56 in alongside AIIP/RAIIP, so the S8 accelerated column
must carry every one of these classes. Flagging them false zeroes the pivot's column-225 total
through the page's own formulas, and the software path the page recommends (`:155`) receives a
Schedule 8 with the addition in 203 but nothing in 225 — it applies the half-year rule instead of
the 100% first-year allowance (e.g. Class 53: 25% of cost instead of 100%), a materially wrong
return for exactly the classes the caveat names. The by-hand `Special cases` override (`:231`)
does not rescue the software path. Verified against: Reg 1104(4)/(4.01) and Reg 1100(2) elements
D/D.1 (quoted verbatim, 2026-07-05); Taxprep S8 help fetched directly — line 225 = "Cost of
additions that are AIIP or ZEV included in the amount on line 203", with CRA treating Classes
54-56 as AIIP for Schedule 8 purposes (independently re-verified, V3). Fix: set `AIIP Eligible`
true for full-expensing and ZEV additions too (they belong in column 225); keep the distinction
that their uplift factor is the 100% one per the class rows, rather than the generic +0.5.

#### [MEDIUM] CCT-2 "First-year limit" over-generalized to Class 14

- `CCA-Tracking.md:232` (resolves the TODO at `:405`) — "CCA is `Capital Cost ÷ amortization period` (the lease term + first renewal for 13; the remaining legal life for 14), subject to the first-year limit"

Only Class 13 has a 50% first-year cap (Reg 1100(1)(b)(i)(B), on the Schedule III amount; 150%
when AIIP/RAIIP). Class 14 has no such cap — Reg 1100(1)(c) limits the year to the life-apportioned
amount (which self-prorates the acquisition year), and AIIP/RAIIP *adds* a 0.5×/0.25× additional
allowance rather than limiting. Reading the shared "first-year limit" as a halving under-claims
Class 14; this also answers the page's own TODO. Verified against: Reg 1100(1)(b) and (c) (quoted
verbatim, 2026-07-05; independently re-verified, V3). Fix: "…subject, for Class 13, to the 50%
first-year cap (Reg 1100(1)(b)); Class 14's first year is simply the apportionment from the
acquisition date".

#### [LOW] CCT-3 Garbled reason for recapture/terminal-loss exclusivity

- `CCA-Tracking.md:219` — "at most one is non-zero in a class-year, since the pool cannot be both negative and emptied at once"

A pool can perfectly well be negative *and* emptied (sell everything above remaining UCC — plain
recapture). The exclusivity holds because recapture needs a negative closing balance and a
terminal loss a positive one; the stated reason is false even though the conclusion is right
(s.13(1)/s.20(16) re-checked, V3). Fix: "since one requires a negative closing balance and the
other a positive one".

#### [LOW] CCT-4 "Rate is unused" for full-expensing classes contradicts the residual rule

- `CCA-Tracking.md:39` (vs `:231`) — "`Full expensing`: capital cost, full-expensing classes 53 / 43 (M&P), 54, 55, 56, and 43.1/43.2 under AIIP (`Rate` is unused)"

The Special-cases section says "any later residual depreciates at the class rate" — so `Rate` is
used whenever less than 100% was claimed (the claim is discretionary) or the phase-out years give
less than 100%. Fix: drop "(`Rate` is unused)" or say "`Rate` still applies to any residual".
### Paying Yourself

#### [MEDIUM] PY-1 Hub misdescribes the scope of Owner-Corporation-Transactions

- `Paying-Yourself.md:26` (also `:10`, `:13`) — "[Owner-corporation transactions](…) covers the shareholder loan account — the running record of money moving between you and the corporation that is neither salary nor dividend…"

The hub reduces the sub-page to the shareholder loan account; the sub-page's own scope is much
wider — mixed-use assets, benefits, allowances, reimbursements, rent, asset transfers, and
shareholder loans (`OCT:14`). Vehicles, home office, and employee benefits — the bulk of the page
— are invisible from the hub, so a reader with a car or home-office question is not routed there.
Nothing stated is false; the defect is hub-to-sub-page routing. Fix: rewrite `:26` to lead with
the two-hats/mixed-use content (replacing the em-dash appositive with a colon at the same time).

#### [LOW] PY-2 Multi-sentence bullets and unsplit stanzas

- `Paying-Yourself.md:22`, `:24`, `:25`, `:28` — e.g. ":24 [Payroll](…) covers paying yourself a salary: source deductions, remittances, and the T4. Salary is deductible to the corporation and creates RRSP room and CPP entitlement."

Bullets 24-25 each pack two or three sentences; lines 22/28 are two-sentence paragraphs on one
line rather than the house stanza shape. Fix: second sentences to sub-bullets; split the stanzas.

#### [LOW] PY-3 Dividends sub-page gloss omits two of the five sub-pages

- `Paying-Yourself.md:25`, `:35` — "It is a hub with its own sub-pages for declaring, bookkeeping, and T2 reporting."

Reads as an enumeration but names three of the five sub-pages README indexes — Dividend Examples
and ERDTOH-NERDTOH are missing. Fix: "…sub-pages for declaring, bookkeeping, T2 reporting, worked
examples, and the ERDTOH/NERDTOH refund pools".

#### [LOW] PR-1 "by Feb 28" vs the statutory "last day of February"

- `Payroll.md:15`, `:41`, `:134` — "files it with a *T4 Summary* by Feb 28"

The deadline is "on or before the last day of February" (Reg 205(1)) — Feb 29 in a leap year (the
2027 slips are due 2028-02-29). Payment.md and Bookkeeping-And-Slips state it correctly; Payroll
(×3) and the CM-2/SBT-3 pages use the shorthand — the repo is split. Verified against: Reg 205(1)
(re-fetched independently of V1's fetch; independently re-verified, V2). Fix: "by the last day of
February" in all three spots (aligns with Payment.md, which Payroll's own TODO says to stay
consistent with).

#### [LOW] PR-2 TLDR/intro blur the employer CPP half into withholding

- `Payroll.md:16` — "A single owner-manager withholds income tax and CPP (both halves)"; `:31` — "Each pay splits the gross salary three ways: net cash…, withholdings…, and the full gross (plus the employer CPP half) as a deductible expense."

Only the employee half is withheld; the employer half is the corp's own cost (the body at
`:77-78`/`:93` gets this right), and the "three ways" double-count — the page's own pay-run table
shows net = gross − employee CPP − tax. Fix: ":16 withholds income tax and the employee CPP half,
and remits both CPP halves"; ":31 …splits the gross two ways… while the corp expenses the full
gross plus the employer CPP half".

#### [MEDIUM] PR-3 Employer CPP half booked to 9060; GIFI has a dedicated code (8622)

- `Payroll.md:105` (also `:17`, `:114-118`, TODO `:216`) — "`Salaries and wages` (`9060`): expense; gross salary plus the employer CPP half"

RC4088 has a dedicated item for exactly this cost — 8622 "Employer's portion of employee
benefits", whose include-list names CPP and EI — while 9060 covers salaries, wages, bonuses, and
commissions. Folding the employer half into 9060 misfits the S125 mapping (benign to tax payable,
but the guide's convention is GIFI-aligned accounts); this answers the page's own TODO. Verified
against: RC4088(E) Rev. 21 read first-hand this pass — including CRA's own Appendix B worked
example mapping the CPP expense line to 8622, separate from 9060 (independently re-verified, V2;
the finder's maintainer-spot-check caveat is discharged). Fix: post the employer half to
`Employer's portion of employee benefits` (`8622`) in the account list, both journal tables, and
the TLDR; or state the 9060 convention explicitly as a deliberate simplification.

#### [LOW] PR-4 Deemed-trust claim carries no citation

- `Payroll.md:87` — "The withheld amounts are the employee's money held in trust for CRA."

Load-bearing framing (it is why late remittance "is treated more severely") with no inline cite or
Citations entry; the deemed trust is ITA s.227(4) ("separate and apart … in trust for Her
Majesty"; fetched 2026-07-05; independently re-verified, V2). Fix: cite s.227(4) inline and in
Citations.

#### [MEDIUM] PR-5 "Residual balance at month-end means a missed remittance" contradicts the page's own cycle

- `Payroll.md:128` — "The `2627` balance returns to zero after each on-time remittance; a residual balance at month-end means a missed or short remittance."

Under the page's own example (pay run posted Jan 31, remitted by Feb 15), every month-end normally
carries the current month's withholdings in `2627` — the balance is zero only between the
mid-month remittance and the next pay run, so the stated check cries wolf every month-end. The
correct red flag is a balance older than the most recent pay run. Verified against: the page's own
worked entries; Reg 108(1) remittance timing (fetched). Fix: "a month-end balance larger than the
latest pay run's withholdings means a missed or short remittance".

#### [MEDIUM] PR-6 T4 box table omits mandatory Box 45 (employer-offered dental benefits)

- `Payroll.md:137-150` — "The boxes that matter for an owner-manager:" (table rows 14/16/16A/22/24/26/28/34/40; no 45; the continuing example at `:150` also omits it)

Since the 2023 slip year, Box 45 must be completed on every T4 — code 1 where no dental coverage
of any kind is offered, codes 2-5 where coverage (including an HSA/PHSP with dental, which
Owner-Corporation-Transactions recommends considering) is offered; report coverage *offered*, not
taken. An owner-manager entering a slip in Web Forms will hit the field. Verified against:
multiple consistent sources via search snippets (canada.ca 403; independently re-verified, V2).
Fix: add a Box 45 row and extend the example ("box 45 code 1").

#### [LOW] OCT-1 Ledger-account naming and formatting drift from Ledger-And-Accounts

- `Owner-Corporation-Transactions.md:87-88`, `:143-144`, `:226-228`, `:318-320` — e.g. "Debit: \"Motor vehicle expenses\" (GIFI 9281) = $7,670"

`Ledger-And-Accounts.md:295` names 9281 `Vehicle expenses`; this page calls it "Motor vehicle
expenses", and all four ledger entries use straight quotes where the house convention is backtick
code spans. Fix: `Vehicle expenses` (`9281`) etc., matching the chart of accounts.

#### [MEDIUM] OCT-2 s.69 above-FMV gloss assigns the FMV cap to the wrong side of the sale

- `Owner-Corporation-Transactions.md:150` — "A non-arm's-length sale above FMV is capped to FMV under ITA s.69; price the transfer at genuine FMV"

s.69(1) makes one-sided adjustments: selling above FMV, only the corp's cost is deemed down to FMV
while the owner's proceeds stay at the full inflated price (gain on the excess, plus s.15(1)
benefit risk); selling below FMV, the owner's proceeds are deemed up to FMV while the corp's cost
stays low. "Capped to FMV" reads as a benign symmetric correction and hides the double-tax
asymmetry — the trap the bullet exists for. The closing price-at-FMV advice is right. Verified
against: ITA s.69(1)(a)/(b) (fetched 2026-07-05; independently re-verified, V2). Fix: state both
one-sided deemings, e.g. "sell above FMV and s.69(1)(a) caps only the corp's cost while you are
taxed on the full price; sell below and s.69(1)(b) deems your proceeds up to FMV while the corp's
cost stays at the low price — one-sided adjustments, taxed twice".

#### [LOW] OCT-3 Em-dash chains and quote-level style tells

- `Owner-Corporation-Transactions.md:237` — "…can be deductible to the corp and tax-free personally — the best of both columns — but only inside the recognized categories below."; `:170` — em-dash introducing an enumeration

Double em-dash parenthetical chain plus editorial colour; `:170` wants a colon or parentheses.
Fix: per the cluster file's rewrites (drop "the best of both columns"; parenthesise the
enumeration).

#### [HIGH] OCT-4 Disability-premium rule stated without the "group plan" qualifier

- `Owner-Corporation-Transactions.md:248` — "Employer-paid *disability* premiums are not a benefit, but they make any eventual disability payments taxable to the recipient; premiums paid personally keep the payments tax-free — for an owner-manager, paying disability premiums personally is the usual advice"

The no-benefit treatment is the *group*-plan rule: the s.6(1)(a)(i) exclusion covers employer
contributions to "a group sickness or accident insurance plan" (and the other listed plans). An
individual (non-group) disability policy — the normal case for a single-owner corp, this page's
audience — matches no item in the list, so corp-paid premiums on it ARE a taxable s.6(1)(a)
benefit (and the plan is then effectively employee-paid, keeping the payments tax-free). As
written, an owner could have the corp pay their individual DI policy expecting no benefit
inclusion. The concluding pay-personally advice is unaffected. Verified against: ITA s.6(1)(a)(i)
exception list and s.6(1)(f) (fetched 2026-07-05; independently re-verified, V2 — the statutory
word "group" settles the flagged defect; the taxed-premium ⇒ payments-tax-free chain for a
non-group policy is CRA administrative position (T4130/IT-428 lineage, canada.ca 403) and keeps
the maintainer-verify hedge). Fix: "Employer-paid premiums under a *group* sickness or accident
plan are not a benefit, but they make any eventual disability payments taxable (s.6(1)(f));
employer-paid premiums on an *individual* (non-group) policy are a taxable benefit, which keeps
the payments tax-free; premiums paid personally also keep the payments tax-free — for an
owner-manager, paying disability premiums personally is the usual advice".

#### [LOW] OCT-5 Series condition drops "or other transactions" from s.15(2.6)

- `Owner-Corporation-Transactions.md:278` (and Citations `:360`) — "The repayment is *not part of a series of loans and repayments*"

The statute reads "not part of a series of loans **or other transactions** and repayments" — the
dropped limb is what catches repay-by-bonus-then-redraw patterns that are not literally loans; the
page's own series discussion captures the substance, but the quoted test and the Citations gloss
both compress a load-bearing test. Verified against: ITA s.15(2.6) (fetched 2026-07-05;
independently re-verified, V2). Fix: restore the statutory wording in both spots.

(RD-3, the finder's challenge to `ERDTOH-NERDTOH.md:65`, was REFUTED in verification and does not
appear below — see *What was NOT flagged*.)

#### [MEDIUM] DIV-1 Salary bullet asserts EI obligations the sibling Payroll page rules out

- `Dividends.md:58` — "Taxed in the shareholder's hands at full ordinary rates with CPP/EI obligations"

For this guide's reader (a sole owner-manager), employment is not insurable when the employee
controls more than 40% of the voting shares — no EI premium either side. `Payroll.md:16`/`:83`
states exactly that, so the hub's salary-contrast bullet contradicts the canonical page and could
feed a salary-vs-dividend cost misestimate. Verified against: Employment Insurance Act s.5(2)(b)
(fetched 2026-07-05; independently re-verified, V2). Fix: "with CPP obligations (EI generally does
not apply to a >40% owner-manager — see [Payroll](../Payroll.md))".

#### [LOW] DIV-2 "(non-SBD, Small Business Deduction)" gloss reads as if SBD names the general rate

- `Dividends.md:123` — "Corporate income previously taxed at the general (non-SBD, Small Business Deduction) rate"

The parenthetical expands the acronym inside "non-SBD", so it can be read as the opposite of the
meaning. Fix: "taxed at the general (non-SBD) rate", expanding *Small Business Deduction* at its
own first mention.

#### [LOW] DIV-3 Comma splice in the integration parenthetical

- `Dividends.md:153` — "(capital dividends sit outside this framework, they are tax-free to a Canadian-resident shareholder)"

Comma splice. Fix: colon.

#### [MEDIUM] DIV-4 GRIP update bullet deducts the current year's eligible dividends

- `Dividends.md:164-167` — "GRIP is updated every year: … Minus eligible dividends *paid* during the year"

The s.89(1) GRIP formula and Schedule 53 deduct eligible dividends paid in the *previous* tax year
(element G; S53 line 300). The year-end GRIP — the base the year's designations are tested against
(S55 line 160 takes S53 line 590) — is NOT reduced by the current year's dividends; deducting them
in-year double-counts against the EEDD test and contradicts `ERDTOH-NERDTOH.md:198` ("GRIP is
finalized at year-end, so an in-year catch-up has to forecast the closing balance"). This bullet
is the root of DE-3's example error — fix both together. Verified against: ITA s.89(1) GRIP
element G ("eligible dividend paid by the corporation in its **preceding taxation year**") and T2
SCH 53 E (19) line 300 read first-hand from the form PDF (fetched 2026-07-05; independently
re-verified, V2). Fix: "Minus eligible dividends paid in the *previous* year (the year-end balance
is not reduced by the current year's dividends; they are tested against it and deducted on next
year's Schedule 53)".

#### [MEDIUM] DIV-5 / T2R-2 Schedule 53 filing stated as unconditional annual requirement

- `Dividends.md:177` — "Schedule 53 must still be filed each year to track and carry forward the balance, even when GRIP is zero."
- `T2-Reporting.md:53` — "S53 must be filed annually even when GRIP is zero."

The form's own instruction is conditional: file "when an eligible dividend was paid in the tax
year or there was a change in the GRIP balance"; T4012 says the same. A CCPC with zero GRIP and no
eligible dividends — the very corp the paragraph describes — is not asked to file S53 at all. The
same overstatement sits outside this cluster at `Filing-And-CRA/T2-Schedules.md:72` ("every year,
even at a zero balance") — sweep all three when fixing. Verified against: T2 SCH 53 E (19) header
bullet read first-hand from the form PDF (2026-07-05; independently re-verified, V2). Fix: "File
Schedule 53 for any year an eligible dividend was paid or the GRIP balance changed; filing it
every year (even at zero) keeps CRA's carryforward record clean" — keeps the practical habit
without asserting a false obligation.

#### [LOW] DIV-6 Two citation entries merged on one line

- `Dividends.md:282` — "…(mechanism behind T3 Box 49)  - [s.120.4](…) - Tax on Split Income (TOSI)…"

The s.120.4 citation is appended to the s.104(19) bullet's line, so it renders as run-on text
rather than a separate citation bullet. Fix: break it onto its own line.

#### [LOW] RD-1 "AII →" arrow credits the CDA leg to AII

- `ERDTOH-NERDTOH.md:38` — "AII → NERDTOH (30⅔% refundable Part I) + CDA (non-taxable ½ of capital gains)"

Only the taxable half of a gain enters AII (s.129(4) para (a): "the eligible portion of the
corporation's taxable capital gains"); as a pool-filling map the arrow implies interest or foreign
income could feed CDA. The parenthetical mitigates. Verified against: ITA s.129(4)(a) (fetched
2026-07-05; independently re-verified, V2). Fix: "AII → NERDTOH (30⅔% refundable Part I); capital
gain → taxable ½ into AII, non-taxable ½ → CDA".

#### [LOW] RD-2 Transition intro: comma splice and "source of each dollar" framing

- `ERDTOH-NERDTOH.md:59` — "Prior to 2019, there was a single RDTOH, it was split on transition between the two pools based on the source of each dollar."

Comma splice; and the split is a mechanical lesser-of formula (given correctly a few lines later),
not a per-dollar source trace — e.g. AII-sourced RDTOH is allocated to ERDTOH up to the GRIP-based
cap, which a source trace would send to NERDTOH. Verified against: ITA s.129(5) (fetched
2026-07-05; independently re-verified, V2 — no source tracing anywhere in the provision). Fix:
"Prior to 2019 there was a single RDTOH; on transition it was split between the two pools by a
formula that approximates the source of each dollar."

#### [LOW] RD-4 Trailing period on a bullet

- `ERDTOH-NERDTOH.md:176` — "- Either way the corporation recovers the same 38⅓% refund: …"

The only bullet in the pair carrying a terminal period. Fix: remove it.

#### [MEDIUM] RD-5 "Cannot be retroactively redesignated" overlooks the s.89(14.1) late designation

- `ERDTOH-NERDTOH.md:182` — "Non-eligible dividends already paid cannot be retroactively redesignated, so an unused GRIP balance accumulates on Schedule 53"

Stated as absolute, but s.89(14.1) lets the Minister accept a late eligible-dividend designation
up to three years after the day it was required, where just and equitable — a
documentation-relief provision CRA applies to misses, not a planning tool; the flat "cannot"
misstates the law. Verified against: ITA s.89(14.1) (fetched 2026-07-05; independently
re-verified, V2 — quoted verbatim). Fix: "Non-eligible dividends already paid cannot in practice
be redesignated (a late designation under s.89(14.1) needs CRA to agree it is just and equitable,
within three years — documentation relief, not a planning tool), so an unused GRIP balance
accumulates on Schedule 53".

#### [MEDIUM] RD-6 "Draining a stranded balance" omits the non-eligible spillover route

- `ERDTOH-NERDTOH.md:196-199` (with `:192-194`) — "Draining a stranded balance: - Designate future dividends as eligible up to the running GRIP balance on Schedule 53, …"

The only remediation offered is the eligible-designation route, which is unavailable in the
no-GRIP scenario the page itself sets up three lines earlier ("Without GRIP the ERDTOH stays
stranded"). The other statutory drain — pay non-eligible dividends beyond 2.61 × NERDTOH so the
refund spills into ERDTOH under s.129(1)(a)(ii)(B) — is stated in the page's own ordering rules
(`:139`) and demonstrated in its own worked example (`:224-226`), but never listed as a
remediation, so the no-GRIP scenario reads as unresolvable when it is not. Verified against: ITA
s.129(1)(a)(ii)(B) (fetched 2026-07-05; independently re-verified, V2). Fix: add a bullet — "With
no GRIP, size a non-eligible dividend past the NERDTOH balance (÷ 38⅓%); the excess refund spills
into ERDTOH — the corporation recovers the tax, only the personal-side eligible-rate advantage is
lost".

#### [LOW] DP-1 "Change the third sentence" points at the wrong sentence

- `Declaring-And-Paying.md:36` (sample at `:32-34`) — "For an *eligible* dividend, change the third sentence to: …"

The designation sentence is the *second* sentence of the sample resolution. Fix: "change the
designation sentence to" (immune to recounting).

#### [LOW] T2R-1 Section heading duplicates the page title

- `T2-Reporting.md:16` — "## T2 Reporting" under the H1 "# T2 Reporting"

The ToC reads "T2 Reporting > T2 Reporting"; the three intro lines are preamble, not a distinct
topic. Fix: fold them into the preamble (or retitle, e.g. "## Schedules Touched").

#### [MEDIUM] T2R-3 T2054 filing package omits the required CDA-computation schedule

- `T2-Reporting.md:90` and `Dividends-Examples.md:140` — "the corporation files Form T2054 … with a certified copy of the directors' resolution, on or before …"

Reg 2101 prescribes the election package as (a) the prescribed form, (b)/(c) the certified
resolution/authorization, AND (d) "schedules showing the computation of the amount, immediately
before the election, of the corporation's" capital dividend account (the March 31, 1977 qualifier
attaches only to the 1971-surplus element). Both pages enumerate the package and stop at the
resolution, so an owner following them files an incomplete election. The same omission is CDA-4's
neighbour on `Capital-Dividend-Account.md:41` — see CDA-3 under Investments; fix all three
together. Verified against: Income Tax Regulations s.2101 (fetched 2026-07-05; independently
re-verified, V2). Fix: "…with a certified copy of the directors' resolution *and a schedule
showing the CDA computation immediately before the election* (Reg 2101)".

#### [MEDIUM] DE-1 Ontario budget measures described as proposals; they are enacted

- `Dividends-Examples.md:26-28` (also the TODO trigger at `Dividends.md:301`) — "The 2026 Ontario budget proposes: - Cut the Ontario small-business CIT rate from 3.2% to 2.2% effective July 1, 2026 …"

Bill 97 (*Plan to Protect Ontario Act (Budget Measures), 2026*) has received Royal Assent (S.O.
2026, c. 2) and the rate cut took effect July 1, 2026 (prorated for straddling years). The rates
and dates the page states are exactly right and the examples stay correctly pinned to the first
half of 2026 — but "proposes" is stale, and the maintainer's own TODO ("watch for enactment …
update worked examples once enacted") has now triggered. The Overview pages' budget stanzas
(`Small-Business-Tax.md:230` / `Tax-Integration.md:74` / `Concept-Map.md:212`) were
figure-verified by cluster 01 before the Royal-Assent fetch — sweep them for the same "proposes"
framing when fixing. Verified against: ola.org Bill 97 status page ("Royal Assent received.
Statutes of Ontario 2026, chapter 2"; fetched 2026-07-05; independently re-verified, V2). Fix:
"The 2026 Ontario budget measures, enacted as Bill 97 (S.O. 2026, c. 2):" and restate or
explicitly re-pin the examples.

#### [LOW] DE-2 Em-dash fact chains in the S3 bullets

- `Dividends-Examples.md:53` (also `:76`, `:117`) — "line 450 (taxable dividends paid, non-connected) $50,000, all eligible — line 455 $50,000, line 465 (total eligible paid) $50,000"

Em-dash used as a connector chaining three schedule facts in one bullet. Fix: split the
line-number facts into sub-bullets (450 / 455 / 465), same for Examples B and C.

#### [HIGH] DE-3 Example A's Schedule 53 arithmetic deducts the current year's dividend from the current year's closing GRIP

- `Dividends-Examples.md:55` — "S53 (GRIP): opening $144,000 − eligible paid $50,000 + 2026 additions = closing balance"

On Schedule 53 the deduction line is "Eligible dividends paid in the *previous* tax year" (line
300); the 2026 closing GRIP (line 590) is opening $144,000 + 2026 additions, with the $50,000 paid
in 2026 tested against that closing balance for EEDD purposes (S55 line 160) and deducted only on
the 2027 S53. As written, a reader either understates their 2026 closing GRIP by $50,000
(mismatching their software and under-designating later) or, following the real form next year as
well, deducts the same dividend twice and permanently loses $50,000 of GRIP. This is the concrete
instance of the hub's DIV-4 misstatement. Verified against: T2 SCH 53 E (19) read first-hand this
pass (line 100 / line 300 "Eligible dividends paid in the previous tax year" / line 590 → S55 line
160; the 0.72 factor at line 190) and ITA s.89(1) GRIP element G plus the EEDD definition's
variable B ("general rate income pool at the end of the taxation year") (fetched 2026-07-05;
independently re-verified with Example A recomputed on the form's flow, V2). Fix: "S53 (GRIP):
opening $144,000 + 2026 additions = closing balance (line 590); the $50,000 designated in 2026 is
tested against that closing balance and deducted on the 2027 S53 (line 300)".

#### [LOW] DE-4 "Not on a T2 schedule" sits awkwardly beside the S89 reference

- `Dividends-Examples.md:153` — "CDA balance reduces by $10,000 (tracked on the corporation's CDA worksheet, not on a T2 schedule)"

T2 Schedule 89 exists as the on-request CDA balance-verification form, and this page (`:164`) and
T2-Reporting (`:97`) both point the reader to it — the intended meaning (no annually filed
schedule carries CDA continuity) is right, but the flat wording reads as contradicting the S89
references (form existence re-verified, V2). Fix: "(tracked on the corporation's CDA worksheet; no
annually filed T2 schedule carries it — Schedule 89 is an on-demand balance-verification
request)".
### Investments

#### [MEDIUM] IN-1 "Corporate-class dividends" mislabels the T5 row

- `Investments.md:51` — "| Holding: dividends and interest | corporate-class dividends and interest by box | [T5](…), [Box 18](…) |"

"Corporate-class" is the T5 pages' precise fund-industry term for mutual-fund-corporation funds;
the hub row means dividends from corporation-issuers generally — plain dividend-paying stocks are
T5.md's lead example — so the label under-describes the row and collides with the sibling pages'
narrower use of the same term. Fix: "dividends from corporations (stocks, corporate-class funds)
and interest by box".

#### [LOW] IN-2 Related link text is the stale hyphenated filename

- `Investments.md:61` — "- [Small-Business-Tax-Overview](../Overview/Small-Business-Tax.md)"

Display text is the pre-restructure hyphenated filename; the target's H1 is "Small Business Tax
Overview" and sibling pages write the link text with spaces (premise reproduced by glob — no such
file exists, V1; see GL-2/FR-1). Fix: link text "Small Business Tax Overview".

#### [MEDIUM] ACB-1 ROC ACB-reduction lacks its statutory pinpoint

- `Adjusted-Cost-Base.md:46-48`, `:153` — "T3 box 42 … typically decreases your ACB…"; Citations: "[s.53](…) - adjustments to cost base…, including s.53(1)(f)…"

The page's central adjustment (trust-unit ROC reduces ACB) is stated with no inline cite, and the
Citations s.53 entry pinpoints only s.53(1)(f); the ROC deduction lives in s.53(2)(h)(i.1)
(amounts payable by a trust reduce the unit's ACB except the portions included in income under
s.104(13) or designated under s.104(20)-(21)). Verified against: ITA s.53(2)(h)(i.1) (fetched
2026-07-05; independently re-verified, V1 — quoted verbatim). Fix: add s.53(2)(h)(i.1) to the s.53
citation entry (and optionally an inline cite on the Box 42 stanza).

#### [HIGH] ACB-2 Spin-off bullet inverts the foreign-spin-off treatment

- `Adjusted-Cost-Base.md:63-64` — "Spin-off: allocate the original total ACB between the parent company and the new entity based on their relative fair market values on the effective date… (s.86.1 eligible foreign spin-offs follow the issuer's allocation notice instead; that path is not covered here)"

The relative-FMV apportionment IS the s.86.1 treatment — s.86.1(3) apportions the original shares'
cost by A × B/C on relative FMVs, available only where the distribution is eligible and the
taxpayer elects in writing with the return (s.86.1(2)(f)); the issuer's notice merely supplies
eligibility and FMV data. Without the election, the default for a foreign spin-off is the opposite
of the bullet: the spin-off shares are a taxable dividend in kind at FMV, their cost is that FMV
(s.52(2)), and the parent shares' ACB is not reduced or allocated — s.86.1(1) expressly disapplies
s.52(2) only on the election path. A reader holding a US stock through a spin-off who follows the
main bullet skips an income inclusion and misstates both positions' ACB. (The pro-rata allocation
is fine for typical Canadian plan-of-arrangement spin-offs, presumably the intended case.)
Verified against: ITA s.86.1(1)/(2)(f)/(3) and s.52(2) (fetched 2026-07-05; independently
re-verified, V1 — the no-election default re-derived). Fix: scope the main bullet to Canadian
spin-offs; for foreign spin-offs state the s.52(2) default and that a s.86.1 election, where the
spin-off is CRA-approved as eligible, replaces it with the relative-FMV apportionment.

#### [MEDIUM] ACB-3 FX statement-rate sentence contradicts the canonical Foreign-Currency page

- `Adjusted-Cost-Base.md:107` — "The income statement uses the average annual exchange rate and the balance sheet uses the end-of-year rate; these rates do not apply to ACB calculations"

Foreign-Currency.md (the canonical FX-convention page) states the guide uses the transaction-date
method throughout, that the year-end closing rate applies only to unsettled *monetary* items
(equity securities are non-monetary and stay at historical CAD), and that the average annual rate
is "only used under a full-translation accounting methodology; rarely applied by a small CCPC".
The ACB sentence states the full-translation convention as if it were the guide's own. Verified
against: `Foreign-Currency.md:51-66` (re-read 2026-07-05; independently re-verified, V1). Fix:
"Financial-statement translation rates (year-end closing rate for monetary items; average annual
rate under a full-translation method) do not apply to ACB calculations — see [Foreign
Currency](…)".

#### [CRITICAL] ACB-4 Corporate wash-sale loss is a suspended loss (s.40(3.3)/(3.4)), not a superficial loss with an ACB bump

- `Adjusted-Cost-Base.md:124-133` (also Citations `:151`, `:153`, `:154`) — "What happens: the loss is denied for now by ITA s.40(2)(g)(i) and is instead added to the ACB of the substituted property under ITA s.53(1)(f)… Example: if your corporation sells XEI at a loss, and you buy XEI in your personal account within the 30-day window and still hold it at the end of the window, the corporate loss can be a superficial loss even though the repurchase happened in a different account"

For a loss realized by a **corporation**, paragraph (h) of the s.54 "superficial loss" definition
excludes "a disposition to which subsection 40(3.4) … applies", and s.40(3.3)/(3.4) applies
exactly here: a corporation disposes of non-depreciable capital property and, within the 61-day
window, the corporation or an affiliated person (the controlling shareholder is affiliated,
s.251.1(1)(b)(i)) acquires identical property and holds it at the end. The consequences differ
materially from what the page states: the loss is deemed nil by s.40(3.4)(a) (not s.40(2)(g)(i)),
it is NOT added to anyone's ACB (s.53(1)(f) applies only to actual s.54 superficial losses), and
it stays suspended with the corporation, released to the corporation at the s.40(3.4)(b) events
(notably once a 30-day period begins throughout which neither the corporation nor an affiliated
person owns the property or an identical one). Following the page's rule on its own example
migrates the corporation's denied loss into the owner's personal XEI ACB — the corporation
permanently loses a capital loss (and the eventual CDA-side effect lands in the wrong place) while
the owner under-reports a future personal gain. The s.54 + s.40(2)(g)(i) + s.53(1)(f) mechanism
the page teaches is the rule for an **individual** seller (individual transferor is outside
s.40(3.3), so the denied loss is added to the corporate acquirer's ACB). Fix jointly with ACBT-6 —
the same defect in operational form on the tracking page. Verified against: ITA s.54 "superficial
loss" para (h), s.40(3.3)/(3.4), s.40(2)(g)(i), s.53(1)(f), s.251.1(1)(b) (fetched 2026-07-05;
independently re-verified with the full consequence chain re-derived on the page's example, V1).
Fix: split the section by seller — (1) corporation sells at a loss and the corporation or an
affiliated person repurchases within the window → stop-loss rule s.40(3.3)/(3.4): loss deemed nil,
no ACB adjustment anywhere, loss suspended in the corporation and released to it when the
affiliated group is out of the position for 30 days (or other s.40(3.4)(b) events); (2) you (or
your spouse) sell personally at a loss and the corporation repurchases → superficial loss (s.54,
s.40(2)(g)(i)), denied loss added to the corporation's ACB of the repurchased security
(s.53(1)(f)). Keep the affiliated-persons framing (s.251.1) — it drives both rules.

#### [LOW] ACBT-1 Garbled Date bullet for DRIP

- `Adjusted-Cost-Base-Tracking.md:61` — "Buy/Sell: trade date (not settlement date); for DRIP entered as Buy, see Notes below; payment/reinvestment date is used instead"

The three semicolon-spliced fragments don't parse on first read. Fix: "Buy/Sell: trade date (not
settlement date); a DRIP entered as Buy uses the payment/reinvestment date instead (see Notes)".

#### [MEDIUM] ACBT-2 "Leave FX blank for CAD" breaks the documented formulas

- `Adjusted-Cost-Base-Tracking.md:78`, `:118` vs `:159-160` — "If transaction is denominated in CAD, use 1.0 or leave blank" vs "`Gross Amount CAD` = `Gross Amount` * `FX CAD Rate`"

In Sheets/Excel a blank cell multiplies as 0, so with the documented formula a blank `FX CAD Rate`
zeroes `Gross Amount CAD` and `Commission CAD` — blank is not "equivalently 1.0". Either the live
template handles blanks (then the documented formula is incomplete) or the instruction corrupts
CAD rows; the template is not verifiable headlessly (sign-in redirect), so the page is internally
contradictory as written. Fix: document the blank-handling
(`= Gross Amount * IF(FX CAD Rate = "", 1, FX CAD Rate)`) or drop "or leave blank".

#### [LOW] ACBT-3 Output column names differ from the template's own screenshot

- `Adjusted-Cost-Base-Tracking.md:131-133` vs `Adjusted-Cost-Base-Tracker_Screenshot.png` — "`Capital Gain/Loss` = …" / "`Deemed Capital Gain` = …" vs the screenshot's "Realized Gain/Loss" / "Immediate Capital Gain"

Using one set of names in the formulas and another in the adjacent screenshot forces the reader to
map them (the screenshot's sample rows recompute correctly against the documented formulas). Fix:
align the doc's column names with the template, or add "(named `Realized Gain/Loss` in the
template)" glosses.

#### [HIGH] ACBT-4 Stock-split memo-row instruction doesn't work under the documented formulas

- `Adjusted-Cost-Base-Tracking.md:184` — "Stock split: insert a memo row on the effective date; adjust `Quantity` to the post-split total (ACB unchanged, per-unit ACB recalculates automatically)"

`Quantity` feeds `Quantity Change` only for Buy/Sell rows (`:162`), so a memo row with a
non-Buy/Sell `Action` contributes zero — `Remaining Quantity` and per-unit ACB do NOT recalculate;
the row is inert and later Sells overstate `ACB of Units Sold` by the split factor while
`Remaining Quantity` stops matching the brokerage. Entering the row as a Buy of the post-split
total instead double-counts (100 + 200 = 300). Verified against: the page's own documented
formulas (`:126-162`; mechanical walk-through on a 2:1 split reproduced independently, V1 — the
suggested fix recomputes correctly, including `Date of Acquisition` preservation). Fix: "enter a
Buy row on the effective date for the ADDITIONAL units received with `Gross Amount` 0 (and a
`Note`); `Remaining Quantity` rises to the post-split total, ACB is unchanged, per-unit ACB
recalculates".

#### [HIGH] ACBT-5 Spin-off recipe fabricates a realized loss equal to the full ACB

- `Adjusted-Cost-Base-Tracking.md:185` — "Spin-off: close the parent position with a zero-proceeds Sell on the effective date, then open two new Buy rows … with quantities and ACB allocated based on relative fair market values…"

A zero-proceeds Sell makes `Capital Gain/Loss` = 0 − (full ACB of the position) — the sheet's
gain/loss output (the column a reader reconciles into S6/CDA) shows a large phantom capital loss
the note never says to exclude. The re-Buys also reset `Date of Acquisition` to the spin-off date
for the parent (the `Previous Remaining Quantity` = 0 path), contrary to the "earliest date of
continuous holding" convention — the parent holding is continuous through a spin-off. Verified
against: the page's own formulas (`:126-163`; walk-through reproduced independently, V1 — the
suggested fix recomputes to zero gain/loss). Fix: sell at `Gross Amount` equal to the previous ACB
so the row nets to zero (mark both rows as spin-off memo entries in `Note`, exclude from S6), and
manually restore the parent's original `Date of Acquisition` on its re-Buy row.

#### [CRITICAL] ACBT-6 Superficial-loss note applies the wrong rule to the corporate account it tracks

- `Adjusted-Cost-Base-Tracking.md:186` — "Superficial loss: the denied loss is not deducted; instead it is added to the ACB of the substituted property under ITA s.53(1)(f), via a manual Buy-like row (no quantity change, ACB increase only). That addition lands wherever the substituted property is held, which can be a different account or an affiliated person (the shareholder personally, a spouse, or another affiliated corporation), not necessarily this sheet"

Same root error as ACB-4 (fix jointly), in operational form, on the sheet that tracks the
**corporate** account: when a loss-sale recorded on this sheet is followed by an affiliated
repurchase, s.40(3.3)/(3.4) suspends the loss in the corporation (s.54(h) excludes the disposition
from "superficial loss") — no s.53(1)(f) Buy-like row belongs anywhere, and posting one at the
shareholder/spouse overstates their ACB while the corporation's suspended loss goes untracked. The
s.53(1)(f) ACB-increase row is right only in the reverse direction (an affiliated individual sold
at the loss and this corporate sheet holds the repurchase — the addition lands IN this sheet, the
opposite of the note's emphasis). Both of the note's directional claims fail. Verified against:
ITA s.54(h), s.40(3.3)/(3.4), s.53(1)(f) (fetched 2026-07-05; independently re-verified, V1).
Fix: for a loss-sale on this sheet followed by an affiliated repurchase — no ACB row anywhere; tag
the Sell row's loss in `Note` as suspended under s.40(3.3)/(3.4), claimable by the corporation at
the release events. Keep the s.53(1)(f) Buy-like row only for the reverse case (the corporation's
repurchase row gets the increase when the denied loss arose from an affiliated individual's
personal sale).

#### [LOW] ACBT-7 Citations section omits the provisions the page cites inline

- `Adjusted-Cost-Base-Tracking.md:197-199` — Citations carry only s.47(1)

The page also relies on s.40(3) (linked inline `:168`) and s.53(1)(f) (named inline `:186`);
neither appears in Citations. Fix: add s.40(3) and — per the ACBT-6 fix — s.40(3.3)/(3.4) and
s.53(1)(f).

#### [HIGH] CIC-1 CRA/taxpayer litigation positions stated backwards

- `Capital-Vs-Income-Character.md:33` — "The loss side cuts the other way: an income-account loss is fully deductible, which is why CRA argues capital on gains and taxpayers argue capital on losses — character is symmetric and cannot be chosen per trade."

Each party is placed against its own interest: on gains, capital treatment (50% inclusion) favours
the taxpayer, so taxpayers argue capital and CRA argues income; on losses, income treatment (fully
deductible) favours the taxpayer, so taxpayers argue income and CRA argues capital. The sentence's
own lead-in sets up exactly why a taxpayer wants income on losses — then assigns the positions the
other way; both halves are inverted against the page's own inclusion/deduction table. The symmetry
point survives; the illustration is backwards. Verified against: internal logic of the page's own
table (`:24-30`), consistent with the standard IT-479R-era litigation pattern (re-derived
independently, V1). Fix: "…which is why CRA argues income on gains and capital on losses, and
taxpayers argue the reverse — character is symmetric and cannot be chosen per trade".

#### [MEDIUM] CIC-2 s.39(6) definition drops the "prescribed security" carve-out

- `Capital-Vs-Income-Character.md:66` — "*Canadian security* (s.39(6)): a share of a Canadian-resident corporation, a unit of a Canadian-resident mutual fund trust, or a bond or debenture of a Canadian-resident issuer"

s.39(6) opens "a security (**other than a prescribed security**) that is…"; Reg 6200 prescribes
exclusions aimed at non-portfolio holdings (certain private-company shares, non-arm's-length
debt). Immaterial for listed ETFs/stocks, but the page presents the definition as complete while
advising an irrevocable election on its basis. Verified against: ITA s.39(6) (fetched 2026-07-05;
independently re-verified, V1 — quoted verbatim). Fix: add "(other than a *prescribed security* —
Reg 6200 carves out mainly private-company shares and non-arm's-length debt, not listed portfolio
holdings)".

(`T5-Box-18-Capital-Gains-Dividends.md` produced no findings — see *What was NOT flagged*.)

#### [HIGH] T3-1 S1 capital-gain reconciliation convention conflicts with the printed S1/S7 mapping (line 113 / line 401 / S7 Part 6 amount V)

- `T3.md:219-221` (primary; signed off) — "Schedule 1 … / Page 4 / Other deductions (Description 705 / Amount 395) … Deduct non-taxable portion (50%) to reconcile financial statement treatment to tax treatment (since capital gains are taxed via S6)"
- Same convention at `T5008.md:128-129` (signed off), `T5.md:235`, `T5-Box-18-Capital-Gains-Dividends.md:89`

The actual Schedule 1 has dedicated lines for this reconciliation — line 113 "Taxable capital
gains from Schedule 6" (an addition) and line 401 "Gain on disposal of assets per financial
statements" (a deduction); the standard mapping is +taxable half (113) and −full book gain (401).
The pages instead net the two into a single 705/395 deduction of the non-taxable half and never
mention line 113, so S6's taxable half is implicitly carried by book income and line 113 stays
empty. Line 300 net income comes out right either way, but: (1) S7 Part 6 amount V is computed
from line 113 — with 113 empty, the taxable half is not backed out of "Income eligible for the
small business deduction" (amount DD → T2 line 400), overstating SBD-eligible income by the
taxable half while the same dollars also sit in AII (S7 → line 440); for this guide's audience
(ABI under the $500,000 limit) that misprices the gain at the small-business rate. (2) Conversely,
T2 software that auto-populates S1 line 113 from Schedule 6 (as DT Max documents) double-counts
under the pages' instruction. (3) `T5008.md:128`'s "Schedule 6 … carries the taxable half to the
T2's income" describes the line-113 flow as happening while the instruction leaves it unfilled.
Verified against: T2 SCH 1 Code 1901 and SCH 7 Code 1902 form PDFs (fetched by the finder), the
repo's own Schedule 7 Code 2201 screenshot, and DT Max S1 documentation (independently
re-verified with the consequence chain re-derived, V1; one evidentiary note — the literal printed
label of S7 Part 6 amount V rests on the finder's form read plus two secondary corroborations, as
the verifier's PDF mirror was encrypted). Fix: either adopt the form's mapping (taxable half on S1
line 113; back out the full book-side amount — line 401 for disposal gains booked through 8211, or
a 705/395 entry at the full amount for Box 21/Box 18 income), or keep the netted single-entry
convention but state explicitly that line 113 is left empty and S7 Part 6 amount V must then be
adjusted. A maintainer check of how FutureTax populates S1-113 / S7-Part-6-V from S6 would settle
which text to write (same live-UI caveat as the 2026-07-01 NEW-2 item).

#### [CRITICAL] T3B26-1 "AAII equals AII" parenthetical (fix jointly with GL-1 / SBT-2)

- `T3-Box-26-Other-Income.md:96` (signed off) — "…every dollar of AAII above $50,000 reduces the $500,000 SBD business limit by $5, fully eliminating it at $150,000 of AAII (for a plain-vanilla ETF holding, AAII equals AII); …"

The parenthetical is the same false claim as GL-1/SBT-2 — one defect on three pages, fix jointly.
A plain-vanilla Canadian ETF (the page's own examples are VCN and XEI) flows through eligible
dividends (T3 Box 49), and portfolio dividends are excluded from AII but count in AAII, so AAII
exceeds AII by exactly those dividends. The surrounding grind mechanics ($5 per $1 over $50,000;
gone at $150,000) match the s.125(5.1)(b) formula and are correct; only the parenthetical is
wrong. Verified against: ITA s.125(7) and s.129(4) (fetched 2026-07-05; independently re-verified
under GL-1 with this page's scenario re-derived — the parenthetical is false in the page's own
fact pattern, V1). Fix: "(for a plain-vanilla ETF holding, AAII is AII plus the ETF's Canadian
portfolio dividends)" — all three spots in one pass.

#### [MEDIUM] T3B26-2 Related-section link text names the old filename Small-Business-Tax-Overview.md

- `T3-Box-26-Other-Income.md:221` — "see [Small-Business-Tax-Overview.md](../../Overview/Small-Business-Tax.md)."

The link URL is correct but the display text names a file that no longer exists (same class as
GL-2/FR-1/IN-2; premise reproduced by glob, V1). Fix: display "Small-Business-Tax.md" or the
target's H1, matching `T3.md:228`.

#### [MEDIUM] T3B25-1 SBD-grind trigger named on AII; s.125(5.1) runs it on AAII

- `T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md:34` — "…counts toward the *Adjusted Aggregate Investment Income* that grinds the small business deduction once AII exceeds $50,000 (ITA [s.125(5.1)](…))"

The sentence correctly names AAII as the counted quantity, then states the $50,000 trigger on AII;
s.125(5.1)(b)'s variable E is AAII, and the aggregates diverge whenever the corp also earns
Canadian portfolio dividends — so "once AII exceeds $50,000" can read as no grind when AAII is
over the line. Same family as the 2026-06-30 SBO-1, whose five-page spillover fix did not reach
this page. Verified against: ITA s.125(5.1)(b) (fetched 2026-07-05; independently re-verified,
V1). Fix: "…once AAII exceeds $50,000 (ITA s.125(5.1))".

#### [MEDIUM] T3B25-2 S1 other-deductions total routed to "line 113"; it goes to line 499, and 113 is the taxable-capital-gains addition

- `T3_Box-25-Foreign-Income_Box-34-Foreign-Tax-Withheld.md:150` — "do not use the page-4 "Other deductions" grid (Description 705, Amount 395, totalling to 396 → amount E → line 113), which subtracts"

On Schedule 1 the page-4 grid totals to box 396 and feeds amount E, which is entered at line 499
(the subtotal of the Deduct block); line 113 is the Add-block line "Taxable capital gains from
Schedule 6". The parallel additions-side description in the same bullet (296 → amount D → line
199) is exactly right; only the deductions tail is mis-pointed, and the operative instruction (use
the additions grid for the Box 34 add-back) is unaffected. Verified against: T2 SCH 1 Code 1901
(finder's form read; destination line 499 independently re-confirmed via S1 documentation, V1).
Fix: "…totalling to 396 → amount E → line 499…".

#### [MEDIUM] T5-1 SBD grind stated as "over $50,000 of AII"

- `T5.md:173` — "…for the AII classification, the NERDTOH link, and the SBD grind over $50,000 of AII, see [T3 - Box 26 Other Income](…)."

The s.125(5.1) grind runs on AAII, not AII — and for a T5-receiving corp the divergence is live:
the same slip's Box 24/10 portfolio dividends are in AAII but not AII. Verified against: ITA
s.125(5.1) (fetched 2026-07-05; independently re-verified, V1). Fix: "…the SBD grind over $50,000
of AAII…".

#### [HIGH] T5-2 Box 15 S7 mapping names only Part 3 Box 019 and omits the Part 1 Box 032 entry that feeds AII

- `T5.md:182` and the worked example `:230` — "Schedule 7 (S7) / Part 3 / Box 019 - Total income from property from a source outside Canada (net of related expenses): enter the full gross Box 15 amount." / "→ S7 Part 3 Box 019 = $200, S21 FTC = $30, S1 line 605 add-back = $30"

Foreign property income belongs on Schedule 7 twice — Part 1 line 032 (worldwide income from
property, which drives aggregate investment income at line 092 → T2 line 440) and Part 3 line 019
(the foreign subset → line 445). The sibling page this section says it mirrors states the
both-columns rule explicitly and calls the Part 1 entry "the step most easily missed …
understating the refundable-tax (NERDTOH) pool" (`T3B25:117-130`). T5.md's instruction and worked
example name only Box 019, so a reader working from this page files an S7 with AII (and AAII)
understated by the foreign amount — understating NERDTOH and potentially under-grinding the SBD.
Verified against: the repo's own Schedule 7 Code 2201 Part 1 screenshot, read directly ("Aggregate
investment income is all **world** source income"; line 032; line 092 → T2 line 440) and the
fetched Code 1902 Part 3 (independently re-verified, V1 — decisive evidence from the repo's own
form image). Fix: add the Part 1 entry to both spots — "S7 Part 1 Box 032 *and* Part 3 Box 019:
the same gross Box 15 amount goes in both; see the two-column walkthrough in [T3 Box 25](…)".

#### [MEDIUM] T5-3 Corporate-class funds presented as a source of Box 15 foreign interest; an MFC cannot flow out income with foreign character

- `T5.md:186-188` — "On a corporation-issuer T5, the foreign income in Box 15 is not necessarily a dividend; a corporate-class fund can pass through foreign *interest*"

A corporate-class fund is a mutual fund corporation; its distributions reach shareholders only as
taxable dividends or capital gains dividends (s.131(1) election deems a capital gain) — there is
no corporate mechanism to designate income out with foreign or interest character retained, in
contrast to a trust (s.104(22), a trust-only provision). Box 15 foreign *interest* on a corporate
brokerage T5 instead arises from directly held foreign debt reported through the broker's nominee
slip. The surrounding advice (classify by underlying character; S21 math unchanged) is sound once
the example is fixed. Verified against: ITA s.131 and s.104(22) (fetched 2026-07-05; independently
re-verified, V1). Fix: "On a broker-issued T5, the foreign income in Box 15 is not necessarily a
dividend; directly held foreign bonds or T-bills produce foreign *interest*".

#### [LOW] T58-1 Disposition FX offered as "trade-date (or settlement-date)" where the guide's convention is pinned to trade-date

- `T5008.md:88` (signed off) — "translate the proceeds at the trade-date (or settlement-date) rate and each ACB lot at its own acquisition-date rate"

AGENTS.md's load-bearing conventions say "Trade-date FX for purchases, sales, and commissions",
and `Foreign-Currency.md:237-238` acknowledges the settlement-date position (TI 2015-0588981C6)
but states "this guide stays on trade-date for consistency"; offering the two as free alternatives
states the house rule differently from the canonical page (consistency of presentation only;
re-verified, V1). Fix: "…at the trade-date rate (a settlement-date rate is also defensible; see
[Foreign Currency](…))", or drop the parenthetical.

#### [LOW] T1135-1 "Part B applies from that year on" implies a permanent switch

- `T1135.md:112` — "The $250,000 line is crossed → Part B applies from that year on"

The simplified/detailed choice is year by year — Part B is required for any year in which total
cost reaches $250,000 at any time, and Part A becomes available again in a later year that stays
under. True on the example's facts, misleading as a rule; the misreading only over-reports.
Verified against: CRA T1135 guidance snippets (canada.ca 403; independently re-verified, V1). Fix:
"→ Part B applies for that year (and any later year the $250,000 test is met)".

#### [LOW] CDA-1 Citation written "(s.89(1)(d) ITA)" against the house inline-citation form

- `Capital-Dividend-Account.md:18` (signed off) — "the tax-free portion of life-insurance proceeds received by the corporation (s.89(1)(d) ITA)"

House convention is "(ITA [s.89(1)(d)](laws-lois url))" — Act first, section linked. The paragraph
letter itself is correct (life-insurance proceeds are paragraph (d) of the s.89(1) CDA definition,
confirmed by fetch), so this is form only. Fix: reformat and link.

#### [HIGH] CDA-2 CDA balance said to be read at election-filing time; s.83(2)(a) measures it immediately before the dividend becomes payable

- `Capital-Dividend-Account.md:30` (signed off) — "…the balance is read at the time the s.83(2) election is filed, so interim capital losses between your last calculation and the election date reduce the available balance"; `:36` — "subject to the balance still being available on the election date"

Under s.83(2)(a) the dividend is a capital dividend "to the extent of the corporation's capital
dividend account **immediately before the particular time**", and the particular time is when the
dividend *becomes payable* (the election is merely due at or before that time, or the first
payment if earlier). A T2054 can be filed early, so pegging the balance read to the filing date is
wrong and would tell a reader that a loss realized after filing but before the payable date cannot
overdraw the account — it can. The page's own later stanza has it right (`:48-49` "…if you sell an
investment at a loss after your calculation but before the dividend is technically payable, you
could inadvertently overdraw…"), so `:30`/`:36` also contradict the page internally. The prior
cycle's CDA-1 fix of the *deadline* wording (`:41`) held; this is the *measurement-time* wording.
Verified against: ITA s.83(2) opening words and (a) (fetched 2026-07-05; independently
re-verified, V1 — verbatim). Fix: ":30 …the balance is measured immediately before the dividend
becomes payable (s.83(2)(a)), so interim capital losses between your last calculation and the
payable date reduce the available balance"; ":36 …subject to the balance still being available
immediately before the dividend becomes payable".

#### [MEDIUM] CDA-3 T2054 filing package omits the required CDA-computation schedule (pair of T2R-3)

- `Capital-Dividend-Account.md:41` — "Filing: submit Form T2054 … along with a certified copy of the resolution on or before the day the dividend becomes payable (or the first day any part of it is paid, if earlier)"

Reg 2101 prescribes the form, the certified resolution, AND "(d) schedules showing the computation
of the amount, immediately before the election, of the corporation's" capital dividend account —
the page names only the first two. Same omission as T2R-3 (`T2-Reporting.md:90`,
`Dividends-Examples.md:140`); fix all three together. Verified against: Income Tax Regulations
s.2101 (fetched 2026-07-05; independently re-verified, V1). Fix: "…along with a certified copy of
the resolution and a schedule showing the CDA computation immediately before the election
(Reg 2101)…".

#### [LOW] CDA-4 "$1000" without the thousands separator

- `Capital-Dividend-Account.md:51` — "…e.g. by leaving a $1000 buffer."

Dollar figures elsewhere on the page carry the comma. Fix: "$1,000".
### Filing and CRA

(`Losses.md` produced no findings — every pinpoint verified correct; see *What was NOT flagged*.)

#### [MEDIUM] FC-1 Hub credits CRA-Administration with deadline coverage it doesn't have

- `Filing-And-CRA.md:27` (also `:13`, `:37`) — "CRA Administration covers My Business Account, filing and payment deadlines, reassessments and objections, and the statute-barred clock."

CRA-Administration.md nowhere states the filing or payment deadlines (T2 due 6 months after
year-end; balance-due day 2 months / 3 months for an SBD-eligible CCPC) — those rules live in the
Overview group; CRA-Administration touches deadlines only through their consequences (late-filing
penalty, arrears interest "from the balance-due date", objection clocks), and Payment.md doesn't
state them either (PAY-1), so within this group the promise is unmet three times. Premises
reproduced in verification (full re-read of both pages; the embedded deadline facts match
s.150(1)(a) and s.248(1)(d) as fetched — V4). Fix: reword the hub to what the page does cover
(with deadlines pointed at the Overview), or land the deadline/instalment content in Payment.md
(PAY-1) and keep the hub claim on that entry.

#### [MEDIUM] T2S-1 S141's official title is no longer "Notes Checklist"

- `T2-Schedules.md:68` (also the diagram label at `:28`) — "| S141 | Notes Checklist | always, with the GIFI statements | below |"

The current form T2SCH141 is titled "General Index of Financial Information (GIFI) – Additional
Information"; "Notes Checklist" is the superseded title, and the page's own TODO (`:189`) asked
exactly this — the answer is the name changed. The body description at `:82` still matches the
current form's parts. Verified against: canada.ca form-index titles via multiple snippets — the
CRA explainer's URL slug still reads "what-schedule-141-notes-checklist.html" while its page title
carries the new name, direct evidence of a rename (canada.ca 403; independently re-verified, V4).
Fix: retitle the row ("GIFI – Additional Information (formerly Notes Checklist)"), adjust the
diagram label, resolve the TODO.

#### [LOW] T2S-2 S21 title truncated

- `T2-Schedules.md:95` — "| S21 | Federal and Provincial or Territorial Foreign Income Tax Credits | foreign withholding tax to credit |"

The official title ends "…and Federal Logging Tax Credit"; benign, but the column purports to give
titles (re-verified, V4). Fix: append the missing phrase or mark the column as abbreviated titles.

#### [MEDIUM] T2S-3 S24 title truncated in a meaning-changing way

- `T2-Schedules.md:111` — "| S24 | First-time Filer after Incorporation, Amalgamation, or Winding-up | the first T2 |"

The official title is "First-time Filer After Incorporation, Amalgamation or Winding-up **of a
Subsidiary into a Parent**". Cutting it at "Winding-up" invites the misreading that S24 attaches
to a corporation's own wind-up year (final T2); it actually applies to a parent's first return
after winding a subsidiary into itself — and the page's Winding Down cross-reference at `:125`
keeps the misreading available. Verified against: canada.ca form-index title plus a corroborating
s.88 parent-wind-up filing description (snippets; independently re-verified, V4). Fix: give the
full title.

#### [LOW] CRA-1 Representative authorization: optional expiry date omitted

- `CRA-Administration.md:127` — "the authorization is per program account and survives until revoked"

An authorization can be given an expiry date when granted; only if none is set does it last until
cancelled — the absolute is slightly over-firm (the per-program-account half is correct).
Verified against: CRA authorization help snippets (independently re-verified, V4). Fix: "survives
until it expires (if an expiry date was set) or is revoked".

#### [CRITICAL] CRA-2 General ledger misfiled under 6-year transaction records

- `CRA-Administration.md:135` — "*Transaction records* (invoices, receipts, bank and brokerage statements, contracts, the ledger itself): 6 years from the end of the tax year they relate to"; `:137` — the permanent list (minute book, share registers, articles) omits the ledger

Reg 5800(1)(a)(iv) puts "the general ledger or other book of final entry containing the summaries
of the year-to-year transactions of a corporation" in the until-2-years-after-dissolution class —
prescribed under s.230(4)(a), alongside minutes and share records, effectively permanent for a
going concern — not in the s.230(4)(b) 6-year residual class where `:135` files it. Special
contracts/agreements necessary to understand the ledger entries are also in that class
(5800(1)(a)(v)), while the page sweeps "contracts" into the 6-year bucket. A reader following
`:135` destroys the general ledger after 6 years — a breach of s.230(4)(a)/Reg 5800 (early
destruction needs T137 consent, as the page itself notes at `:139`); the keep-everything-digital
advice softens the practical harm but the rule statement is wrong, and `:137`'s permanent list
reinforces the misfile. Ordinary contracts (client agreements) genuinely are 6-year records — only
the special-contracts class moves. Coordinate with WD-6 (`Winding-Down.md:105`), the dissolved
side of the same regulation. Verified against: Income Tax Regulations s.5800(1)(a)(i)-(v) and ITA
s.230(4)(a)/(b), (4.1) (fetched 2026-07-05; independently re-verified, V4 — the (a) chapeau is not
restricted to dissolved corporations, so for a going concern these five classes cannot be
destroyed at 6 years). Fix: move "the ledger itself" (and special contracts needed to understand
it) into the permanent-records bullet; keep invoices/receipts/statements and ordinary contracts at
6 years.

#### [HIGH] CRA-3 VDP section describes the pre-October-2025 program (ADJUSTED in verification)

- `CRA-Administration.md:182` — "A valid disclosure must be voluntary (before CRA contact on the issue), complete, and include payment or a payment arrangement"; `:183` — "Relief is penalty relief and partial interest relief; the tax is always payable"; `:221` — citation "IC00-1 - Voluntary Disclosures Program: …/ic00-1r6.html"

CRA replaced the program with IC00-1R7 (released 2025-09-10), effective for applications received
on or after 2025-10-01 (earlier ones stay under R6). Under R7 the page's frame is stale on all
three axes: (1) prior CRA contact no longer automatically invalidates an application — applications
are classed *unprompted* (generally no communication about an identified compliance issue; an
application made **following an education letter or notice offering general guidance is expressly
unprompted**) or *prompted* (following communication about an identified compliance issue,
excluding education letters); (2) relief is two-tiered — unprompted: full penalty relief plus 75%
interest relief; prompted: up to full penalty relief plus 25% interest relief (the tax itself is
always payable, as the page says); (3) the IC00-1R6 citation is superseded. An ongoing audit or
investigation in respect of the disclosed information still bars an application. Stating
pre-contact voluntariness as a validity condition could wrongly deter an owner who received an
education letter — who in fact still sits in the top (unprompted) tier. RC199 remains the
application form (revised October 2025, number unchanged), so the page's form reference needs no
change. Verified against: a directly fetched KPMG alert plus canada.ca IC00-1R7 snippets across
multiple independent sources (canada.ca 403; independently verified, V4 — verdict ADJUSTED: the
defect and severity stand, and the finder's inverted education-letter example is corrected in this
entry). Fix: reframe the bullet list around unprompted vs prompted applications with the two
relief tiers (noting an education letter leaves an application unprompted), keep the
completeness/payment expectation, and repoint the citation to IC00-1R7.

#### [HIGH] PAY-1 Corporate-tax payment page has no payment rules for corporate tax

- `Payment.md:5-11` (whole Corporate Income Tax section); hub promise at `Filing-And-CRA.md:28` — "[Payment](Payment/Payment.md) covers paying the corporate tax balance and instalments."

The page's Corporate Income Tax section contains only the line-840 data-entry note and a
screenshot. Everything the title and hub promise is absent: when the balance is due (balance-due
day — 2 months, or 3 months for a qualifying SBD CCPC, s.248(1)(d)), when instalments are due and
who can pay quarterly (monthly default s.157(1)(a); quarterly for a small CCPC under
s.157(1.1)/(1.2)), the instalment-base options, the $3,000 no-instalment threshold (s.157(2.1)),
and instalment/arrears interest. The HST and Payroll sections each carry their own "when" bullets,
making the missing income-tax "when" conspicuous; the 2026-07-01 coverage review independently
records the same gap ("instalment computation options — no s.157 content in Payment.md"), and the
page has no TODO recording it. Verified against: ITA s.157(1)/(1.1)/(1.2)/(2.1), s.248(1)
"balance-due day" (d), s.150(1)(a) (fetched 2026-07-05; independently re-verified with the page
and hub re-read in full, V4). Fix: add a "when" bullet group to the Corporate Income Tax section
(balance-due day, monthly/quarterly due dates and eligibility, $3,000 threshold, interest), or at
minimum link the section to Small-Business-Tax.md#filing-deadlines-and-instalments the way the HST
section does.

#### [MEDIUM] PAY-2 GST/HST instalment threshold is "$3,000 or more", not "over $3,000"

- `Payment.md:19` — "an annual filer with prior-year net tax over $3,000 also pays *quarterly instalments* at one-quarter of the prior-year net tax, reconciled on the year-end return (ETA s.237)"

ETA s.237(3) deems the instalment base nil only where it "is less than $3,000" — at exactly
$3,000, instalments are required; "over $3,000" excludes the boundary case. (Contrast the
income-tax side: s.157(2.1) relieves at "equal to or less than $3,000", so "exceeds $3,000" is
correct there.) The same phrasing sits at `Small-Business-Tax.md:402` and `HST.md:20` (HST-1) —
fix together. Verified against: ETA s.237(3) and ITA s.157(2.1) (fetched 2026-07-05; independently
re-verified, V4). Fix: "prior-year net tax of $3,000 or more".

#### [LOW] PAY-3 Grammar: "same-day processed"

- `Payment.md:45` — "The services typically come with a fee, but they can offer same-day processed"

Dangling participle. Fix: "…can offer same-day processing".

#### [LOW] WDR-1 Nonstandard "Topics" block in the page header

- `Whole-Dollar-Rounding.md:9-13` — "**Topics**:"

The house page shape runs Who-this-is-for → optional TLDR → Limitations; a **Topics** mini-TOC
between them is not part of it and duplicates the TLDR's role. Only HST.md shares the block, so it
also reads as a two-page inconsistency. Fix: fold the four bullets into the TLDR or drop them; if
kept, align both pages deliberately.
---

## Content notes beyond the findings

- *Overview — grind mechanics split across pages*: SBT names the AAII grind but the quantified
  mechanics ($5 per $1 over $50,000, gone at $150,000) live on `Dividends.md:227`; a cross-link
  from SBT:233 would tie primer to detail. The taxable-capital grind range is quantified nowhere in
  the guide (s.125(5.1)(a) runs $10M–$50M post-2022); one sentence on SBT would complete the trio
  of business-limit reductions.
- *Glossary gaps beyond GL-6*: no "GST" (or "GST/HST") entry — the HST entry defines only the
  harmonized tax; "EEDD" and "connected corporation" would also earn entries if the missing-entry
  pass is worked.
- *Cross-cluster fix scoping*: the GL-1/SBT-2/T3B26-1 fix should also align `Dividends.md:228`'s
  "differs slightly" example list (not false, but it omits the portfolio-dividend add); the stale
  "Small-Business-Tax-Overview" link text (GL-2/FR-1) also sits at `Investments.md:61` and
  `T3-Box-26-Other-Income.md:221` (IN-2 / T3B26-2).
- *Further-Reading TODO hygiene*: the page already tracks re-verifying the UHT corporate
  requirement and the instalment small-tax threshold before promotion — consistent with its hedged
  phrasing.

- *Expense-Classification gaps*: no home-office placement guidance — the most common
  consulting-CCPC cost question after software (rent to owner → 8910/8911, utilities share → 9220,
  supplies → 8811, cross-linked to Owner-Corporation-Transactions); and a short "limited or
  denied" block (meals 50% s.67.1; club dues s.18(1)(l); fines s.67.6; life-insurance premiums;
  personal/living s.18(1)(h)) would make the hub's BK-2 description true.
- *GIFI conveniences*: `1066` Taxes receivable (its RC4088 description names GST/HST refunds) is a
  defensible alternative home for the year-end HST-receivable balance — LA:213 could name it
  beside 1483; FX's internal `1002-3` rolls up to GIFI 1003, breaking the NNNN-N → parent pattern
  LA:189 states; LA:221's 2627 Employee deductions payable has no cross-link to Payroll.md, the
  page that generates the balance.
- *Cross-cluster link nit*: `Owner-Corporation-Transactions.md:208`, `:366` link s.67.1 to
  `section-67.html` (the s.67 reasonableness page); laws-lois has a dedicated `section-67.1.html`.

- *Winding-Down gaps*: the shareholder-side share disposition on wind-up is not covered — the
  s.84(2) deemed dividend is excluded from proceeds, so the shares dispose at ≈PUC against the
  holder's ACB (nil for the $100 founder the example silently assumes; a capital loss arises when
  ACB > PUC). Loss positions at wind-down are also untouched — terminal losses and final-year net
  capital losses with the 3-year carryback (s.111) can recover prior tax during the sweep years;
  no Related link to `Losses.md`.
- *WD-6 / CRA-2 coordination*: fixing the retention rules means touching both `Winding-Down.md:105`
  and `CRA-Administration.md:135-137` with the same Reg 5800 split.

- *Business-Acquisition group thin spots*: PSC never mentions the price-adjustment clause (BA:84
  and EF:45 both do) — its "Sizing the Shares" section is the natural one-line home; EF never
  mentions customary freeze-share dividend terms (non-cumulative, often capped) or the s.75(2)
  reversionary-trust trap beside its s.74.4 stanza, and its pathway summary omits the
  management-transition condition (s.84.1(2.31)(g)/(2.32)(h)) and the 18+ requirement — acceptable
  orientation losses, noted for completeness; AVS names the ETA s.167 election but not its GST44
  filing mechanics; hybrid asset/share structures are deliberately absent. If EF-6 lands, BA:86
  could also name the intergenerational joint election alongside T2057.

- *Quick Method reg-side details*: the 1% credit (SOR/91-51 s.17(1) variable D) carries an
  in-effect-at-fiscal-year-start condition the HST page doesn't mention — worth a parenthetical
  only if mid-year elections get covered; HST.md's TODO entries on the s.148(4) associates check
  and the control-account GIFI rollup remain the right verification debts (RC4088 has no dedicated
  HST-pair line; 2680 / 1483 are the nearest labels).
- *RBD follow-through*: with RBD-1 landed, a short Quick-Method sub-stanza can state the
  income-tax side is unaffected (s.20(1)(p) still available) while the HST side has no adjustment;
  the TODO wording can then be retired.
- *DR / DF TODO discharges*: DR's s.20(6)/(7) exclusions and ETA s.182 forfeited-deposit entries
  remain worth adding; DF's s.20(1)(e) proration, early-repayment, and s.78 deadline TODOs are now
  confirmed by this audit's fetches and can be struck after review; the deferred-charge GIFI line
  TODO stands.
- *RPI margins*: the more-than-five-full-time-employees TODO should note *489599 B.C. Ltd.* (2008
  TCC — five full-timers plus part-timers can satisfy the test), so ":37 part-timers do not add up"
  is safe for the zero-employee audience but would mislead at the 5FT+PT margin (case-law check is
  the maintainer's); Reg 1100(12) exempts principal-business rental corporations from the 1100(11)
  cap — a consulting CCPC with side rentals does not qualify, so the cap stands for this audience.

- *Classes 44/46/50 window is also a timing story*: property must be acquired *and* available for
  use before 2027, so a consulting CCPC planning a computer refresh gets 100% only by putting it
  in service in 2026; from 2027 Class 50 reverts to no-uplift-but-no-half-year (still RAIIP) — the
  cluster currently has no home for this sentence. Class 46 deserves a row or mention once CCL-1
  is fixed. "Passenger vehicle" vs "motor vehicle" (the s.248(1) carve-outs, CCL-5) is used but
  never defined in the cluster. Pre-2017 Class 14.1 balances also carry a $500 minimum annual
  allowance for years ending before 2027 — could accompany the CCL-4 fix. CCT's TODO (`:405`)
  closes with the CCT-2 pinpoints.

- *Paying-Yourself vocabulary*: the cluster introduces YMPE, YAMPE, CPP2, PDOC, PIER, AMWA, PHSP,
  HSA, and "standby charge" — none appear in Glossary.md; its charter covers them.
- *Payroll/Payment duplication*: `Payment.md:31-34` duplicates Payroll's CPP figures, PD7A voucher
  text, and TeleReply line nearly verbatim — two places to update every January; both pages' TODOs
  already gesture at settling the boundary.
- *Extraction channels*: management fees are not covered anywhere in the cluster — for a sole
  owner-manager a management fee to oneself is in substance remuneration CRA expects on payroll; a
  one-line dismissal would close the "only a few ways to bring it out" loop. The s.15(2)
  exceptions beyond (2.6) (s.15(2.3) ordinary-lending, s.15(2.4) employee loans) are unmentioned —
  arguably fine for a sole shareholder, but a parenthetical would preempt questions. The
  home-office reimbursement list never places home insurance for the owner-occupier. Payroll's
  illustrative $760/month withholding overshoots a 2026 PDOC figure for $60k Ontario (~$650-700) —
  labelled illustrative, but worth tightening when the TODO's PDOC verification happens. T4
  mandatory e-filing (>5 slips) stays TODO-queued.

- *Partial designation*: s.89(14) designates "a portion of a dividend" as eligible. The Dividends
  pages treat the designation as all-or-nothing (resolution template "This dividend IS/is NOT
  designated…"), and the stranding catch-up and the wind-down sweep would naturally use a partial
  designation instead of splitting into two dividends — worth a sentence in Declaring-And-Paying
  and RD's draining section.
- *AAII grind timing lag*: s.125(5.1) grinds a year's business limit on the AAII of taxation years
  ending in the *preceding* calendar year. Neither `Dividends.md:225-247` nor the canonical
  Small-Business-Tax page states the one-year lag; harmless in the current examples but
  planning-relevant (this year's AII grinds next year's SBD).
- *s.104(19) year-end nuance*: the designated dividend is deemed received at the trust's December
  31 year-end — matters only for off-calendar corporate year-ends holding T3 Box 49 funds; the
  guide assumes calendar years, so the omission is benign.
- *Sub-page shape*: the four STATUS-marked Dividends sub-pages carry no `## Related` section
  (parent pointer present at the top of each) — a promotion-checklist item, not a defect.

- *Suspended-loss tracking*: with the ACB-4/ACBT-6 fix, the corporate side needs a sentence on
  tracking a suspended loss to its release — the sheet has no home for a denied-then-released loss
  today; a `Note`-tagged memo convention would do.
- *ACB corporate actions beyond splits and spin-offs*: ETF mergers/terminations and
  share-for-share exchanges (s.87/s.85.1 rollovers — new units inherit old ACB) are common for ETF
  holders and currently fall silently under "custom handling"; ROC from non-trust foreign holdings
  (no T3; broker summaries/1042-S reclassification) is also unmentioned — the page's ROC path is
  T3-Box-42-only.
- *CIC TODO discharges*: TODO bullet 1 closes (s.39(4)/(5) verified); bullet 2 half-closes
  (IT-479R still archived, both canada.ca URLs live per the search index; no replacement folio
  surfaced, absence not proven).

- *S1 capital-gain mapping (T3-1 fix domain)*: Schedule 1 provides line 113 (add the S6 taxable
  half) and line 401 (deduct the book gain in full); if the maintainer prefers the netted 705/395
  convention, a one-line "leave line 113 empty; adjust S7 Part 6 amount V" caveat on T3.md and
  T5008.md makes it safe. A live FutureTax check of whether S1-113 / S7-Part-6-V auto-populate
  from S6 settles which text to write.
- *T5B18 reinvested capital gains dividends*: corporate-class funds commonly pay Box 18 amounts as
  reinvested shares; a sub-bullet could note a reinvested amount is a new-share purchase that
  increases ACB (the "no ACB change" statement is about the dividend itself).
- *Coverage-review GIC-accrual item is moot*: the review carried "GIC s.12(4)/(11)
  anniversary-accrual note in T5.md (absent — verify, then add)"; verification shows s.12(3)
  (already cited at `T5.md:162`) is the corporate accrual rule and s.12(4) applies only to
  taxpayers outside s.12(3), so there is nothing to add for a CCPC-facing page — close as N/A.
- *T3B25 promotion readiness*: every S21 column claim verified verbatim against the form this
  pass; with T3B25-1/-2 fixed, that page's schedule content is promotion-grade.

- *Payment.md shape*: far from mature — no Who-this-is-for/TLDR/Limitations, no Related,
  Citations, or TODO. Beyond PAY-1's rule content, the Payment Methods section never names the CRA
  channels it describes ("Scheduled from CRA My Business Account" is pre-authorized debit; the
  "Visa Debit" bullet is CRA My Payment); cheque with a remittance voucher (RC159/RC160) and wire
  are unmentioned — fine to omit, worth a deliberate decision.
- *GIFI 9990 gap*: `CRA-Administration.md:57-75` and `Losses.md:75-76` both book to 9990 "Current
  income taxes" and point "see Ledger and Accounts" — but Ledger-And-Accounts' chart has no 9990
  row; Losses' TODO already records adding it.
- *TODO discharges in this group*: CRA-Administration TODOs on s.164(1.5), the TCC informal
  threshold, and s.225.1 scope, plus Losses' s.164(5) TODO, are all independently verified correct
  — resolvable without content change; T2-Schedules' S141 TODO is discharged by T2S-1.
- *Rounding regimes*: Whole-Dollar-Rounding covers T2/GIFI dollars vs GST/HST cents but not the
  third regime the reader meets — information slips are completed in dollars **and cents**; a
  one-line contrast would pre-empt the natural next question.
- *Deadline home*: the T2 filing deadline and balance-due day are stated only in the Overview
  group; if Filing-And-CRA is meant to stand alone at year-end (the hub's TLDR frames it that
  way), the deadlines deserve a stated home inside the group — FC-1 and PAY-1 tie together.
## What was NOT flagged

Candidates checked and deliberately dropped, plus everything the verification pass cleared.

### REFUTED in verification

- **RD-3 (`ERDTOH-NERDTOH.md:65`)** — the finder proposed deleting the parenthetical in "*ERDTOH*:
  lesser of the prior-year RDTOH and 38⅓% of the prior-year GRIP (net of eligible dividends paid
  that year)" as having no statutory basis. V2's re-fetch of ITA s.129(5)(a)(i)(B) shows the
  parenthetical is statute verbatim — variable D of the (C − D) × E cap subtracts "all amounts each
  of which is an eligible dividend paid by the corporation in its preceding taxation year" (less
  that year's EEDDs), precisely because the preceding year-end GRIP does not yet reflect that
  year's own dividends. The page is more accurate than the finding; the deletion must not be
  applied.

### Repo-wide sweeps that came back clean

- *Link integrity*: all 1,244 internal links/anchors across README, `guide/` (60 pages), and
  `docs/` resolve — zero broken paths, case mismatches, or bad heading anchors; all 12 PNG refs
  resolve and every PNG on disk is referenced by exactly one page. The only scanner hits were
  historical audit-file quotations, inline code spans, and the Style-Guide's deliberate `(…)`
  placeholder — all non-findings on inspection.
- *README ToC vs tree*: 60 entries / 60 files, each exactly once, indentation matching the
  AGENTS.md architecture; all seven group hubs present and bolded; Audit index complete except the
  Coverage Review (→ R-1).
- *STATUS vs †*: perfect two-way match on all 60 pages — 44 REVIEW-marked pages all carry † in
  README, 16 unmarked (signed-off) pages all lack it; canonical marker shape everywhere; no
  `WORK IN PROGRESS` markers and no stub annotations remain, mutually consistent.
- *Style greps*: zero US spellings, licence/license misuse, bank-cheque misuse, GIFI sub-code
  mislabels ("GIFI NNNN-N"), em-dash labelled bullets, smart quotes, or duplicate words in guide
  prose beyond the coded findings above; heading case clean ("Available-for-Use Rule" and
  "Capitalize-vs-Expense Thresholds" are convention-compliant).
- *Mermaid*: 24 blocks across 18 pages — no duplicate node definitions, no dangling edges;
  the one in-fence `style` directive is legitimate.
- *docs/examples isolation*: zero references from README or guide pages; only the Style-Guide
  links the two frozen drafts, as documented.

### Checked and cleared, by page

**Overview**

- `Tax-Integration.md` — clean: the worked example recomputed end to end (eligible $554 vs
  non-eligible $541 totals tie at stated rounding); gross-up/DTC fractions verified verbatim
  against s.82(1)(b) and s.121 (15.0198% / 9.0301% confirmed); 2026 Ontario combined rates
  (12.2% / 26.5%; DTC 25.02% / 12.02%) check; the 2026-06-30 TI-1 reconciling clause is
  regression-free; the "notional 27.5%" = 38/138 ✓.
- `Concept-Map.md` — event→pool table consistent with s.89(1)/s.129(4)/s.186 mechanics; the 0.72
  GRIP factor fetched; designation "at or before payment" consistent with s.89(14) and
  Declaring-And-Paying; Part III 60% / Part III.1 20% consistent; loss rules identical to
  Losses.md; NEW-1 per-return-type penalty framing held; balance-due and quarterly-eligibility
  glosses match the s.157 fetch; the T2054 diagram arrow is a stated simplification.
- `Small-Business-Tax.md` — PSB safe harbours verbatim to s.125(7); PSB rate build (28% + 5% =
  33%, ≈44.5% combined) checks; taxable-capital and AAII grind formulas match s.125(5.1); the
  SBO-2 diagram fix held (CDA fed only from the capital-gain node); inclusion-rate framing,
  $30,000 threshold, filer bands, treaty rates, CBCA/Ontario annual-return timing all consistent.
- `Glossary.md` — the ~60 remaining entries checked against their canonical pages with no drift
  beyond the coded findings; the "second tax year after acquisition" 357-day gloss is a correct
  translation; all see-link anchors resolve.
- `Further-Reading.md` — CDA life-insurance component correctly tied to s.89(1) CDA paragraph (d)
  (fetched); its either-year $3,000 instalment exemption is the correct statement (contrast
  CM-3/SBT-4); UHT verify-first framing consistent with its TODO.
- `Overview.md` — all sub-page and hub links resolve; the six named acronyms all have Glossary
  entries; "are designed so" left as legitimate intent description.
- `Dividends-Examples.md:89` "(AAII equals AII here)" — deliberately NOT flagged: correct in
  context, since that example's $40,000 is interest/foreign/gains only, scoped "here" (contrast
  GL-1/SBT-2/T3B26-1).
- Ontario 2026 budget figures (SBT:230 / TI:74 / CM:212) — rates and effective dates verified
  (SBR 3.2%→2.2% eff. 2026-07-01; non-eligible DTC 1.9863% eff. 2027-01-01). Note: the
  cluster-time "proposes, Royal Assent not confirmed" read was overtaken mid-audit — V2's ola.org
  fetch (2026-07-05) shows Bill 97 received Royal Assent (S.O. 2026, c. 2); DE-1 carries the
  staleness finding, and any residual "proposes" phrasing on these three pages goes stale with it.

**Bookkeeping**

- `Ledger-And-Accounts.md` — the worked set of books recomputed in full ($15,650 Cash T-account,
  $22,040 trial balance, $18,040 balance sheet, $650 net HST) — all tie; every GIFI code on the
  page verified against the complete RC4088 listing, all correct (a suspected 1482/1483/1484 swap
  was a two-column PDF-extraction artifact, disproved from the raw extraction); S100/S125 band
  split, s.230 books-and-records duty, retained-earnings continuity, Quick-Method spread → 8230,
  and the rounding-plug lines all check.
- `Expense-Classification.md` — every GIFI code verified against RC4088; s.18(1)(b) and s.20(1)(a)
  attributions correct; Class 12 / Class 50 software split consistent with the CCA pages; the
  Quick-Method expense treatment and the $1,000 + $130 worked example recomputed correct.
- `Foreign-Currency.md` — s.261 functional-currency stanza (transaction-day spot, five currencies,
  60-day deadline, exclusions) verbatim to statute; s.39(1.1) $200 de minimis individuals-only
  confirmed; ETA Sch VI Part V s.7/s.23 zero-rating split accurate; all four worked examples
  recomputed and correct (bank conversion, Gambit ledger, invoicing year-end +300, USD float
  −160); all five 2026-06-30 FC fixes held; the broker-support table properly hedged and left to
  the maintainer per the platform-support policy; S5-F4-C1/IT-95R/TI 2015-0588981C6 claims
  snippet-verified where fetchable, with the four-method list and IT-95R paragraph numbers left as
  noted verification debt.
- `Bookkeeping.md` — hub structure matches the house template; the cross-cutting scope line agrees
  with README and the FX page.

**Corporate Lifecycle**

- `Corporate-Lifecycle.md` — hub structure and Business-Acquisition description match the actual
  sub-pages; the hub-layer em-dash appositive pattern is shared by every hub, so it was treated as
  a tolerated house pattern rather than a per-page defect.
- `Corporate-Structure.md` — CBCA 25%-resident-director vs Ontario-2021 removal is a real
  federal-provincial difference; s.125(7) CCPC cite correct; the "Two taxpayers" bullet already
  carries the prescribed sub-bullet split.
- `Share-Capital.md` — s.89(1) PUC definition (corporate-law stated capital, ITA adjustments,
  class averaging), s.84(3)/s.84(4) attributions, CBCA s.26 stated-capital and s.34-36 redemption
  solvency claims all verified; the 2026-06-30 SC-1 fix held with no regression.
- `Starting-Up.md` — 53-week first period and s.249.1(7), s.125(5)(b) proration (its TODO item 1
  can be retired as verified-correct), s.20(1)(b) $3,000, s.85/s.69(1)/ETA s.167 attributions,
  180-day bonus rule, annual-return deadlines, opening entries, and "no instalments in year one"
  all check.
- `Winding-Down.md` — s.84(2), s.88(2)(b)(i), s.69(5), s.129(1) three-year window, s.227.1(4)
  two-year director limitation, CBCA s.210/s.228 all verified; the worked example recomputes
  ($121,857, with an 18¢ de minimis rounding note); the "directors" gloss of s.159(2)'s "legal
  representative" is defensible for an owner-managed voluntary dissolution; "T4001 end-of-business
  deadlines are days, not months" is directionally consistent but exact figures stay unverified
  (canada.ca 403; the page's TODO tracks them).
- Cross-cluster: the "Feb 28" shorthand at `Starting-Up.md` was left unflagged in favour of the
  CM-2/SBT-3 treatment of the repo-wide split; all section anchors and relative links from the
  five pages resolve.

- `Estate-Freeze.md` — the prior EF-2 upper limb is present and statute-accurate ("or until the
  transfer is complete, if later" at `:98` matches s.84.1(2.32)(g)); both IBT pathway summaries,
  the once-only condition, the s.84.1(2)(e)/C-208-to-C-59 history and 2024-01-01 application date,
  "s.84.1 is not engaged at this step", the s.110.6(14)(f) incorporation relief, s.74.4(2)(f)
  dividend reduction, and the s.85(2)/(3) partnership routes all verified by fetch.
- `Preferred-Share-Consideration.md` — the redemption schematic recomputes ($99,990 deemed
  dividend, nil gain); s.84(3) and s.85(2.1) attributions confirmed; the prior PSC-1 link fix
  held.
- `Asset-vs-Share.md` — the full 2026-06-30 AVS-1..4 regression baseline held (no live s.14 cite;
  Class 14.1 via Schedule II + Reg 1100(1)(a)(xii.1); ETA s.167 present with an accurate
  substantially-all description; s.88(1)(d) bump correctly limited; associated-CCPC sharing
  present); the share-sale GST/HST exemption cleared.
- `Business-Acquisition.md` — hub descriptions of all three sub-pages accurate; T2057 title and
  due-date snippets match s.85(6); inline-unlinked/Citations-linked pattern matches the signed-off
  Dividends hub, so not flagged; "versus" in body prose is outside the headings-only vs-rule.
- LCGE $1,275,000 (2026) and the ½ inclusion rate with cancelled-⅔ framing — re-confirmed on both
  pages that carry them (standing dropped-candidates items).

**Operations**

- `Deferred-Revenue.md` — clean: s.12(1)(a) and s.20(1)(m) fetched and match (including the
  inclusion precondition and "reasonable amount"); the s.12(1)(e) add-back cite is correct;
  s.168(9) deposit carve-out verbatim; GIFI 2770/3220/2620-series match RC4088 and the canon; the
  worked example ties out.
- `HST.md` — all 2026-06-30 fixes held (kept spread ≈2.7%, close entry with $3,654.80 payable,
  s.148(2)/(4), SOR/91-51 attribution, ≈$1,197 net benefit); rates and bands current; tax-point
  and straddle sections consistent with s.168(1)/s.152/s.12(1)(b); documentary thresholds, meals
  s.236, club dues, Class 10.1 ITC cap, change-in-use scheme, ITC windows, e-filing and
  $10,000-electronic-payment rules (s.278(3) "exactly $10,000 or more" — page correct), CARM
  framing, revocation one-year rule — all verified or standing-cleared; both worked examples
  recomputed entry by entry (only HST-10's line 101 defective); the zero-rated
  Quick-Method-collapse outcome statement is mechanically loose but correct, not flagged.
- `Receivables-And-Bad-Debts.md` — s.9, s.12(1)(b)/(d)/(i), s.20(1)(l)/(p)(i), s.50(1) contrasts
  all fetched and match; write-off/recovery arithmetic ties ($650 / $260); s.231(1) conditions
  match; debt-by-debt (not formula percentage) reserve framing is the safe statement; GIFI 8250 /
  1061 match canon.
- `Debt-And-Financing.md` — s.20(1)(c)/(d)/(e)(iii)/(e)(v)/(e.1), s.18(1)(t), and the s.78(1)
  unpaid-interest machinery all fetched and match (three of the page's TODO verifications now
  confirmed); term-loan math recomputes (PMT ≈ $990.06); T5-at-$50+ consistent with practice.
- `Donations.md` — 5-year carryforward and lesser-of cap fetched; s.110.1(1.1) oldest-first
  ordering confirmed; s.38(a.1) zero inclusion fetched; the full-gain CDA credit and the worked
  table/journal recompute; GIFI 8522's official description includes political donations, so the
  page's placement sentence is grounded; the political-contribution prohibition stays TODO-hedged.
- `Rental-And-Property-Income.md` — s.125(7) SIB definition with both employee-test limbs fetched
  verbatim; s.129(6) associate deeming correct (resolves the page's second TODO); the HST
  commercial/exempt split and small-supplier interaction correct; the co-ownership section's
  registered-interest/appraisal/agreement-anchored splits match the maintainer's
  professionally-endorsed arrangement and were deliberately not second-guessed.
- `Operations.md` — hub list complete and ordered; Cost-Recovery three-channel description matches
  the target; hub shape matches all six siblings.

- `Cost-Recovery/` cluster, ZEV/clean-energy/M&P full-expensing — the pages' existing claims
  (CCA:114, CCL rows 38-40, CCT:39/:231) are CORRECT under current law: Reg 1100(2) carries
  second, reaccelerated rows per class (e.g. Class 54/56 factor 2 1/3 before 2030, stepping down
  2030-2033). First fetches showed only the old phase-out rows and this looked like a finding
  until the reaccelerated rows were pulled verbatim — do not "correct" the guide backwards.
- `Capital-Cost-Allowance.md` — AIIP-reinstatement framing (Bill C-15, RA 2026-03-26; AFU before
  2030; 150%/3×; 2030-2033 wind-down) matches Reg 1104(4.01) + 1100(2); DIEP correctly presented
  as ended with the $1.5M-limit-still-prorates nuance intact; the half-year exemption list matches
  Reg 1100(2); s.20(16.1)(b)/(c) former-property glosses near-verbatim.
- `Inventory-And-COGS.md` — clean: the s.10 family (10(1), 10(1.01), 10(2), 10(2.1), 10(5)(a),
  10(6), Reg 1801/1802) all verified by fetch; s.10(4)(a) professional-WIP FMV rule is correct (a
  plausible-looking miscite that isn't one); both examples recompute ($10,160.00 both ways;
  $300 FX loss); six-term COGS identity held.
- `Materials-And-CIP.md` — shed and two-build pool examples recompute; AIIP caveats and s.13(28)
  citation fixes held.
- `CCA-Classification.md` / `CCA-Examples.md` — dock/wharf classification confirmed against
  Schedule II (Class 3 vs Class 6 wooden wharf; the no-material-split asymmetry holds); s.13(35)
  and s.20(1)(b) $3,000 verified; all four CCE examples and both CCL worked cases recompute on
  their stated premises; IT-472's water-well split (casing/pump Class 8; drilling a current
  expense) could not be confirmed headlessly — plausible-and-cited, left unflagged, maintainer
  spot-check recommended (this backs a real-situation example).
- `CCA-Tracking.md` — the register tie-out recomputes (385/315/$85 recapture; NBV columns match
  closing UCC); Schedule 8 field codes 203/225/217 confirmed via S8 software documentation — that
  slice of the EN-1-family verification debt is discharged; the FutureTax Half-Rule note matches
  the NEW-2 rewrite; the `#special-cases` link resolves.
- Prior-cycle regressions across the cluster — all held: available-for-use UCC wording, TLDR
  carryover-or-FMV, COGS identity, MAT caveats, CEX-3/CEX-4, Class 15, M&P 53/43 handover, no
  GIFI 1900 anywhere; 2026 vehicle caps in the standing verified list; IT-102R2/IT-218R
  change-of-use framing internally consistent (unfetchable, no finding).
- Deliberately dropped after checking: "taxed at cost" gloss (clarified in-line); s.10(5)(a)
  scope-line looseness; TLDR "transferring to a CCA class" shorthand; "the Act sorts … into
  numbered classes" (Schedule II pedantry); calendar-YEAR() formulas (examples declare a calendar
  year); the $200 IDE licence classification listing; the mixed AIIP/half-year edge-case formula's
  disposition-offset ordering (beyond the page's altitude).

**Paying Yourself**

- `Payroll.md` — 2026 CPP figures confirmed by arithmetic and announcement snippets (YMPE $74,600,
  YAMPE $85,000, maxima $4,230.45 / $416.00); EIA s.5(2)(b) 40% exclusion and the s.152.01/152.02
  special-benefits opt-in fetched; Reg 108(1) remittance timing, s.227(9) tiers, s.153(1) trigger,
  s.78(4) bonus rule all fetched and match; TeleReply confirmed still active (memory said possibly
  discontinued; sources say no); the worked pay run ties out to the dollar; the per-return (not
  per-slip) penalty framing held.
- `Owner-Corporation-Transactions.md` — s.15(1)/(2)/(2.6), s.80.4(2)/(3)(b), s.20(1)(j), the s.6(2)
  standby computation ($7,601 recomputed), 2026 vehicle rates, s.6(1)(b) allowance rules, ETA
  s.173/s.174/s.170(1)(a), s.46(1) PUP floor, home-office and gifts-and-awards positions, PHSP
  listing — all verified or standing-cleared; the 2026-06-30 OCT-1 fix held (s.6(1)(k) +
  Reg 7305.1; zero s.6(2.2) anywhere); the equipment example's PUP label is outcome-neutral and
  was not flagged.
- `Paying-Yourself.md` — hub framing consistent with Small-Business-Tax and Tax-Integration; all
  anchors resolve; hub boilerplate matches the house convention.

- `Dividends/` cluster core mechanics — all verified against fresh fetches and the actual forms:
  the Schedule 3 line map (450/455/460/465/470, column O, Part 4 500/510) checked against T2 SCH 3
  E (21) itself, every reference correct; s.129(1)(a) refund ordering and the 38⅓% / $2.61
  arithmetic; s.129(4) pool destinations; Part IV s.186(1)(a)/(b) and the s.186(4) connected
  definition (printed on the form's front page); Part III.1 20% + 10% structure with the s.185.1(2)
  election; Part III 60%; the T2054 becomes-payable deadline (prior CDA-1 fix held); gross-ups and
  DTC fractions with every personal-side figure recomputed; every corporate-side example and
  journal entry ties out; s.162(7.01) per-return-type penalty (BAS-1/NEW-1 regression held);
  s.212(2)(b) 25% on capital dividends to non-residents; GIFI labels read from RC4088 Appendix A;
  CBCA s.42 recital verbatim; T2 line 784 re-verified (the maintainer's removal of the DIV-3 hedge
  was sound); page-7 pool continuity framing corroborated by S3's own cross-references; prior R-1,
  EN-2, EN-3, EN-4, BAS-2, SC-1-spillover, T2R-1 fixes all held.
- `ERDTOH-NERDTOH.md:65` and `:71-74` transition text — consistent with s.129(5) as written (the
  RD-3 challenge to the "(net of eligible dividends paid that year)" parenthetical was REFUTED —
  the parenthetical is variable D of s.129(5)(a)(i)(B) verbatim); RD:152's simplification of the
  leftover-ERDTOH cap left as hedged.
- `Bookkeeping-And-Slips.md:89` "two copies of the slip to the shareholder" — the paper-channel
  rule; CRA now defaults to electronic distribution — noted only, not established as wrong.
- s.89(14) "at or before payment" designation gloss — practical reading of "at that time" with
  CRA's combined resolution+notice acceptance; not flagged.

**Investments**

- `Adjusted-Cost-Base.md` — the ROC worked example recomputes ($1,000 → $0 with the $100 s.40(3)
  deemed gain); s.47(1) pooled-average and s.40(3) attributions verified; the 61-day
  window/end-of-period conditions verbatim to s.54; the affiliation parenthetical matches
  s.251.1(1)(b); Box 42 sign convention confirmed; the "Note that…" sentence left per the
  maintainer's deferred T3-2 style call; the IT-387R2 "same currency of issue" attribution
  re-attempted and still unverifiable headlessly — remains a maintainer spot-check, not a finding.
- `Adjusted-Cost-Base-Tracking.md` — the template screenshot recomputes to the cent against the
  documented formulas ($1,243.95 / −$235.89 / $54.16); `Previous Row for Symbol` matches the
  template's formula bar verbatim; the trade-confirmation annotations match the redacted RBC
  image; DRIP and FX-date conventions consistent with ACB.md, AGENTS.md, and Foreign-Currency.md;
  the Google-Sheets URL still sign-in-redirects headlessly (not a defect; browser check
  outstanding).
- `Capital-Vs-Income-Character.md` — s.39(4) election IS available to a plain consulting CCPC
  (s.39(5) excludes traders/dealers, financial institutions, money-lenders, non-residents — not a
  holding CCPC; resolves the page's first TODO); s.184(2) 60% (3/5) and the s.184(3) election
  verified; the character factors match IT-479R as reflected in secondary sources; VUN/XUU/DLR
  coverage correct.
- `Investments.md` — the investment-schedules framing matches T2-Schedules verbatim; T1135
  threshold framing correct; slip-season timing correct; all links and anchors resolve.
- Spillover check for ACB-4/ACBT-6: s.53(1)(f)/s.40(2)(g)(i) appear only on the two ACB pages;
  s.40(3.3)/(3.4) appears nowhere in `guide/` — the umbrella "superficial loss" labels on
  `Capital-Vs-Income-Character.md:30`, `Losses.md:41`, `T3.md:40`, `Concept-Map.md:304` stay
  accurate as labels.

- `T5-Box-18-Capital-Gains-Dividends.md` — clean: s.131(1) capital-gains-dividend deeming
  near-verbatim; s.104(21) contrast table correct; the CDA running-total method reaches the
  s.89(1)(a)/(f) result; s.130.1(4) MIC scope-out correct; the hedged "normally paid in cash"
  claim left with a content note.
- Slip box semantics — the T3 box list matches the repo's redacted 2025 T3 slip screenshot; the T5
  box list (13/24/25/26/10/11/12/18/27, corporate box-26 exclusion) and T5008 boxes 16/17/20/21
  confirmed via T4015/T4091 snippets.
- Schedule mappings — S3 Part 1 columns F/G, S7 Part 1 (002…092 → line 440) and Part 3 (…079 →
  line 445) from the fetched forms and repo screenshots; S7 line 072 / Part 2 line 735 corroborates
  T3B26's s.108(5)(a) carve-out claim (also statute-fetched); S21 Part 1 columns 1A-1F and the
  lesser-of credit-limit structure verified column by column against the fetched form — the first
  cycle these S1/S7/S21 references have been form-checked (formerly EN-1 verification debt); S6
  columns match the repo's Schedule 6 screenshot including the form's own Box-21 instruction; the
  S1 additions grid 605/295 → 296 → D → 199 verified.
- Statutes on the slips pages — s.83(2) deadline wording (prior CDA-1 fix held), s.89(1) CDA
  paragraphs (a)/(d)/(f), s.129(4) NERDTOH/AII routing, s.131(1), s.104(21)/(22)/(22.1) scoping
  (grounding the no-s.20(12)-for-trust-flowed-tax position), s.125(5.1)(b), s.233.3 SFP
  definitions/thresholds/deadline, s.162(7) and s.162(10) penalties, s.152(4)(b.2) both-limbs
  extension, s.184(2)/(3), s.12(3) corporate interest accrual — all fetched and consistent.
- T1135.md — reporting methods, category-7 aggregation, and the worked example all consistent;
  the two hedged classifications (US-listed ETF entity character; crypto situs) are already
  TODO-tracked on the page.
- Worked examples across the eight pages recomputed — all tie out ($115 Part IV; balanced FX
  entries; CDA years 1-3; the T3B25 worksheet against its screenshot); CTBS official name exact.
- Regression baseline on this cluster — all nine prior-cycle fixes held (R-1 s.129(4); T5 GIC/ISA
  example; s.186(1)(b); s.20(14.2); T5008 FX note and Taxable-Half section; CDA deadline, s.40(3)
  input, T5 Box 18 naming).
- `T3.md` "Note:" sentences (five instances) — deferred by the maintainer (2026-06-30 T3-2), not
  re-raised; the same stance extended to `CDA.md:18`/`:48` and `ACB.md:116`.

**Filing and CRA**

- `Losses.md` — clean: s.111(1)(a)/(b) carryback/carryforward, s.111(3)(b) oldest-first,
  s.111(8) definitions, s.152(1.1) loss determinations, s.164(5) 30-day interest start (its TODO
  parenthetical confirmed correct), s.157(2.1) instalment relief after a loss year, s.150(1)(a)
  all fetched and match; the loss-value table and worked example recompute ($9,760 / $7,320 /
  FY2046); the s.111(4)-(5.5) acquisition-of-control scope-out stands (the statute's
  "loss restriction event" rename is optional modernization); GIFI 1483 confirmed.
- `CRA-Administration.md` — the 3-year CCPC reassessment period confirmed against s.152(3.1)
  (4 years is for non-CCPCs); s.165(1) objection windows, s.166.1 extensions, s.162(1)/(2)
  late-filing penalties, s.163.1 instalment penalty gloss, Reg 4301 interest rates (arrears +4%,
  corporate refunds +0%), s.18(1)(t), s.230(4)/(4.1), s.220(3.1) 10-year relief, s.225.1
  collection restrictions (the ½-collection carve-out is large-corporations-only — TODO
  resolvable), s.164(1.5) individuals/GREs-only refunds (TODO resolvable), TCC informal-procedure
  $25,000 (TODO resolvable), s.152(4) extension limbs — all fetched and match; the
  accrual/true-up arithmetic ties.
- `Payment.md` — s.278(3) "$10,000 or more" exact; GST filer deadlines and instalment gloss fine;
  EIA s.5(2)(b) exact; CPP 2026 figures recomputed; remitter/PD7A/TeleReply/T4-deadline block all
  confirmed or standard; line 840 "Tax instalments paid" on the page-9 Summary POSITIVELY
  confirmed (CRA guidance + DT Max line index + the repo's own FutureTax screenshot) — that limb
  of the EN-1 debt is discharged.
- `Whole-Dollar-Rounding.md` — s.117.1(3) is the right subsection and reads exactly
  round-half-up; the RC4088 "$10,500.75 → 10501" example confirmed verbatim; the Justice Legistics
  link fetched live and apt; both worked examples recompute; the 3849 absorber convention matches
  Ledger-And-Accounts.
- `T2-Schedules.md` — all other schedule titles match official titles (S141/S24/S21 were the only
  deviations); S546/S547 retirement confirmed; the nine-page jacket and page-7 pool framing
  consistent; S50 10% threshold equivalent for this audience; T1135-with-T2 and T183 CORP claims
  current. Note: `:72`'s "S53 every year, even at a zero balance" is internally consistent with
  T2-Reporting.md:53 but shares the DIV-5/T2R-2 defect — covered by that finding's sweep, not
  cleared.
- `Filing-And-CRA.md` — sub-page list complete; all links and cross-page anchors resolve; the
  Overview "filing calendar" pointer is backed by Concept-Map §Filing Calendar.
## Status of WIP / pending-review pages

- **Overview**: `Concept-Map.md`, `Small-Business-Tax.md`, `Tax-Integration.md` signed off (no
  STATUS line, unmarked in README); `Overview.md`, `Glossary.md`, `Further-Reading.md`
  REVIEW-marked with matching † — all consistent.

- **Bookkeeping**: all four pages (`Bookkeeping.md`, `Ledger-And-Accounts.md`,
  `Expense-Classification.md`, `Foreign-Currency.md`) REVIEW-marked with matching † — consistent;
  Foreign-Currency's README cross-cutting annotation matches its scope, and it has outgrown the
  AGENTS.md "stub" label (→ R-2).

- **Corporate Lifecycle**: all nine pages REVIEW-marked with matching † (`Corporate-Lifecycle.md`,
  `Corporate-Structure.md`, `Share-Capital.md`, `Starting-Up.md`, `Winding-Down.md`, and the four
  Business-Acquisition pages) — consistent; `Starting-Up.md` and `Winding-Down.md` carry `## TODO`
  sections (5 and 6 items) whose open questions this audit partially settles (SU TODO 1 verified
  correct; WD's s.171 and Ontario-consent TODOs resolve via WD-2/WD-5).

- **Operations (excluding Cost-Recovery)**: all seven pages REVIEW-marked with matching † —
  consistent; several carry `## TODO` sections whose verification items this audit discharges
  (see *Content notes*).

- **Operations / Cost-Recovery**: all seven pages REVIEW-marked with matching † — consistent;
  heading progress tags in the comment form (`<!-- [done] -->` on several sections;
  `<!-- [wip] -->` on Cost-Recovery's "Amortization and Classes" and CCA-Tracking's "Asset
  Register"; one `<!-- [meh] -->` on Inventory's "What Inventory Is") — all resolve correctly as
  anchors and mark the maintainer's own review front.

- **Paying Yourself**: `Paying-Yourself.md`, `Payroll.md`, `Owner-Corporation-Transactions.md`
  REVIEW-marked with matching † — consistent, no heading tags. Dividends sub-folder: `Dividends.md`
  and `ERDTOH-NERDTOH.md` signed off (no STATUS, unmarked in README); the four paying-mechanics
  sub-pages (`Declaring-And-Paying.md`, `Bookkeeping-And-Slips.md`, `T2-Reporting.md`,
  `Dividends-Examples.md`) REVIEW-marked with matching † — consistent.

- **Investments**: `Adjusted-Cost-Base.md`, `Adjusted-Cost-Base-Tracking.md`,
  `Capital-Dividend-Account.md`, `T3.md`, `T3-Box-26-Other-Income.md`, `T5008.md` signed off (no
  STATUS, unmarked in README); `Investments.md`, `Capital-Vs-Income-Character.md`, `T1135.md`,
  `T3_Box-25…`, `T5.md`, `T5-Box-18…` REVIEW-marked with matching † — all consistent.

- **Filing and CRA**: all six pages REVIEW-marked with matching † — consistent as markers go.
  `Payment.md` is the one page whose marker overstates its maturity: no
  Who-this-is-for/TLDR/Limitations/Related/Citations, and AGENTS.md still calls it a stub —
  closer to WORK IN PROGRESS in substance (report only; no WIP marker exists anywhere in the repo,
  and the README annotations are mutually consistent).
- **Repo-wide**: 44 REVIEW-marked pages / 16 signed-off pages, in a perfect two-way match with the
  README † markers; no silent promotions; all markers in the canonical shape (confirmed by the
  mechanical sweep across all 60 pages).