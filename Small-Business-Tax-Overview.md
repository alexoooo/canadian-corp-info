STATUS: WORK IN PROGRESS

# Small Business Tax Overview

**Who this is for**:
- Entrepreneurs who are curious about bookkeeping and taxes  
- Want a high-level picture of how Canadian small-business corporate tax fits together

This page is a primer for the topics covered in the rest of this knowledge base.

**TLDR**:
- A *Canadian-Controlled Private Corporation* (CCPC) files an annual *T2* corporate income tax return — separate from the owner's personal *T1*
- Books are kept in *double-entry*; at year-end the chart of accounts is mapped to *GIFI* codes for Schedules 100 and 125
- Active business income gets a reduced rate (the *Small Business Deduction*, *SBD*) on the first $500,000 per year
  - Investment income (from a corporate brokerage account) is taxed at a much higher rate, but partially refundable when paid out as a dividend
- The corporation can pay the shareholders using dividends or payroll
- *Integration* means a dollar earned directly or through a CCPC should be taxed roughly equally
- The *Income Tax Act* (ITA) is the primary federal source, but several others are relevant: regulations, provincial tax acts, treaties, corporate statutes, CRA administrative guidance
- *Harmonized Sales Tax* (HST) runs alongside income tax (depending on province)
- You can pay yourself either a salary (expense) or dividends (retained earnings)

Limitations:
- Focus is on a typical owner-managed CCPC operating in Canada; other corporate forms (public corps, non-residents) are out of scope
- Unincorporated businesses (sole proprietorship, partnership) and personal *T1* mechanics are out of scope
- The following is my understanding as of 2026


# What corporate tax is

A corporation is a separate legal and tax entity from its shareholders.  
Corporations can be used to limit liability and for tax planning.

Corporations can make money from doing active business, or passively from non-business investments (e.g. ETF).  
Net income (or loss) is calculated as: revenue - expenses (tracked separately for active vs passive).  
For an incorporated consultant who pays themselves a salary, the largest expense is typically that salary plus the employer's share of CPP.  
If the corporation has a positive net income, it pays *corporate income tax*.  

You are required to keep track of all business transactions in a double-entry journal (debits and credits).  
Money made by the corporation is called revenue, and money spent is called expenses.  
Every account on the books is classified as an asset, liability, equity, revenue, or expense. 
The *accounting equation* Assets = Liabilities + Equity always holds (revenue and expense accounts roll into equity through retained earnings at year-end).  
You are required to use *accrual accounting*, which means recording an invoice when you send it, not later when the money arrives.  
Accrual sets *when* a transaction is recorded; the *basis of accounting* sets *how* it's measured — they're orthogonal and combine fine.

The simplest measurement basis is *tax basis*: revenue and expenses are recognized following ITA rules, so the books and the T2 numbers match exactly.
- At year-end, you need to prepare two financial statements: an *income statement* and a *balance sheet*
- A *cash flow statement*, *statement of retained earnings*, or full GAAP-compliant set (*ASPE* for private corporations, *IFRS* for public ones) is optional
  - Required only if a third party (bank, outside shareholder) asks for it, or if your corporate statute's default GAAP requirement (CBCA s.155 / OBCA s.154) hasn't been waived by the shareholders

The annual filing is the *T2 Corporation Income Tax Return*:
- The T2 is the corporate equivalent of the personal *T1 Income Tax and Benefit Return*
- It consists of a "jacket" (industry jargon for the main return) plus a list of *Schedules*, each handling a specific calculation
- For example, Schedule 125 is income statement and Schedule 100 is balance sheet 

After paying corporate income tax:
- The corporation can distribute after-tax money to shareholders (typically as a dividend)
- Shareholders pay personal tax on the distribution
- The system is designed so the two layers of tax combine to roughly the personal-tax bill that would have applied if the income had been earned directly (see *Integration* below)

Sales tax (HST, etc.) is handled separately:
- Paid when buying most goods and services
- Collected when selling most goods and services
- Remitted based on a calculation (regular method or quick method)

Most owner-managers prepare the T2 using dedicated software (FutureTax, TaxCycle, ProFile) rather than the paper forms.  


# Bookkeeping, the general ledger, and GIFI

The T2 doesn't appear from nowhere — every line traces back to the corporation's *books*: the running record of every financial transaction it makes during the year.  
For a small CCPC, books are typically kept in accounting software (QuickBooks, Wave, Xero) or a structured spreadsheet, and reviewed annually before the T2 is filed.  

The basic mental model:
- *Double-entry* — every transaction posts equal *debits* (Dr) and *credits* (Cr) across two or more accounts; the books always balance
- *Chart of accounts* — the corporation's own categorization of its activity (cash, accounts receivable, revenue, expenses, retained earnings, etc.); the structure is your choice
- *General ledger* — the running list of every posted entry, grouped by account
- *Trial balance* — the year-end sum of all account balances; rolls up into the *balance sheet* and *income statement* (the corporation's financial statements)

*GIFI* (*General Index of Financial Information*) is CRA's standardized chart-of-accounts coding.  
Your own chart of accounts can use whatever names and structure you want, but at T2 time each account must be mapped to a GIFI code so that Schedule 100 (balance sheet) and Schedule 125 (income statement) can be filed in a CRA-readable form.  
GIFI codes are four-digit numbers organized by financial-statement section — for example, 1001 cash, 3849 retained earnings end-of-year, 8000-series revenue, 9999 net income.  
The full list and mapping rules are in CRA's *RC4088 — General Index of Financial Information*.  

The bookkeeping convention this repo follows — explicit Dr/Cr postings paired with specific GIFI codes — appears in worked examples throughout the per-topic pages; see [T3.md](T3.md), [T5008.md](T5008.md), [Shareholder-Dividends.md](Shareholder-Dividends.md), and [Adjusted-Cost-Base.md](Adjusted-Cost-Base.md) for concrete entries.  
A practical tip: keep the books current during the year (monthly is typical) — reconstructing twelve months of activity at year-end is the most common avoidable cause of T2 filing pain.  


# HST and other consumption taxes

This page (and most of this repo) is about *corporate income tax* — what the corporation owes on its earnings each year via the T2.  
Running alongside that is the *Goods and Services Tax / Harmonized Sales Tax* (GST/HST) regime: a consumption tax on most goods and services sold in Canada, administered by CRA under the *Excise Tax Act* rather than the *Income Tax Act*.  

A business that exceeds $30,000 in annual taxable revenue (the *small supplier* threshold) generally must register, charge GST/HST on its sales (the *output tax*), claim back the GST/HST it paid on its inputs (*input tax credits*, ITCs), and remit the difference to CRA on a periodic schedule (annually, quarterly, or monthly depending on revenue).  
The rate varies by province — 5% federal GST in non-harmonized provinces (e.g. Alberta, BC), 13% HST in Ontario, 15% HST in the Atlantic provinces; Quebec runs a parallel *QST* administered separately by Revenu Québec.  

GST/HST does not flow through the T2 — it's a separate filing, a separate account number, and a separate set of mechanics.  
For the practical workflow, see [HST.md](HST.md).  


# Why CCPC status matters

A *Canadian-Controlled Private Corporation* (CCPC) is a corporation that is:
- Incorporated in Canada
- Private (not listed on a designated stock exchange)
- Not controlled — directly or indirectly — by non-residents or by public corporations

CCPC status unlocks several preferential tax treatments most relevant to owner-managers: the *Small Business Deduction* (SBD), the *Lifetime Capital Gains Exemption* (LCGE) on *Qualified Small Business Corporation* (QSBC) shares, and refundable-tax mechanics on investment income.  
For a corporation incorporated in Canada and directly owned by Canadian-resident individuals with no public listing, CCPC status will usually apply, though control rules — including the *control in fact* test under ITA [s.256(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-256.html) — and certain share arrangements (e.g. options or shareholder agreements that give effective control to a non-resident or public corporation) can change the result.  


# Personal Service Business (PSB) — a trap for consultants

A *Personal Service Business* (PSB) is a CCPC whose owner-operator would reasonably be considered an *employee* of the client but for the corporation in between.  
The classic case: a consultant working full-time for a single client, on the client's premises, with the client's equipment, on the client's schedule — indistinguishable from a staff employee except that the corp invoices in between.  
This is a real risk for IT contractors, engineers, and other specialists who incorporate to invoice a single long-term client.  

PSB classification (ITA [s.125(7)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html)) strips most of the favourable CCPC tax treatments and replaces them with a punitive regime:
- No SBD — PSB income is excluded from active business income, so it cannot use the small-business rate
- No *general rate reduction* either — taxed at the base federal 28% rather than the 15% general rate
- Plus an *additional 5% federal tax* on PSB income under ITA [s.123.5](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-123.5.html), bringing the federal portion to 33% — combined ≈ 44.5% in Ontario
- Almost no deductions allowed under ITA [s.18(1)(p)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html): only salary and benefits paid to the incorporated employee, plus a few narrow items (legal costs to collect on contracts, certain employment-related expenses) — no rent, supplies, professional fees, software, or office costs

Combined effect: a CCPC reclassified as a PSB pays substantially more tax with substantially fewer deductions than either a regular CCPC or the same individual operating as an unincorporated *sole proprietor* would.  

The PSB determination is fact-based and uses the same multi-factor analysis as the employee-vs-contractor test in personal tax — *control* (does the client direct what, when, and how?), *ownership of tools*, *chance of profit / risk of loss*, and *integration* into the client's organization.  
There are two statutory safe harbours in the s.125(7) definition: the corporation employs more than *five full-time employees* throughout the year, or the services are provided to an *associated corporation* — but neither typically applies to an owner-managed consulting practice.  

For most owner-managed consulting CCPCs the practical protection is in the working arrangement itself: have multiple clients where possible, set your own hours and methods, use your own tools and equipment, carry your own liability insurance, and document a clear independent-contractor relationship in writing.  
The more factors that point to an independent business rather than a disguised employment relationship, the lower the PSB risk.  


# The two buckets of corporate income

Corporate income for a CCPC sorts into two broad buckets, each taxed differently.  
The combined rates below use Ontario as an example for illustration; the federal portion is the same nationally, but provincial rates vary — see [CRA's corporation tax rates page](https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/corporations/corporation-tax-rates.html) for current rates by province.

**Active business income (ABI)** — income from carrying on an active business: consulting fees, product sales, services rendered.  
The first $500,000 per year is taxed at the *small-business rate* via the SBD (combined federal + Ontario ≈ 12.2% in 2026); ABI above $500,000 is taxed at the *general rate* (combined ≈ 26.5% in Ontario).  
The $500,000 SBD *business limit* is not always a flat ceiling — it must be shared among *associated corporations* under ITA [s.125(3)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html), is ground down by *aggregate investment income* (AII) over $50,000 under ITA s.125(5.1), and is reduced for corporations with a large *taxable capital* base (the *large CCPC* rule).  

**Aggregate investment income (AII)** — income from passive investments held in the corp: interest, foreign income, the taxable portion of capital gains.  
AII is taxed at a high combined rate (~50.2% in Ontario), but a portion is *refundable* — it's parked in the corporation's *NERDTOH* account and refunded back when the corporation eventually pays a dividend to the shareholder.  
The refundable mechanism is what stops the CCPC from being used as an indefinite tax-deferral vehicle for passive investing.  

Dividends *received* from other Canadian corporations (for example, portfolio shareholdings or funds structured as corporations) sit in their own bucket: generally tax-free at the corporate level via the *s.112 inter-corporate dividend deduction*, but they trigger *Part IV tax* that feeds the refundable accounts and gets refunded when the corp pays a dividend out.  
Note that most Canadian ETFs are *mutual fund trusts* rather than corporations — their distributions come on T3 slips and are treated under different rules (interest, capital gains, foreign income, etc.); see [T3.md](T3.md).  


# Integration

*Integration* is the principle that ties everything together: the combined corporate + personal tax on a dollar of income that flows through a CCPC and out to the shareholder should roughly equal the personal tax on the same dollar earned directly.  

Mechanically, integration is delivered through the *dividend gross-up and tax credit*: when the corporation pays a dividend, the shareholder grosses up the cash amount to a notional pre-corp-tax figure, pays personal tax on the grossed-up amount, and claims a *dividend tax credit* (DTC) calibrated to offset the corporate tax already paid.  

Integration is approximate, not exact — it works best when the actual corporate rate matches the rate the gross-up and DTC are calibrated to; different provinces and income sources produce small over- or under-taxation.  
The takeaway: paying yourself a dividend isn't "double-taxed" the way corporate dividends are in some other jurisdictions; the system tries hard to make it neutral.  
For the full integration framework and dividend mechanics, see [Shareholder-Dividends.md](Shareholder-Dividends.md).  


# Paying yourself: salary vs. dividends

A CCPC owner-manager has two main ways to extract money from the corporation: *salary* (employment income) or *dividends* (a distribution to the shareholder).  
Most owner-managers use a mix; the choice is a tradeoff rather than a tax-driven decision in either direction, since *Integration* makes the pure-tax result roughly equivalent.

**Salary** is paid to the owner in their capacity as an *employee*:
- Deductible to the corporation as a business expense — reduces ABI and therefore corporate tax
- Triggers a *T4* slip to the employee and a *T4 Summary* to CRA at year-end
- Requires a CRA *payroll* (RP) account; *source deductions* (federal and provincial income tax, CPP, sometimes EI) are withheld and remitted monthly or quarterly
- Owner-managers controlling more than 40% of voting shares are generally *exempt from EI* but still pay CPP — both the employee and employer halves, since the corp is the employer
- Generates *RRSP contribution room* (18% of earned income, up to the annual cap) and *CPP credits* toward future retirement benefits
- Counts as personal *earned income* for mortgage qualification, child-care expense deductions, and similar tests

**Dividends** are paid to the owner in their capacity as a *shareholder*:
- *Not* deductible to the corporation — paid out of after-tax retained earnings
- Trigger a *T5* slip to the shareholder and a *T5 Summary* to CRA, filed by Feb 28
- No source deductions, no CPP, no EI — dividends are not employment income
- Do not generate RRSP room or CPP credits
- Eligible for the *dividend gross-up and tax credit* on the personal return, per *Integration*
- Subject to a corporate-law *solvency test* (CBCA s.42 or provincial equivalent) before the directors can declare them
- Can be designated *eligible* (from the GRIP pool), *non-eligible*, or *capital* (from the CDA) — each with its own gross-up and DTC; see [Shareholder-Dividends.md](Shareholder-Dividends.md)

Practical tradeoffs:
- Salary advantages: builds RRSP room, builds CPP credits, counts as earned income for personal-finance purposes, predictable monthly cash flow
- Dividend advantages: simpler administratively (no payroll account, no monthly remittances, no T4), more flexible timing, the only path to recover the corporation's NERDTOH/ERDTOH refundable balances
- A common pattern is enough salary to maximize RRSP room (or to hit the CPP *maximum pensionable earnings*), then top up with dividends as needed for cash flow

The full optimization is personal — it depends on tax bracket, retirement strategy, mortgage plans, and family income-splitting considerations.  
Note in particular the *TOSI* rules under ITA [s.120.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-120.4.html), which limit splitting through dividends to family members who are not active in the business.  
For dividend mechanics, see [Shareholder-Dividends.md](Shareholder-Dividends.md); a dedicated payroll page is in progress — see [Payment.md](Payment.md).  


# Sources of law

When a question gets specific, several layers of authority can apply:

- ***Income Tax Act*** (ITA) — primary federal tax statute (R.S.C. 1985, c.1 (5th Supp.)); organized into numbered Parts, each imposing a distinct kind of tax (Part I = main income tax; Parts III and III.1 = excess-dividend taxes; Part IV = inter-corporate dividend tax; Part XIII = non-resident withholding); when you see "ITA s.NNN" or "Part IV tax", it's an ITA reference
- ***Income Tax Regulations*** — federal secondary legislation; same legal force as the ITA, fleshes out operational detail (prescribed rates, prescribed forms, prescribed manner of election)
- **Provincial tax acts** — e.g. Ontario's *Taxation Act, 2007*; provincial corporate rates, provincial DTCs, and provincial credits live here, not in the ITA
- **Tax treaties** — bilateral agreements (e.g. *Canada-US Tax Convention*) that can override the ITA in cross-border situations; the reduced 5% / 15% withholding rates on dividends paid to non-residents come from treaties, not from the ITA itself
- **Corporate statutes** — the *Canada Business Corporations Act* (CBCA) and provincial equivalents (*OBCA*, *ABCA*, etc.); govern whether a corporate action is *legally valid* in the first place — e.g. CBCA s.42 sets the solvency test for declaring a dividend, and passing every ITA mechanic doesn't help if the dividend was illegal under the corporate statute
- **Case law** — court decisions interpreting disputed tax provisions; binding, and can change how a section applies even when the statutory text hasn't moved
- **CRA administrative position** — *Income Tax Folios* (formerly IT bulletins), CRA guides (T4012, T4015, RC4088), advance rulings, and the actual T2 / Schedule 3 / T5 forms; *not law*, but how CRA reads and administers the ITA in practice; CRA's published positions are the practical compliance baseline, though they are not legally binding and have been overturned in court — a taxpayer can challenge an interpretation in Tax Court

A useful mental model:
- The *ITA* is the primary statement of substantive federal tax law
- *Regulations* fill in binding operational and substantive detail authorized by the ITA
- *CRA guidance* describes how CRA interprets and administers the rules in practice — the practical compliance baseline, but not legally binding
- *Corporate statutes* govern whether the underlying corporate action is itself legally valid
- *Treaties* override the ITA in international situations
- *Case law* resolves disputed interpretations


# Key recurring concepts

These appear across the rest of this repo and on most T2 schedules.  
Each has its own page or section for the detailed mechanics.

- **SBD** — *Small Business Deduction*; reduced corporate rate on the first $500,000 of ABI per year
- **AII** — *Aggregate Investment Income*; high rate at the corporate level, partially refundable via NERDTOH
- **GRIP** — *General Rate Income Pool*; tracks capacity to designate *eligible* dividends; see [Shareholder-Dividends.md](Shareholder-Dividends.md)
- **CDA** — *Capital Dividend Account*; tracks capacity to pay tax-free *capital* dividends; see [Capital-Dividend-Account.md](Capital-Dividend-Account.md)
- **ERDTOH / NERDTOH** — *Refundable Dividend Tax on Hand* pools; refunded when the corporation pays a taxable dividend
- **Integration** — the design principle that combines corp + personal tax to approximate direct-earning tax; see [Shareholder-Dividends.md](Shareholder-Dividends.md)
- **GIFI** — *General Index of Financial Information*; standardized chart-of-accounts coding CRA uses to read your income statement and balance sheet on Schedules 100 and 125
- **ACB** — *Adjusted Cost Base*; the tax cost of an investment, used to compute capital gain or loss on disposition; see [Adjusted-Cost-Base.md](Adjusted-Cost-Base.md)
- **QSBC / LCGE** — *Qualified Small Business Corporation* shares qualify the shareholder for the *Lifetime Capital Gains Exemption* on disposition; gated by tests including a 90% active-business-assets requirement


# Related

- [Adjusted Cost Base](Adjusted-Cost-Base.md)
- [Capital Dividend Account](Capital-Dividend-Account.md)
- [Shareholder Dividends](Shareholder-Dividends.md)
- [T3](T3.md)
- [T3 - Box 26 Other Income](T3-Box-26-Other-Income.md)
- [T5008](T5008.md)
- [Glossary](Glossary.md)


# Citations

- *Income Tax Act* (R.S.C. 1985, c.1 (5th Supp.)): https://laws-lois.justice.gc.ca/eng/acts/I-3.3/
  - [s.18(1)(p)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-18.html) — limits on deductions for a Personal Service Business
  - [s.120.4](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-120.4.html) — *Tax on Split Income* (TOSI), restricting income splitting through dividends to non-active family members
  - [s.123.5](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-123.5.html) — additional 5% federal tax on PSB income
  - [s.125](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-125.html) — Small Business Deduction; s.125(3) sharing among associated corporations; s.125(5.1) AII grind and large-CCPC reduction of the business limit; s.125(7) definition of *Personal Service Business* and the five-full-time-employees safe harbour
  - [s.256(5.1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-256.html) — *control in fact* test relevant to CCPC status
- *Income Tax Regulations* (C.R.C., c.945): https://laws-lois.justice.gc.ca/eng/regulations/C.R.C.,_c._945/
- *Excise Tax Act* (R.S.C. 1985, c.E-15) — federal statute governing GST/HST: https://laws-lois.justice.gc.ca/eng/acts/E-15/
- *Canada Business Corporations Act* (R.S.C. 1985, c.C-44): https://laws-lois.justice.gc.ca/eng/acts/C-44/
- Ontario *Taxation Act, 2007* (S.O. 2007, c.11, Sched. A): https://www.ontario.ca/laws/statute/07t11
- CRA — *T4012 — T2 Corporation Income Tax Guide*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/t4012.html
- CRA — *RC4088 — General Index of Financial Information (GIFI)*: https://www.canada.ca/en/revenue-agency/services/forms-publications/publications/rc4088.html
- CRA — *Corporation tax rates* (current federal and provincial rates by year): https://www.canada.ca/en/revenue-agency/services/tax/businesses/topics/corporations/corporation-tax-rates.html
- CRA — *Income Tax Folios* index: https://www.canada.ca/en/revenue-agency/services/tax/technical-information/income-tax/income-tax-folios-index.html


# TODO

- Cross-link from the existing pages' "Related" sections once stable
- Consider a small diagram of the two-bucket income flow (ABI / AII) into the dividend pools (GRIP / CDA / ERDTOH / NERDTOH) and out to the shareholder
