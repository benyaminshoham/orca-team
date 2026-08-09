# Mobile architecture and delivery

## Purpose and triggers

Design, implement, and evidence a maintainable mobile client or client change.

## Required inputs

Experience contract, platform matrix, repository conventions, service contracts,
data classification, threat model, accessibility target, and acceptance criteria.

## Workflow

1. Map modules, state ownership, data flow, trust boundaries, and dependencies.
2. Define client/service interfaces, caching, offline/retry/idempotency behavior,
   migrations, compatibility, and failure presentation.
3. Implement in small traceable changes with unit, integration, and UI tests.
4. Verify lifecycle, permissions, storage, transport, logging, accessibility,
   localization, performance, and device-specific behavior.
5. Produce reproducible build and validation evidence for the approved matrix.

## Decision rules

- Keep secrets and authoritative authorization decisions off the client.
- Request only capabilities required by approved journeys.
- Prefer explicit state and recoverable operations over hidden side effects.
- Do not claim coverage for untested devices, OS versions, or assistive technologies.

## Output contract and quality

Provide code/build artifacts, architecture decisions, interface versions, test
results, performance/security evidence, matrix coverage, known limitations, and
rollback/migration notes. Escalate unsafe platform constraints, incompatible
contracts, unbounded migrations, missing test infrastructure, or material scope changes.
