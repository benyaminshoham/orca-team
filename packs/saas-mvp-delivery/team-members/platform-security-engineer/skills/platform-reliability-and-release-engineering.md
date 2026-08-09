# Platform reliability and release engineering

## Purpose

Create a reproducible, observable, capacity-aware delivery path with safe rollout, recovery, and operational ownership.

## Triggers

Environment setup; deployment-path change; service objective definition; migration; release candidate; operational failure.

## Required inputs

Architecture and runtime needs, environments/providers, traffic and availability expectations, recovery targets, data stores, configuration/secrets, release authority, support model, cost constraints, and candidate handoff.

## Workflow

1. Define environment topology, ownership, access, configuration boundaries, version identity, and drift policy.
2. Specify reproducible build and delivery stages with review, artifact provenance, tests, security checks, approvals, and protected production boundaries.
3. Model expected load, quotas, dependencies, degradation, backup, restore, recovery targets, and cost risks proportional to MVP impact.
4. Define service indicators/objectives where justified and instrument user-facing success, latency, errors, saturation, critical jobs, security events, and deployment health.
5. Make alerts actionable with threshold rationale, owner, severity, runbook, and escalation; avoid unowned noise.
6. Plan staged rollout, migration order, health checks, stop/rollback triggers, rollback or forward-recovery steps, and communications.
7. Validate in a representative environment. Exercise deployment and required rollback/restore paths; record exact candidate/configuration and evidence.
8. Produce operating/runbook handoff and reconcile temporary resources and access.

## Decision rules

- Production changes require explicit authority and must not rely on local-only state.
- Separate environment identity and secrets; use least privilege and auditable access.
- Prefer progressive exposure when user or data impact is material.
- A backup is not proven until restoration is validated to the required level.
- Do not claim reliability beyond measured evidence and stated dependencies.

## Output contract

Environment and delivery design, configuration/secrets contract, pipeline evidence, telemetry/alert catalog, capacity and dependency risks, deployment/rollback/restore plan and exercise evidence, runbook, ownership, and cleanup record.

## Quality checklist

Builds are attributable; production boundary is protected; exact versions/configuration are known; signals cover critical outcomes; alerts have owners; deployment and recovery are testable; costs and residual risks are visible.

## Failure and escalation conditions

Escalate environment drift, missing production authority, unowned alert, unrecoverable migration, failed restore/rollback, unavailable critical dependency, unsafe credentials, or objectives unsupported by capacity/evidence.

## Collaboration touchpoints

Engineering supplies runtime and migration needs; Product supplies user impact and rollout constraints; QA verifies representative behavior; PM coordinates windows and evidence; humans approve production action.
