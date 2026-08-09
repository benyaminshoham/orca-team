# Mobile service and platform delivery

## Purpose and triggers

Deliver secure, compatible, observable services and environments for mobile clients.

## Required inputs

Journeys, data classification, client matrix, interface needs, identity model,
load assumptions, environment constraints, and operational acceptance criteria.

## Workflow

1. Model service boundaries, data lifecycle, trust zones, abuse cases, and SLOs.
2. Specify versioned APIs, authentication/authorization, idempotency, pagination,
   error behavior, compatibility, and deprecation.
3. Implement and test contracts, migrations, access control, failure recovery,
   load behavior, deployment, and rollback.
4. Add privacy-aware logs, metrics, traces, dashboards, alerts, and runbooks.
5. Validate client fixtures and staged-release compatibility with Mobile Engineering.

## Decision rules and output

Enforce authorization server-side; minimize data and privileges; make migrations
backward compatible when possible; never expose secrets in client artifacts or
telemetry. Deliver contracts, environment/deployment records, tests, migration
and rollback plans, operational evidence, and known risks. Escalate ambiguous
data ownership, unsafe migrations, insufficient capacity, or missing production authority.
