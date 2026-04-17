# Copilot Instructions

## Commands

This repository does not define build, test, or lint tooling. There are no package manifests, test runners, or CI-oriented build scripts checked in at the repository root.

- **Build:** none
- **Test:** none
- **Lint/format:** none
- **Run a single test:** not applicable; no test suite is present

## Repository architecture

This is a documentation-first repository for Canadian small-business corporate tax and bookkeeping guidance, not an application codebase. The top-level Markdown files are the primary artifacts.

- `README.md` is the hub and topic index.
- Each top-level topic file is a standalone guide for one paperwork or tax area (`Adjusted-Cost-Base.md`, `T3.md`, `T5008.md`, `Capital-Dividend-Account.md`, etc.).
- `Adjusted-Cost-Base.md` is a core conceptual document that other guides build on. `Adjusted-Cost-Base-Tracking.md` is its operational companion and contains the spreadsheet-driven workflow, formulas, and data-entry rules used to maintain ACB.
- `T3.md` and `T5008.md` translate brokerage slips into bookkeeping entries, GIFI-aligned ledger accounts, and specific T2 schedule inputs.
- `Capital-Dividend-Account.md` depends on capital gains information produced by the ACB/T3/T5008 workflows and explains how those gains flow into CDA tracking and filings.
- `Foreign-Currency.md`, `HST.md`, and `Payment.md` are present as work-in-progress topic stubs.
- `media\` contains screenshots and reference images embedded by the guides.

## Codebase-specific conventions

- Keep the audience narrow: the docs are written for owners of Canadian-controlled private corporations (CCPCs), usually dealing with corporate investment accounts holding stocks or ETFs.
- Preserve the distinction between **CRA/tax rules**, **bookkeeping conventions**, and **brokerage-specific behavior**. Several documents explicitly separate the official tax treatment from pragmatic ledger conventions used to reconcile broker statements.
- Cross-link related guides instead of duplicating explanations. The repo relies on topical pages that refer to each other through `Related` sections and inline links.
- When adding or substantially changing a topic, update `README.md` so the topic index stays current.
- Match the document structure already used across the main guides where it exists: audience/scope near the top, detailed walkthrough sections in the middle, and `Related`, `Citations`, and sometimes `TODO` sections near the end.
- Keep references concrete and source-backed. The existing guides cite the Income Tax Act, CRA forms/schedules, CRA guides, Bank of Canada rates, and other authoritative references directly in the document.
- Reuse the established bookkeeping vocabulary and account naming when touching accounting examples: GIFI-aligned account codes, explicit ledger debit/credit entries, and terms such as ACB, ROC, phantom distributions, CDA, ERDTOH, NERDTOH, and GRIP.
- For ACB-related content, keep using the repo's existing bookkeeping conventions: pooled average cost rather than FIFO/LIFO, trade-date FX for purchases/sales and commissions, payment-date FX for distributions, and "earliest date of continuous holding" as the acquisition-date convention for pooled securities.
- Spreadsheet workflows are a first-class part of the repository. `Adjusted-Cost-Base-Tracking.md` contains formulas, row-order assumptions, and transaction-type conventions that other ACB-related edits should stay consistent with.
- Preserve the work-in-progress markers where applicable. Several guides intentionally begin with `STATUS: WORK IN PROGRESS` to signal incomplete coverage.
