# Style Guide

The canonical prose-style rules for the guide: how pages read, not what they cover.  
Content policy lives in [`../AGENTS.md`](../AGENTS.md).  
It covers the two registers, ACB conventions, cross-linking, disclaimers, and page-status / promotion machinery.  
This guide follows its own rules and reads as one worked example of the house style.  

To internalize the style fast, read a signed-off page beside a frozen raw-AI specimen:
- Signed-off: `../guide/Investments/Adjusted-Cost-Base/Adjusted-Cost-Base.md`
- Frozen specimens: `examples/HST-AI-draft.md`, `examples/Estate-Freeze-AI-draft.md`  
The rules below name what the maintainer changes on the way from the second to the first.  


## Two Voices

The guide has two registers, one per page:
- *Primer voice*: third-person factual, concept-oriented, no procedure
  - Examples: `../guide/Overview/Small-Business-Tax.md`, `../README.md`
- *Operational voice*: second-person imperative, procedure-oriented
  - Concrete debit/credit and schedule-entry walkthroughs, with worked numerical examples
  - Per-topic pages: `Adjusted-Cost-Base.md`, `T3.md`, `T5008.md`, `Capital-Dividend-Account.md`

Every rule below applies to both voices unless noted.  


## Write for the Reader, Not the Repo

Every page is the finished product a CCPC owner reads, not source that a later step compiles.  
Address that reader and no one else; the body never speaks to the maintainer or to you as its author.  

What that rules out:
- Meta-commentary on the repository or the writing process:
  - That a section is new, more examples are planned, or other pages exist as files
- Phrases narrating the document set:
  - "this is the start of a growing set", "each case follows the same shape", "as we noted for our purposes"
- Authoring scaffolding in the body:
  - A template a future example should follow, a convention for contributors, a note on what is unfinished

Maintainer-facing notes keep to their own channels, all outside the body.  
Those channels are the `STATUS:` marker, a heading status tag, a `## TODO` section, or `AGENTS.md`.  
Reader-facing cross-links are not meta: linking to a related page guides the reader and is encouraged.  


## Section Rhythm

A section is a stack of short stanzas separated by blank lines.  
A stanza is one of two things:
- 1–3 short factual sentences, each on its own line ending in two trailing spaces
  - The trailing spaces render the sentences as separate lines without a paragraph break
- A colon lead-in followed by a bullet group

A stanza sentence-line keeps its terminal period.  
Only bullets drop it.  

The canonical shape, from `Adjusted-Cost-Base.md`:

```
ACB cannot be negative.␠␠
If ROC would reduce it below zero, the excess becomes an immediate capital gain (ITA [s.40(3)](…)).␠␠
```

(`␠␠` marks the two trailing spaces; write them as literal spaces.)  

Stanzas appear in sequence with no connective tissue.  
Cut "broadly speaking", "in turn", "in essence", "consequently", "the takeaway is", "that said".  
Let the facts stand in order and trust the reader to follow.  


## Bullets

- No trailing period on a bullet
- Start each bullet with a capital letter
  - Only the first character of the bullet is affected; text after a mid-bullet colon stays as written (`Foo: bar`)
  - A leading literal keeps its own casing:
    - A `code` identifier, a bare URL, an ITA section token (`s.40(3)`), or a brand styled lowercase (`finiki`)
- One fact and one sentence per bullet; if a point needs more, add a sub-bullet rather than extending the parent line
  - To check: a period mid-bullet means two sentences, so split into separate bullets or a sub-bullet
    - Exclude periods inside a `code` span, a quoted example like `ACB cannot be negative.`, or an abbreviation
  - A semicolon is fine for the house `*Label*: description; clause` form; reserve splitting for two independent facts
- In body prose, a bullet group takes a short colon lead-in line
  - Examples: `Things that increase your ACB:`, `By jurisdiction:`, `Included in cost:`
- A section that is itself a list is led by its heading, not a separate colon line
  - Applies to `## Related`, `## Citations`, and other reference sections
- Lead-ins are sentence-fragment labels, not narrative — never `Here are the…` or `The following lists…`
- `*term*: definition` bullets use a colon, never an em-dash
  - `Cost of the property: typically the purchase price that you paid`


## Sentences

- Short, declarative, one fact each
- Em-dashes are rare: never a label separator, never in multi-clause chains
  - Use one only to separate an independent clause from a mid-sentence qualification
  - `*GST/HST* runs alongside income tax — rate and structure vary by province`
- Treat one em-dash per paragraph as a soft ceiling; default to a colon, parentheses, comma, or a new sentence
- State rules as facts (`ACB cannot be negative.`), not as design intent (`the system is designed so…`)
- One hedge per claim at most; do not stack `generally` / `typically` / `approximately` / `for the most part`
- Caveats fold inline as parentheticals or sub-bullets
  - Not as separate `Note that…` or `It is important to…` pointer-sentences
- Drop filler intensifiers and meta-labels: `really`, `simply`, `worth a short note`, `as a pointer`
- For partial coverage, write `touched on but not worked through`
  - Avoid the lawyerly `sketched` / `pointed at but not worked`
- Introduce and clarify an ambiguous term once, where it first appears
  - Do not re-qualify it in later contexts where the meaning is already settled


## Line Length

- Keep each line under 120 reader-visible characters
  - Count the rendered text: emphasis markers and backticks are free, a link counts as its display text
  - The bullet prefix and indentation count toward the limit
- Fix a long line by simplifying, shortening, or splitting into sub-bullets; never by hard-wrapping mid-sentence
- Exempt: citation and link entries whose length is a bare URL, and before/after specimen lines
  - A URL is one unbreakable token; a specimen must stay verbatim


## Headings

- `#` for the page title (one per file), `##` for sections, `###` for sub-sections
- Title Case at every level, page title and sections alike
  - Capitalize the first and last word and every principal word
  - Lowercase the minor words (articles, conjunctions, short prepositions) unless they open or close the heading
    - `a`, `an`, `the`, `and`, `or`, `nor`, `of`, `to`, `in`, `on`, `for`, `with`, `vs`
  - Acronyms and mixed-case or digit-bearing tokens keep their own casing
    - `GST/HST`, `ACB`, `Box 26`, `s.39(4)`, `T2`, `Part III.1`
  - Both parts of a hyphenated compound are capitalized: `Year-End`, `Owner-Manager`, `Non-Eligible`, `Zero-Rated`
  - Write `vs`, not `versus`, and keep it lowercase: `Book Cost vs ACB`, `Asset vs Share Purchase`
- Noun phrases or concrete operations:
  - `Trading Fees`, `Sources of Law`, `Three Deduction Channels`, `Declaring a Dividend`
- Never rhetorical or marketing-style: no `Why X matters`, `Understanding Y`, `What you need to know about Z`
- Name the subject, don't gesture at it: state what the section covers as a plain table-of-contents entry would
  - Not a placeholder the reader must open the section to decode
  - `The Two Structures` → `Asset Purchase vs Share Purchase`; `The Freeze Outcome` → `Fixing Value and Shifting Growth`
  - A count-plus-generic-noun (`The Two Structures`) or a bare abstraction (`Key Considerations`) is a cliffhanger
  - `Three Deduction Channels` works only because `deduction channels` already names the subject
- Short: 2–6 words is typical
- A trailing status tag on a heading is the maintainer's progress annotation, not heading text
  - Forms: `\[done]`, `\[meh]`, or the HTML comments `<!-- [done] -->` / `<!-- [wip] -->` / `<!-- [meh] -->`
  - It is the one exception to the noun-phrase rule
  - Leave these tags exactly as written; only the maintainer adds, moves, or removes them


## Voice and Pronouns

- Primer voice: third-person factual (`A corporation is…`, `Active business income is taxed at…`)
- Operational voice: second-person imperative for the reader-as-bookkeeper (`Debit X`, `Maintain a running total`)
  - First-person plural only for shared bookkeeping conventions (`we want to roll up to GIFI codes`)
- Disclaimers and uncertainty are first-person
  - `The following is my understanding as of 2026.`, `I am not an accountant`


## Emphasis

- `*italics*` for a tax term as it is introduced or contrasted
  - ITA, CRA, GST, HST, T1, T2 and similar drop the italics once they read as common nouns
- `` `code` `` only for actual spreadsheet identifiers, formula names, GIFI codes, CRA box labels, and ledger account names
  - `HST receivable`, `Cost of sales`, `S3 Part 3 Box 450`
- "GIFI" labels only an official four-digit rollup code
  - A sub-code carrying an internal `-N` suffix is a bookkeeping convention, not a CRA code
    - Write it as `(8518-1)` or "code 8518-1", never "GIFI 8518-1"
- Schedule names: spell out on first use within a section (`Schedule 3`), then abbreviate (`S3`)
  - Do not mix the two forms inside one section


## Citations

- Inline parenthetical the first time a rule appears, linked to laws-lois: `(ITA [s.47(1)](https://laws-lois.justice.gc.ca/eng/acts/I-3.3/section-47.html))`
- A `## Citations` section near the end of every mature page
  - Each entry is the source then a short hyphen-explanation of what it covers:
    - `[s.40(3)](…) - deemed capital gain when ACB would be driven below zero`
- Citations are concrete: cite the ITA section, CRA form/schedule/guide, or Bank of Canada rate directly
  - Never a vague "per CRA guidance" without a pointer


## Page Shape

A mature page runs in this order:
1. `**Who this is for**:` line or bullet list
2. Optional `**TLDR**:` line or block
3. `Limitations:` block
4. Walkthrough sections (the body)
5. `## Related`: sibling pages
6. `## Citations`: ITA sections, CRA forms, external resources
7. `## Links` (optional): informal external references
8. `## TODO` (optional)

A non-mature page carries its `STATUS: …` marker as the very first line, then a blank line, then the `# Title`.  
The marker stands in for the `**Who this is for**` opener until the page is promoted.  
See [`../AGENTS.md`](../AGENTS.md) for the status states and the promotion steps.  


## Worked Examples and Diagrams

- Primer voice grounds terms with small parentheticals:
  - `(e.g. an ETF)`, `(FutureTax, TaxCycle, ProFile)`, `(industry jargon for the main return)`
- Operational voice carries explicit worked examples:
  - Concrete dollar values; a `Year 1 / Year 2 / Year 3` progression where state evolves
  - `→` arrows for the running result, and debits/credits as labelled ledger lines:
    - `Year 1 ROC: $2.00/unit × 100 = $200 → total ACB: $800.00, per-unit ACB: $8.00`
- Mermaid in fenced ```` ```mermaid ```` blocks for conceptual flow diagrams
- PNG screenshots only for real CRA / brokerage forms and tooling
  - Co-located in the page's folder, referenced by bare filename
  - Account numbers and identifying detail redacted


## Canadian English

Use Canadian spelling throughout, matching the existing pages.  
Typical cases: behaviour, flavour, favourable, neighbour, cheque, licence (noun), centre.  
Keep tax-term and form spellings as the CRA writes them.  


## Reviewing an AI Draft

Raw AI drafts already get the structure right: the headings, the bullet groups, the citations, the page skeleton.  
What review strips is a thin layer of narrative smoothing.  
Each tell below is a cosmetic recast — wording, not the substance of a claim.  

The before-snippets are quoted as drafted, and may since have been reviewed away.  
The frozen drafts under `examples/` preserve raw AI prose in full.  

The tells, ordered by frequency in the pending pages:
- *Rhetorical or placeholder heading* → noun phrase that names the subject
  - before: `## Why a corporation has multiple classes` (`Share-Capital.md`)
  - after: `## Multiple Share Classes`
  - before: `## The Two Structures` (`Asset-vs-Share.md`)
  - after: `## Asset Purchase vs Share Purchase`
- *Em-dash appositive or clause chain* → colon, parentheses, or a new sentence
  - before: `…under paragraph (c) of the s.89(1) definition — the anti-avoidance rule for designations one of whose main purposes is to artificially inflate GRIP or deflate LRIP.` (`T2-Reporting.md`)
  - after: end the sentence at `definition`, then start a new one: `That paragraph is the anti-avoidance rule for designations whose main purpose is to inflate GRIP or deflate LRIP.`
- *Em-dash as a label separator* → colon
  - before: `ABI: *Active Business Income* — income from carrying on an active business; gets the SBD…` (`Glossary.md`)
  - after: `ABI (*Active Business Income*): income from carrying on an active business; gets the SBD…`
- *Bullet packing two facts* → split into separate bullets or a sub-bullet
  - The tell: two sentences, or a semicolon joining two independent clauses
  - before: `*Two taxpayers*: the corporation files its own T2 return and the owner files a personal T1; money crossing between them is salary, a dividend, a loan, or a benefit` (`Corporate-Structure.md`)
  - after: keep the first clause on the bullet, move `money crossing between them is salary, a dividend, a loan, or a benefit` to a sub-bullet
- *Lawyerly partial-coverage phrasing* → plain wording
  - before: `Incorporation mechanics (name search, articles filing, annual returns) are sketched, not worked through` (`Corporate-Structure.md`)
  - after: `…are touched on, not worked through`
- *Verb-led or narrative sentence opener where a label fits* → colon lead-in fragment
- *Multi-sentence explanatory paragraph* → a stanza of one-sentence lines, or a colon lead-in + bullets
- *Hedge stacking* (`generally`, `typically`, `usually` piled on one claim) → one hedge at most
- *`Note that…` / `It is important to…` pointer-sentence* → inline parenthetical or sub-bullet
- *`**Label**: long sentence.` paragraph* → the colon-bullet convention
- *Connective tissue* (`in turn`, `consequently`, `that said`) → delete; let the stanzas sequence themselves
- *Trailing period on a bullet* → remove
- *Meta-commentary addressed to the maintainer or to the AI author* → delete; the body speaks only to the reader
  - before: `This is the start of a growing set. Each case keeps the same shape:` (`CCA-Classification.md`)
  - after: drop it; the examples themselves show the shape
