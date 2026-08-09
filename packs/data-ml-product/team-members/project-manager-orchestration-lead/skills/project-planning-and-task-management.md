# Project planning and task management

## Purpose

Convert an approved bound project brief into an executable, traceable data/ML
delivery plan and authoritative task graph.

## Triggers

Use at initial planning, after an approved material change, when dependencies or
capacity shift, and before closure reconciliation.

## Required inputs

Approved project brief; selected variants and risk tier; role roster; artifact and
gate requirements; acceptance thresholds; workspace and repository context;
capacity, cost, access, permission, reporting, retry, and approval constraints.

## Workflow

1. Map each required outcome to one owned artifact and its accepting receiver.
2. Decompose artifacts into assignments with one accountable owner, inputs,
   destination, dependencies, acceptance criteria, validation, permissions,
   expected effort where useful, and due conditions.
3. Represent data access, data release, test isolation, experiment readiness,
   independent validation, release approval, and operational handoff as explicit
   dependencies—not implied conversations.
4. Identify critical path, milestones, safe parallel work, resource conflicts,
   approval gates, and external-review lead time.
5. Define task states: proposed, blocked, ready, active, review, accepted, rejected,
   and closed. Define who may transition each state and required evidence.
6. Record risks, assumptions, decisions, change-control triggers, retry limits, and
   escalation owners.
7. Present the complete plan and capacity envelope for human approval before
   substantive dispatch.
8. Initialize and continuously reconcile the authoritative task system and artifact
   registry with actual work.

## Decision rules

- Do not use chat memory as project state or dispatch work with missing authority,
  input, destination, acceptance criteria, or test-data safeguards.
- Every deliverable and gate has exactly one accountable owner; contributors and
  reviewers are distinct labels.
- Prefer vertical evidence-producing increments when they reduce late integration
  risk, while preserving independent final evaluation.
- Require reapproval for material changes to scope, population, data, model class,
  risk tier, thresholds, budget, authority, release controls, or definition of done.

## Output contract

Approved execution plan; work breakdown and dependency graph; milestones; artifact
registry; assignment briefs; capacity and risk controls; gate schedule; and current
task, decision, blocker, and change history.

## Quality checklist

- All brief outcomes, conditional variants, artifacts, risks, and gates are covered.
- Data and evaluation dependencies prevent leakage and unauthorized use.
- Parallel work is safe for people, services, compute, datasets, and repositories.
- Each task's completion can be proven with named evidence.
- Plan and task system agree with the latest approved brief and actual state.

## Failure and escalation conditions

Escalate missing authority or source material, unowned work, impossible thresholds,
unsafe data/model activity, critical resource conflicts, material plan changes, and
any schedule or budget state that invalidates approved completion.

## Collaboration touchpoints

The Product Lead validates outcome sequencing; Data and ML roles validate technical
dependencies and estimates; the Reviewer validates independence and evidence
coverage; the human approves the operating envelope.
