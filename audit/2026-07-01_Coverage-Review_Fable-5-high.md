# Coverage Review — 2026-07-01 (Fable-5-high)

Scope review of the guide against the needs of an owner-managed small business (CCPC), from the
standpoint of bookkeeping and tax. Unlike the correctness audits in this folder, this pass looks
for topics that are missing entirely or present but thin, not for errors in existing content.

This is a living document, built incrementally; the progress tracker below shows how far the
review has gotten. Findings are read-only observations; any content work happens separately.

## Progress tracker

- [x] Orientation pages read (README, Concept-Map, AGENTS)
- [x] Heading outlines and TODO markers collected across all guide pages
- [x] Small-Business-Tax-Overview read (breadth baseline)
- [x] Payment stub read; HST and Foreign-Currency outlines reviewed (both are mature, not stubs — README labels lag)
- [x] Keyword sweep for candidate missing topics (grep across guide/)
- [x] Targeted context checks on ambiguous hits (meals/s.67.1, life insurance, T4A, bad debts, wind-up, s.230, bonus, WSIB scope notes)
- [x] Gap analysis: missing topics
- [x] Gap analysis: thin/expansion candidates
- [x] Final synthesis and ranking

## Current topic inventory

Coverage is strongest on the investment-income side (the guide's origin): ACB and its tracker,
T3/T5/T5008 box-by-box, CDA, the four tax pools, dividend flavours end-to-end (declare → book →
slip → T2), tax integration. The operating side has matured recently: ledger fundamentals, expense
classification, cost recovery (inventory/COGS, materials/CIP, CCA with classification + examples +
tracking), HST, foreign currency, owner-corporation transactions, whole-dollar rounding. Structure
topics: corporate structure, share capital, business acquisition (asset-vs-share, preferred-share
consideration, estate freeze). One true stub: Payment.

Pages already flag their own next steps in TODO sections — notably: CDA resolution + spreadsheet
templates, CCA tracking spreadsheet artifact, HST tracking spreadsheet, holdco worked example
(Dividends), T3 per-box split, foreign-tax-credit limitation expansion (s.126(1)), inventory WIP /
manufacturing, CIP soft costs (s.18(3.1), s.21), USD-payable worked example, Glossary term
batches (FX, GST/HST).

## Findings: missing topics

Ranked by relevance to an owner-managed CCPC doing its own bookkeeping and tax. "Missing" means
no page or section works the topic through; a passing mention may exist (noted where it does).

### Tier 1 — core gaps

1. *Payroll and the T4 channel*: the guide's biggest structural gap. Salary is one of the two
   remuneration channels, and the dividend channel has a hub plus five sub-pages, while the salary
   channel has one primer section ([Small-Business-Tax-Overview — paying yourself]), a remittance
   section in the Payment stub, and scope notes in `Dividends.md` and `Tax-Integration.md` that
   explicitly defer it ("salary-vs-dividend tradeoff (CPP, RRSP, payroll, WSIB) is out of scope").
   A `Payroll/` topic at parity with `Dividends/` would cover: RP account setup; computing
   withholdings (CPP/CPP2, income tax, the >40%-owner EI exemption, TD1); payroll journal entries
   (gross wage, withholdings payable 2627, employer CPP expense); PD7A remittance workflow and nil
   remittances; T4 slip box-by-box in the T3/T5 per-box style (incl. box 34 automobile benefit,
   tying into Owner-Corporation-Transactions); T4 Summary filing; year-end bonus accrual and the
   s.78(4) 180-day rule; and a decision to keep or name-and-exclude the provincial satellites
   (Ontario EHT exemption, WSIB).
2. *T1135 foreign property reporting*: absent entirely, yet squarely aimed at the guide's core
   audience — a corp whose brokerage account holds specified foreign property with total cost over
   $100,000 CAD must file T1135 with penalties for missing it. What counts needs the careful
   treatment the guide is good at: US-listed stocks and ETFs yes; Canadian-listed ETFs that hold US
   stocks no; USD cash at a Canadian broker no. Natural cross-links: ACB tracker (the cost-amount
   data is already there), Foreign-Currency, T3/T5 foreign-income boxes.
3. *Loss years, operationally*: Concept-Map summarizes carryforward/carryback and the ACB page
   covers the capital-loss side, but there is no operational page for a non-capital loss year:
   Schedule 4 continuity, requesting a carryback on the T2, ordering among loss types, the 20-year
   expiry, and the CCA-deferral interplay (mentioned in the CCA page). A worked loss-year example
   (deduct nothing vs carry back) would fit the guide's style.
4. *CRA administration lifecycle*: nothing on what happens after filing — reconciling the notice
   of assessment to the books (booking the tax expense vs the assessed amount), amending a filed
   T2, responding to a processing review or a request for information, objections (T400A, the
   90-day window), arrears/refund interest mechanics, taxpayer relief, voluntary disclosure. One
   page covering "after you file" would close this.
5. *Books-and-records retention*: s.230 is cited once in Ledger-And-Accounts as the duty to keep
   books, but the practical rules are absent: the six-year retention clock, which source documents
   to keep (invoices, receipts, bank and brokerage statements, minute book, slips), electronic
   records, and retention after dissolution. A short section (in Ledger-And-Accounts or its own
   page) suffices.

### Tier 2 — lifecycle bookends

6. *Starting up*: choosing the fiscal year-end; the first (short) tax year (the CCA proration
   exists but nothing owns the topic); pre-incorporation and startup costs (the Class 14.1
   incorporation-expense example exists; the general rule does not); moving an existing sole
   proprietorship into the corp (s.85 appears only in the acquisition/estate-freeze context);
   GST/HST registration timing; opening entries (share subscription, initial shareholder loan).
7. *Winding down*: wind-up is mentioned in passing (stranded GRIP/ERDTOH "lost at wind-up",
   share rights on dissolution) but the sequence is nowhere: sweep the CDA first, deemed dividend
   on the winding-up distribution (s.84(2)), final T2, closing the RC/RT/RP/RZ program accounts,
   articles of dissolution, post-dissolution record retention. This is also where the stranded-pool
   discussions in Dividends.md naturally resolve.

### Tier 3 — operating-side topics touched on but not worked through

8. *Receivables and bad debts, income side*: the HST bad-debt adjustment (ETA s.231) is covered,
   but the income-tax write-off (s.20(1)(p)), later recovery, and the bookkeeping entries are not;
   the two halves belong together.
9. *Deferred revenue, deposits, retainers*: no coverage of advance payments — s.12(1)(a)
   inclusion, the s.20(1)(m) reserve, the deferred-revenue liability account, and the GST/HST
   tax-point on deposits vs prepayments. Directly relevant to a consulting practice on retainer.
10. *Charitable donations by the corp*: absent. Corporate donations are a deduction (not a
    credit), limited to 75% of net income with a 5-year carryforward (Schedule 2); donating
    appreciated securities zeroes the capital-gain inclusion while the full gain credits the CDA —
    a strong synergy with the guide's existing CDA and in-kind coverage.
11. *Debt and financing costs*: no page owns borrowing — loan and line-of-credit bookkeeping,
    interest deductibility (s.20(1)(c)), financing fees (s.20(1)(e)), and paying interest to the
    owner on a due-to-shareholder balance (which triggers a T5 to the owner).
12. *Capital-vs-income character of trading gains*: the guide assumes capital treatment
    throughout the ACB/T5008 chain. A short section acknowledging the trader-vs-investor
    question and the s.39(4) Canadian-securities election (and whether it is available to the
    corp) would armour the assumption. Fits on Adjusted-Cost-Base.md or T5008.md.
13. *Employee benefits beyond the vehicle/home-office set*: PHSP / health spending accounts (a
    common owner-manager question), group insurance, the CRA gifts-and-awards policy. The
    corporate-owned life-insurance premium note in Owner-Corporation-Transactions is the seed.
14. *Rental and property income character*: when rent is active vs property income — the
    specified investment business definition, the five-employee rule, incidental rent from
    business premises (subleasing, mixed-use property). Relevant to any CCPC with real property
    alongside operations.

## Findings: present but thin — expansion candidates

Smaller items that extend existing pages rather than warranting new ones:

- *CDA credit from life-insurance proceeds* (`Capital-Dividend-Account.md`): the CDA page covers
  the capital-gains component; the life-insurance-proceeds component is the other main CDA source
  and is unmentioned (the premium-deductibility note in Owner-Corporation-Transactions could
  cross-link)
- *T2 assembly view* (new section, or extend `Small-Business-Tax-Overview.md`): the guide covers
  schedules per topic but never shows the whole return: which schedules a typical CCPC files
  (S1, S3, S6, S7, S8, S50, S53, S100/125/141, S200), Schedule 50 shareholder information,
  Schedule 141 (who prepared the statements), and mandatory electronic filing; Schedule 141 and
  Schedule 50 are currently unmentioned anywhere
- *Schedule 1 as a concept* (`Expense-Classification.md` or the T2 assembly section): individual
  pages mention their own S1 adjustments (CCA vs amortization, 50% meals) but nothing explains
  the book-to-tax reconciliation once; under tax-basis books the list is short, which is exactly
  why a single unified list is feasible
- *Instalment computation* (`Payment/Payment.md`): the calendar covers when; the three
  computation options (prior-year, current-year, no-calculation) and the first-year exemption are
  not covered — belongs in Payment when it grows past the stub
- *GIC anniversary-interest accrual* (`T5/T5.md`): GICs are named on the interest box; the
  s.12(4)/s.12(11) annual-accrual rule for multi-year GICs (booking interest before the T5
  arrives) is not visible in the outline — verify, then add if absent
- *UHT applicability note* (`Owner-Corporation-Transactions.md` or the property-income topic):
  only if the corp is on title of residential property; the filing rules for Canadian CCPCs have
  changed since 2023, so verify the current requirement before writing anything
- *Payment page generally* (`Payment/Payment.md`): the one true stub; the HST page's TODO already
  plans the cross-link (bookkeeping/return prep there, cash-to-CRA mechanics here); instalment
  computation and the CRA-administration material (finding 4) may want to live adjacent to it
- *Housekeeping — AGENTS.md architecture list*: describes `Foreign-Currency.md`, `HST.md`, and
  `Payment/Payment.md` as "stubs"; the first two are now mature multi-section pages — only
  Payment is a stub; the architecture list also omits most pages added since (Cost-Recovery tree,
  T5 tree, Corporate-Structure, Business-Acquisition, Expense-Classification, Ledger-And-Accounts,
  Owner-Corporation-Transactions, Whole-Dollar-Rounding)

## Explicitly out of scope (checked, deliberately not flagged)

- Personal-T1 mechanics, sole-proprietor coverage beyond contrast sections (AGENTS.md scope rule)
- PST/QST (declared out of scope in Small-Business-Tax-Overview)
- SR&ED, EIFEL, amalgamations, public-corp topics — beyond a typical owner-managed CCPC
- Multi-employee HR topics (only the owner-manager payroll case is in scope for finding 1)

## Notes and raw observations

- Keyword sweep method: grep across `guide/` for topic markers (T1135, T4A, donations, deferred
  revenue, retention, objection, PHSP, specified investment, s.39(4), Schedule 50/141, PD7A, TD1,
  EHT, retiring allowance, carryback, bonus…), then context-checked ambiguous hits before calling
  something missing
- Covered-and-confirmed (no action): meals 50% (s.67.1 + ETA s.236, three pages), home office,
  vehicles (both directions), shareholder loans (s.15(2), s.80.4), TOSI, PSB risk, deemed
  dividends (as concept), NR4, superficial loss, DRIP/phantom distributions, whole-dollar
  rounding, FX incl. Norbert's Gambit, Quick Method vs regular, inventory appropriation to
  shareholder (s.69 + T4A mention)
- The existing per-page TODO sections are good and none of them conflict with this review; the
  findings above are additive to them
