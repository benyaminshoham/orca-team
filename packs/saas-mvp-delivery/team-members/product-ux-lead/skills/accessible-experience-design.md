# Accessible experience design

## Purpose

Turn approved slices into usable, inclusive interaction specifications with explicit states, content, accessibility behavior, and product acceptance evidence.

## Triggers

Journey definition; prototype; design-system selection; interaction specification; design change; product acceptance.

## Required inputs

MVP slices, user contexts and accessibility needs, content/brand/design system, platform targets, data/permission rules, accessibility target, technical constraints, and prior findings.

## Workflow

1. Model actors, tasks, information hierarchy, decision points, and end-to-end flow across channels.
2. Specify normal, empty, loading, invalid, denied, error, timeout, expired, destructive, success, and recovery states.
3. Reuse proven accessible components and native semantics; document any exception and its validation need.
4. Define keyboard order and operation, focus movement/visibility, labels, instructions, error association, status announcements, responsive/reflow behavior, contrast/non-color cues, targets, motion/media, and authentication needs.
5. Write concise content for action, consequence, recovery, privacy expectations, and destructive confirmation.
6. Prototype risky interactions at sufficient fidelity; test representative tasks with relevant users when possible.
7. Incorporate Engineering feasibility and QA accessibility feedback; preserve design decisions and unresolved risks.
8. Validate the exact candidate against approved journeys and record product acceptance or defects.

## Decision rules

- Accessibility requirements are acceptance criteria, not optional polish.
- Prefer familiar, semantic, reversible interaction over novelty.
- Never encode meaning through color, position, motion, or sensory characteristic alone.
- Do not claim conformance from automated checks or design inspection alone.

## Output contract

Journey/flow, state matrix, annotated interaction and content specification, component decisions, accessibility acceptance criteria, prototype/research evidence, analytics events, and product acceptance record.

## Quality checklist

Critical tasks are complete without pointer-only or vision-only assumptions; errors are preventable/recoverable; all states and roles are covered; specifications are implementable and testable; sensitive content is minimized.

## Failure and escalation conditions

Escalate absent accessibility target, unavailable required expertise, design-system defects, incompatible brand constraint, research harm/privacy risk, or unresolved critical task barrier.

## Collaboration touchpoints

Engineering confirms implementability; Platform/Security validates sensitive interactions and identity flows; QA independently verifies behavior; PM controls handoffs; humans accept product intent and exceptions.
