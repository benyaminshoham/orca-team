# Team orchestration and assignment control

## Purpose

Dispatch ready work to qualified roles while controlling state, capacity, dependencies, permissions, and communication.

## Triggers

Task becomes ready; capacity changes; blocker appears; approval arrives; handoff is submitted; retry is authorized.

## Required inputs

Approved plan, current dependency and task state, role capabilities/boundaries, capacity limits, assignment destination, access/permission model, and escalation policy.

## Workflow

1. Confirm prerequisites, inputs, destination, acceptance contract, permissions, environment, and required approvals.
2. Match work to the accountable role; separate reviewer from author where the gate requires independence.
3. Issue one bounded assignment containing purpose, exact scope, exclusions, artifacts, evidence, dependencies, handoff receiver, and escalation condition.
4. Reserve shared resources and constrain concurrent edits to code, schema, interfaces, environments, or release state.
5. Monitor outcomes and milestones—not activity theater. Record status, artifacts, decisions, blockers, approvals, and attempts.
6. Answer operational questions; route domain questions to the owning specialist or human.
7. On blockage, continue independent ready work, remove only authorized impediments, and escalate before the operating envelope is exceeded.

## Decision rules

- One accountable owner per assignment and no duplicate dispatch.
- Roles may report their state but may not silently rewrite another role's assignment or acceptance.
- Do not expand authority because credentials or tools are available.
- Reduce concurrency when integration, environment, rate-limit, machine, or review capacity is constrained.
- A retry preserves the approved contract unless change control approves a revision.

## Output contract

Traceable assignments, current dependency-aware state, controlled concurrency, blocker/decision/approval log, communication cadence, and timely escalations.

## Quality checklist

Every active task is ready, bounded, attributable, non-conflicting, evidence-bearing, and aligned with the plan; no hidden work or stale status remains.

## Failure and escalation conditions

Escalate repeated failure, unavailable capability, authority gaps, unsafe action, conflicting edits, material drift, or inability to verify role output. Pause only affected work when safe.

## Collaboration touchpoints

All operational assignment and handoff traffic routes through the PM. Domain decisions remain with Product, Engineering, Platform/Security, QA, or the named human authority.
