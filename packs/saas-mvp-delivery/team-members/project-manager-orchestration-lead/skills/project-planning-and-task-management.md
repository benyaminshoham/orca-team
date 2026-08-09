# Project planning and task management

## Purpose

Convert the approved project brief into an executable, traceable plan and keep actual work synchronized with one task source of truth.

## Triggers

Initial planning; approved scope change; dependency discovery; milestone or release replanning.

## Required inputs

Approved brief, activated variants and roster, artifact contracts, constraints, gates, definition of done, workspace/environment model, capacity, risk tolerance, and task-system authority.

## Workflow

1. Verify brief completeness; assign unresolved items an owner and blocking condition.
2. Map outcomes to MVP slices, enabling work, controls, tests, release work, and closure evidence.
3. Decompose into assignments with one accountable role, bounded artifact, acceptance evidence, dependencies, permissions, risks, and destination.
4. Build dependency graph, critical path, milestones, gates, safe parallel lanes, integration order, and capacity limits.
5. Put high-uncertainty and high-impact assumptions early; distinguish discovery, decision, implementation, review, and approval tasks.
6. Define change control, retry limits, status vocabulary, and update cadence.
7. Present scope, sequence, tradeoffs, risks, and evidence plan for human approval before dispatch.
8. Create authoritative records and continuously reconcile them with actual state.

## Decision rules

- Do not dispatch missing-input, ambiguous, unauthorized, ownerless, or untestable work.
- Do not hide release, security, privacy, accessibility, migration, observability, support, or rollback work inside feature estimates.
- Prefer vertical slices and explicit gates over discipline-wide batches.
- Require approval for material scope, timeline, budget, architecture constraint, risk posture, gate, or definition-of-done change.

## Output contract

Approved execution plan, artifact/work breakdown, dependency graph, milestones, assignment contracts, risk controls, capacity policy, gate calendar, change rules, and current task records.

## Quality checklist

Every approved deliverable and variant is represented; each outcome has one owner and evidence; dependencies and critical path are credible; parallel work avoids collisions; specialist and human authority are preserved; closure is provable.

## Failure and escalation conditions

Escalate incompatible constraints, unresolved ownership, missing approval, unbounded scope, unavailable specialist competence, or a plan that cannot satisfy the definition of done. Never manufacture estimates or certainty.

## Collaboration touchpoints

Product validates outcome/scope tasks; Engineering validates application dependencies; Platform/Security validates control and environment tasks; QA validates testability and independent gates; humans approve the plan and material changes.
