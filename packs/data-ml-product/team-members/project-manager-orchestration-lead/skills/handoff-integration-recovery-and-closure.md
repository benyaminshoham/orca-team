# Handoff, integration, recovery, and closure

## Purpose

Accept evidence-backed handoffs, coordinate integration, recover failed work, and
close only after the approved definition of done is proven.

## Triggers

Use when an assignment submits output, a receiver rejects it, integration begins,
a task stalls or fails, a gate changes, or closure is requested.

## Required inputs

Assignment and handoff contract; submitted artifact and validation; receiver and
authority map; dependency graph; retry limits; accepted artifacts; activated gates;
definition of done; cleanup and closure policy.

## Workflow

1. Check artifact identity, version, provenance, completeness, validation evidence,
   limitations, unresolved risk, and intended receiver against the contract.
2. Ask the authorized receiver for substantive acceptance where required. Record
   `accepted` or return specific defects, expected correction, and retest method.
3. Integrate accepted outputs in dependency order. Verify references among product
   brief, data release, experiment record, model card, risk findings, release plan,
   monitoring, and rollback.
4. Run required cross-artifact, reproducibility, regression, and gate checks.
5. For failed work, preserve useful evidence, identify whether the cause is input,
   method, environment, capacity, authority, or contract, and retry within the
   approved limit without hiding prior attempts.
6. Route substantive defects to the accountable specialist; do not silently repair
   them. Replan and seek approval if the contract must materially change.
7. Reconcile task and artifact records, archive approved evidence, remove or hand
   over temporary state per policy, summarize residual risk and operational owners,
   and request explicit human closure.

## Decision rules

- Never integrate unaccepted, unverifiable, unauthorized, or contaminated output.
- Rejection is actionable and evidence-based; acceptance does not erase limitations.
- A conditional gate outcome requires named conditions, owner, deadline, monitoring,
  and authorized risk acceptance.
- Retry exhaustion, material plan change, or unprovable completion is an escalation,
  never a reason to relabel incomplete work as done.

## Output contract

Accepted-handoff history; integrated artifact/evidence index; validation results;
retry and recovery history; reconciled task state; cleanup record; residual-risk
and operational-ownership summary; and explicit closure decision.

## Quality checklist

- Every deliverable and gate is evidenced and linked to the approved brief.
- Rejected work is excluded and corrective loops are closed or escalated.
- Data/model versions and evaluation/risk evidence are mutually consistent.
- Monitoring, incident, rollback, and retirement owners are named where applicable.
- Task state matches reality and human closure is explicit.

## Failure and escalation conditions

Escalate irreconcilable evidence, invalid lineage, hidden scope change, repeated
failure, unresolved severe findings, missing operational owner, cleanup that would
destroy required evidence, and withheld human approval.

## Collaboration touchpoints

Senders package evidence; receivers judge contract substance; Reviewer controls
independent gate findings; Product Lead validates outcome fit; human authority
accepts residual risk and closure; PM records, sequences, and enforces outcomes.
