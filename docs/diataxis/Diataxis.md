# Diátaxis Adoption Plan

A plan for applying the [Diátaxis documentation framework](https://diataxis.fr/) to this guide.
Diátaxis identifies four kinds of documentation — tutorials, how-to guides, reference, and
explanation — arising from two axes of user need (action vs cognition, acquisition vs application),
and prescribes an iterative, inside-out way of working toward that separation.

This folder is maintainer- and agent-facing process documentation, like the
[Style Guide](../Style-Guide.md) and [Audit Instructions](../Audit-Instructions.md). Nothing here
is reader-facing guide content.

## Headline recommendation

- *Keep the topic-first structure*: the nine `guide/` groups, hub pages, and sub-page nesting stay;
  Diátaxis itself warns against reorganizing into four top-level type buckets, and its guidance for
  topic-structured documentation is to let the four kinds repeat within each topic area
- *Formalize page kinds*: the Style Guide's two voices (primer, operational) already encode the
  explanation/how-to split; extend that to an explicit taxonomy of six page kinds (hub, concept,
  task, reference, examples, tutorial) with a defined shape for each — see
  [Page Kinds](Page-Kinds.md)
- *Single-source the reference material*: rates, deadlines, GIFI account trees, and schedule/line
  mappings are duplicated across pages today; give each reference artifact one canonical owner and
  make every other appearance a link or a dated example input
- *Keep the worked-examples genre*: `X-Examples.md` pages are the repo's own invention and Diátaxis
  has no slot for them; classify them as explanation-by-worked-instance, with the existing
  "introduce no new rules" convention promoted to a stated invariant
- *Adopt tutorials narrowly*: Phase 4 adds an ACB tracker walkthrough where a safe, reproducible
  result exists; worked examples remain explanation-by-worked-instance unless the reader actively
  produces a known outcome
- *Migrate in small steps*: no big-bang restructuring; the [Migration Plan](Migration-Plan.md)
  sequences the work as per-page improvements, starting with changes existing page TODOs already
  ask for

## Files in this folder

- [Framework Primer](Framework-Primer.md) — Diátaxis distilled: the four kinds, the two axes, the
  compass, and the application doctrine, as they bear on this repo
- [Current State](Current-State.md) — assessment of the existing 87 guide pages in Diátaxis terms:
  pure exemplars, hybrid patterns, reference scatter, and the genres Diátaxis has no slot for
- [Page Kinds](Page-Kinds.md) — the target taxonomy: each page kind's Diátaxis alignment, voice,
  naming convention, section shape, and boundaries; the reference single-sourcing rules
- [Migration Plan](Migration-Plan.md) — phased work plan with concrete page lists, ordering, and
  the process constraints (status markers, validation, README index, screenshots)
- [Open Questions](Open-Questions.md) — the eight adoption decisions, decided by the maintainer
  2026-08-16; kept as the decision record

## Provenance

Prepared 2026-08-15 from a study of diataxis.fr (the four type pages, the compass, the map,
foundations, quality, and the application/workflow guidance) and a full survey of `guide/`,
`README.md`, `AGENTS.md`, and `docs/Style-Guide.md`. Sources are cited in the
[Framework Primer](Framework-Primer.md#citations).
