# Framework Primer

Diátaxis distilled for this repo: what the framework claims, the vocabulary the rest of this plan
uses, and the parts of the doctrine that constrain how the plan is executed. This primer is a
summary; the canonical text is [diataxis.fr](https://diataxis.fr/).

## The map

Diátaxis holds that documentation serves a practitioner along two independent axes:

- *Action vs cognition*: practical knowledge (knowing *how*) vs theoretical knowledge (knowing
  *that*)
- *Acquisition vs application*: the user at *study* (acquiring skill) vs the user at *work*
  (applying skill)

The two axes yield exactly four kinds of documentation — the framework's claim is that this
enumeration is complete ("there is simply no other territory to cover"):

| | Serves study (acquisition) | Serves work (application) |
|---|---|---|
| **Practical (action)** | Tutorial | How-to guide |
| **Theoretical (cognition)** | Explanation | Reference |

The site's cooking analogy locates each kind: a tutorial is teaching a child to cook; a how-to
guide is a recipe; reference is the information on the back of a food packet; explanation is an
article on culinary social history.

## The four kinds

### Tutorial

A lesson: a guided, hands-on experience whose purpose is that the learner *acquires skill*, not
that a task gets done. The tutor takes responsibility for success; the path is single and
controlled; the environment is contrived and safe to restart. Discipline: show the destination up
front, deliver visible results early and often, minimize explanation (link out instead), ignore
options and alternatives, and aspire to flawless reliability — a step that fails destroys the
learner's confidence. Voice: first-person plural ("First, we…"), with expected-output checkpoints
("The output should look something like…").

### How-to guide

Directions for a competent user pursuing a goal of their own: from problem to solution, in the
real world, with the user responsible for the outcome. Discipline: address the user's task, not
the machinery's operation; assume competence; omit teaching and digression; accommodate real-world
branching with conditional imperatives ("if you want x, do y"); title the guide with exactly what
it shows how to do. A how-to guide can be complex and a tutorial elementary — the split is
learning vs working, not basic vs advanced.

### Reference

Neutral technical description, consulted rather than read. Discipline: austere — describe, and do
nothing but describe; no instruction, no opinion, no digression; be consistent in format so the
user can predict where facts live; let the structure of the reference mirror the structure of the
thing described; illustrative examples are welcome so long as they stay illustration, not
instruction. The practical test against explanation: reference is consulted *while working*;
explanation is read *away from the work*.

### Explanation

Discursive treatment of a topic that permits reflection: context, background, connections, design
rationale, trade-offs. The "about-ness" test: an explanation page's title should tolerate an
implicit "About…" prefix. Discipline: make connections (including to things outside the
documentation), provide context and reasons, admit perspective and opinion where honest ("w is
better than z, because…"), and resist absorbing instruction or lookup material.

## The compass

When classifying any unit of content — a sentence, a section, a page, or a user situation — ask
two questions:

- Does it inform *action* (practical steps) or *cognition* (theoretical knowledge)?
- Does it serve the user's *acquisition* of skill (study) or *application* of skill (work)?

Action + acquisition → tutorial. Action + application → how-to. Cognition + application →
reference. Cognition + acquisition → explanation. The compass applies at every scale, which is
what makes it usable on mixed pages: classify the sections, not just the file.

## Application doctrine

The parts of diataxis.fr that govern *how* to adopt the framework, and that this plan follows:

- *Not a plan, a guide*: "The point of Diátaxis is to give you a way to think about and understand
  your documentation." It is not a checklist, and creating four empty top-level sections to fill
  in is explicitly called out as the wrong move
- *Structure changes from the inside*: correct structure is supposed to *emerge* from many small,
  well-directed content improvements, not be imposed as a reorganization up front
- *The iterative loop*: choose one small thing; assess it against the user need it serves; decide
  one improvement; complete and publish it; repeat. Documentation is "never finished" but should
  always be "complete" — useful at its current stage
- *Not four boxes*: Diátaxis posits four kinds of documentation, not four mandatory divisions of
  the hierarchy. In documentation organized by topic area, the fourfold pattern repeats *within*
  topic areas rather than replacing the topic structure. (This guidance was formerly published as
  "Diátaxis in complex hierarchies"; the page is no longer on the current site, but the principle
  survives in the workflow guidance.)
- *Quality*: functional quality (accuracy, completeness, consistency, precision) is a
  precondition; Diátaxis aims at deep quality — documentation that fits the user's need at the
  moment of use, has flow, and anticipates the user. Fit-to-need is the standard every
  classification decision in this plan is judged against

## What this means for this repo

- The nine-group topic structure is compatible with Diátaxis as-is; the work is separating and
  sharpening the kinds *within* topics, not re-foldering
- The compass, applied at section scale, is the working tool for the repo's many hybrid pages —
  see [Current State](Current-State.md) for where they are and [Page Kinds](Page-Kinds.md) for
  what they should become
- The migration must be incremental page-level work with each step independently publishable —
  which also fits this repo's status-marker and maintainer-review machinery

## Citations

- [Diátaxis](https://diataxis.fr/) — home
- [Tutorials](https://diataxis.fr/tutorials/)
- [How-to guides](https://diataxis.fr/how-to-guides/)
- [Reference](https://diataxis.fr/reference/)
- [Explanation](https://diataxis.fr/explanation/)
- [The compass](https://diataxis.fr/compass/)
- [The map](https://diataxis.fr/map/)
- [Foundations](https://diataxis.fr/foundations/)
- [Workflow](https://diataxis.fr/how-to-use-diataxis/)
- [Tutorials and how-to guides](https://diataxis.fr/tutorials-how-to/)
- [Reference and explanation](https://diataxis.fr/reference-explanation/)
- [Towards a theory of quality](https://diataxis.fr/quality/)
