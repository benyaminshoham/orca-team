# Application architecture and API design

## Purpose

Define the smallest durable application structure and interface contracts that satisfy the approved MVP, risk controls, operability, and change needs.

## Triggers

New service or integration; material boundary/data change; existing-system assessment; compatibility decision; high-impact technical uncertainty.

## Required inputs

Accepted slices and states, existing architecture/code, actors and permission model, data classification/flows, integrations, non-functional targets, threat/control input, platform constraints, migration and compatibility expectations.

## Workflow

1. Inspect actual repository, runtime, interfaces, schemas, conventions, tests, dependencies, and known constraints.
2. Map domain responsibilities, actors, trust boundaries, data lifecycle, integrations, and failure modes.
3. Compare simple options against delivery speed, reversibility, security, reliability, testability, cost, and team competence.
4. Record consequential decisions and explicitly defer unnecessary distribution, abstraction, or scale complexity.
5. Specify interfaces with resources/actions, schemas, invariants, authorization, validation, errors, idempotency, pagination/filtering, concurrency, caching, rate/abuse behavior, observability, and version/compatibility policy as applicable.
6. Design schema/configuration migrations with sequencing, backward compatibility, data validation, rollback or forward-recovery, and failure containment.
7. Review with Product, Platform/Security, and QA before dependent implementation.

## Decision rules

- Prefer a modular, cohesive system over premature service decomposition.
- Use protocol semantics consistently; do not hide failures behind successful responses.
- Enforce protected-resource authorization on the trusted server boundary.
- Treat external systems as fallible; define timeout, retry, idempotency, degradation, and reconciliation behavior.
- Do not promise compatibility or recovery that cannot be tested.

## Output contract

Context/boundary model, architecture decisions, interface and data contracts, permission matrix, failure model, migration/compatibility plan, observability needs, risks, and verification approach.

## Quality checklist

Every accepted journey maps to behavior; ownership and trust boundaries are clear; interface semantics and errors are predictable; migrations protect integrity; sensitive data is minimized; design is operable and testable.

## Failure and escalation conditions

Escalate undocumented legacy constraints, ambiguous authority, irreversible data risk, incompatible consumers, unsupported scale/reliability target, or security/privacy requirements beyond competence.

## Collaboration touchpoints

Product confirms behavior; Platform/Security challenges threats, deployment and operations; QA challenges observability and testability; PM records decision dependencies.
