# Planning and task management

## Select a connected system

Inspect available connected task-management systems and their capabilities. Prefer the system that best supports the project's existing context, project containers, dependency links, comments, statuses, assignments, and required permissions. Present the recommendation and viable alternatives with tradeoffs. Require explicit human approval.

If no connected system is usable, or the approved system becomes unavailable, pause. Ask the human to connect or restore a system. Do not maintain a substitute Markdown ledger.

## Build the execution graph

Translate the approved project brief, knowledge pack, and documents into work items. Make each item:

- owned by one role;
- small enough for one coherent Codex context;
- large enough to produce a meaningful accepted result;
- bound to one Codex task and one isolated worktree;
- explicit about inputs, outputs, acceptance criteria, validation, dependencies, external actions, and handoff destination.

Create multiple assignments for the same role when parallel work is independent. Do not combine unrelated role work to reduce task count. Model every handoff and approval gate as a dependency or explicit acceptance condition.

## Approval package

Present one plan containing:

1. Bound project brief: identity, goals, scope, deliverables, selected variants and conditional roles, definition of done, assumptions, and exclusions.
2. Recommended connected task-management system and why.
3. Project container and complete work-item graph.
4. Work-item names, roles, inputs, outputs, acceptance criteria, and external actions.
5. Dependencies, parallel waves, handoffs, reviews, and approval gates.
6. Codex task boundaries and titles.
7. Dynamic concurrency strategy and machine/platform safeguards.
8. Model and reasoning selections with task-difficulty rationale.
9. Git initialization/baseline, worktree, branch, merge, and cleanup strategy.
10. Three-total-attempt default and any per-task overrides.
11. Validation, release, rollback, and closure approach.
12. Material risks and decisions requested from the human.

Require explicit approval before creating the external project, work items, worktrees, or Codex tasks.

## Plan-change boundary

Require human approval before:

- adding or removing scope, deliverables, work items, roles, or dependencies;
- changing architecture, acceptance criteria, approval gates, or authorized external actions;
- changing the task-management system or integration strategy;
- revising the knowledge pack;
- making another material change to the approved execution graph.

Do not require a plan change for:

- correcting instructions without changing acceptance criteria;
- continuing the same Codex task for clarification or revision;
- changing safe sequencing among already-independent items;
- replacing an inadequate agent for the same approved item;
- retrying within the three-total-attempt limit;
- reducing concurrency to protect capacity;
- mechanical merge and integration work within approved behavior.

Record every approved plan change in the task-management project before executing it.

## Task-system ownership

Create one project-level container when supported. Create one external work item per Codex assignment, including dependencies and acceptance criteria. Keep retries on the same work item and record every attempt in its comments.

The PM alone may create or edit the project, work items, assignments, dependencies, statuses, milestones, and plan. A role agent may comment only on its own assigned item. Require comments for meaningful progress, questions, validation evidence, and final handoff.

Use the external system as the operational source of truth. Keep state synchronized when tasks start, need attention, enter review, retry, block, complete, or change by approval.

## Progress reporting

Report to the human:

- the initial approval package;
- concise milestone and wave updates while continuing;
- human approval gates;
- blockers and new-authority requests;
- proposed plan changes;
- retry exhaustion;
- integration/release milestones;
- the final closure report.

Do not narrate unchanged polling snapshots.
