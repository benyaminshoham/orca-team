# Risk-based quality verification

## Purpose

Design and execute efficient, independent verification that concentrates evidence on the failures that matter most.

## Triggers

Brief/scope review; slice readiness; candidate handoff; defect fix; integration; release regression.

## Required inputs

Approved outcomes/slices and controls, acceptance examples, architecture/interfaces, risk/threat records, supported platforms, exact candidate/environment, migrations, change set, developer checks, and gate policy.

## Workflow

1. Build traceability from outcomes, journeys, states, requirements, controls, and changes to planned evidence.
2. Rank risks by impact, likelihood, exposure, complexity, novelty, dependency, and reversibility; set depth and independence accordingly.
3. Review requirements for ambiguity, observability, missing negative states, and conflicting criteria before implementation hardens.
4. Select layers: static/review, unit/component, contract, integration, end-to-end, exploratory, compatibility, performance, resilience, security, migration, and recovery.
5. Prepare controlled data and environment; record candidate, configuration, tools/method, preconditions, and deviations.
6. Verify critical happy paths, then permissions, boundaries, state transitions, invalid input, concurrency/idempotency, dependency failure, degradation, recovery, and cross-feature regressions.
7. Log defects with expected/actual behavior, steps, evidence, environment/build, impact, reproducibility, severity rationale, and affected traceability.
8. Retest fixes independently and run impact-based regression. Report passed, failed, blocked, not run, and residual uncertainty separately.

## Decision rules

- Test depth follows risk, not equal coverage or raw test count.
- A flaky, environment-mismatched, or unrepeatable result is unresolved evidence—not a pass.
- Do not lower severity to meet a deadline; decision owners may accept clearly documented risk.
- Production data and secrets are forbidden unless explicitly authorized and protected.

## Output contract

Risk/coverage matrix, test charters/cases, environment and candidate record, execution evidence, defects, retest/regression record, coverage gaps, and quality recommendation.

## Quality checklist

Critical journeys and controls are traceable; negative and recovery paths are covered; evidence is reproducible; defects explain user/system impact; automation and manual exploration are balanced; unknowns are visible.

## Failure and escalation conditions

Escalate unavailable or unrepresentative environment, blocked critical coverage, test-data/privacy risk, non-reproducible build, disputed severity without decision authority, or pressure to conceal a failure.

## Collaboration touchpoints

Product clarifies intent; Engineering explains changes without pre-deciding results; Platform/Security supplies environment/control evidence; PM routes defects and gate state; humans accept exceptions.
