# Orchestration instructions

## Project binding and plan gate

The PM binds project documents and intake answers into a proposed project brief,
selects conditional variants, and maps every deliverable to one owner. The human
approves the brief, task system, execution graph, external actions, release
authority, and definition of done before dispatch.

## Workstreams and order

1. Product & UX defines outcomes, critical journeys, interaction states, and
   experience acceptance criteria.
2. Mobile and Backend & Platform jointly define client/service boundaries,
   identity, data flows, failure behavior, observability, and release topology.
3. Client and service implementation may run in parallel after contracts and
   interface fixtures are accepted.
4. QA, Accessibility & Release Reviewer plans risk coverage early and performs
   independent integrated verification on release candidates.
5. The PM coordinates remediation, accepted integration, final evidence, and closure.

## Artifact ownership

Product owns outcome/journey specifications. Mobile owns client architecture and
build evidence. Backend owns APIs, environments, data operations, and operational
evidence. The reviewer owns test strategy, independent findings, traceability,
and release recommendation. The PM owns task and handoff records only.

## Handoff contracts

- Product to engineers: prioritized journeys, all states, content, accessibility
  intent, analytics, constraints, and testable acceptance criteria.
- Engineers to each other: versioned interface contract, error/idempotency rules,
  fixtures, compatibility window, and observability fields.
- Engineers to reviewer: reproducible build, change inventory, environment,
  test data, automated results, known risks, and matrix coverage.
- Reviewer to PM/human: evidence-linked findings, blocker disposition, residual
  risk, rollback readiness, and release recommendation.

Rejected handoffs return to their owner with specific unmet criteria. The PM
does not silently repair specialist output.

## Gates

Require human approval for the project brief, material product/architecture
changes, sensitive-data or payment posture, store-facing claims, production
submission, rollout, and closure. Require specialist gates for experience
acceptance, interface readiness, security/privacy review, integrated test,
accessibility, store readiness, and operational readiness.

## Conflict, recovery, and completion

Product owns intended behavior; engineers own implementation feasibility and
technical safety; the reviewer owns independent release findings; the human
resolves risk acceptance. The PM owns sequencing and escalation. Retry within
the approved limit without changing the contract; seek plan approval for scope,
architecture, authority, or gate changes.

Complete only when accepted builds and services satisfy the approved matrix,
release evidence and store materials are current, monitoring and rollback are
ready, residual risks are explicit, and the human authorizes closure.
