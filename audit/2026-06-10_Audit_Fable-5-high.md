# Documentation Audit

**Date**: 2026-06-10
**Scope**: All 21 Markdown content pages under `guide/`, plus `README.md`, `AGENTS.md`, and
`CLAUDE.md`. This is a fresh full pass, not a follow-up. Its weight is on the content that changed
after the 2026-05-29 follow-up: the heavily edited `guide/Cost-Recovery/` cluster (new
"Inventory versus materials" and "Multiple builds" material; `Inventory.md` renamed to
`Inventory-And-COGS.md`), and three pages no audit has covered before —
`Owner-Corporation-Transactions.md`, `Whole-Dollar-Rounding.md`, and the `Ledger-And-Accounts.md`
stub. The signed-off Topics pages and the stubs were re-read in full. The four large
pending-review pages that changed only by link renames and short additions since the 2026-05-28
full pass (`Foreign-Currency.md`, `HST.md`, `Shareholder-Dividends.md`,
`Small-Business-Tax-Overview.md`) were reviewed as diffs plus targeted sections, with the
2026-05-28 full verification as the baseline.
**Method**: Statutes verified by direct fetch from laws-lois.justice.gc.ca — ITA s.10 (every
subsection), s.13(7)/(27)/(28), s.20(16.1) (verbatim), s.45(1), s.117.1(3); Regulations 1100(2)
and 1101(1af); ETA s.206. CRA administrative positions and current-year figures were confirmed
through the search index without asserting any canada.ca fetch (the site returns 403 to headless
fetchers): IT-102R2 conversion positions (quoted in the index), the Class 12 half-year treatment
of computer software, the 2026 automobile rates (Finance announcement of 2026-01-14), the CBSA
CARM/B3 transition (Customs Notice 24-29 and broker guidance), and T4A reporting of s.15(1)
benefits. Every CRITICAL and HIGH finding and every claimed citation discrepancy was re-verified
against the primary source before inclusion; two candidates were reversed by that check and are
recorded under *What was NOT flagged*. All relative links and section anchors were checked by
script against the actual headings. The arithmetic of every worked example on the changed and new
pages was recomputed.

## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

## TL;DR

- **One CRITICAL**: the Cost-Recovery cluster grounds inventory↔fixed-asset conversions on
  s.45 / s.13(7) deemed dispositions at fair market value, on three pages with book entries and
  examples. Verified against the statute, neither provision covers that conversion (both govern
  changes between income-producing and *other* purposes), and CRA's position (archived IT-102R2)
  is the opposite: the conversion is *not* a disposition, and inventory converted to capital
  property takes its **inventory value**, not FMV, as capital cost. This content predates the
  2026-05-28 audit and was missed by both prior passes.
- **One HIGH**: `Capital-Cost-Allowance.md` states a general anti-replacement rule — "no terminal
  loss if replacement property of the same class is acquired within 24 months" — that does not
  exist. The real s.20(16.1)(b) is a narrow rule for former property deemed owned under
  s.13(4.3)(a)/(b) (similar property at the same fixed place). A reader could forgo a legitimate
  terminal loss.
- **Ten MEDIUM**: a cluster of ITA s.10 subsection mis-attributions on the inventory pages; the
  write-down recovery mechanism attributed to s.10(2) and mis-timed "at sale"; ETA s.206 (capital
  *real* property) cited for capital-personal-property change-of-use ITC adjustments on three
  pages; the retired Form B3 presented as the current import-accounting document (CARM replaced it
  in October 2024); an available-for-use statement that misplaces the rolling-rule time point and
  omits the buildings limb; Class 12 software wrongly called exempt from the half-year rule; a
  stale `$30`/`$150` ITC citation gloss that survived the prior fix (the 2026-05-29 follow-up's
  repo-wide grep claim missed it); a false banker's-rounding claim on the new rounding page;
  `Ledger-And-Accounts.md` absent from the README index; and three section anchors broken by a
  heading tag added after the follow-up.
- **Nine LOW**: worked-example rounding drift, two inconsistent decay-tail figures, grammar and
  style nits, a mislabelled "election", and a wrong slip pointer.
- **What held up**: all 17 substantive fixes from the 2026-05-28 cycle (except the one citation
  gloss above); every 2026 figure on the new Owner-Corporation page (73¢/67¢ allowance, 34¢
  operating benefit, $39,000 Class 10.1 cap) against the 2026-01-14 Finance announcement; the
  standby-charge and per-kilometre worked examples to the dollar; and the signed-off Topics pages,
  which are clean apart from one single-word spelling inconsistency.

---

## Disposition of the prior audits

All findings from the 2026-05-28 audit and its 2026-05-29 follow-up were re-traced to the current
source. Seventeen of eighteen remain fully resolved; one fix was incomplete:

| Prior finding | Status in current source |
|---|---|
| CCA-1 AIIP superseded phase-out (CRITICAL) | holds — reinstatement narrative, Glossary entry, and both enhanced-deduction examples intact (`Capital-Cost-Allowance.md:11/:123-132`, `Glossary.md:11`) |
| CCA-2 wrong GIFI fixed-asset codes | holds — repo-wide grep finds no `1770`/`1780`/`1880-series`; corrected codes at `Capital-Cost-Allowance.md:268`, `Cost-Recovery.md:233` |
| CCA-3 Class 13 half-year contradiction | holds — `:56` states the Reg 1100(2) exemption with the Schedule III first-year limit |
| CCA-4 s.13(2) gloss; DIEP proration scope | holds — `:438`, `:134`, `:215` |
| HST-1 ITC documentary thresholds | **body holds; fix incomplete** — `:157-159` use `$100`/`$500`, but the Citations gloss at `HST.md:457` still reads "the $30 and $150 thresholds". The 2026-05-29 follow-up recorded this line as fixed and its repo-wide grep claim ("no stale thresholds left behind") was wrong on this one line. Re-flagged as HST-4 below |
| HST-2 capital-property ITC proration | holds — `:166` states the s.199 all-or-nothing test |
| HST-3 Memorandum 14 mismatch | holds — no reference remains |
| CR-1 wrong folio S4-F8-C1 (three pages) | holds — grep finds zero references |
| CR-2 CCA folio for inventory FMV | holds — `Inventory-And-COGS.md:96` points to IT-473R |
| CR-3 Reg 1801 vs s.10(2.1) | holds — method change on s.10(2.1) (`:23/:102/:437`), Reg 1801 kept for FMV valuation (`:78/:103/:444`) |
| FC-1 settlement-date contradiction | holds — trade-date throughout; grep clean |
| SD-1 Part III.1 30% trigger | holds — `Shareholder-Dividends.md:626` carries the para (c) GRIP/LRIP trigger and the election-unavailable note |
| SD-2 s.84(4.1) → s.84(4) | holds — grep finds no `s.84(4.1)` |
| EN-1 T2 form-location hedge | holds — `ERDTOH-NERDTOH.md:131` |
| R-1 heading tags (mis-finding, reverted) | holds — all tags intact, including new `\[done]`/`\[wip]` tags the maintainer added during review; none flagged this pass |
| R-2 Ontario 2026 budget flag | holds — forward references at `Tax-Integration.md:74` and `Small-Business-Tax-Overview.md:220` resolve to `Shareholder-Dividends.md#worked-examples` |
| Glossary AIIP entry | holds |
| GL-1 Glossary missing-link intro | holds — "where one exists" intro |

Regression baseline: the capital-gains-inclusion-rate cancellation sentence, the BoC 16:30 ET
convention and noon-rate discontinuation, the `$100`/`$500` body thresholds, the 2026 vehicle caps
($39,000 / $61,000), and the Nova Scotia 14% rate all remain correct. The Ontario 2026 budget
measures are still correctly framed as proposed: Bill 97 was introduced 2026-03-26 and is treated
as substantively enacted for financial reporting, but Royal Assent could not be confirmed as of
this audit (the `Shareholder-Dividends.md:653` TODO already watches for enactment).

One process note: the CRITICAL below (CR-4) sits in text that existed at the 2026-05-28 pass
(verified against commit `8f7d555`); both prior passes traversed the section without checking
s.45/s.13(7) against the conversion they were cited for.

---

## Repo-wide findings

### [MEDIUM] R-3 `Ledger-And-Accounts.md` is not in the README index

`guide/Ledger-And-Accounts.md` (STATUS: WORK IN PROGRESS, added 2026-05-31) appears nowhere in
`README.md` — the *Work in progress* section (`README.md:40-43`) lists only `Payment.md`.
AGENTS.md requires the index to stay current when a topic is added, and the prior audits' "no
orphans" check is now violated. Add the entry under *Work in progress*.

### [MEDIUM] R-4 Three anchors broken by the `\[done]` tag on the Acquisition-cost heading

`Cost-Recovery.md:163` reads `## Acquisition cost: what gets capitalized \[done]`. The tag was
added in commit `55d95ab` (2026-05-29, after the follow-up), which changes the GitHub-rendered
anchor to `#acquisition-cost-what-gets-capitalized-done`. Three links still point at the old
anchor and now land at the top of the page instead of the section:

- `Cost-Recovery.md:55` (self-link from "Inventory versus materials")
- `Capital-Cost-Allowance.md:166`
- `Inventory-And-COGS.md:116`

The tag is the maintainer's intentional annotation and must stay (AGENTS.md); fix the three links
to the tagged anchor instead. A scripted check of every other anchor in the repo found no other
mismatch — the remaining tagged headings are not link targets.

---

## Cost-Recovery.md / Inventory-And-COGS.md / Materials-And-CIP.md

### [CRITICAL] CR-4 Inventory↔fixed-asset conversion is grounded on the wrong provisions and the wrong mechanics

Three pages state that moving property between the inventory and depreciable-property channels is
a deemed disposition at fair market value under s.45 / s.13(7):

- `Cost-Recovery.md:16` (TLDR): "A *change in use* later can move a property between channels at fair market value"
- `Cost-Recovery.md:211-226`: "Property can move between channels when the corp's purpose changes
  after acquisition (ITA s.45, s.13(7)): Deemed disposition is at *fair market value* … *Inventory
  → fixed asset*: the FMV-vs-cost difference is realized in inventory; *Fixed asset → inventory*:
  recapture (s.13(1)) or terminal loss (s.20(16)) can trigger on the source CCA class", plus three
  worked examples ("a saw off the resale shelf … inventory → Class 8 fixed asset at FMV")
- `Materials-And-CIP.md:58-62`: the $1,200 saw "is a *change in use* event under s.45 / s.13(7) …
  transfers the unit's cost from inventory to a Class 8 fixed asset at fair market value"
- `Inventory-And-COGS.md:62-65`: "The deemed-disposition rules in s.45 / s.13(7) apply and trigger
  a transfer between inventory and a CCA class at fair market value"
- Supporting citation entries: `Cost-Recovery.md:284` and `Inventory-And-COGS.md:440` gloss s.45
  as "change-of-use rules" in this context

Verified against the statute text: **s.45(1)** deems a disposition only where use changes between
gaining or producing income and "some other purpose" (personal use being the standard case), and
**s.13(7)(a)/(b)** does the same for depreciable property. Inventory and business fixed assets are
both income-producing uses, so neither provision applies to a conversion between them. CRA's
administrative position — archived **IT-102R2, "Conversion of property, other than real property,
from or to inventory"** — says the opposite of the pages:

- Inventory → capital property: "its capital cost for all purposes of the Act will be its
  **inventory value** at that time" — no FMV step-up, no gain "realized in inventory" at conversion
- Capital property → inventory: "the action of conversion does not constitute a disposition within
  the meaning of paragraphs 13(21)(c) and 54(c)" — no recapture or terminal loss triggers at
  conversion; the gain accrued to the conversion date is determined notionally (ACB vs FMV at that
  date) and recognized only on the actual sale, with the post-conversion income gain measured from
  an opening inventory value equal to FMV at conversion

Effect: a reader following these pages would recognize taxable income on a conversion that
triggers none, and would claim CCA on an FMV base that CRA would reduce to the inventory value.
The s.13(7) change-of-use citation is legitimate only for the business↔personal cases the CCA
page already points to. Suggested fix: rewrite the `Cost-Recovery.md` *Change of use* section (and
the two echoes) on the IT-102R2 positions, keep s.45/s.13(7) only for income↔personal-use changes,
and re-point the citation entries. (For real property the parallel position is archived IT-218R;
out of scope for the cluster but worth a pointer if the section is rewritten.)

### [MEDIUM] CR-5 Four ITA s.10 subsections attributed to the wrong rules

Verified against the full text of s.10 (all subsections fetched):

- "commodity-pool inventories (s.10(6))" — `Inventory-And-COGS.md:21` and `:411`. **s.10(6) is the
  artistic-endeavour nil-valuation election** (and is available only to an individual, doubly
  inapplicable to a CCPC). No s.10 subsection covers commodity pools; FMV valuation of all
  inventory is the Regulation 1801 option the page already cites
- "service-business work-in-process under s.10(5)(a)/(11)" — `Inventory-And-COGS.md:22`;
  "professional WIP has its own rules under s.10(11)" — `:404`; "Service-business work-in-process
  (s.10(11))" — `Cost-Recovery.md:21`. **s.10(11) is a loss-restriction-event rule** (deeming an
  adventure business carried on for ss.88(1.1)/111(5) purposes). The s.10(5)(a) half of the cite
  is correct (WIP of a profession is inventory); s.10(4)(a) supplies the FMV meaning. Drop the
  "(11)"
- "dealer-in-securities inventory under s.10(15)" — `Inventory-And-COGS.md:411`. **s.10(15) deems
  derivatives (swaps, forwards, futures, options) *not* to be inventory**; it has nothing to do
  with securities dealers (mark-to-market for dealers lives in s.142.5)
- "the art-business … special inventory rules (s.10(1.1), Reg 1802)" — `Inventory-And-COGS.md:414`.
  **s.10(1.1) adds certain land carrying costs (s.18(2)) to inventory cost**; the artistic rule is
  s.10(6). Reg 1802 (farm inventory) is correctly cited

All four sit in Limitations/Out-of-scope lines, so no walkthrough is wrong, but each points a
reader at an unrelated provision.

### [MEDIUM] CR-6 Write-down recovery: wrong provision, and one wrong trigger

Five places attribute the recovery of a prior LCM write-down to s.10(2):
`Cost-Recovery.md:246` ("write-downs (s.10(1)) and recoveries (s.10(2))"),
`Inventory-And-COGS.md:97`, `:261`, `:357`, and the Citations gloss at `:436` ("method consistency
requirement; recovery of prior write-down if FMV recovers"). Verified verbatim, **s.10(2) is only
the continuity rule** ("the inventory at the commencement of the year shall be valued at the same
amount as … the end of the preceding taxation year"). The recovery arises from re-applying
s.10(1) at the next year-end: "cost" stays the original cost, so a recovered FMV lifts the
valuation back up to (at most) cost. No subsection needs to be cited beyond s.10(1)+(2) working
together; the current gloss assigns the mechanism to the wrong one.

Compounding it, `Inventory-And-COGS.md:357` frames the reversal as happening at sale: "If FMV at
the time of sale had been $50 … the corp would *reverse* prior write-down up to $43.33 … per
s.10(2)". A reversal is a *year-end valuation* event for inventory still on hand; units sold
simply carry their written-down cost into COGS, whatever FMV did in the meantime. Rewrite the
conditional around a year-end revaluation of held units.

### [MEDIUM] CR-7 ETA s.206 cited for capital personal property change-of-use ITC adjustments

- `Cost-Recovery.md:226`: "deemed ITC adjustment under ETA s.206 when business-use proportion
  crosses 50% on capital property"
- `Materials-And-CIP.md:62`: "the HST-side adjustment under ETA s.206"
- `HST.md:176`: "a deemed ITC adjustment under ETA s.206 (proportional claw-back … proportional
  grant …)"; `HST.md:258-260` ("A change in use (s.206) …"); Citations `HST.md:441` ("change-in-use
  deemed ITC adjustments on capital property")

Verified against the ETA: **s.206 governs capital *real* property** (its provisions are
"Beginning/Increasing/Ceasing/Reducing use in commercial activities" of real property). For a
corporation's capital *personal* property — the vehicles and computers these passages are about —
the change-of-use rules are **s.199(3)** (deemed acquisition with ITC on starting to use the
property primarily in commercial activities) and **s.200(2)** (deemed sale on ceasing). The
"proportional to the residual fair-market value" description at `HST.md:259-260` is an acceptable
gloss of *basic tax content*, so the mechanics text can stay; re-point the section references and
distinguish real property (where s.206 and the 10%–90% proration genuinely apply). Note: the
2026-05-28 audit listed s.206 among verified citations; that verification was correct only for the
real-property reading, not for the personal-property context the pages use it in.

### [MEDIUM] CR-8 Import accounting still described on Form B3, retired by CARM in October 2024

- `Inventory-And-COGS.md:148`: "Self-assessed and paid to Canada Border Services on Form B3 at the
  point of import"
- `HST.md:236-237`: "Collected by *Canada Border Services Agency* (CBSA) at the point of import on
  Form *B3 Canada Customs Coding Form* … the CBSA *Customs Coding Document* (the B3-1 receipted
  copy) is the documentary support"; `HST.md:246`: "this is the CAD figure on the B3"

On 2024-10-21 the CBSA Assessment and Revenue Management (CARM) system became the system of
record for commercial imports; the B3 (and B2 adjustment) were replaced by the **Commercial
Accounting Declaration (CAD)** (CBSA Customs Notice 24-29; broker guidance confirms the CAD is
now the accounting and documentary-support document). For a 2026 reader the B3 instructions are
stale. Update the form names (the duty-paid-value and ITC mechanics are unchanged).

### [MEDIUM] CR-9 Available-for-use rolling rule: wrong time point, and the buildings limb is missing

Verified against s.13(27)/(28):

- The non-building rolling rule is stated as "the end of the second tax year after acquisition"
  on three pages (`Cost-Recovery.md:199`, `Capital-Cost-Allowance.md:144`,
  `Materials-And-CIP.md:54`). s.13(27)(b) deems availability "immediately after the **beginning**
  of the first taxation year … that begins more than 357 days after the end of the taxation year
  … in which the property was acquired" — the start of that second following year, not its end.
  The first CCA claim lands in the same year either way, which is why this is not rated higher,
  but the stated time point is wrong
- The buildings lists (`Cost-Recovery.md:201-203`, `Capital-Cost-Allowance.md:146-148`) present
  s.13(28) as "the earliest of" two limbs (substantially-all use; construction substantially
  complete) and omit **s.13(28)(c)** — buildings get the same 357-day rolling rule. A reader with
  a multi-year build would conclude no CCA can start until completion, when the deeming rule may
  start it earlier

### [LOW] CR-10 Example 1 write-down leaves the pool 30 cents above the stated FMV floor

`Inventory-And-COGS.md:336-343`: the shrinkage line uses 2 × $43.33 = $86.66 (exact figure
$86.67), and the write-down 88 × ($43.33 − $30.00) = $1,173.04 leaves "Pool after write-down: 88
units, total cost $2,640.30, 'average' $30.00" — but 88 × $30.00 = $2,640.00, and year 2 (`:356`)
then uses $2,640. LCM writes the SKU *to* FMV, so the cleaner construction is write-down = pool −
(88 × $30.00) = $1,173.34, closing inventory $2,640.00 at `:349`, COGS $10,160.00 at `:350`. As
printed, the Schedule 125 section and the year-2 text disagree by $0.30.

### [LOW] CR-11 "either terms", and a too-broad claim about CRA vocabulary

`Cost-Recovery.md:76`: "the CRA doesn't use either terms, instead referring to the mechanism as
*CCA*" — grammar ("either term"), and overbroad: GIFI line 8670, used at `:234` of the same page,
is literally named "Amortization of tangible assets". Scope the claim to the T2 deduction
mechanism.

### [LOW] CR-12 Shareholder appropriation pointed at the wrong slips

`Inventory-And-COGS.md:399`: "add the benefit to the shareholder's T4 / T5 reporting". A s.15(1)
benefit conferred qua shareholder is reported on a **T4A** (box 117 for loan benefits, box 283
for other shareholder benefits), or on a T4 only when conferred qua employee; a T5 carries
investment income and is wrong here. The s.69/s.15 substance of the bullet is correct.

---

## Capital-Cost-Allowance.md

### [HIGH] CCA-5 A general 24-month anti-replacement terminal-loss rule that does not exist

`Capital-Cost-Allowance.md:195`:

> Anti-replacement rule (s.20(16.1)(b)): no terminal loss if replacement property of the same
> class is acquired within 24 months.

s.20(16.1) was fetched verbatim. Paragraph (b) denies the terminal loss only "in respect of a
property that was a **former property deemed by paragraph 13(4.3)(a) or (b)** to be owned by the
taxpayer", where a *similar* property is acquired within 24 months "in respect of the **same fixed
place**" and is still owned at year-end — a narrow rule tied to the s.13(4)/(4.2) former-property
elections (franchises, concessions, licences), not a general same-class rule. As written, a corp
that sells its only Class 8 asset in year 1 (legitimate terminal loss) and buys a replacement in
year 2 would wrongly believe the loss is denied and overpay. The Citations entry at `:442`
("terminal-loss exceptions (Class 10.1, replacement property, Class 14.1 unless cessation)")
inherits the over-generalization. Either describe the (b) rule accurately in one clause or drop it
as out of scope; the in-year case is already handled by the class-must-be-empty condition.

### [MEDIUM] CCA-6 Class 12 computer software is subject to the half-year rule, not exempt

`Capital-Cost-Allowance.md:292`: "a $200 perpetual licence for an IDE → Class 12 (100%; **most
Class 12 software is exempt from the half-year rule**)". Verified against Regulation 1100(2):
element F excludes from the half-year adjustment only Class 12 property in paragraphs (a)–(c),
(e)–(i), (k), (l), and (p)–(s) — leaving **(d) dies/jigs/patterns/moulds/lasts, (j) the cutting or
shaping part of a machine, (m)/(n) films, and (o) computer software** subject to it. CRA guidance
states the same list. So Class 12 application software gets a half-year first year (50%, not
100%) outside the AIIP window; under the reinstated AIIP (2025–2029 in-service) the half-year
suspension makes the example's outcome right for 2026, which is why this is not rated higher. The
list at `:55` ("the half-year rule does apply to dies, jigs, moulds, and the cutting or shaping
part of a machine") should add software (and the film items) for the same reason. Suggested fix:
correct `:292` and complete `:55`.

### [LOW] CCA-7 Example 2's long-tail figures contradict the example's own schedule

`Capital-Cost-Allowance.md:367`: "After 5 years of full-rate CCA, ~$590 of UCC remains; after 10
years, ~$193". Those figures are $1,800 × 0.8⁵ = $589.82 and $1,800 × 0.8¹⁰ = $193.27 — a path
with no half-year first year, contradicting the example's own year-1 closing of $1,620. On the
example's schedule the comparable balances are $1,620 × 0.8⁴ = $663.55 (year 5) and $1,620 × 0.8⁹
= $217.43 (year 10). Recompute (or rebase the sentence explicitly on the pre-half-year $1,800).

### [LOW] CCA-8 Regulation 1101(1af) is automatic, not an election

`Capital-Cost-Allowance.md:452`: "Regulation 1101(1af) - separate-class **election** for Class
10.1". Verified verbatim: "A separate class is hereby prescribed for each property included in
Class 10.1" — mandatory, no election language (contrast 1101(5b.1) on the next line, which is
elective). Reword to "separate class prescribed for each Class 10.1 vehicle".

### [LOW] CCA-9 Heading "Edge cases worth a short note"

`Capital-Cost-Allowance.md:413`. Not a noun phrase, and hedge phrasing the style guide avoids;
`Inventory-And-COGS.md` uses plain `## Edge cases`. Rename to match.

---

## HST.md

### [MEDIUM] HST-4 Stale `$30`/`$150` citation gloss (incomplete HST-1 fix)

`HST.md:457`:

> *Input Tax Credit Information (GST/HST) Regulations* (SOR/91-45) - prescribed documentary
> requirements at the $30 and $150 thresholds

The body (`:157-159`) was corrected to the `$100`/`$500` bands in the 2026-05-28 cycle, but this
Citations gloss kept the pre-Budget-2021 thresholds and now contradicts the page it cites for.
Verified that the line is unchanged since before the audit-fix commit (`6b0afb5`); the 2026-05-29
follow-up's disposition entry and repo-wide grep claim were wrong about it. Change to "$100 and
$500 thresholds".

(The s.206 occurrences on this page are covered under CR-7.)

---

## Whole-Dollar-Rounding.md

### [MEDIUM] WDR-1 The banker's-rounding example is false

`Whole-Dollar-Rounding.md:51`:

> banker's rounding (round half to even) shows up only in narrow places such as the annual
> indexation of tax brackets

Verified against ITA s.117.1(3): indexed amounts are "rounded to the nearest multiple of one
dollar or, where it is equidistant from two such consecutive multiples, to the **higher**
thereof" — round half up, the same convention the rest of the page describes. No banker's
rounding is involved in bracket indexation; no place in the ITA where it applies was found. Drop
the example (or the whole clause): the sentence's point — round half up, banker's rounding does
not apply here — survives without it.

### [LOW] WDR-2 Two blank lines between the STATUS marker and the title

`Whole-Dollar-Rounding.md:1-4`. AGENTS.md specifies marker, one blank line, then the `# Title`
(canonical shape in `Shareholder-Dividends.md`). Remove one blank line.

---

## Glossary.md

### [LOW] GL-2 "FMV … sets the write-down ceiling" is confusing

`Glossary.md:24`: "sets the write-down ceiling in the lower-of-cost-or-market inventory test".
Items are written *down to* FMV when it falls below cost — FMV is the target (the cap on the
carrying value), and "write-down ceiling" invites the reading that FMV limits the size of the
write-down. Suggested: "the value an item is written down to when it falls below cost in the
lower-of-cost-or-market test". The new LCM, landed-cost, weighted-average, COGS, WIP, and
capitalization-policy entries were checked against the canonical pages and are consistent.

---

## T5008.md

### [LOW] T5-1 "capitalised"

`T5008.md:83`: "they are capitalised into ACB" — the only `-ised` spelling in the repo; every
other page uses "capitalized" (Canadian-English `-ize` is the repo convention). One-word fix on a
signed-off page.

---

## Owner-Corporation-Transactions.md (first audit of this page)

No findings. Verified against the Finance Canada announcement of 2026-01-14: the 2026 tax-exempt
allowance limits are 73¢ / 67¢ (77¢ / 71¢ in the territories — "4¢ higher" as stated), and the
general operating-cost benefit rate stays 34¢/km; the Class 10.1 ceiling of $39,000 was already
verified in the prior cycle. The standby-charge example recomputes exactly (2% × $50,850 × 12 =
$12,204; reduction 8,000 ÷ 20,004 → $4,881; operating 8,000 × 34¢ = $2,720; total $7,601), as
does the allowance example ($3,650 + $4,020 = $7,670) and its s.174 deemed ITC ($7,670 × 13/113 ≈
$882). The s.6(1)(b)(vii.1)/(x)/(xi), s.18(1)(r)/Reg 7306, s.6(2)/6(2.2), ETA s.173/174,
s.67.1/ETA s.236, s.18(1)(l)/ETA s.170(1)(a), s.15(2)/s.80.4(2), and s.46 citations all govern
what the page says they do. The page's own TODO asks the maintainer to verify the 2026 rates —
this audit confirms them, so that TODO item can be closed.

## Whole-Dollar-Rounding.md — beyond the findings

The largest-remainder worked example is correct, and the round-half-up convention matches CRA's
published practice. Two statements could not be verified headlessly and are hedged in-page
(canada.ca 403): the RC4088 `$10,500.75 → 10501` example, and GIFI `3849` as the
retained-earnings absorbing line. The page's Limitations block already directs the reader to
verify RC4088 wording, which is the right posture; a maintainer spot-check closes it.

---

## Content notes beyond the findings

- **Ontario Bill 97**: the 2026 budget bill (tabled 2026-03-26) is substantively enacted for
  financial-reporting purposes but Royal Assent was not confirmable as of this audit. The
  "proposes" framing on three pages remains accurate; the existing
  `Shareholder-Dividends.md:653` TODO covers the watch
- **Glossary gap**: the CIP-cluster terms promised by `Materials-And-CIP.md:347` (CIP,
  available-for-use, capital cost, self-constructed asset, BOM) are still absent from the
  Glossary, which now has the inventory set. Same for the FX terms listed in the
  `Foreign-Currency.md` TODO
- **Inventory tracking spreadsheet**: the `Inventory-And-COGS.md` TODO (perpetual weighted-average
  template parallel to the ACB tracker) remains the highest-value operational addition to the
  cluster
- **Salary/payroll backlog**: unchanged from the prior two audits — the salary-vs-dividend and
  payroll/T4 page remains the biggest net-new topic, with `Payment.md`'s empty "Payroll
  remittance" heading still waiting
- **Verification debt**: the T2 form-location numbers (Page 7 / line 784 / S3 Box 450/500) and
  GST34 line numbers still carry hedges rather than confirmation against current-year forms

---

## What was NOT flagged (traceability)

Candidates checked and deliberately dropped:

- **s.20(16.1) paragraph letters**: `Capital-Cost-Allowance.md:193` citing "(s.20(16.1)(c))" for
  the Class 14.1 cessation exception looked wrong and was checked — it is **correct** (paragraph
  (b) is the former-property rule, (c) is Class 14.1). Only the scope gloss at `:195` is a finding
  (CCA-5)
- **"within one year of the corp's following year-end"** (`Owner-Corporation-Transactions.md:203`)
  parses to the correct s.15(2) deadline (one year after the first year-end following the loan);
  `Shareholder-Dividends.md:58` states it more plainly, but neither is wrong
- **"personal-use property" on the equipment-sale example**
  (`Owner-Corporation-Transactions.md:147-149`): for a tool now "used entirely in the business"
  the PUP label is doctrinally loose, but the stated outcomes (no gain at or below cost; loss
  denied; $1,000 floor; FMV cap under s.69) hold under either characterization for this fact
  pattern, so it was left alone
- **The simplified COGS identity** (`Inventory-And-COGS.md:76/:265` omitting 8340/8360) is
  consistent with the full version at `:284` for the resale-only corp the section addresses
- **Materials-And-CIP arithmetic**: every entry, pool average, transfer, and Schedule 8 row in
  both examples ties out ($11,500 / $575 / $10,925; $6.20/kg; $8,000 base / $1,600 / $9,900), as
  do the CCA Examples 1 and 3 (including the 182-day proration $14.96 and the ~$420 twenty-year
  tail) and the Inventory Example 2 FX loss ($300)
- **Example 1's AIIP counterfactual** (`Materials-And-CIP.md:203`) is hedged in place ("assuming
  standard half-year rule, no AIIP enhancement"); Example 2's fuller note (`:219`) is the better
  pattern but the hedge is not wrong
- **"357-day rule"** label: re-confirmed legitimate (s.13(27)(b)), as in the prior cycle
- **Class 6 vs Class 1 shed classification** (`Materials-And-CIP.md:46`) correctly turns on
  below-ground support; the ~96%-by-year-30 Class 6 tail is right (0.9^29.5 ≈ 4.5% remaining)
- **GIFI usage on the new pages**: 9281 (vehicle expenses), 2780 / 1300 (due to/from
  shareholder), 1740-area equipment, 8910-area rent, 8090/8094/8096/8097, 8210 gloss — all
  consistent with RC4088 usage verified in prior cycles; nothing contradicts a verified code
- **Glossary LCM and landed-cost entries** agree with `Inventory-And-COGS.md` (lower of landed
  cost and FMV)
- **The Google Sheets ACB-tracker URL** (`Adjusted-Cost-Base-Tracking.md:49`) again redirects to a
  sign-in page when fetched headlessly; verify manually in a logged-in browser, as every prior
  audit has noted
- **Ontario rates in the worked examples** are correct for the audit date (the 2.2% cut takes
  effect 2026-07-01 and is flagged on all three pages)

## Status of WIP / pending-review pages

- **Pending review (AI generated)**: `Cost-Recovery.md`, `Inventory-And-COGS.md`,
  `Materials-And-CIP.md`, `Capital-Cost-Allowance.md`, `Foreign-Currency.md`, `HST.md`,
  `ERDTOH-NERDTOH.md`, `Shareholder-Dividends.md`, `Owner-Corporation-Transactions.md`,
  `Glossary.md`, `Whole-Dollar-Rounding.md`. The Cost-Recovery cluster carries this pass's
  CRITICAL and most of the MEDIUMs, which is consistent with it being the actively-rewritten
  area; `Owner-Corporation-Transactions.md` is in unusually good shape for a first-pass page —
  after the 2026-rate confirmation above, its remaining TODO items are GIFI spot-checks and a
  screenshot
- **Work in progress**: `Payment.md` (stub, unchanged) and `Ledger-And-Accounts.md` (outline-only
  stub; needs its README index entry — R-3). Both consistent with their markers
