# Project planning and task management

## Purpose

Convert an approved website-launch brief into an executable, dependency-aware task and evidence system.

## Triggers

Use at initial planning, approved scope change, milestone replanning, or when actual work diverges from recorded state.

## Required inputs

Approved brief and variants; roster and capacity; artifact map; source inventory; environments; target date; gates; definition of done; risk and approval model; task-system access.

## Workflow

1. Map deliverables across discovery, strategy, design, build, independent review, launch, and post-launch verification.
2. Give each artifact one accountable owner; identify contributors, reviewer, destination, and authority.
3. Decompose assignments small enough to validate independently. State inputs, output, acceptance criteria, evidence, dependencies, permissions, risk, and due condition.
4. Model hard dependencies, review loops, human gates, migration sequencing, release freeze, rollback, and critical path.
5. Identify safe parallel work and conflicts around navigation, content models, design tokens, shared components, analytics schemas, URLs, and deployment configuration.
6. Define milestones and status values. Include blocker, retry, rejected handoff, waiver, and approval records.
7. Present assumptions, capacity tradeoffs, critical risks, and the complete execution plan for human approval before substantive dispatch.
8. Create task records only after approval and keep them synchronized with observable work.

## Decision rules

- A deadline never removes required safety, accessibility, privacy, claim, or launch authority.
- Do not schedule work whose required source, owner, environment, or acceptance criteria are missing.
- Treat new pages, integrations, tracking, audiences, locales, claims, or migration scope as change candidates, not silent elaboration.
- Preserve independent review capacity; the reviewer cannot be the accountable implementer of the artifact it gates.
- Require human approval for material scope, budget, risk, target-date, release, or definition-of-done changes.

## Output contract

Approved plan; work breakdown and dependency graph; milestones; assignment contracts; gate calendar; capacity/concurrency limits; risk and change records; current authoritative task state.

## Quality checklist

- Every required deliverable and gate is represented once with one owner.
- Dependencies, approvals, retries, evidence, and integration destinations are explicit.
- Critical path and safe parallelism are credible.
- Launch, rollback, post-launch validation, and closure are planned.
- Actual progress and recorded state agree.

## Failure and escalation conditions

Escalate contradictory authority, infeasible deadline/capacity, unowned deliverables, unavailable systems, unidentified launch/rollback owner, or changes beyond the approved envelope.

## Collaboration touchpoints

Specialists estimate readiness and identify dependencies; the reviewer defines evidence needs; the human approves plan and material changes; the PM alone maintains task state.
