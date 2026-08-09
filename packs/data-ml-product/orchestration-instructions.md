# Orchestration instructions

## Project binding

The pack is read-only. The Project Manager & Orchestration Lead collects the
required documents and answers in [Project intake and binding](shared-project-knowledge/project-intake-and-binding.md),
records facts, sources, assumptions, unknowns, selected conditional variants,
authority, and definition of done in a project brief outside the pack, and obtains
human approval. A material change triggers brief and plan reapproval.

## Workstreams and decomposition

1. **Product and domain framing:** decision workflow, users and affected parties,
   current baseline, intended benefit, harms, measures, constraints, and non-ML
   alternative. Accountable: Product & Domain Lead.
2. **Data readiness:** source authority, contracts, access, profiling, lineage,
   transformations, split policy, quality tests, and data card. Accountable: Data
   Engineer.
3. **Model development:** baseline, experiment protocol, candidate implementation,
   reproducibility, evaluation, and model card. Accountable: ML Engineer & Scientist.
4. **Risk and independent validation:** context mapping, risk register, test
   challenge, evidence review, residual-risk statement, and gate recommendation.
   Accountable: Responsible AI & Validation Reviewer.
5. **Delivery control and integration:** plan, tasks, status, accepted handoffs,
   integrated evidence, cleanup, and closure. Accountable: PM.

The PM decomposes these into assignments small enough to have one owner, explicit
inputs, an artifact destination, acceptance criteria, validation evidence, and a
defined receiver.

## Invocation and dependencies

1. Invoke the Product & Domain Lead and Reviewer during project binding to expose
   domain assumptions and risk-tier implications.
2. Obtain plan approval before substantive data or model work.
3. Data discovery and baseline design may proceed in parallel after the product
   decision and target are stable enough, but candidate training may not consume
   data until the Data Engineer issues an accepted version and split contract.
4. The Reviewer may plan validation in parallel but must not issue a final finding
   until the data card, evaluation package, model card, and product acceptance
   evidence are complete.
5. Deployment or external release remains blocked until all activated gates pass
   and the accountable human accepts residual risk.

Limit concurrency to prevent conflicting dataset, model, configuration, or report
edits. Separate builders and independent reviewers for release-gate artifacts.

## Workspace and ownership

The runtime brief defines an artifact registry outside this pack. Every artifact
entry records owner, contributors, version or immutable identifier, source inputs,
status, approvals, and consumers. Use stable paths or document identifiers and do
not overwrite approved evidence. Data and model artifacts must have lineage to
code/configuration, environment, source data, and evaluation results. Secrets,
personal data, production extracts, and credentials never enter task descriptions
or the knowledge pack.

## Handoff contracts

| Sender | Receiver | Required artifact | Acceptance criteria and feedback loop |
|---|---|---|---|
| Product & Domain Lead | Data Engineer, ML Engineer, Reviewer | Product and measurement brief | Decision, population, outcomes, harms, thresholds, exclusions, authority, and unresolved assumptions are explicit; receivers reject ambiguity through PM |
| Data Engineer | ML Engineer & Scientist | Versioned dataset release and data card | Schema, provenance, use authority, transformations, splits, quality tests, limitations, and reproducible identifier are complete; ML role returns defects through PM |
| ML Engineer & Scientist | Product Lead, Reviewer | Baseline/candidate evaluation package and model card | Reproduction instructions, metrics with uncertainty, slice/error results, comparison, intended use, limitations, and operational assumptions are evidenced |
| Product & Domain Lead | Reviewer | Domain acceptance assessment | Product measures and workflow fit are assessed against predeclared criteria; overrides and limitations are recorded |
| Reviewer | Data or ML accountable owner | Validation findings | Each finding includes evidence, severity, affected gate, corrective condition, and retest method; owner responds with fix or reasoned dispute |
| Reviewer | PM and human release owner | Independent release recommendation | Scope, methods, passed/failed conditions, residual risks, conflicts, and release/conditional-release/reject recommendation are explicit |
| PM | Human owner | Integrated closure packet | All deliverables, gates, approvals, lineage, monitoring/rollback ownership, unresolved risk, cleanup, and task reconciliation are evidenced |

The PM accepts or rejects contract completeness; specialists and Reviewer retain
substantive authority. Rejected work returns to its owner with actionable feedback
and a recorded retry.

## Quality and approval gates

1. **Binding gate — human:** project brief, risk tier, variants, authority, and
   definition of done approved.
2. **Plan gate — human:** task graph, evidence plan, capacity, milestones, and
   approval points approved before dispatch.
3. **Problem gate — Product Lead:** decision context, non-ML baseline, outcome and
   harm metrics, thresholds, and exclusions are testable.
4. **Data readiness gate — Data Engineer; Reviewer challenges:** authority,
   representativeness, leakage controls, lineage, quality, splits, and data card
   satisfy the contract.
5. **Experiment readiness gate — ML role:** baseline, protocol, compute/data
   budget, reproducibility, evaluation slices, and stopping rules are declared.
6. **Model evidence gate — ML role; Product Lead assesses domain fit:** candidate
   evidence meets predeclared technical and product thresholds without hidden test
   reuse; model card is complete.
7. **Independent validation gate — Reviewer:** evidence is reproducible enough,
   activated risk tests pass, findings are resolved or explicitly accepted by the
   authorized human, and monitoring/rollback controls match residual risk.
8. **Release gate — human:** accountable human reviews the independent
   recommendation and accepts or rejects residual risk.
9. **Closure gate — human:** integrated validation, operational ownership,
   cleanup, artifact registry, and closure record are complete.

## Conflict resolution and escalation

- Product intent and domain tradeoffs belong to the Product & Domain Lead within
  the approved brief; technical feasibility belongs to the relevant specialist;
  independent findings belong to the Reviewer; residual-risk acceptance and scope
  changes belong to the named human authority; operational sequencing belongs to
  the PM.
- Evidence outranks preference. Record the competing claims, evidence, owner, and
  decision. The PM facilitates but does not decide outside PM authority.
- A rejected handoff may be retried within the approved plan. Repeated failure,
  changed acceptance criteria, material compute/data cost, unsafe testing, missing
  authority, or unresolved severity-high findings require escalation and plan
  reapproval.
- Stop affected work immediately for unauthorized data, suspected leakage or
  compromise, uncontrolled harmful output, invalid evaluation, or inability to
  identify an accountable release owner. Continue unrelated safe work when useful.

## Completion and integration

The PM integrates only accepted artifacts and verifies linkages among product
requirements, data versions, model versions, evaluation results, risk findings,
release controls, monitoring, rollback, and ownership. Run cross-artifact
consistency and required regression checks; reconcile the task system; preserve
approved evidence; remove or hand over temporary resources according to policy;
and issue a residual-risk summary. Completion requires every activated gate,
deliverable, approval, operational owner, and definition-of-done condition to be
evidenced, followed by explicit human closure.
