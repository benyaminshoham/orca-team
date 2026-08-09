# Authority and intake

## Authority order

Resolve conflicts in this exact order, highest authority first:

1. The human's current instructions.
2. The human-approved execution plan.
3. Project documents and approved execution-time intake.
4. Knowledge-pack `manifest.md` and shared project knowledge.
5. Knowledge-pack `orchestration-instructions.md`.
6. Role `system-prompt.md` files.
7. Role skill files.

A new human instruction that changes the approved plan counts as human approval only when the change and its effects are explicit. Otherwise, present the changed plan for confirmation.

## Required inputs

Require:

- one universal knowledge-pack root;
- the project workspace;
- all project documents named by the human or pack;
- access to connected task-management systems for inspection;
- access to user-visible Codex project-task tools;
- a clear definition of done or permission to derive one for approval.

Use one pack per execution. Do not merge multiple packs. Confirm the project falls within the pack's declared applicability or obtain explicit human approval for a documented exception. Never reject a pack merely because it is reusable or lacks project-instance facts; bind those facts from project documents and intake.

Create a project brief before execution planning. The brief must identify the concrete project, goals, success measures, scope, exclusions, deliverables, constraints, stakeholders, decisions, required variants, conditional roles, definition of done, and source documents. Keep the brief in the approved plan and authoritative task system, not in the read-only pack.

## Pack validation

Verify the required layout:

```text
<pack>/
├── manifest.md
├── orchestration-instructions.md
├── shared-project-knowledge/
└── team-members/
    └── <role>/
        ├── system-prompt.md
        └── skills/
```

Read every Markdown file relevant to execution. Validate:

- declared project class and applicability;
- supported outcomes, typical deliverables, exclusions, and conditional variants;
- execution-time input contract and project-binding rules;
- complete role roster and role-to-skill mapping;
- workstreams, dependencies, handoffs, reviews, approval gates, and escalation rules;
- readable role prompts and role skills;
- required project-document categories and accessible supplied documents;
- absence of contradictory instructions or accidental project-instance facts.

Treat the pack as read-only throughout execution. Resolve normal project-specific values, choices, and conditional branches through execution intake and record them in the proposed project brief and approved plan. If a defect changes the reusable team contract, stop, explain the exact defect and impact, obtain approval, and update it through `build-agent-team` or another explicitly approved process before continuing.

## Execution interview

Do not repeat questions answered by the pack or documents. Resolve or explicitly waive:

- workspace, pack, and project-document locations;
- concrete goals, scope, deliverables, stakeholders, and success measures required by the pack's intake contract;
- missing acceptance criteria or definition-of-done details;
- deadlines, budgets, resource limits, and concurrency constraints;
- connected systems and external-action permissions;
- deployment or release environments;
- human approval owners and contact points;
- retry-limit override; default to three total attempts per assignment;
- any current fact that could invalidate the pack or documents.

Accept `unknown`, `not applicable`, and `decide for me`. Put PM decisions into the plan as assumptions for approval.

## Repository intake

Inspect Git state before planning.

- If no repository exists, plan to initialize one and create a clean baseline commit before worktree tasks start.
- If an existing repository is clean, identify its integration branch and current base revision.
- If an existing repository has tracked or untracked changes, ask the human whether to commit, stash, exclude, relocate, or otherwise handle them. Do not choose, delete, reset, or overwrite.
- Identify repository instructions such as `AGENTS.md`, tests, formatting, build, and release conventions; include them in task reading paths.
