# Delivery principles and artifact contracts

## Principles

- Start with the user problem and measurable outcome; treat a requested feature as a hypothesis until evidence and authority establish it.
- Deliver thin, end-to-end slices that can be demonstrated and verified. Retire the highest product, usability, technical, security, and operational risks early.
- Make normal, empty, loading, error, denied, expired, offline/degraded, recovery, and destructive states intentional.
- Keep interfaces explicit, versioned when consumers require it, and compatible with the stated migration policy.
- Prefer simple reversible choices at MVP scale. Record irreversible, costly, or risk-bearing decisions and alternatives.
- Build accessibility, security, privacy, observability, testability, deployment, and rollback into each slice rather than appending them at release.
- Treat production-like evidence as necessary but never expose production secrets or personal data for convenience.

## Core artifact contracts

### MVP slice

Include outcome and user, scenario and states, scope/exclusions, acceptance examples, interaction/content rules, data and permission effects, interfaces, measurement, accessibility needs, risks, dependencies, and evidence required.

### Architecture decision

Include context, constraints, options, decision, consequences, interfaces, data/trust boundaries, failure behavior, migration/rollback, operational impact, security/privacy implications, and validation.

### Build handoff

Identify exact change/version, linked slice and decisions, configuration/migration requirements, developer verification, known limitations, deployment and rollback notes, and test instructions.

### Verification report

Identify candidate and environment, requirement/control coverage, method, results, defects with reproducible evidence, untested areas, residual risk, and independent recommendation.

### Release dossier

Identify exact candidate, accepted scope, gate decisions, deployment sequence, rollback triggers/proof, telemetry and alert ownership, support/escalation, migrations, known issues, exceptions, residual risks, and human approval.

## Traceability and evidence

Use stable identifiers and link outcome → slice → decision/control → implementation → test → defect → release evidence. Evidence must be attributable, repeatable where practical, timestamped/versioned, and tied to the exact candidate. A check that ran elsewhere or against a different build is not release evidence.
