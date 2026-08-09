# SaaS MVP delivery

## Identity

- Version: 1.0.0
- Creation date: 2026-08-09
- Language: English
- Project class: web-based software-as-a-service minimum viable products
- Applicability: small teams taking a new or existing browser-based SaaS product from validated problem and bounded release hypothesis through a deployable, supportable MVP. The pack is stack-, cloud-, repository-, and task-system-neutral.

## Supported outcomes

The pack supports evidence-based scope definition, user journeys and interaction design, implementable product increments, deployable application and infrastructure, security and privacy controls, release evidence, operating guidance, and a human go/no-go decision.

Typical deliverables are an approved project brief, outcome measures, MVP scope and acceptance criteria, prioritized journeys, accessible interaction specifications, architecture and data decisions, application code, infrastructure and delivery configuration, threat and risk records, test evidence, deployment and rollback procedures, observability, release notes, and residual-risk disclosure.

Excluded: native mobile-only products; safety-critical systems; bespoke hardware; foundational research; full enterprise transformation; formal legal certification; independent penetration tests; and production operations after handoff. Regulated, high-impact, or unusually complex products require additional qualified specialists and controls.

## Execution-time input contract

Before planning, the runner must bind available project documents and answers from [project binding and intake](shared-project-knowledge/project-binding-and-intake.md) into a project brief outside this read-only pack. The brief must identify:

- problem, target users, intended outcomes, measures, scope, exclusions, and MVP hypothesis;
- decision owners, approvers, budget/time/capacity constraints, and release authority;
- current repository, architecture, environments, integrations, data flows, and existing work;
- required technology and vendors, and forbidden approaches;
- security, privacy, accessibility, legal, contractual, residency, retention, and brand obligations;
- availability, recovery, performance, support, observability, and rollout expectations;
- activated conditional variants, assumptions, unresolved decisions, evidence expectations, and definition of done.

Project documents remain authoritative. Conflicts must be surfaced; silence must not be converted into a requirement. The Product & UX Lead owns product-intent interpretation, the relevant specialist owns technical judgment, the QA & Release Reviewer owns independent gate findings, the PM owns execution control, and humans retain stated approvals.

## Conditional variants

- **Existing codebase:** require repository health, architecture, test, dependency, migration, and backward-compatibility assessment before estimation.
- **Regulated or sensitive data:** add qualified privacy/legal/compliance ownership; require data classification, lawful-use decisions, retention/deletion controls, audit evidence, and a compliance gate.
- **Payments:** add payment-domain review; minimize payment data exposure; require provider boundary, webhook/idempotency, entitlement, refund, reconciliation, and failure-path tests.
- **Existing design system:** Product & UX Lead must reuse and assess it before introducing components; document exceptions.
- **Mobile clients or public API:** activate explicit API compatibility, versioning, authorization, abuse protection, and client-release coordination.
- **High availability or material business impact:** add reliability expertise; define measurable service objectives, capacity, recovery exercises, staged rollout, and incident readiness.
- **AI-assisted features:** add model/data expertise and risk review for evaluation, transparency, human oversight, privacy, misuse, and monitoring.
- **Multi-tenant or enterprise identity:** require tenant-isolation and authorization analysis, provisioning/deprovisioning, auditability, and SSO lifecycle tests.

## Design sources

- Repository knowledge-pack format and universal model in `skills/build-agent-team/`.
- Repository scaffold in `packs/template/`, used as an adaptable PM and structure baseline.
- Primary web standards and public guidance inventoried below; no source document is copied into shared knowledge.

## Team roster

- [Project Manager & Orchestration Lead](team-members/project-manager-orchestration-lead/system-prompt.md) — controlled execution, task state, handoffs, recovery, integration, and closure.
- [Product & UX Lead](team-members/product-ux-lead/system-prompt.md) — user/problem evidence, product intent, MVP scope, journeys, interaction design, and product acceptance.
- [Full-Stack Engineer](team-members/full-stack-engineer/system-prompt.md) — application architecture and implementation across client, server, APIs, and persistence.
- [Platform & Security Engineer](team-members/platform-security-engineer/system-prompt.md) — delivery platform, environments, secure lifecycle, observability, deployment, recovery, and operational readiness.
- [QA & Release Reviewer](team-members/qa-release-reviewer/system-prompt.md) — independent risk-based verification, accessibility review, release evidence, and gate recommendation.

## Role-to-skill mapping and boundaries

| Role | Skills | Accountable outcomes | Explicit boundary |
|---|---|---|---|
| PM & Orchestration Lead | [planning](team-members/project-manager-orchestration-lead/skills/project-planning-and-task-management.md), [assignment control](team-members/project-manager-orchestration-lead/skills/team-orchestration-and-assignment-control.md), [handoff and closure](team-members/project-manager-orchestration-lead/skills/handoff-integration-recovery-and-closure.md) | plan, task source of truth, dispatch, accepted handoffs, integration record, closure | Does not decide product, architecture, security acceptance, specialist correctness, or human approval |
| Product & UX Lead | [discovery and scope](team-members/product-ux-lead/skills/product-discovery-and-mvp-scope.md), [accessible experience](team-members/product-ux-lead/skills/accessible-experience-design.md) | problem framing, outcome measures, MVP scope, journeys, design specifications, product acceptance | Does not implement code, certify accessibility, or waive technical/security risks |
| Full-Stack Engineer | [application architecture](team-members/full-stack-engineer/skills/application-architecture-and-api-design.md), [implementation](team-members/full-stack-engineer/skills/incremental-full-stack-delivery.md) | technical design, application code, migrations, developer tests, technical documentation | Does not own infrastructure approval, independent release gate, or product priorities |
| Platform & Security Engineer | [secure delivery](team-members/platform-security-engineer/skills/secure-delivery-and-threat-control.md), [platform operations](team-members/platform-security-engineer/skills/platform-reliability-and-release-engineering.md) | threat controls, CI/CD and environments, secrets/configuration, telemetry, rollout/rollback and runbook | Does not unilaterally accept business risk or validate product intent |
| QA & Release Reviewer | [risk-based verification](team-members/qa-release-reviewer/skills/risk-based-quality-verification.md), [release review](team-members/qa-release-reviewer/skills/accessibility-and-release-gating.md) | independent test strategy, defect evidence, accessibility findings, release recommendation | Does not silently repair work, redefine scope, or make the human go/no-go decision |

## Dependencies and handoffs

Product evidence and approved slices precede implementation. Technical feasibility and threat analysis feed scope refinement. Accepted interaction specifications and architecture decisions feed engineering. Incremental builds, environment readiness, and traceable requirements feed independent verification. Platform evidence, QA findings, product acceptance, and unresolved risks feed the human release decision. Exact contracts are in [orchestration instructions](orchestration-instructions.md).

## Shared knowledge

- [Project binding and intake](shared-project-knowledge/project-binding-and-intake.md)
- [Delivery principles and artifact contracts](shared-project-knowledge/delivery-principles-and-artifacts.md)
- [Quality, security, and release policy](shared-project-knowledge/quality-security-and-release-policy.md)

## Provenance and licenses

All sources were accessed 2026-08-09. They were read as professional guidance and distilled into original, runtime-neutral instructions; no executable code, dependencies, third-party prompts, or substantial source text were copied.

| Source | Revision/status | License or usage status | Adaptation and security findings | Approval |
|---|---|---|---|---|
| Repository `packs/template/` and `skills/build-agent-team/` | local state, 2026-08-09 | Repository MIT License; adaptation and redistribution permitted with license notice | Structure and mandatory PM files adapted. Markdown only; no scripts, network calls, credentials, hidden instructions, or dependency risk found. | Creator explicitly requested pack generation; reuse authorized by task |
| [GOV.UK Service Standard](https://www.gov.uk/service-manual/service-standard) and [discovery guidance](https://www.gov.uk/service-manual/agile-delivery/how-the-discovery-phase-works) | live guidance | Open Government Licence v3.0; attribution required. Contains public sector information licensed under OGL v3.0. | Principles for user needs, whole-problem discovery, multidisciplinary iteration, success measures, security, accessibility, and reliable operation distilled; no executable content. | Web-authored source; individual approval not required |
| [W3C WCAG 2.2](https://www.w3.org/TR/WCAG22/) | W3C Recommendation, 12 December 2024 | W3C document use rules apply; used as a normative reference, not reproduced or modified | Testable accessibility outcomes and conformance evidence informed design/review gates; no executable content. | Web-authored source; individual approval not required |
| [IETF RFC 9110: HTTP Semantics](https://www.rfc-editor.org/rfc/rfc9110.html) | Standards Track RFC, June 2022 | IETF Trust Legal Provisions / BCP 78; used as a normative reference, with no extracted code or derivative RFC text | HTTP/API semantic correctness and interoperability principles distilled; no executable content. | Web-authored source; individual approval not required |
| [NIST SP 800-218 SSDF v1.1](https://csrc.nist.gov/pubs/sp/800/218/final) | Final, February 2022 | U.S. government publication; public reference use. Verify any third-party material notices before reproduction. | Secure-development preparation, protection, production, and vulnerability-response concepts distilled; no tools or dependencies executed. | Web-authored source; individual approval not required |
| [OWASP ASVS](https://owasp.org/www-project-application-security-verification-standard/) | stable 5.0.0 listed by OWASP | OWASP site content CC BY-SA 4.0 unless otherwise specified; attribution/share-alike obligations apply to copied adaptations. This pack uses high-level concepts and links, not copied requirements. | Risk-adjusted verification and traceable security controls distilled. Source page inspected; no scripts or dependencies reused. | Web-authored source; individual approval not required |
| [OWASP SAMM](https://owasp.org/www-project-samm/) | SAMM v2 model | OWASP site content CC BY-SA 4.0 unless otherwise specified; concepts referenced, no substantial text copied. | Risk-driven, lifecycle-wide assurance concepts distilled. No executable content or dependencies reused. | Web-authored source; individual approval not required |

## Known risks and unsupported conditions

The five-role design deliberately combines product with UX, application disciplines into one engineering role, and platform with security. It suits bounded MVPs, not workloads needing independent architecture, security audit, content design, data science, legal, compliance, localization, or 24/7 operations ownership. Activate additional qualified roles when variants exceed team competence or segregation-of-duty needs. Automated checks do not prove usability, accessibility, security, privacy, or correctness. External production changes require explicit authority, approved credentials, backup/rollback readiness, and human release approval.
