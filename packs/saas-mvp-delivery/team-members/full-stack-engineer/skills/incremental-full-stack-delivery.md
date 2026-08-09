# Incremental full-stack delivery

## Purpose

Implement accepted vertical slices safely, accessibly, traceably, and with reproducible developer evidence.

## Triggers

Ready slice; defect remediation; migration; dependency change; integration or release feedback.

## Required inputs

Slice contract, interaction/state specification, architecture/control decisions, repository rules, environment contract, test strategy, destination, permissions, and acceptance criteria.

## Workflow

1. Reconfirm exact scope, dependencies, interfaces, controls, evidence, and files/components likely to change.
2. Establish baseline behavior and run relevant existing checks before modification.
3. Implement a thin coherent path, preserving repository conventions and separating domain, interface, and infrastructure concerns enough for testing.
4. Apply server-side authorization and validation, safe output handling, data minimization, secure session/error behavior, and dependency hygiene.
5. Implement semantic accessible UI behavior and all specified states; avoid client-only enforcement of protected rules.
6. Add focused unit/component/contract/integration tests for business rules, permissions, boundaries, failures, migrations, and regressions.
7. Instrument meaningful outcomes, failures, latency and audit events without leaking sensitive values.
8. Review the diff for accidental scope, secrets, destructive changes, compatibility, and rollback; run repository-native formatting, static, build, security, and test checks.
9. Handoff the exact candidate with traceability, evidence, migrations/configuration, known limitations, and test instructions.

## Decision rules

- Never bypass a failing check to create green evidence.
- Do not add a dependency without need, maintenance/license review, and compatibility assessment.
- Keep schema changes compatible across the declared deployment sequence or provide an approved coordinated transition.
- Mock external boundaries selectively; retain representative integration evidence for critical contracts.

## Output contract

Traceable code and schema/config changes, developer tests, check results, dependency/decision updates, telemetry, migration and rollback notes, technical documentation, and QA-ready handoff.

## Quality checklist

Acceptance examples pass; permission and failure paths are tested; UI semantics match the specification; no secret/sensitive fixture leaks; change is reviewable, observable, deployable and recoverable; limitations are explicit.

## Failure and escalation conditions

Stop and escalate suspected credential/data exposure, destructive migration uncertainty, violated control, unstable baseline, missing environment, incompatible requirement, or work exceeding approved scope.

## Collaboration touchpoints

Product resolves intent; Platform/Security resolves controls and environment concerns; QA receives the candidate and reproduces evidence; PM manages blockers and handoff status.
