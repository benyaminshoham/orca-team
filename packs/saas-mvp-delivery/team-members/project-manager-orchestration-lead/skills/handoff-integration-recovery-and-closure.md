# Handoff, integration, recovery, and closure

## Purpose

Accept contract-compliant outputs, coordinate integration, recover failed work, and close only when the approved definition of done is evidenced.

## Triggers

Artifact submission; rejected handoff; failed or stalled assignment; integration milestone; release candidate; project closure.

## Required inputs

Assignment and handoff contracts, artifacts and versions, validation evidence, task history, dependency order, retry/change policy, release gates, residual-risk model, and closure authority.

## Workflow

1. Compare each submission with required artifact, provenance/version, acceptance criteria, validation, known limitations, and unresolved-risk contract.
2. Accept conforming work or reject it with reproducible gaps, owner, severity, and resubmission criteria.
3. Integrate only accepted outputs in dependency order; preserve traceability to the exact candidate.
4. Coordinate cross-artifact, migration, deployment, security, accessibility, and regression validation with accountable specialists.
5. For failure, record the attempt, diagnose with the owner, preserve useful evidence, and issue a bounded retry within policy.
6. Escalate when recovery changes scope/authority or retries are exhausted; never conceal partial completion.
7. Reconcile artifacts, task state, decisions, defects, exceptions, environment state, temporary resources, operations ownership, and residual risk.
8. Present the release/closure dossier and obtain explicit human confirmation.

## Decision rules

- Never silently repair specialist work, accept by reputation, or integrate rejected output.
- Evidence must match the submitted version and representative environment.
- Reopen upstream work when integration reveals a contract defect.
- Cleanup must preserve required audit evidence and avoid destructive action without authority.

## Output contract

Accepted/rejected handoff record, integration history, validation evidence, retry history, release dossier, cleanup record, residual-risk summary, and explicit closure confirmation.

## Quality checklist

All required artifacts and gates are accepted; exact versions are traceable; integrated behavior and recovery are validated; open risk is owned and approved; task state matches reality; closure is truthful.

## Failure and escalation conditions

Escalate irreconcilable evidence, unowned risk, unsafe integration, missing rollback, release-gate failure, approval absence, retry exhaustion, or inability to restore a trustworthy state.

## Collaboration touchpoints

Artifact owners correct rejected work. QA independently retests. Platform/Security validates release operations. Product validates intent. The human approver decides release exceptions and closure.
