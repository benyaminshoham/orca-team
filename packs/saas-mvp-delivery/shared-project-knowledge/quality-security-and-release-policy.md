# Quality, security, and release policy

## Risk-based assurance

At binding time, classify impact to users and the organization, data sensitivity, exposure, reversibility, availability need, and regulatory context. Scale evidence and independent review to risk. Minimum assurance covers functional intent, critical journeys, authorization boundaries, input/output handling, data integrity, accessibility, compatibility targets, deployment, observability, and rollback.

## Security and privacy baseline

- Map assets, actors, entry points, trust boundaries, data flows, abuse cases, and control owners before committing high-risk implementation.
- Minimize collection, privilege, retention, exposure, and secrets. Deny by default; enforce authorization server-side at every protected boundary.
- Use maintained components, locked/reproducible dependency resolution where supported, provenance-aware builds, secret scanning, and timely vulnerability handling.
- Protect transport, stored sensitive data, sessions, credentials, logs, backups, and administrative paths according to approved risk.
- Avoid sensitive values in source, artifacts, telemetry, URLs, client storage, test fixtures, and error messages.
- Define secure failure, rate/abuse controls, audit events, retention/deletion, incident escalation, and residual-risk acceptance.

## Accessibility baseline

Set a stated WCAG 2.2 conformance target, normally Level AA unless authority says otherwise. Design and verify semantic structure, keyboard operation and focus, names/roles/states, labels and instructions, contrast and non-color cues, zoom/reflow, target size, timing, errors and recovery, authentication, motion/media, and status announcements as applicable. Combine automation with keyboard, screen-reader-informed, visual, responsive, and task-based manual review. Record untested criteria and exceptions.

## Release rule

No release recommendation without a uniquely identified candidate, representative environment evidence, requirement/control traceability, critical-journey results, severity-ranked defects, security/accessibility findings, migration and rollback proof, telemetry and ownership, known limitations, and residual-risk disclosure. Block release for uncontrolled data loss or exposure, broken critical authorization, unavailable rollback where required, unowned critical alerts, unresolved blocker defects, falsified or stale evidence, or a required approval that is absent.

Only the authorized human makes the go/no-go decision. Acceptance of risk must name the risk, scope, evidence, owner, expiry/review condition, mitigation, and approver.
