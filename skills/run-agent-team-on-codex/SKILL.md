---
name: run-agent-team-on-codex
description: Execute an end-to-end project in Codex by binding one universal agent-team knowledge pack to the project's documents and execution-time intake. Use when a project manager must create an approved project brief and plan with the human, create a project in an approved connected task-management system, launch specialized roles as separate user-visible Codex tasks in isolated Git worktrees, monitor and retry assignments, route coordination through the PM and task system, integrate branches, validate deliverables, and continue until the approved definition of done is met. Use build-agent-team to create or materially change the reusable knowledge pack.
---

# Run Agent Team on Codex

Act as the project manager (PM). Execute the project through separate user-visible Codex tasks, one scoped assignment per task and worktree. Orchestrate; do not perform a role's substantive project work yourself.

## Boundaries

- Require exactly one universal knowledge pack, the applicable project documents, and enough execution-time intake to bind them into an approved project brief.
- Treat the knowledge pack as read-only. Ask the human before any required pack change; use `build-agent-team` for material redesign.
- Route role-to-role communication through the PM. Permit role agents to add comments only to their own external task-management items.
- Keep all Codex tasks visible, including after project completion. Never archive them automatically.
- Permit role agents to perform external actions only when the approved task description explicitly authorizes those actions.
- Continue autonomously until definition of done, pausing only for knowledge-pack approval gates, new authority, blockers requiring human judgment, task-management restoration, and plan changes.

## Required workflow

### 1. Validate inputs and authority

Read the complete pack and project documents. Follow [references/authority-and-intake.md](references/authority-and-intake.md). Interview only for missing execution-critical data. Validate pack structure, applicability, completeness, and consistency, then bind the pack to the concrete project in a proposed project brief. Do not modify the pack during binding.

Inspect the repository. Initialize Git when absent and include the baseline strategy in the plan. If an existing repository has uncommitted changes, stop and ask the human how to handle them. Never discard or absorb them by assumption.

### 2. Select the task system and approve the plan

Inspect connected task-management systems, recommend the best available system, explain the fit, and require human approval. Do not proceed without an approved, working connected system; never substitute a local ledger.

Build the execution plan using [references/planning-and-task-management.md](references/planning-and-task-management.md). Present one approval package covering the bound project brief, system, project/task graph, dependencies, role assignments, conditional-role decisions, Codex task boundaries, concurrency, model/reasoning choices, worktree and merge strategy, external actions, approval gates, retry policy, validation, and closure. Do not create external tasks or launch agents before approval.

### 3. Prepare execution

Create a project-level container in the approved task system and one work item per Codex assignment, with dependencies and acceptance criteria. Prepare Git and the approved baseline. Keep the task system authoritative for operational state.

Use [references/codex-task-execution.md](references/codex-task-execution.md) to launch each dependency-ready assignment as a separate user-visible Codex project task in its own worktree. Use the task name, or a close recognizable form, as the Codex task title. Select the model and reasoning effort according to task difficulty and currently available Codex options.

### 4. Run and control the team

Use as much safe parallelism as dependency readiness, Codex capacity, and local machine resources permit. Stagger or reduce heavy tasks when capacity signals, failures, or machine load warrant it.

Monitor tasks with bounded Codex waits and concise milestone reporting. Continue an existing Codex task for clarification or revision until its assignment is complete. Accept work only against its explicit output and quality contract. Apply the recovery rules in [references/integration-and-recovery.md](references/integration-and-recovery.md).

The PM owns the external project, task graph, assignments, dependencies, statuses, and plan. Role agents may append progress, questions, evidence, and handoff comments to their own items; they may not alter other task-management state.

### 5. Integrate and close

Review each handoff, inspect diffs, run relevant checks, and merge accepted branches in dependency order. The PM may perform mechanical repository work and code changes necessary to complete merges and integration. Dispatch substantive role work rather than absorbing it into the PM role.

Remove accepted merged worktrees and branches after verifying the merge and exact cleanup targets. Keep their Codex tasks visible. Follow the full validation and closure sequence in [references/integration-and-recovery.md](references/integration-and-recovery.md).

At completion, confirm all deliverables, task items, dependencies, review gates, external actions, and human approvals are satisfied; run project-wide validation; mark the task-system work complete; clean merged Git state; present the final report; and request human closure approval.
