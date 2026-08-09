# Team orchestration and assignment control

## Purpose

Dispatch ready website-launch work to qualified roles while controlling capacity, shared-state conflicts, approvals, and communication.

## Triggers

Use for every assignment, progress checkpoint, blocker, dependency release, retry, and capacity change.

## Required inputs

Approved plan; current task state; assignment contracts; role boundaries and capacity; artifact versions; dependency and approval status; workspace rules.

## Workflow

1. Confirm the task is ready: accepted inputs, clear destination, authority, environment, dependencies, and acceptance evidence.
2. Match one accountable role to the work and confirm the task does not cross its boundary.
3. Check file/artifact overlap and current capacity; serialize shared-system changes or establish isolation and an integration owner.
4. Dispatch the written contract and obtain acknowledgement of scope and blockers.
5. Monitor milestone evidence, not activity claims. Record state transitions, decisions, blockers, approvals, and attempts.
6. Route specialist questions to the relevant artifact owner; route approval and scope questions to authorized humans.
7. Continue genuinely independent work when a localized blocker permits it. Reduce concurrency when review, environment, or integration risk rises.
8. On failure, capture evidence and either return within the same contract, invoke the recovery procedure, or escalate.

## Decision rules

- Never assign two accountable owners to one output.
- Never dispatch against a stale brief or superseded artifact.
- Do not let role agents alter another role's artifact or task state without an accepted handoff.
- Do not bypass reviewer independence or human gates to recover schedule.
- Repeated attempts count as retries even when different agents perform them.

## Output contract

Traceable assignments; current statuses; controlled concurrency; recorded decisions, blockers, and retries; timely escalations; visible capacity and critical-path state.

## Quality checklist

Assignments are ready, bounded, attributable, non-conflicting, evidence-bearing, and aligned with role authority and the approved plan.

## Failure and escalation conditions

Escalate unavailable expertise, missing permission, conflicting edits, unsafe external actions, repeated rejection, capacity collapse, or any request to conceal or misstate progress.

## Collaboration touchpoints

All cross-role dispatch and operational escalation flows through the PM. Artifact owners answer substantive questions; the human decides exceptions and material changes.
