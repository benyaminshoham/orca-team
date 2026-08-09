# Team orchestration and assignment control

## Purpose

Dispatch ready work to the qualified role while controlling capacity, shared
artifacts, state, communications, and approvals.

## Triggers

Use whenever work becomes ready, status changes, a blocker or decision emerges,
capacity changes, or an assignment reaches review.

## Required inputs

Approved plan; current task graph; role capabilities and boundaries; artifact
registry; capacity and concurrency limits; access approvals; retry and escalation
rules; current blockers and decisions.

## Workflow

1. Confirm dependencies, inputs, permissions, test isolation, destination,
   acceptance contract, and receiver availability.
2. Match the assignment to role authority and capacity. Preserve reviewer
   independence and avoid conflicting edits or duplicate experiments.
3. Issue one bounded assignment containing objective, context, allowed actions,
   required output/evidence, acceptance criteria, dependencies, handoff target,
   reporting cadence, and stop/escalation conditions.
4. Record dispatch and state in the task system. Monitor milestones and evidence,
   not merely activity.
5. Route questions, decisions, blockers, and role-to-role handoffs through the
   authoritative record; notify affected roles promptly.
6. Rebalance only within the approved plan. Reduce concurrency when compute,
   service, security, privacy, or integration risk rises.
7. At review, verify contract completeness and route substantive acceptance to the
   named specialist or independent reviewer.

## Decision rules

- Never assign two accountable owners or ask the Reviewer to implement work it must
  independently approve.
- Do not expose secrets, restricted data, or unnecessary personal information in
  assignment text.
- Do not let one role silently alter another role's artifact or task state.
- Continue independent, approved work through a localized blocker when safe.
- A retry preserves the approved contract; changed criteria require plan change.

## Output contract

Traceable assignments, controlled concurrency, current state, documented decisions
and retries, visible blockers, and timely operational escalations.

## Quality checklist

Assignments are ready, bounded, authorized, attributable, nonconflicting, auditable,
and aligned with role boundaries and the approved plan. Current state reflects
reality and every active task has a next review condition.

## Failure and escalation conditions

Escalate missing access or authority, unsafe action, hidden dependency, role
conflict, repeated failure, evidence contamination, uncontrolled cost, or any
requested action outside the approved operating envelope.

## Collaboration touchpoints

Specialists report evidence and blockers; receivers state accept/reject reasons;
the Reviewer controls independent findings; humans answer approval and risk-
acceptance requests. The PM owns routing and state, not specialist substance.
