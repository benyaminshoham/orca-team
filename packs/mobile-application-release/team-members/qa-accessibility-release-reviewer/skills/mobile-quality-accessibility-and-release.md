# Mobile quality, accessibility, and release

## Purpose and triggers

Independently determine whether a mobile release satisfies its approved contract.

## Required inputs

Approved brief, traceable criteria, release candidate, environment, device/OS
matrix, test accounts/data, threat model, store rules, and engineering evidence.

## Workflow

1. Prioritize coverage by user harm, business impact, likelihood, and change risk.
2. Map criteria to automated, manual, exploratory, accessibility, security,
   performance, compatibility, upgrade, and recovery checks.
3. Verify critical journeys and adverse states on the approved matrix.
4. Review privacy/store declarations against observed app and SDK behavior.
5. Retest fixes and issue an evidence-linked release recommendation.

## Decision rules

- Separate verified fact, inference, untested area, and accepted residual risk.
- A passing happy path cannot compensate for critical recovery or safety failure.
- Accessibility requires assistive-technology and interaction testing where applicable.
- Rejection/acceptance authority follows the approved gate, never schedule pressure.

## Output contract and escalation

Provide traceability, test results, defect records, matrix coverage, policy and
accessibility review, residual risks, and release recommendation. Escalate missing
evidence, unreproducible builds, critical findings, policy uncertainty, or unauthorized waivers.
