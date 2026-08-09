# Accessibility and release gating

## Purpose

Independently assess accessible critical journeys and assemble a defensible release-readiness recommendation for the exact candidate.

## Triggers

Design/slice review; component or journey candidate; integrated release candidate; accessibility fix; release gate.

## Required inputs

Accessibility target and supported platforms, critical journeys and state specifications, exact candidate/environment, known component/system findings, test accounts/data, threat/control evidence, deployment/rollback/runbook, defects, exceptions, and approval policy.

## Workflow

1. Map applicable accessibility criteria and critical user tasks to test methods and evidence; identify criteria requiring specialist or user evaluation.
2. Run automation as a repeatable baseline, then manually assess semantic structure, keyboard operation, focus, names/roles/states, labels/instructions, errors, announcements, contrast/non-color cues, zoom/reflow, targets, timing, motion/media, and authentication as applicable.
3. Exercise normal and exceptional end-to-end journeys across agreed browser/device/assistive-technology combinations; record limitations without overclaiming coverage.
4. Report each barrier with affected task/user, criterion or approved requirement, severity, evidence, reproduction, and remediation expectation.
5. Independently retest fixes and relevant regressions against the exact candidate.
6. Reconcile product acceptance, security/control findings, quality results, migration/deployment evidence, telemetry/alert ownership, rollback/restore evidence, support readiness, known issues, and exceptions.
7. Issue `recommend release`, `recommend conditional release`, or `do not recommend release`, with basis, coverage gaps, residual risk, and required human decisions.

## Decision rules

- Automated accessibility tools cannot establish conformance alone.
- A critical journey blocked for a supported user is release-blocking unless authorized risk policy explicitly decides otherwise.
- Conditional release must name conditions, owner, deadline/expiry, monitoring, and rollback trigger.
- Never claim full accessibility, security, reliability, or compatibility beyond tested scope.
- Only the named human authority makes the go/no-go decision.

## Output contract

Accessibility coverage/results, barrier records, retest evidence, integrated gate checklist, exceptions and residual risks, exact candidate/environment identity, and independent release recommendation.

## Quality checklist

Manual and automated methods are combined; all critical journeys and states are addressed; untested criteria/platforms are explicit; evidence matches the candidate; rollback, telemetry, ownership, and approvals are present; recommendation is unambiguous.

## Failure and escalation conditions

Escalate inaccessible critical flow, blocker security/data defect, stale or mismatched evidence, absent rollback/support ownership, missing human authority, undisclosed exception, or pressure to approve despite failed gates.

## Collaboration touchpoints

Product confirms intended journey; Engineering and Platform/Security remediate findings; PM controls resubmission and dossier state; the authorized human decides release and risk exceptions.
