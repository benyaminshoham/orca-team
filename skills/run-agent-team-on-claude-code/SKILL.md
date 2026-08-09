---
name: run-agent-team-on-claude-code
description: Execute an end-to-end project in Claude Code by binding one universal agent-team knowledge pack to project documents and execution-time intake. Use when a project manager must create an approved project brief and plan with the human, create a project in an approved connected task-management system, dispatch specialized Claude Code agents in isolated Git worktrees, monitor and retry assignments, integrate branches, validate deliverables, and continue until the approved definition of done is met. Use build-agent-team to create or materially change the reusable knowledge pack.
---

# Run Agent Team on Claude Code

Act as the project manager (PM). Orchestrate work through separate Claude Code agents; do not perform a role's substantive project work yourself.

## Boundaries

- Require exactly one universal knowledge pack, applicable project documents, and enough execution-time intake to create an approved project brief.
- Treat the pack as read-only. Ask the human before any required pack change; use `build-agent-team` for material redesign.
- Route role-to-role communication through the PM. Role agents may add comments only to their own external task-management items.
- Keep agent sessions and task records available for review after completion; do not delete history merely to tidy the workspace.
- Permit external actions only when the approved assignment explicitly authorizes them.
- Continue autonomously until definition of done, pausing only for knowledge-pack approval gates, new authority, blockers requiring human judgment, task-system restoration, and plan changes.

## 1. Validate inputs and authority

Read the complete pack and project documents. Require and validate:

- one universal knowledge-pack root;
- the project workspace and all named project documents;
- access to inspect connected task-management systems;
- a definition of done, or permission to derive one for approval.

Use this authority order: current human instructions; approved execution plan; project documents and approved intake; pack `manifest.md` and shared knowledge; pack `orchestration-instructions.md`; role prompts; role skills.

Validate the pack layout, declared applicability, deliverables, exclusions, intake contract, roles, workstreams, dependencies, reviews, approval gates, and supplied documents. Bind project-specific facts into a proposed project brief; never put them back into the reusable pack.

Inspect repository state before planning. If the repository has tracked or untracked changes, stop and ask the human whether to commit, stash, exclude, relocate, or otherwise handle them. Never choose, delete, reset, overwrite, or absorb them by assumption. For a non-repository workspace, plan Git initialization and a clean baseline commit before parallel work starts.

Interview only for execution-critical gaps: scope, success measures, constraints, deadlines, external-action permissions, environments, approval owners, connected systems, and retry-limit overrides. Record PM assumptions for approval.

## 2. Select the task system and approve the plan

Inspect available connected task-management systems. Recommend the best system that supports the project's existing context, project containers, dependencies, comments, statuses, assignments, and permissions. Do not proceed without a human-approved, working system; never substitute a local Markdown ledger.

Present one approval package before creating external work items, worktrees, or Claude Code agents. Include:

1. The bound project brief: goals, scope, exclusions, deliverables, variants, conditional roles, definition of done, assumptions, and source documents.
2. Recommended task system, project container, and complete work-item graph.
3. Each role assignment's inputs, outputs, acceptance criteria, validation, dependencies, handoffs, and authorized external actions.
4. Parallel waves, review gates, human approval gates, and dynamic concurrency limits.
5. Claude Code agent boundaries, model/effort choices, and agent isolation approach.
6. Git baseline, worktree, branch, merge, cleanup, retry, validation, release, rollback, and closure strategy.

Require explicit approval for a material change to scope, deliverables, roles, dependencies, architecture, acceptance criteria, external actions, task system, integration strategy, or knowledge pack. Operational tuning—safe sequencing, reduced concurrency, a retry within the limit, or instruction clarification—does not require plan approval.

## 3. Prepare execution

Create one project-level container when supported and one external work item per approved assignment. The task system is the operational source of truth; the PM alone edits its project, work-item, dependency, assignment, status, and milestone state. Role agents may comment only on their own item.

For each dependency-ready assignment, create one isolated Claude Code worker. Prefer a worktree-isolated subagent (`isolation: worktree`) or an independently started Claude Code worktree session. Do not use an agent team for concurrent file edits unless the work has been explicitly partitioned by file: agent-team teammates do not automatically receive separate worktrees.

One assignment maps to one external work item, one agent instance/session, one worktree, one branch, and one acceptance contract. Record the agent identity, branch/worktree, attempt number, and starting revision on the external item. Parallel assignments must not share worktrees.

Use currently available Claude models and effort levels dynamically:

- fast/cost-efficient options for bounded mechanical or low-risk work;
- balanced options for normal implementation and analysis;
- higher-capability or higher-effort options for architecture, ambiguous research, difficult debugging, safety-critical work, and final integration review.

Increase effort before model tier when the task primarily needs deliberation. Record the choice and rationale in the plan.

## 4. Dispatch and operate agents

Give every worker a focused opening prompt containing:

1. The full role `system-prompt.md` under a clear heading.
2. Exact assignment and acceptance criteria.
3. Paths to the pack, project documents, shared knowledge, role skills, repository instructions, and assigned workspace.
4. Its external work-item identifier/link and permission to comment only there.
5. Explicit authorized external actions, or `none`.
6. The isolated worktree/branch requirement and commit requirement.
7. The handoff contract below.

Tell the agent to read referenced files before acting. Do not paste large shared documents where a path is accessible.

Require each worker to stay within role and assignment; preserve the pack; communicate through the PM; pause at approval gates; commit repository changes before handoff; and perform no unauthorized external action. Continue the same worker for clarification or revision when possible.

Monitor with Claude Code's current agent surfaces (for example `/agents`, `/tasks`, or agent view) and direct session follow-ups. Keep progress reporting concise and milestone-based; do not narrate unchanged polling snapshots. Use safe parallelism only: account for dependency readiness, available capacity, CPU, memory, disk, test/service contention, repository overlap, and API/task-system limits.

## 5. Handoff, integration, recovery, and closure

Require every handoff and external task comment to contain:

- outcome summary;
- changed files and artifacts;
- commit hash and branch;
- validation performed and results;
- acceptance-criteria mapping;
- unresolved risks or blockers;
- recommended next action.

For each completed assignment, confirm the commit and base; inspect the diff; validate the output; request recoverable revisions; update the external item; then merge accepted branches in dependency order. The PM may make only mechanical merge and integration changes. Dispatch substantive feature, design, research, or specialist work to its role agent.

Resolve only mechanical conflicts directly, or semantic conflicts whose intended result is unambiguous from the approved plan and accepted artifacts. Seek plan approval when a conflict would change architecture, scope, acceptance criteria, or dependencies. Validate merged results, not only individual branches.

An assignment gets at most three total attempts unless the approved plan says otherwise. On failure, diagnose from output, task comments, repository state, and validation evidence; preserve useful committed work; correct the instructions without changing the contract; record the result; and launch a fresh isolated agent for the next attempt. Escalate after the final failed attempt or whenever new authority, a pack change, or a plan change is needed.

After an accepted branch is merged and validated, verify the exact worktree and branch, confirm no unmerged commits or uncommitted work remain, then remove that exact worktree and delete the merged branch. Never use broad paths, unresolved variables, or globs for cleanup.

Before closure, complete independent reviews required by the pack; map every deliverable to accepted evidence; run project-wide tests/build/release checks; verify security, compliance, accessibility, documentation, and operational readiness as applicable; confirm the integration branch is clean; and synchronize the task system. Present a final report with deliverables, validation evidence, decisions, external actions, residual risks, repository state, task-system state, and cleanup results, then request human closure approval.
