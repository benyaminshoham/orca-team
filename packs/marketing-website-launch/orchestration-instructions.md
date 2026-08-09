# Orchestration instructions

## Project binding

The Project Manager (PM) inventories supplied sources and runs the [project intake](shared-project-knowledge/project-binding-and-intake.md). It records source authority, assumptions, selected variants, applicable rules, role availability, decisions, and unresolved blockers in a project brief outside the pack. The human decision owner approves the brief and definition of done before planning. The pack remains unchanged.

## Workstreams and decomposition

1. **Control and discovery — PM:** project brief, artifact map, task graph, risks, gates, and launch plan.
2. **Message and content — Brand & Content Strategist:** audiences, message architecture, evidence-linked claims, page briefs, copy, metadata content, and content QA.
3. **Experience design — UX/UI Designer:** sitemap, journeys, wireframes, responsive visual system, interaction states, and implementation specifications.
4. **Engineering and operations — Web Engineer:** technical plan, components, content integration, forms and measurement, search controls, preview environments, deployment, and rollback.
5. **Independent validation — Accessibility, SEO & QA Reviewer:** test plan, findings, retests, gate decisions, and post-launch verification.

Every output has one accountable owner. Contributors may annotate or propose changes but may not silently overwrite the owner's accepted artifact.

## Invocation and dependencies

The PM starts first. After brief approval, content discovery and experience inventory may run in parallel if they share the same audience and scope baseline. The content strategist and designer jointly resolve sitemap/page-purpose dependencies before high-fidelity design. Engineering may establish architecture, environments, and component foundations while approved content and page designs are in progress, but must not freeze content-dependent interfaces prematurely.

Implementation requires accepted page briefs and sufficient design states. Reviewer test planning begins from the approved brief and can inspect early patterns; release recommendation requires a release candidate. Limit parallel changes to shared templates, navigation, tokens, schemas, and configuration to one active owner or explicitly isolated branches.

## Workspace and ownership

The execution plan defines authoritative locations for the brief, decisions, tasks, content, designs, code, test evidence, and releases. Artifacts carry owner, status, version/date, dependencies, approval state, and unresolved risks. Only the PM changes task state; only artifact owners publish candidate revisions. Sensitive credentials and personal data never enter ordinary project artifacts.

## Handoff contracts

- **Brief → all roles:** PM sends approved brief and assignment contract; recipients accept only when scope, inputs, destination, and authority are clear.
- **Message system → Designer/Engineer/Reviewer:** strategist sends audience, page purpose, hierarchy, claims register, approved copy state, and content risks.
- **Experience specification → Strategist/Engineer/Reviewer:** designer sends sitemap, flows, responsive layouts, component/state behavior, content constraints, and accessibility annotations.
- **Release candidate → Strategist/Designer/Reviewer:** engineer sends versioned preview, change summary, environment differences, test evidence, known issues, rollback plan, and content freeze status.
- **Findings → accountable owner:** reviewer sends reproducible evidence, expected behavior, impact, severity, affected scope, and retest condition through the PM.
- **Accepted release → human launch owner:** PM sends gate evidence, residual risks, rollback readiness, approvals, and explicit launch decision request.

Rejected handoffs return through the PM with specific acceptance gaps. The receiving role never silently repairs another owner's substantive work.

## Quality and approval gates

1. **Brief gate — human:** scope, audience, outcomes, authority, variants, constraints, and definition of done approved.
2. **Plan gate — human:** work breakdown, owners, dependencies, capacity, milestones, acceptance contracts, and launch controls approved.
3. **Strategy gate — human/brand owner:** message architecture, claims evidence, sitemap/page purposes, and conversion approach accepted.
4. **Design gate — human/brand owner:** representative responsive layouts, component states, content fit, and accessibility design review accepted.
5. **Build-ready gate — PM:** required content/design inputs accepted; environments, access, test plan, and rollback path ready.
6. **Release-candidate gate — independent reviewer:** scoped functional, accessibility, SEO, content, privacy/configuration, and cross-device evidence reviewed; blocking defects closed or explicitly waived by authorized humans.
7. **Launch gate — human launch owner:** release version, approvals, backups/rollback, monitoring, support ownership, and residual risks accepted.
8. **Post-launch and closure gate — human:** production smoke checks, crawl/index controls, forms, measurement, redirects, incidents, cleanup, and open-risk ownership confirmed.

## Conflict resolution and escalation

The human owner controls business intent, scope, risk acceptance, legal determinations, and launch. The strategist controls message and copy substance; the designer controls experience/design specifications; the engineer controls safe implementation within approved requirements; the reviewer controls assigned independent findings and gate recommendation; the PM controls process and task state.

When requirements conflict, preserve the stricter binding constraint while owners produce options and impacts. Escalate unverifiable claims, missing rights, inaccessible required behavior, privacy uncertainty, scope expansion, unsafe deployment, production data exposure, material deadline/capacity conflict, repeated rejection, or disputed gate evidence. The PM may schedule retries within the unchanged contract; material changes require approval.

## Completion and integration

The engineer integrates only accepted content, design, and fixes into the identified release. The reviewer retests affected behavior and representative regression scope. After authorized launch, the team verifies critical journeys, forms, redirects, metadata/index controls, analytics/consent behavior, accessibility-critical interactions, performance/error signals, and rollback readiness in production.

The PM reconciles artifact and task state, records release evidence and residual risks, assigns follow-up owners, removes temporary access or environments when authorized, and requests explicit human closure. A published site alone is not completion.
