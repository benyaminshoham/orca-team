# Lifecycle, artifacts, and evidence

## Lifecycle principles

- Start with the decision and the non-ML baseline, not a preferred model.
- Predeclare acceptance measures, slices, comparison rules, and stopping criteria
  before inspecting final evaluation results.
- Preserve traceability from project requirement through data, code/configuration,
  model, evaluation, risk treatment, release decision, and operational signal.
- Separate development data from final evaluation evidence. Prevent direct and
  indirect target, identity, time, group, and duplicate leakage.
- Prefer the simplest approach that meets the approved outcome and risk thresholds.
- Treat documentation, monitoring, rollback, and retirement as product artifacts,
  not post-release extras.

## Minimum artifact set

| Artifact | Accountable owner | Minimum evidence |
|---|---|---|
| Product and measurement brief | Product & Domain Lead | Decision workflow, baseline, users/affected parties, outcomes, harms, thresholds, exclusions, operating assumptions |
| Data contract and release | Data Engineer | Schema/semantics, source authority, version, lineage, transformations, split policy, quality results, access and retention controls |
| Data card | Data Engineer | Motivation, composition, provenance, collection/annotation, preprocessing, intended and prohibited uses, representativeness, known gaps, maintenance |
| Experiment protocol and record | ML Engineer & Scientist | Hypothesis, baseline, data/model/config versions, environment, metrics/slices, uncertainty method, budget, stopping rule, results including failures |
| Model release and model card | ML Engineer & Scientist | Version, intended use/users, architecture/dependencies, evaluation context and results, limitations, ethical/risk considerations, monitoring and update assumptions |
| Risk register and validation finding | Responsible AI & Validation Reviewer | Context, affected parties, hazards/misuse, likelihood/impact rationale, controls, test evidence, unresolved findings, recommendation |
| Release and operations plan | Product Lead owns intent; specialists own controls | Rollout stages, human oversight, monitoring, alert thresholds, ownership, incident response, rollback, update and retirement rules |
| Integrated closure packet | Project Manager | Accepted artifacts, gate decisions, approvals, residual risk, operational handoff, cleanup, and reconciled task state |

## Evidence quality

Evidence is attributable, versioned, reproducible to the degree appropriate,
representative of intended conditions, protected from contamination, and explicit
about uncertainty and limitations. Report negative and inconclusive results.
Aggregate metrics are insufficient when meaningful slices or failure modes differ.
Do not imply causal, fairness, safety, or real-world benefit claims beyond the
study design.

For model comparisons, keep data and evaluation conditions aligned, use a decision-
relevant baseline, report uncertainty or variability, and explain practical rather
than merely numerical significance. For generative systems, assess the end-to-end
system—including prompts, retrieval, tools, filters, and human workflow—not only
the underlying model.

## Change and lifecycle control

Version data, features, labels, code, configuration, dependencies, prompts,
retrieval corpora, models, thresholds, and evaluation suites. Define which changes
require regression testing, independent revalidation, user notice, approval, or a
new release. Monitoring must map to predeclared action thresholds and named owners.
Retire or restrict a system when evidence no longer supports its intended use.
