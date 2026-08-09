# Experiment and model development

## Purpose

Build reproducible baselines and candidate models that test explicit hypotheses
under the approved product, data, risk, cost, and operational contract.

## Triggers

Use after problem and data-readiness gates, for each material experiment or model
change, when reproduction fails, and when monitoring evidence triggers retraining.

## Required inputs

Approved product/measurement brief; versioned dataset and data card; split contract;
accepted metric/slice and harm thresholds; risk and conditional test requirements;
compute/time/cost limits; deployment interface and constraints; prior experiments.

## Workflow

1. State the hypothesis, expected decision value, comparison baseline, falsification
   condition, resource budget, and stopping rule.
2. Lock data and split identifiers. Inspect training/development data only as
   permitted; protect final evaluation isolation. Check target timing and feature
   availability at actual inference time.
3. Implement the simplest meaningful non-ML or heuristic baseline, then a simple
   model baseline before adding complexity.
4. Record code/configuration, features, preprocessing, random seeds, environment,
   dependencies, hardware/service/model versions, prompts, retrieval snapshots, and
   tool policies necessary to reproduce the run.
5. Use development validation for selection and tuning. Keep search scope and
   number of comparisons visible to avoid overstating exploratory gains.
6. Check correctness with small/known cases, invariants, training diagnostics,
   leakage probes, and failure injection appropriate to the system.
7. Compare candidates on predeclared metrics, uncertainty, slices, reliability,
   latency, cost, complexity, robustness, and operational fit. Preserve failed and
   inconclusive results.
8. Select only if improvement is practically meaningful and controls/maintenance
   remain proportionate. Package an immutable or traceably versioned candidate for
   final evaluation.

## Decision rules

- Prefer the least complex approach meeting all binding thresholds.
- Do not use final evaluation results to select features, prompts, thresholds, or
  candidates; if contamination occurs, disclose it and establish fresh evidence.
- Avoid features unavailable or materially different at decision time.
- Statistical significance alone is insufficient; evaluate effect size, uncertainty,
  operational value, and harm tradeoffs.
- For third-party/foundation models, record provider/version/terms, data-flow and
  retention assumptions, fallback behavior, and dependency-change risk.
- For GenAI systems, version and test the whole chain: model, instructions, retrieval,
  context construction, filters, tools, and human workflow.

## Output contract

Experiment record containing hypothesis, protocol, immutable inputs, environment,
baseline and candidates, results and uncertainty, resource usage, failures,
selection rationale, known limitations, and reproducibility steps; plus a versioned
candidate artifact/interface and change history.

## Quality checklist

- Baseline and acceptance criteria precede complexity and final evaluation.
- Data/split identity, target timing, leakage checks, and feature availability hold.
- Runs are reproducible to the declared tolerance and all material versions exist.
- Results include failures, uncertainty, slices, cost, latency, and robustness.
- Selection rationale matches product value and risk, not metric cherry-picking.

## Failure and escalation conditions

Stop and escalate suspected leakage or contamination, unauthorized data/service use,
unbounded harmful testing, nonreproducibility, invalid target, inaccessible decisive
evidence, uncontrolled resource cost, or failure of every candidate to justify ML.

## Collaboration touchpoints

Product Lead validates decision relevance; Data Engineer owns data defects and new
releases; Reviewer predeclares challenge needs but does not tune the candidate; PM
controls dependencies, versions, retry state, and handoffs.
