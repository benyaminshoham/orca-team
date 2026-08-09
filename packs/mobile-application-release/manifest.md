# Mobile Application Release Team

## Identity and applicability

- Version: 1.0.0
- Creation date: 2026-08-09
- Language: English
- Project class: mobile application delivery and release
- Applicability: new or existing native iOS, native Android, and cross-platform
  applications, from product definition through store-ready release

This pack supports consumer and enterprise apps with optional backends,
subscriptions, offline behavior, device integrations, and staged rollouts. It
does not replace licensed legal, medical, safety, privacy, or penetration-test
authority. Embedded, safety-critical, and regulated projects require additional
human-approved specialists and gates.

## Supported outcomes

- approved product scope, journeys, interaction specification, and release criteria;
- maintainable client and service architecture with observable behavior;
- tested builds across the approved device and operating-system matrix;
- security, privacy, accessibility, and store-policy evidence;
- accurate listing assets, release notes, rollout, monitoring, and rollback plan.

Completion requires accepted artifacts from every active role, zero unresolved
release-blocking findings, successful integrated validation, current store-policy
review, and explicit human release approval.

## Execution-time input contract

The runner must bind this pack to a project brief using
[project intake](shared-project-knowledge/project-intake.md). Required inputs
include goals, users, platforms, repository, architecture, data classification,
device features, distribution channels, monetization, accessibility target,
supported OS/device matrix, environments, accounts, deadlines, and approvers.
Unknown facts must remain visible assumptions or blockers in the approved plan.

## Conditional variants

- Activate platform-specific implementation and store gates for iOS, Android,
  or both; cross-platform code does not remove platform review.
- Add stronger privacy/security review for sensitive data, authentication,
  payments, children, health, finance, location, or enterprise management.
- Add hardware and field testing for camera, sensors, Bluetooth, background
  execution, wearables, vehicles, or unreliable connectivity.
- Add content moderation and abuse controls for user-generated content.
- Add localization and locale-specific store/legal review when applicable.

## Team roster and authority

- [Project Manager & Orchestration Lead](team-members/project-manager-orchestration-lead/system-prompt.md): execution planning, task state, sequencing, handoffs, recovery, integration flow, and closure; no product or specialist authority.
- [Product & UX Lead](team-members/product-ux-lead/system-prompt.md): product intent, journeys, interaction behavior, and experience acceptance.
- [Mobile Engineer](team-members/mobile-engineer/system-prompt.md): client architecture, implementation, device integration, performance, and technical evidence.
- [Backend & Platform Engineer](team-members/backend-platform-engineer/system-prompt.md): APIs, identity, data services, environments, observability, and operational readiness.
- [QA, Accessibility & Release Reviewer](team-members/qa-accessibility-release-reviewer/system-prompt.md): independent risk-based verification and release recommendation.

The human owns scope, budget, legal acceptance, credentials, irreversible
external actions, and final release. Each specialist owns the substance of its
deliverables; the reviewer may block release on unmet evidence.

## Role-to-skill map

- PM: planning/task management; orchestration/assignment control; handoff/integration/recovery/closure.
- Product & UX Lead: mobile product discovery and experience specification.
- Mobile Engineer: mobile architecture, implementation, performance, and client security.
- Backend & Platform Engineer: service contracts, platform reliability, privacy, and operations.
- QA, Accessibility & Release Reviewer: test strategy, accessibility review, store readiness, and release risk.

## Dependencies and handoffs

The approved brief precedes product and technical decomposition. Product journeys
and nonfunctional requirements feed client/service contracts. Client and backend
work may proceed in parallel after contract approval. Integrated builds feed the
independent review. Reviewer findings return to the accountable specialist; only
accepted evidence reaches the release gate.

## Shared knowledge

- [Project binding intake](shared-project-knowledge/project-intake.md)
- [Mobile delivery standards](shared-project-knowledge/delivery-standards.md)

## Provenance, licenses, and security review

- Repository `packs/template`, accessed 2026-08-09, MIT License, approved by the
  creator's instruction to generate these packs. The PM foundation was adapted
  to this project class. Markdown only; no executable content or security issue.
- Apple, [App Review Guidelines](https://developer.apple.com/app-store/review/guidelines/),
  accessed 2026-08-09. Official living policy; referenced and paraphrased, not
  copied. Apple site terms apply to the source. No code or dependencies used.
- Android Developers, [Core app quality guidelines](https://developer.android.com/docs/quality-guidelines/core-app-quality),
  accessed 2026-08-09. Official guidance; referenced and paraphrased. Android
  documentation licensing/terms apply. No code executed.
- OWASP Foundation, [Mobile Application Security Verification Standard](https://mas.owasp.org/MASVS/),
  accessed 2026-08-09. Open community standard; concepts referenced and
  paraphrased. Source license/attribution terms apply. No scripts or dependencies used.
- W3C WAI, [Mobile Accessibility at W3C](https://www.w3.org/WAI/standards-guidelines/mobile/),
  accessed 2026-08-09. Official standards guidance; concepts referenced and
  paraphrased. W3C document terms apply. No executable content used.

The specialist skills are original synthesis under this repository's MIT
License. No external prompts, repositories, binaries, install hooks, or hidden
instructions were imported.

## Risks and unsupported conditions

Store policies and OS capabilities change; verify them at project binding and
before submission. Device labs, store accounts, legal determinations, production
credentials, and real-user accessibility testing are external inputs. The pack
does not guarantee store acceptance or eliminate project-specific threat modeling.
