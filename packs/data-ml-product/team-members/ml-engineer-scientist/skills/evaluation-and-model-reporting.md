# Evaluation and model reporting

## Purpose

Produce decision-grade, transparent evidence about a fixed candidate's performance,
failure modes, operating conditions, and limitations, then document it in a model
card.

## Triggers

Use for final candidate evaluation, material model/system change, post-release
revalidation, incident analysis, and model-card update.

## Required inputs

Frozen candidate and interface; isolated evaluation release; predeclared metrics,
slices, thresholds, uncertainty method, and risk tests; baseline; domain acceptance
contract; intended environment; prior model card and monitoring evidence if updated.

## Workflow

1. Verify candidate, dataset, environment, and protocol identity; disclose any
   deviation or prior access to evaluation evidence.
2. Validate the evaluation set's authority, relevance, independence, time/population
   coverage, label quality, and known limits with the Data Engineer.
3. Evaluate against the incumbent/non-ML baseline using predeclared measures. Report
   uncertainty, variability, sample sizes, and threshold decisions.
4. Analyze meaningful demographic, contextual, temporal, behavioral, and
   intersectional slices when justified and lawful. Protect privacy and avoid
   conclusions unsupported by sample size or study design.
5. Perform error taxonomy and representative failure-case analysis. Test robustness
   to plausible shifts, missing/corrupt inputs, abuse, and operational boundaries.
6. Measure latency, throughput, reliability, resource/cost behavior, and fallback
   performance under deployment-like conditions.
7. For probabilistic decisions, assess calibration and threshold tradeoffs. For
   ranking, assess position/exposure effects. For GenAI, use task-grounded human and
   automated evaluation, adversarial cases, groundedness/factuality where relevant,
   content/misuse and injection tests, tool safety, and evaluator agreement.
8. Compare results with every product and harm threshold. Do not average away a
   critical failing slice or severe failure mode.
9. Publish the evaluation package and model card; state what evidence cannot prove.

## Decision rules

- Final-evaluation contamination invalidates confirmatory claims until replaced or
  explicitly downgraded to exploratory evidence.
- Aggregate improvement cannot compensate for an approved hard harm threshold.
- Absence of observed harm is not proof of safety when power or coverage is weak.
- External benchmarks and vendor reports do not substitute for intended-context
  evidence.
- A model card documents evidence and limits; it is not a release approval.

## Output contract

Evaluation package with protocol, exact versions, results, uncertainty, slices,
errors, robustness, operational measures, comparison and threshold decisions,
limitations, and reproducibility evidence; plus a model card and monitoring metric
recommendations.

## Quality checklist

- Candidate and evaluation data were fixed, versioned, relevant, and isolated.
- Measures align with the decision and include meaningful harms and operating needs.
- Results expose sample size, uncertainty, slices, failed thresholds, and limitations.
- Claims do not exceed design; contrary evidence and negative results remain visible.
- Model card and raw/derived evidence agree and can be traced to artifacts.

## Failure and escalation conditions

Escalate contamination, invalid labels, inadequate sample/coverage, irreproducible
decisive results, severe unseen failure, missed hard threshold, privacy-threatening
slice analysis, or pressure to omit adverse evidence.

## Collaboration touchpoints

Data Engineer validates evaluation provenance; Product Lead judges domain/workflow
fit; Reviewer independently challenges methods and findings; PM manages the
handoff, corrections, and gate state.

## Model card outline

1. Identity, version, owner, status, date, and change history
2. Model/system details, dependencies, inputs/outputs, and architecture summary
3. Intended users, uses, decision context, and prohibited/unsupported uses
4. Training/development data references and relevant limitations
5. Evaluation design, populations, metrics, slices, uncertainty, and results
6. Failure modes, ethical/risk considerations, security/privacy limits, and mitigations
7. Operational constraints, human oversight, monitoring, rollback, and update policy
8. Caveats, contact, and relationship to prior/superseded versions
