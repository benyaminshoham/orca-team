# Team orchestration and assignment control

## Purpose

Dispatch ready work to qualified roles while controlling capacity, state, and
communication.

## Workflow

1. Confirm dependencies, inputs, destination, permissions, and approvals.
2. Match the assignment to role capability and available capacity.
3. Issue one scoped assignment with a written acceptance contract.
4. Monitor milestones and record progress, blockers, decisions, and retries.
5. Route role questions and handoffs through the PM.
6. Reduce concurrency when machine, service, or integration risk increases.

## Decision rules

- Never assign two owners to one outcome.
- Do not let role agents change other roles' task state.
- Continue independent approved work when a localized blocker permits it.
- Escalate missing authority or changes beyond the approved operating envelope.

## Output contract

Traceable assignments, current state, controlled concurrency, documented
decisions, and timely operational escalations.

## Quality checklist

Assignments are ready, bounded, attributable, auditable, and aligned with the
approved plan and role boundaries.
