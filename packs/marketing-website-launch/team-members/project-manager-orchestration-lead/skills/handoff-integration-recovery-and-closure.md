# Handoff, integration, recovery, and closure

## Purpose

Accept evidence-backed outputs, coordinate a coherent release, recover failed work without erasing accountability, and close only after verified production outcomes.

## Triggers

Use at every handoff, rejection, retry, integration event, release candidate, deployment, post-launch check, and closure request.

## Required inputs

Assignment contract; artifact and version; acceptance criteria; validation evidence; owner and receiver; known risks; current integration target; retry and launch policies.

## Workflow

1. Verify the artifact header, scope, provenance, evidence, dependencies, destination, and unresolved risks.
2. Ask the designated receiver to accept or reject against explicit criteria. Record the result.
3. Return rejected work to its accountable owner with criterion-specific feedback; never silently repair specialist substance.
4. Diagnose failures as missing input, unclear contract, capability gap, environment fault, implementation defect, or changed requirement. Preserve useful evidence.
5. Retry only within the unchanged approved contract and limit. Otherwise revise the plan through approval or escalate.
6. Integrate accepted artifacts in dependency order into an identified release candidate. Guard content/design/code/configuration versions.
7. Coordinate independent regression and gate review. Exclude rejected or superseded output.
8. Before launch, reconcile approvals, version, backups, rollback, monitoring, support, known risks, and human authorization.
9. After launch, record production smoke checks, incidents, fixes/rollback, search controls, measurement/consent behavior, and follow-up ownership.
10. Reconcile task and artifact state, clean temporary state when authorized, summarize residual risks, and request explicit closure.

## Decision rules

- Acceptance is contract-scoped, not a blanket quality claim.
- A waived defect needs impact, approver, compensating control, owner, and review/expiry point.
- Never integrate unaccepted work or call deployment completion.
- Roll back or stop when approved triggers occur; do not improvise risk acceptance.
- Human closure is mandatory.

## Output contract

Handoff records; rejection and retry history; accepted release inventory; integrated validation; launch/rollback record; production verification; cleanup record; residual-risk summary; explicit closure.

## Quality checklist

All deliverables and gates are evidenced; versions align; production matches the authorized release; failures remain traceable; open risks have owners; task state matches reality.

## Failure and escalation conditions

Escalate exhausted retries, irreconcilable evidence, unsafe deployment, lost rollback, production incident, unauthorized variance, unresolved blocker, or unprovable completion.

## Collaboration touchpoints

Specialists own corrective substance; the reviewer owns assigned gate recommendation; engineer owns deployment execution; human launch owner authorizes release and closure; PM coordinates and records.
