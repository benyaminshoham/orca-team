# Operating guide

## Choose the right workflow

Use `build-agent-team` when you need to create or materially revise a universal
team knowledge pack. Use `run-agent-team-on-codex` when you want to bind an
applicable pack to a concrete project's documents and execute it.

## Phase A: build the knowledge pack

1. Define the project class, applicability boundaries, and important variants.
2. Gather representative descriptions, standards, and documents as design
   inputs; do not treat one example project's facts as pack content.
3. Answer the skill's focused intake questions. `unknown`, `not applicable`,
   and `decide for me` are valid answers; delegated decisions become explicit
   assumptions.
4. Review the proposed 3–7-role team as one unit. The Project Manager &
   Orchestration Lead is mandatory and stays separate from strategic and
   specialist authority.
5. Approve each proposed local or GitHub source individually. Sources must have
   compatible licenses and pass a security review before adaptation.
6. Review the generated pack and validation report.

The pack is ready when its applicability, runtime input contract, manifest,
shared knowledge, role prompts, focused skills, dependencies, handoffs,
approval gates, and completion rules agree.

## Phase B: prepare execution

Provide exactly one applicable universal pack, the project workspace, and the
project documents required by the pack. The runner will:

1. validate the pack structure and applicability;
2. bind project documents and intake answers into a proposed project brief;
3. inspect Git state without absorbing or discarding existing changes;
4. inspect connected task-management systems and recommend one;
5. produce a complete task graph, task boundaries, concurrency strategy,
   worktree/merge strategy, retry policy, and validation plan;
6. wait for explicit human approval of the brief and plan before starting work.

The connected task system is the operational source of truth. Chat history and
a local Markdown checklist are not substitutes.

## Phase C: run and supervise

Each assignment maps to one task-system item, one visible Codex task, one Git
worktree, one branch, one accountable role, and one acceptance contract. The PM
dispatches only dependency-ready work, controls concurrency, reviews handoffs,
and integrates accepted changes in dependency order.

Specialists own substantive deliverables. The PM owns planning, status,
assignment control, retries, handoff acceptance, integration flow, and closure.
Role-to-role communication is routed through the PM.

The default retry limit is three total attempts per assignment. A retry keeps
the same external work item but uses a fresh Codex task and worktree. Material
scope, architecture, dependency, acceptance, or authority changes require a
new human-approved plan.

## Phase D: validate and close

Before asking for closure, the PM verifies every deliverable and approval gate,
runs project-wide checks, merges accepted work, reconciles task-system state,
cleans merged worktrees and branches, and reports residual risks. Visible Codex
tasks remain available for audit and are not automatically archived.

## Common failure modes

- Treating the scaffold template as a finished universal pack.
- Embedding one project's facts or unresolved value placeholders in a pack.
- Skipping runtime project binding or leaving the project brief incomplete.
- Letting the PM silently perform specialist work.
- Starting agents before plan and task-system approval.
- Giving external-action authority implicitly.
- Treating a passing branch-level check as integrated validation.
- Copying third-party skill content without license and provenance review.
