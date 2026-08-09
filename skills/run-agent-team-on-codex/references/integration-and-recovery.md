# Integration, recovery, and closure

## Acceptance and integration

For every completed assignment:

1. Read its standard handoff and external comment.
2. Confirm the commit and branch exist and match the assigned base.
3. Inspect the diff for scope, quality, safety, and acceptance-criteria coverage.
4. Run or delegate the relevant role-level validation.
5. Request clarification or revision in the same Codex task when the contract is unmet but recoverable.
6. Mark the external item ready for review, accepted, or retrying as appropriate.
7. Merge accepted branches in dependency order.
8. Run integration checks after each risk-bearing merge or coherent merge wave.

The PM may create Git state, inspect and merge branches, run checks, resolve conflicts, and make code changes needed to complete merges and integration. Keep those edits narrowly tied to integration. Dispatch a role task when the work becomes substantive feature, design, research, or specialist work. A change to approved behavior or architecture requires human plan-change approval.

## Merge conflicts

Classify conflicts:

- Resolve textual, generated-file, import-order, and other mechanical conflicts directly when intent is unambiguous.
- Resolve semantic conflicts directly only when the approved plan and accepted artifacts make the intended integration clear.
- Continue or dispatch the responsible role when specialist judgment is required.
- Request a plan change when resolving the conflict would alter architecture, scope, acceptance criteria, or dependencies.

Validate the merged result, not only the pre-merge branches.

## Cleanup

After an accepted branch is merged and validated:

1. Verify the exact worktree path and branch.
2. Verify no unmerged commits or uncommitted work remain.
3. Remove the merged worktree.
4. Delete the merged local branch and any approved remote branch.
5. Record cleanup on the external work item.

Never use broad paths, unresolved variables, or globs for cleanup. Keep the user-visible Codex task unarchived even after its worktree and branch are removed.

## Failure diagnosis and retries

An assignment has at most three total attempts, including the initial attempt, unless the approved plan specifies another limit.

On failure, stall, rejection, or inadequate output:

1. Diagnose the failure from task output, comments, repository state, and validation evidence.
2. Preserve useful committed work or explicitly reject it; never merge inadequate work by default.
3. Update the same external work item with the diagnosis and attempt result.
4. Correct the instructions without changing the approved task contract.
5. Launch a fresh replacement Codex task and worktree for the next attempt.
6. Keep every prior Codex task visible.

Retries within the limit do not require plan approval. Escalate to the human after the third total failed attempt, or earlier when new authority, a plan change, or a knowledge-pack change is required.

## Blockers

Pause and ask the human when:

- the approved task-management system is unavailable;
- the knowledge pack must change;
- the plan must materially change;
- a human approval gate is reached;
- required authority, credentials, funds, access, or irreversible-action approval is missing;
- repository state cannot be preserved safely;
- the retry limit is exhausted;
- the definition of done cannot be proven.

Continue independent approved work while a blocker affects only part of the graph and doing so is safe.

## Project-wide validation

Before closure:

- dispatch independent review tasks required by the pack;
- confirm every deliverable maps to accepted evidence;
- run the complete project validation/test/build/release suite;
- inspect integration, security, compliance, accessibility, documentation, and operational readiness as applicable;
- verify every dependency, review gate, approval, and authorized external action;
- confirm the main branch contains all accepted work and is clean;
- confirm rejected or superseded branches are not merged;
- confirm the task-management project reflects reality.

Fix integration defects within PM authority. Route substantive defects to the appropriate role under the approved plan and retry rules.

## Closure sequence

1. Complete project-wide validation.
2. Complete independent reviews defined by the pack.
3. Confirm every task and approval gate is complete.
4. Merge all accepted work.
5. Mark external work items and the project complete.
6. Remove merged worktrees and branches safely.
7. Leave every user-visible Codex task unarchived.
8. Present a final report with deliverables, validation evidence, decisions, external actions, residual risks, repository state, task-system state, and cleanup results.
9. Request human closure approval.
