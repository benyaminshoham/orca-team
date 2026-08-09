# Codex task execution

## Use user-visible Codex tasks

Use Codex's user-visible task coordination capabilities, not hidden subagents. Locate the current equivalents of:

- project listing to resolve the saved project and Git status;
- task creation with a project worktree target;
- batched task waiting and progress snapshots;
- follow-up messaging to an existing task;
- task reading for targeted diagnosis when compact waits are insufficient.

Prefer the supported task tools surfaced in the current Codex session. Do not hard-code obsolete schemas. Never archive completed tasks; the human requires all tasks to remain visible.

## Create one isolated assignment

For each dependency-ready external work item:

1. Confirm predecessors and required approvals are complete.
2. Synchronize the integration base and select the approved starting revision.
3. Create one user-visible Codex project task using an isolated worktree.
4. Give it a title matching, or closely resembling, the external work-item name.
5. Select a currently available model and reasoning effort according to task difficulty.
6. Record the Codex task identity, branch/worktree, attempt number, and start state on the external work item.
7. Treat setup-pending task identifiers as pending; do not monitor them as runnable thread IDs until Codex reports a ready task.

One assignment maps to one external work item, one Codex task, one worktree, one branch, and one acceptance contract. Parallel assignments may use the same role but must not share worktrees.

## Choose model and reasoning

Choose dynamically from models and reasoning levels exposed by the current Codex host.

- Use fast/cost-efficient options for bounded mechanical or low-risk tasks.
- Use balanced options for normal implementation and analysis.
- Use frontier/high-reasoning options for architecture, ambiguous research, difficult debugging, safety-critical work, and final integration review.
- Increase reasoning before increasing model tier when the task mainly needs deliberation.
- Avoid excessive reasoning for routine execution.

Record the choice and rationale in the approved plan. A later change that preserves the task contract is operational tuning, not a plan change.

## Minimal opening prompt

Keep the opening prompt focused. Include:

1. The full role `system-prompt.md` content under a clear role heading.
2. The exact assignment and acceptance criteria.
3. Paths to the knowledge-pack root, project documents, shared knowledge, role skills, repository instructions, and workspace.
4. The external work-item identifier/link and permission to comment only on that item.
5. The explicit list of authorized external actions, or `none`.
6. The requirement to work only in the assigned worktree/branch and commit accepted changes.
7. The standard handoff contract.

Tell the agent to read the referenced files before acting. Do not paste shared knowledge, role skills, or project documents into the opening prompt unless a path is inaccessible.

## Agent operating restrictions

Require every role agent to:

- obey the stated authority order;
- remain within its role and assignment;
- use only its isolated worktree for project-file changes;
- avoid modifying the read-only knowledge pack;
- communicate with other roles only through the PM;
- comment only on its own external work item;
- perform an external action only when explicitly authorized in its task description;
- pause for any required human or pack approval;
- commit repository changes before handoff;
- continue in the same Codex task when the PM requests clarification or revision.

## Standard handoff

Require the final task response and external task comment to contain:

- outcome summary;
- files and artifacts changed;
- commit hash and branch;
- validation/tests performed and their results;
- acceptance-criteria mapping;
- unresolved risks or blockers;
- recommended next action.

If no repository changes were required, state that explicitly and identify the produced artifact or decision evidence.

## Monitor efficiently

Use bounded batched waits for active Codex tasks and preserve returned cursors to avoid rereading final output. Batch within the task tool's current target limit. Use immediate snapshots for scheduling decisions and longer waits while work is in flight. Read a task directly only for missing detail, diagnosis, or older context.

New user input interrupts waiting. Address it, determine whether it changes the approved plan, then resume safely. Do not report unchanged snapshots.

## Safe maximum parallelism

Dispatch every dependency-ready item that fits current Codex and machine capacity. Consider:

- available task slots and creation errors;
- CPU, memory, disk, build, test, and service contention;
- expected workload weight;
- overlapping repository areas, integration risk, external API rate limits, and task-system limits.

Stagger resource-heavy tasks and back off when capacity degrades. Keep lighter independent tasks running when safe. Never trade project integrity or machine stability for task count.
