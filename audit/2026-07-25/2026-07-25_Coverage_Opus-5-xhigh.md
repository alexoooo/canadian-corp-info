# Coverage Review — 2026-07-25 (Opus-5-xhigh)

**Date**: 2026-07-25

**Scope**: every page under `guide/` (71 files, seven thematic groups), read for what is *missing*
rather than what is wrong. Correctness of existing statements is the audit passes' job; this pass
asks whether an owner-manager can run the corporation's whole bookkeeping and tax year from the
guide, in common and uncommon situations alike.

**Method**: five checklists built from structures outside the guide, then ticked against it — the
duty calendar, the T2 schedule set and form/election set, the bookkeeping close cycle, the RC4088
account map, and four business archetypes. A per-page depth check compared each page's own
"Who this is for" and TLDR promises against what its sections deliver. Nothing was called missing on
a bare grep: every candidate was grepped, then the hits were context-read. Every asserted
*obligation* was pulled from its primary source before the finding was written — `laws-lois` for the
ITA, the Regulations, the ETA, and the CBCA; the bare-trust status through firm publications
corroborated against the amended ITA s.150 text, because that rule has been deferred repeatedly and
memory is not a source for it.

**Boundary stance**: the "Deliberately Out of Scope" list in
[Further-Reading](../../guide/Overview/Further-Reading.md) is respected. Topics outside it are
logged under [Boundary candidates](#boundary-candidates) as observations, not ranked among the gaps;
their placement recommendation is a `Further-Reading.md` entry, not a page.

**Archetypes tested**: consulting/services with a corporate investment account; goods
(e-commerce, retail, import); trades and construction; property, employees, and multi-corp.


## Severity legend

- **CRITICAL** — factual error in tax/bookkeeping rules, or load-bearing instruction that will mislead a CCPC owner.
- **HIGH** — material clarity or consistency defect, or an in-scope concept the page promises to cover but doesn't.
- **MEDIUM** — improves accuracy or readability but not load-bearing.
- **LOW** — spelling, hyphenation, comma splices, single-word style.

A coverage review produces gaps rather than defects, so findings below carry tier and placement
instead of severity. The legend is reproduced because the cycle's later passes score against it.


## Progress tracker

- [x] Orientation: README, AGENTS.md, Audit-Instructions, the 2026-07-01 Coverage Review, Further-Reading
- [x] Heading outlines and TODO sections collected across all 71 pages
- [x] Frame A — duty calendar: filings, remittances, slips, elections, registry obligations
- [x] Frame B — forms and schedules: T2 jacket and schedule set, GST/HST forms, election set
- [x] Frame C — bookkeeping close cycle: source documents through GIFI to the T2
- [x] Frame D — transaction taxonomy: RC4088 account clusters against the chart of accounts
- [x] Frame E — four archetype walkthroughs
- [x] Depth check: promise-versus-delivery per page, and page shape
- [x] Disposition of the 2026-07-01 Coverage Review
- [x] Primary-source verification of every asserted obligation
- [x] Synthesis, ranking, placement plan


## TL;DR

- **15 missing topics**, ranked in three tiers: 4 Tier 1 (recurring duty, no owning page), 6 Tier 2
  (common but episodic), 5 Tier 3 (less common and real)
- **7 thin items** that extend existing pages rather than warranting new ones
- **6 boundary candidates** outside the declared scope, logged only
- The 2026-07-01 review's findings all landed: 14 of 14 topics now have pages or sections. Two of its
  "thin" items are still open and are re-raised here; one (GIC anniversary accrual) it left as
  "verify, then add if absent" — confirmed absent
- The dominant pattern this pass: **the guide teaches the entries but not the routine**. Every
  individual reconciliation is covered somewhere — broker to ledger, HST control, inventory count —
  yet nothing sequences them into a period close, and the most basic one, the bank reconciliation, is
  absent entirely
- The second pattern: **accounts exist without treatments**. `1484` prepaid expenses and `8242`
  subsidies and grants sit in the chart of accounts with no page working what they mean
- Both remuneration channels now have full page trees, but the decision between them is still a
  declared limitation on the hub — the most-asked owner-manager question in the guide's own audience
- One finding is time-sensitive: bare-trust reporting resumes for tax years ending on or after
  2026-12-31, first returns due 2027-03-31, and it reaches exactly the co-ownership arrangement
  [Rental and Property Income](../../guide/Operations/Rental-And-Property-Income.md) already works


## Disposition of the 2026-07-01 Coverage Review

Each finding traced to the page or section that answers it, not assumed from the prior document's
own claim that its findings were drafted.

| Prior finding | Landed as | Status |
|---|---|---|
| 1. Payroll and the T4 channel | `Paying-Yourself/Payroll.md` — RP account, source deductions, PD7A, pay-run entries, T4/T4 Summary, owner-manager remuneration, bonus accrual with s.78(4) | landed |
| 2. T1135 | `Investments/T1135.md` — obligation, SFP definition, cost-amount test, reporting methods, worked example, penalties | landed |
| 3. Loss years, operationally | `Filing-And-CRA/Losses.md` — S4 continuity, carryback, carryforward, worked example | landed |
| 4. CRA administration lifecycle | `Filing-And-CRA/CRA-Administration.md` — assessment cycle, booking the tax cycle, reassessment clock, reviews, amending, objections, relief | landed |
| 5. Books-and-records retention | `CRA-Administration.md#records-retention` | landed |
| 6. Starting up | `Corporate-Lifecycle/Starting-Up.md` — BN and program accounts, year-end choice, funding, pre-incorporation costs, bringing in assets, first-year clocks | landed |
| 7. Winding down | `Corporate-Lifecycle/Winding-Down.md` — sequence, asset disposal, RT closure, pool sweep, final distribution, final T2 and dissolution | landed |
| 8. Receivables and bad debts | `Operations/Receivables-And-Bad-Debts.md` | landed |
| 9. Deferred revenue | `Operations/Deferred-Revenue.md` | landed |
| 10. Charitable donations | `Operations/Donations.md` | landed |
| 11. Debt and financing | `Operations/Debt-And-Financing.md` | landed |
| 12. Capital-vs-income character | `Investments/Capital-Vs-Income-Character.md` | landed |
| 13. Employee benefits | `Owner-Corporation-Transactions.md#employee-benefits` | landed |
| 14. Rental and property income | `Operations/Rental-And-Property-Income.md` | landed |
| Thin: CDA life-insurance credit | moved to `Further-Reading.md` "Touched on but not worked through" | open by design |
| Thin: T2 assembly view | `Filing-And-CRA/T2-Schedules.md` | landed |
| Thin: unified Schedule 1 | `Further-Reading.md` entry; per-topic coverage unchanged | open by design |
| Thin: instalment computation | `Further-Reading.md` entry; `Payment.md` gained the bases in outline | partly open — see X-1 |
| Thin: GIC anniversary accrual | nothing; s.12(4)/s.12(11) appear nowhere in `guide/` | **confirmed absent** — see X-3 |
| Thin: UHT applicability | `Further-Reading.md` "Not covered but potentially relevant" | logged as intended |
| Thin: Payment page | still the least-developed page | open — see X-1 |
| Housekeeping: AGENTS.md architecture list | stub labels corrected; the list still omits most pages added since | partly open |

The prior review's Tier 1–3 work is genuinely complete. Its own summary line in `Further-Reading.md`
("The review's Tier 1–3 findings are otherwise all drafted as their own pages") checks out.


## Findings: missing topics

Ranked by how often an owner-manager meets the topic. "Missing" means no page or section works it
through; passing mentions are named where they exist.

### Tier 1 — recurring duty with no owning page

#### G-1 The period close and the bank reconciliation

The guide covers every reconciliation except the one every business does monthly. Broker-to-ledger
matching is worked on [T3](../../guide/Investments/T3/T3.md#matching-ledger-vs-brokerage-account),
the HST control accounts on
[HST Bookkeeping](../../guide/Operations/HST/HST-Bookkeeping.md#bookkeeping-accounts), the inventory
count on
[Inventory and COGS](../../guide/Operations/Cost-Recovery/Inventory-And-COGS.md#year-end-reconciliation),
and slip-season tie-out on [Investments](../../guide/Investments/Investments.md). "Bank
reconciliation" appears nowhere in `guide/`; "credit card" appears once, in a foreign-currency aside.

Nothing sequences the close either. The retained-earnings identity is stated —
`3660` Start + `3680` Net income − `3700` Dividends = `3849` End at
[Ledger and Accounts](../../guide/Bookkeeping/Ledger-And-Accounts.md) — but the *procedure* that
produces those figures is not: which adjusting entries to post and in what order, how the trial
balance is proved, how the year is closed and the opening balances carried forward. A reader who has
absorbed debits and credits still does not know what to do on the first of the month or the day after
year-end.

- *Placement*: new page `guide/Bookkeeping/Period-Close.md`, indexed under **Bookkeeping** after
  `Ledger-And-Accounts.md`
- *Must cover*: the monthly loop (bank and credit-card reconciliation, reconciling items —
  outstanding cheques, deposits in transit, unbooked fees — and what a persistent difference means);
  the year-end adjusting set (accruals, prepaids, amortization, FX retranslation, inventory,
  tax provision) with a pointer to the page owning each; proving the trial balance; closing to
  retained earnings; carrying opening balances forward; and a checklist a reader can work down
- *Cross-links*: `Ledger-And-Accounts.md` (plugs and suspense accounts already anticipate this page),
  `Whole-Dollar-Rounding.md`, `Inventory-And-COGS.md`, `HST-Bookkeeping.md`, `CCA-Tracking.md`,
  `Investments.md`

#### G-2 The salary-versus-dividend decision, worked

Both channels now have full trees: [Payroll](../../guide/Paying-Yourself/Payroll.md) and the
[Dividends](../../guide/Paying-Yourself/Dividends/Dividends.md) hub with five sub-pages. The choice
between them remains a declared limitation on the hub —
[Paying Yourself](../../guide/Paying-Yourself/Paying-Yourself.md) states "The full
salary-versus-dividend optimization (CPP, RRSP, WSIB, income splitting) is touched on but not worked
through", and [Tax Integration](../../guide/Overview/Tax-Integration.md) and `Dividends.md` defer it
in the same terms.

This is not on the out-of-scope list, and it is the question the guide's own audience asks first.
Integration explains why the two land in roughly the same place; what a reader needs is the
*secondary* arithmetic that decides it in a specific year.

- *Placement*: a `## Choosing Between Salary and Dividends` section on
  `guide/Paying-Yourself/Paying-Yourself.md`, or a sibling page
  `guide/Paying-Yourself/Salary-Vs-Dividends.md` if it outgrows a section
- *Must cover*: a worked comparison at two or three income levels, each showing corporate deduction
  versus after-tax pool, personal tax, the CPP contribution as cost and as entitlement, RRSP room
  created, and the effect on the SBD and on AAII; the cases that decide it outright (income already
  at the business limit, an AAII grind in progress, a year with no GRIP, a shareholder who needs
  RRSP room); and the fact that the levers combine rather than compete
- *Note*: WSIB and income splitting stay out per the declared boundary; the comparison works without
  them

#### G-3 Prepaid expenses and the s.18(9) deferral

`1484` prepaid expenses sits in the chart of accounts at
[Ledger and Accounts](../../guide/Bookkeeping/Ledger-And-Accounts.md), and prepaids are named in
passing as a non-monetary item on
[FX Rates and Character](../../guide/Bookkeeping/Foreign-Currency/FX-Rates-And-Character.md) and in
the Glossary. No page works them. Yet almost every corporation pays at least one annual premium or
subscription that straddles the year-end, and the deferral is not optional: ITA
[s.18(9)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) denies the deduction for
outlays on services to be rendered after the year-end, on interest, taxes, rent, and royalties for a
later period, and on insurance coverage for a later period, and allocates them to the subsequent year
to which they reasonably relate.

[Expense Classification](../../guide/Bookkeeping/Expense-Classification.md) owns the
capitalize-or-expense decision and stops one step short of this third answer: neither capitalize nor
expense, but defer.

- *Placement*: a `## Prepaid Expenses` section on `guide/Bookkeeping/Expense-Classification.md`,
  immediately after `## Capitalize or Expense`
- *Must cover*: the s.18(9) categories; the entry at payment (Dr `1484`, Cr Cash) and the year-end
  release to expense; the straddle example (a 12-month insurance premium paid two months before
  year-end); the HST treatment, where the ITC follows the tax point rather than the deferral; and
  the contrast with a capital outlay
- *Cross-link*: the new `Period-Close.md` (G-1) lists the prepaid release among the adjusting entries

#### G-4 Paying non-employees: T4A and T5018

The corporation classifies what it pays a contractor — `9110` sub-contracts versus `9060` salaries —
and [Expense Classification](../../guide/Bookkeeping/Expense-Classification.md) notes that "the
distinction drives source-deduction and T4 / T4A obligations". No page then works the T4A: when a
slip is required, which box, the summary, the deadline, or the entries. T4A appears three times in
the whole guide and never as a procedure. T5018 appears zero times.

T5018 is a real annual filing, not an exotic one: Income Tax Regulations
[s.238(2)](https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/section-238.html) requires
an information return for amounts paid or credited for goods or services rendered in the course of
construction activities where the payer's "business income for that reporting period is derived
primarily from those activities", filed within six months after the end of the reporting period. Any
CCPC whose income is primarily construction owes it for every subcontractor it pays.

- *Placement*: new page `guide/Operations/Paying-Contractors.md`, indexed under **Operations**
- *Must cover*: the employee-versus-contractor consequence at the point it bites (the determination
  itself stays a `Further-Reading` pointer to RC4110); when a T4A is required and when it is not; the
  T4A boxes an owner-managed corp actually uses, including box 048 fees for services and box 028
  other income; the T4A Summary and the end-of-February deadline; T5018 with the Reg 238(2) trigger,
  the reporting-period choice, and the six-month deadline; the bookkeeping entries; and the penalty
  exposure for late or missing slips
- *Cross-links*: `Expense-Classification.md` (9110 versus 9060), `Payroll.md` (the T4 channel),
  `Materials-And-CIP.md` (the construction reader who needs T5018), `Further-Reading.md`
  (employee-versus-contractor)

### Tier 2 — common but episodic

#### G-5 Government assistance and grants

`8242` Subsidies and grants sits in the chart of accounts with no page behind it. A small business
meets this through provincial grants, hiring and training subsidies, digital-adoption programs, and
forgivable loans, and the tax treatment is not intuitive: ITA
[s.12(1)(x)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-12.html) includes inducements,
refunds, reimbursements, contributions, allowances, and assistance received in the course of earning
income; ITA [s.13(7.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-13.html) instead
reduces the capital cost of depreciable property acquired with assistance — a grant, subsidy,
forgivable loan, deduction from tax, investment allowance, or any other form of assistance. The same
dollar therefore lands in income, against an expense, or against a CCA pool depending on what it
funded, and the forgivable-loan case turns on when forgiveness occurs.

- *Placement*: new short page `guide/Operations/Government-Assistance.md`, indexed under
  **Operations** near `Debt-And-Financing.md`
- *Must cover*: the three destinations (income inclusion, expense reduction, capital-cost reduction)
  and how to tell which applies; the forgivable-loan timing; the CCA interaction, including a UCC
  worked line; whether the assistance carries HST; and the s.53(2)(k) analogue for non-depreciable
  property — **verify s.53(2)(k) before asserting it; this pass did not**
- *Cross-links*: `Capital-Cost-Allowance.md`, `Expense-Classification.md`, `Debt-And-Financing.md`

#### G-6 Customer refunds, credit notes, and the HST adjustment

The guide works the receivable that never gets paid
([Receivables and Bad Debts](../../guide/Operations/Receivables-And-Bad-Debts.md), including the
ETA s.231 bad-debt adjustment) but not the invoice that gets reduced or reversed: a returned product,
a cancelled engagement, a negotiated discount after billing. ETA
[s.232](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-232.html) governs it — a supplier may
refund or credit tax charged in excess within two years of charging it, or where the consideration is
later reduced, within four years after the end of the reporting period in which the reduction
occurred; the adjustment runs on a credit note carrying prescribed information, which lets the
supplier deduct the amount from net tax in the period the note issues and obliges the recipient to
add it back. "Credit note" appears nowhere in `guide/`.

This is distinct from a bad debt in both entry and provision, which is why the existing page does not
cover it by implication.

- *Placement*: a `## Refunds, Credit Notes, and Adjustments` section on
  `guide/Operations/Receivables-And-Bad-Debts.md`, with a cross-link from `HST-Bookkeeping.md`
- *Must cover*: the contrast with a bad-debt write-off; the credit-note content requirements and the
  two time limits; the entries reversing revenue and HST collected; the deposit-forfeiture case
  already flagged in the `Deferred-Revenue.md` TODO; and what a Quick Method filer does, since the
  remittance was a percentage of tax-included revenue rather than tax actually collected

#### G-7 Associated corporations and the business-limit allocation

The concept is named across ten pages and worked on none. `Small-Business-Tax.md` gives it one bullet
— the $500,000 limit is shared among associated corporations under ITA s.125(3) — and
[T2 Schedules](../../guide/Filing-And-CRA/T2-Schedules.md) names S9 (Related and Associated
Corporations) and S23 (the allocation agreement) in its event-driven table. Neither says when two
corporations *are* associated, nor how the allocation is actually made and filed.

Any owner who incorporates a second company, or whose spouse owns one, is immediately in s.256
territory, and the answer changes the tax on the first $500,000 of active income in both corporations.

- *Placement*: a `## Related and Associated Corporations` section on
  `guide/Corporate-Lifecycle/Corporate-Structure/Corporate-Structure.md`, with the SBD consequence
  cross-linked from `Small-Business-Tax.md#what-is-corporate-tax`
- *Must cover*: the s.256 association tests in the cases a small business hits (common control,
  control by related persons, the third-corporation rules, and the s.256(2) election); the difference
  between *related* and *associated*, since S9 asks for both; how the business limit is allocated and
  what happens without an agreement; the taxable-capital and AAII grinds applying at group level; and
  the mechanics of filing S9 and S23
- *Note*: this is also where the guide's several holdco references stop being orphaned

#### G-8 Annual corporate maintenance

[Corporate Structure](../../guide/Corporate-Lifecycle/Corporate-Structure/Corporate-Structure.md)
describes the minute book as an artifact; nothing describes the annual cycle that fills it. "Annual
resolution" appears nowhere. The registry annual return *is* covered — `Small-Business-Tax.md` gives
the Corporations Canada 60-day and Ontario 6-month deadlines and the administrative-dissolution
consequence — but that is one item of several.

The register of individuals with significant control is now a live federal duty and is absent
entirely: CBCA [s.21.1](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-21.1.html) requires the
register, and CBCA [s.21.21](https://laws-lois.justice.gc.ca/eng/acts/C-44/section-21.21.html)
requires the corporation to send the Director the determined information annually and within 15 days
after recording a change. A single-shareholder corporation is not exempt; the exemptions run to
reporting issuers and listed corporations.

- *Placement*: a `## Annual Corporate Maintenance` section on `Corporate-Structure.md`
- *Must cover*: the yearly resolutions (shareholders approving financial statements, electing
  directors, appointing officers, and the unanimous resolution dispensing with an auditor); dividend
  and bonus resolutions with a pointer to `Declaring-And-Paying.md`; the ISC register contents and
  the CBCA s.21.21 filing rhythm; registry annual returns cross-linked rather than restated; and
  keeping the registers current when addresses, directors, or shareholdings change
- *Verify first*: the Ontario equivalent of the ISC register (OBCA s.140.2) — Ontario statutes are
  not on `laws-lois` and this pass did not confirm whether Ontario requires a filing or only a
  register

#### G-9 Changing the fiscal year-end

[Starting Up](../../guide/Corporate-Lifecycle/Starting-Up.md#choosing-the-fiscal-year-end) works the
initial choice well. Changing it later is a different question with a different answer, and the guide
does not answer it: ITA
[s.249.1(7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-249.1.html) provides that "no
change in the time when a fiscal period ends may be made for the purposes of this Act without the
concurrence of the Minister." A reader who picked a year-end at incorporation and now wants it to
match a seasonal cycle, a new HST reporting period, or a buyer's year-end will look for this.

- *Placement*: a subsection under `Starting-Up.md#choosing-the-fiscal-year-end`, or a short section
  on `CRA-Administration.md` if it fits the request-to-CRA framing better
- *Must cover*: the s.249.1(7) concurrence requirement and how the request is made; what CRA
  generally accepts and what it treats as a tax-motivated change; the resulting short tax year and
  its knock-ons (prorated business limit, prorated CCA, shifted balance-due and filing dates,
  instalment recalculation); and the separate GST/HST reporting-period consequence

#### G-10 Director liability for source deductions and HST

The guide tells the owner they are a director
([Corporate Structure](../../guide/Corporate-Lifecycle/Corporate-Structure/Corporate-Structure.md)
covers the three roles) and that the corporation is a separate person, but the largest personal
exposure attached to that role appears only once, in the wind-up context. ITA
[s.227.1](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-227.1.html) makes directors jointly
and severally liable for amounts the corporation failed to withhold or remit, and ETA
[s.323](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-323.html) does the same for net tax.
Both run through the same three preconditions (an unsatisfied Federal Court execution, or a proven
claim within six months of liquidation, dissolution, or bankruptcy), both offer the due-diligence
defence, and both are barred two years after the person ceases to be a director.

This reframes the payroll and HST remittance deadlines from administrative to personal, which is
exactly the point an owner-manager should understand before a cash-flow squeeze.

- *Placement*: a `## Director Liability` section on
  `guide/Filing-And-CRA/CRA-Administration.md`, after `## Interest and Penalties`
- *Must cover*: what is covered (withholdings and net tax, not corporate income tax); the three
  preconditions; the due-diligence defence and what evidences it; the two-year limitation and the
  trap in resigning; and the deemed-trust framing already used for HST at `HST.md` (ETA s.222)
- *Cross-links*: `Payroll.md`, `HST-Bookkeeping.md`, `Winding-Down.md`

### Tier 3 — less common and real

#### G-11 Bare-trust reporting on co-owned property

Time-sensitive. ITA [s.150(1.3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-150.html)
deems an arrangement to be a trust where a legal owner holds property for a beneficiary and acts as
agent, and s.150(1.31)(a) carves out arrangements in which the beneficiaries and the legal owners are
the same persons. The Act on `laws-lois` carries amendments through 2026, c. 3 (Bill C-15, Royal
Assent 2026-03-26) and is current to 2026-06-14. Bare trusts were relieved from filing for 2023
through 2025; certain of them file for tax years ending on or after 2026-12-31, with the first
returns due 2027-03-31.

[Rental and Property Income](../../guide/Operations/Rental-And-Property-Income.md#co-owned-and-mixed-use-property)
already works the case this reaches — a corporation and its owners on title together — and says
nothing about it. Where every person on title holds their own beneficial interest, the (1.31)(a)
carve-out should apply and no return is due; where title and beneficial ownership diverge, it may
not. That is a determination the reader must make, and the guide currently does not tell them a
determination exists.

- *Placement*: a subsection under
  `Rental-And-Property-Income.md#co-owned-and-mixed-use-property`, cross-linked from
  `Owner-Corporation-Transactions.md`
- *Must cover*: the s.150(1.3) deeming test in plain terms; the (1.31)(a) carve-out and the other
  exceptions; the co-ownership-versus-trust distinction; the filing deadline and the penalty
  exposure; and a clear statement of the first affected year-end
- *Verify at writing*: this rule has been deferred three times; re-pull the status before publishing,
  and cite the amended s.150 text rather than any commentary

#### G-12 T5013 and partnership units in a corporate account

Absent entirely. A corporate brokerage account that holds a publicly traded limited partnership or an
income fund receives a T5013 rather than a T3 or T5, and the slip behaves differently from both: the
partnership's income keeps its character as it flows through, the boxes split between income types
and ACB adjustments, and the ACB moves for both income allocated and distributions received. The
guide's ACB machinery handles the arithmetic; nothing tells the reader the slip exists or which boxes
drive which entries.

- *Placement*: new page `guide/Investments/T5013.md`, indexed under **Investments** as a sibling of
  `T3/` and `T5/`
- *Must cover*: which holdings produce the slip; the boxes an owner-managed corp actually sees; the
  character flow-through and its S7/AII consequence; the ACB adjustment for allocated income versus
  distributions, cross-linked to `Adjusted-Cost-Base.md`; the ledger accounts; and the T2 schedule
  mapping in the established box-by-box style
- *Note*: whether a corporate partner also files S71–S73 depends on fiscal-period alignment; check
  the trigger before naming those schedules

#### G-13 Worthless shares and debts: the s.50(1) election

The investment chain assumes dispositions happen by sale. When an issuer goes bankrupt or a debt owed
to the corporation becomes bad, there is no sale and no T5008, and without an election there is no
loss either. ITA [s.50(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-50.html) lets the
taxpayer elect in the return for the year to be deemed to have disposed of the debt or share for nil
proceeds at year-end and to have reacquired it at nil cost immediately after. "Worthless" and
"bankrupt" appear nowhere in `guide/`.

- *Placement*: a `## Worthless Shares and Bad Debts` section on `guide/Filing-And-CRA/Losses.md`,
  under `## Two Kinds of Loss`; cross-linked from `Capital-Vs-Income-Character.md`
- *Must cover*: the s.50(1) conditions for a debt and for a share; how the election is made; the
  deemed disposition and nil-cost reacquisition and what that means for the ACB record; the
  interaction with the capital-loss carryover and the CDA; and the contrast with a bad *trade*
  receivable under s.20(1)(p), which is an income-account write-off already covered on
  `Receivables-And-Bad-Debts.md`

#### G-14 Marketplace and platform GST/HST

Absent. An e-commerce corporation selling through Amazon, Etsy, Shopify, or an app store is inside
ETA Part IX Division II, Subdivision E (Electronic Commerce). ETA
[s.211.1](https://laws-lois.justice.gc.ca/eng/acts/E-15/section-211.1.html) defines a *distribution
platform operator* as a person who controls or sets the essential elements of the transaction between
supplier and recipient, or who collects and transmits the consideration, and the subdivision then
sets when the platform rather than the vendor collects and remits. A registered Canadian vendor's
obligations differ from an unregistered one's, and getting it backwards means either double-collecting
or under-remitting.

- *Placement*: a `## Sales Through a Marketplace` section on
  `guide/Operations/HST/HST-Registration-And-Filing.md`, after `## Rates and Place of Supply`
- *Must cover*: who collects when the vendor is registered versus not; what the platform reports and
  what the vendor still reports on its own GST34; how platform fees are treated for ITC purposes;
  and the small-supplier interaction, since platform sales still count toward the threshold
- *Note*: keep it to a registered Ontario vendor's position; non-resident vendor rules stay out

#### G-15 Contract revenue: progress billings, holdbacks, and percentage-of-completion

The trades archetype falls off here, and consistently. Long-term construction contracts are declared
out of scope on [Cost Recovery](../../guide/Operations/Cost-Recovery/Cost-Recovery.md),
[Inventory and COGS](../../guide/Operations/Cost-Recovery/Inventory-And-COGS.md), and
[Materials and CIP](../../guide/Operations/Cost-Recovery/Materials-And-CIP.md); construction
holdbacks are declared out of scope on
[Deferred Revenue](../../guide/Operations/Deferred-Revenue.md). Four pages agree, so this is a
deliberate boundary rather than an oversight — but it is not on the `Further-Reading.md` out-of-scope
list, and it means a CCPC that builds for customers has no revenue-side coverage at all while having
excellent cost-side coverage.

Admitting it is the maintainer's call. If it stays out, it belongs on the declared list so the reader
learns it in one place rather than four.

- *Placement, if admitted*: new page `guide/Operations/Contract-Revenue.md` under **Operations**,
  with the four Limitations lines then pointing to it
- *Must cover*: progress billings and the receivable; the holdback receivable and its income timing;
  percentage-of-completion versus completed-contract; the HST tax point on progress payments; and the
  interaction with `Materials-And-CIP.md`, which already handles the cost side
- *Placement, if not admitted*: one entry in `Further-Reading.md` under "Deliberately out of scope",
  naming the four pages that defer to it


## Findings: present but thin

Smaller items that extend an existing page.

- **X-1 `Payment.md` shape and content**: the only page in `guide/` missing both halves of the
  standard shape — no "Who this is for" or TLDR header block, and no `Related`, `Citations`, or
  `TODO` at the tail
  - Eight pages open without the header block, but the other seven are correct as they stand: the six
    `Foreign-Currency/` sub-pages delegate explicitly ("Scope and limitations are on the Foreign
    Currency hub") and all carry `Related` and `Citations`, and `Glossary.md` is a reference list
  - It also carries a dangling reference: "The canonical page sets out the one-year and two-year base
    methods" names no page, and no page sets them out
  - Instalment computation remains the open item the 2026-07-01 review raised; `Further-Reading.md`
    already logs it, and the natural home is this page
  - *Placement*: rebuild `Payment.md` to the standard shape, then add `## Instalment Computation`
- **X-2 `9990` Current income taxes missing from the chart**:
  [CRA Administration](../../guide/Filing-And-CRA/CRA-Administration.md#booking-the-tax-cycle) books
  the whole tax cycle against `9990` and `2680`, and `9990` is not in the
  [Ledger and Accounts](../../guide/Bookkeeping/Ledger-And-Accounts.md) chart — a reader building the
  chart from that page cannot post the entry the other page teaches
  - The `Losses.md` TODO already flags it; confirmed still open
  - *Placement*: add the row to the operating-expense table, verified against RC4088
- **X-3 GIC anniversary-interest accrual**: the 2026-07-01 review left this as "verify, then add if
  absent" — confirmed absent; s.12(4) and s.12(11) appear nowhere in `guide/`
  - [T5](../../guide/Investments/T5/T5.md#interest---box-13) names GICs on the interest box, and a
    multi-year GIC accrues interest annually for tax before any cash or slip arrives
  - *Placement*: a subsection under `T5.md#interest---box-13`
- **X-4 Management fees between related corporations**: `8871` is in the chart and the term appears on
  `Expense-Classification.md` and `Dividends.md`; the reasonableness constraint, the documentation
  that supports it, and the HST consequence between non-electing corporations are not worked
  - *Placement*: with G-7, on the new associated-corporations section
- **X-5 Petty cash and credit-card accounts**: neither appears in the chart of accounts; a corporate
  credit card is standard and its liability account is where most small-business posting errors live
  - *Placement*: two rows in the `Ledger-And-Accounts.md` tables, plus the reconciliation in G-1
- **X-6 T2 Short Return and Schedule 140**: neither is named anywhere;
  [T2 Schedules](../../guide/Filing-And-CRA/T2-Schedules.md) is otherwise a complete map, and a
  dormant or first-year corporation is exactly the reader who meets the T2 Short
  - *Placement*: one line each on `T2-Schedules.md`, in `## Return Assembly` and the every-year table
  - *Verify first*: the current T2 Short eligibility conditions
- **X-7 Glossary term batches**: the FX and GST/HST batches named in the `Foreign-Currency.md` and
  `HST.md` TODOs are still absent from the 75-entry
  [Glossary](../../guide/Overview/Glossary.md); adding G-1's vocabulary (reconciling item, adjusting
  entry, closing entry, trial balance) would fit the same pass


## Archetype walkthroughs

Where each profile falls off the guide when running a full year.

**Consulting or services with a corporate investment account** — the guide's centre of gravity, and
it holds. Invoicing, HST under either method, expenses, CCA, the investment chain, both remuneration
channels, the T2 package, payment, and post-assessment administration are all worked. The reader
falls off twice: at the monthly close (G-1) and at the salary-versus-dividend decision (G-2). Prepaid
insurance (G-3) is the third stumble, and it is annual.

**Goods: e-commerce, retail, import** — the cost side is the guide's strongest recent work; the
`Inventory-And-COGS` tree covers valuation, landed cost, imports with FX, the count, and the
year-end identity, and `HST-Regular-Method` covers import GST. The reader falls off on the *sales*
side: no marketplace or platform rules (G-14), no refunds or credit notes (G-6), and no PST/QST once
they ship into BC, Saskatchewan, Manitoba, or Quebec (B-2, declared out of scope). Government
assistance (G-5) is common in this segment.

**Trades and construction** — materials, CIP, multi-build allocation, equipment CCA, and vehicle
rules are all there. The reader falls off hardest here: no revenue-side coverage at all (G-15,
declared out of scope on four pages), no T5018 (G-4) despite it being a statutory annual filing for
this exact profile, and no WSIB (B-1, declared out of scope). A construction CCPC can cost its jobs
from this guide but cannot bill them or file its subcontractor return.

**Property, employees, and multi-corp** — `Rental-And-Property-Income` handles the character
question and co-ownership; `Payroll` handles the single owner-manager. The reader falls off at
bare-trust reporting on co-owned title (G-11, live from the 2026-12-31 year-end), at association and
the shared business limit the moment a second corporation exists (G-7), at annual corporate
maintenance and the ISC register (G-8), and at the first non-owner employee (B-1, declared out of
scope). Director liability (G-10) bites hardest in this profile because payroll is running.


## Boundary candidates

Outside the declared scope. Logged as observations with a recommendation; placement for each is an
entry in [Further-Reading](../../guide/Overview/Further-Reading.md), not a page.

- **B-1 The first non-owner employee**: `Payroll.md` works the owner-manager case and
  `Further-Reading.md` excludes multi-employee HR
  - What a one-employee corporation still meets: the Record of Employment, vacation and statutory
    holiday pay accrual, WSIB registration, and the Ontario EHT exemption threshold
  - *Recommendation*: the `Payroll.md` TODO already asks whether EHT and WSIB get a named-threshold
    note; a named-threshold note plus a `Further-Reading` entry closes this without opening HR
- **B-2 PST and QST**: declared out of scope, and correct for a service corporation
  - A goods seller shipping into BC, Saskatchewan, Manitoba, or Quebec can be required to register
    provincially with no physical presence
  - *Recommendation*: sharpen the existing out-of-scope entry to name the registration trigger, so a
    goods seller knows to look
- **B-3 Safe income and s.55(2)**: absent; relevant only once a holdco pays inter-corporate dividends
  beyond safe income
  - *Recommendation*: a `Further-Reading` entry pointing at s.55(2), so the holdco reader knows the
    trap exists
- **B-4 s.22 and s.20(24) elections on an asset sale**:
  [Asset vs Share](../../guide/Corporate-Lifecycle/Business-Acquisition/Asset-vs-Share.md) covers the
  structure and the GST44 election; the receivables election (s.22) and the assumed-deferred-revenue
  election (s.20(24)) are absent
  - *Recommendation*: a `Further-Reading` entry, or two bullets on `Asset-vs-Share.md` if the
    maintainer wants the vendor side complete
- **B-5 Post-mortem**: what happens to the corporation when the sole shareholder dies — the deemed
  disposition of the shares, double taxation, s.164(6), and the pipeline
  - `Estate-Freeze.md` handles the succession *plan*, not the event
  - *Recommendation*: a `Further-Reading` entry; the full treatment is professional-advice territory
- **B-6 US sales-tax nexus**: economic-nexus registration for an e-commerce CCPC selling into US
  states, adjacent to the declared US income-tax nexus exclusion
  - *Recommendation*: extend the existing US-nexus entry to name sales tax as well


## What was NOT flagged

Checked and cleared, so the next pass does not re-litigate them.

- **Schedule 23 is named** — `T2-Schedules.md` writes "S23" in the event-driven table, not
  "Schedule 23"; a keyword sweep for the long form misses it. The allocation *mechanics* are the gap
  (G-7), not the schedule's existence
- **The ETA s.156 closely-related election is named and correctly scoped out** — `HST.md` names it,
  cites RC4616, and says it is out of scope for this guide
- **Registry annual returns are covered** — `Small-Business-Tax.md` gives the Corporations Canada
  60-day and Ontario Business Registry 6-month deadlines and the administrative-dissolution
  consequence, and `T2-Schedules.md` explains that S546/S547 were retired in 2021
- **The retained-earnings continuity is stated** — `Ledger-And-Accounts.md` gives
  `3660` + `3680` − `3700` = `3849`; the missing piece is the close *procedure* (G-1), not the identity
- **Broker, HST-control, and inventory reconciliations are covered** — only bank and credit-card
  reconciliation is absent
- **Year-end bonus accrual and s.78(4) are covered** — `Payroll.md#owner-manager-remuneration`, so
  the 2026-07-01 review's item 1 landed in full
- **T2200 is covered** — `Owner-Corporation-Transactions.md`, in the home-office context
- **The employee-versus-contractor determination is deliberately a pointer** — `Further-Reading.md`
  points at RC4110; G-4 covers the slip consequence without reopening the determination
- **Percentage-of-completion is consistently excluded, not accidentally omitted** — four pages say so
  in their Limitations; G-15 asks whether to admit it, and does not treat it as an oversight
- **Imports, place of supply, zero-rated services to non-residents, and W-8BEN-E are covered** —
  `HST-Regular-Method.md` and `Getting-Paid-In-USD.md`
- **Meals, home office, vehicles, shareholder loans, TOSI, PSB risk, deemed dividends, NR4,
  superficial loss, phantom distributions, whole-dollar rounding, and Norbert's Gambit** — all
  confirmed covered by the 2026-07-01 pass and re-confirmed present here


## Notes and raw observations

- *Method note*: two planning-stage suspicions died on context-checking (Schedule 23, s.156). Both
  would have been false positives from a grep alone, which is why every candidate here was read in
  place before it was written up. The inverse error also occurred and was caught: an alternation
  pattern run under `grep -E` silently matched nothing, briefly making covered topics look absent
- *Verification note*: eleven provisions were pulled from `laws-lois` before their findings were
  written; the trail is in `audit/wip/citations.md`. Three claims are explicitly marked
  unverified in the findings that carry them — OBCA s.140.2, ITA s.53(2)(k), and the T5018
  reporting-period election
- *The bare-trust finding needs re-checking at writing time.* The rule has been deferred three times;
  this pass confirmed the current text on `laws-lois` (amendments through 2026, c. 3; current to
  2026-06-14) and corroborated the effective date through firm commentary, but a rule with that
  history should be re-pulled before it is published
- *Structural observation*: the guide's page tree has matured past the point where the README index
  alone conveys it. `Concept-Map.md` maps concepts and `Further-Reading.md` maps the edges; nothing
  maps the *duties*. A filing-and-duty calendar page — every obligation, its deadline, and the page
  that owns it — would make gaps like G-4 self-evident rather than requiring a review to surface
  them. `Small-Business-Tax.md#filing-deadlines-and-instalments` is the seed
- *The per-page TODO sections remain good and none conflict with this review.* X-2, X-3, and X-7
  restate open TODOs that this pass independently confirmed; the rest are additive
- *Page count and shape*: 71 pages. Every group hub exists and indexes its children, and the README
  index matches the file tree exactly — 71 links, 71 files, no drift in either direction. Only
  `Payment.md` is short of the standard shape (X-1)
