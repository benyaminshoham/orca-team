# Orchestration instructions

## Project binding

The PM inventories authoritative project sources, runs the [execution-time intake](shared-project-knowledge/project-binding-and-intake.md), and creates a versioned project brief outside the pack. Each source receives an owner and precedence. The brief records facts, assumptions, unresolved decisions, activated variants, authority, constraints, measures, and definition of done. Product, engineering, platform/security, and QA validate their sections; the human sponsor approves the bound brief and initial execution plan. The pack remains unchanged.

## Workstreams and decomposition

1. **Problem and product:** Product & UX owns evidence, outcomes, scope, journeys, acceptance criteria, and experience specification.
2. **Application:** Full-Stack Engineering owns architecture decisions, contracts, code, data changes, developer verification, and technical documentation.
3. **Platform and assurance:** Platform & Security owns threat/control mapping, delivery environments, CI/CD, configuration/secrets, telemetry, rollout, rollback, and operational readiness.
4. **Independent verification:** QA & Release owns test strategy, traceability, exploratory and non-functional verification, accessibility findings, release evidence, and independent recommendation.
5. **Execution control:** PM owns the task graph, dispatch, dependencies, status, handoff acceptance, integration coordination, recovery, and closure evidence.

Every artifact has one accountable owner. Contributions do not transfer accountability. Decompose the MVP into vertical, demonstrable slices; put risk retirement and enabling work before dependent feature volume.

## Invocation and dependencies

The PM starts first. Product and UX discovery begins after brief approval. Engineering and Platform/Security may assess the existing system, constraints, feasibility, and threats in parallel when their inputs are stable. Product scope cannot pass its gate until feasibility, risk, accessibility, and measurement feedback are reconciled.

After a slice contract is accepted, Full-Stack Engineering and Platform/Security may work concurrently on non-overlapping artifacts. QA begins traceability and test design with the slice contract, then tests accepted builds in a representative environment. Avoid parallel changes to the same artifact, schema, environment, or interface unless ownership and merge order are explicit. Limit work in progress to verified integration capacity.

## Workspace and ownership

The runtime brief defines repositories, artifact roots, branches, environments, naming, and records. Store decisions, requirements, test evidence, risks, deployment evidence, and task state in authoritative systems—not chat memory. Use stable identifiers from outcome to story, implementation, control, test, defect, and release evidence. Never place credentials or sensitive production data in artifacts. Pack files are read-only.

## Handoff contracts

| Sender | Receiver | Artifact | Acceptance criteria | Feedback loop |
|---|---|---|---|---|
| Product & UX | PM, Engineering, Platform/Security, QA | MVP scope and slice contract | user/outcome rationale, states and journeys, acceptance examples, accessibility needs, measures, exclusions, dependencies, open risks | receiver identifies ambiguity or infeasibility; Product revises; PM records acceptance |
| Engineering | Platform/Security | architecture/data/API decision | alternatives, interfaces, trust/data boundaries, migration/compatibility, failure behavior, risks and verification | Platform/Security challenges controls and operability; Engineering resolves or escalates |
| Platform/Security | Engineering, QA | threat/control and environment contract | assets, threats, required controls, environment/configuration assumptions, evidence method, residual risks | recipients confirm testability and implementation ownership |
| Engineering | QA | release candidate | traceable change set, developer checks, migrations, known limits, deployment/config needs, test instructions | QA accepts for test or returns reproducible blockers |
| Platform/Security | QA | representative environment and release evidence | version/config identity, access boundaries, telemetry, deployment/rollback proof, known drift | QA reports environment gaps; Platform remediates or records exception |
| QA | Product, Engineering, Platform/Security, PM | verification report | coverage, environment/build, results, defects, accessibility/security evidence, residual gaps, recommendation | owners resolve findings; QA independently retests |
| Product & UX | PM | product acceptance | scope and journey evidence against approved outcome and exclusions | failed criteria return to owner; scope exceptions require human approval |
| PM | human approver | release dossier | accepted artifacts, gate results, rollout/rollback, ownership, residual risk, unresolved exceptions, recommendation | human approves, rejects, or requests bounded remediation |

## Quality and approval gates

1. **Brief gate — human:** binding is complete, authority and variants are explicit.
2. **Plan gate — human:** task graph, capacity, milestones, acceptance contracts, risk and change control are approved before substantive dispatch.
3. **Scope gate — Product accountable:** evidence-backed MVP slices, measures, accessibility needs, feasibility and explicit exclusions are accepted.
4. **Design/readiness gate — specialist accountable:** architecture, threat controls, testability, environment plan, data change and rollback are sufficient to build.
5. **Slice acceptance — Product plus QA:** functional intent, user journey, automated/manual evidence, and material risk controls pass.
6. **Release-readiness gate — QA independent recommendation; Platform/Security and Product attest their domains:** representative integrated validation passes; deployment, monitoring, rollback, support ownership and residual risks are evidenced.
7. **Go/no-go and closure — human:** only the named human authority accepts production change and final closure.

## Conflict resolution and escalation

Evidence and approved decision authority outrank hierarchy or speed. Product decides intended outcomes and priority within approved scope; Engineering decides application implementation; Platform/Security decides whether technical controls and operations evidence meet the approved policy; QA decides its independent findings and recommendation; humans accept exceptions and material risk. The PM facilitates, records, and schedules decisions but does not overrule domain owners.

Return rejected work once with an actionable defect contract, then retry within the approved limit. Escalate unclear authority, incompatible requirements, unsafe or unauthorized actions, material scope/cost/timeline changes, privacy/security/accessibility exceptions, repeated failure, missing representative environments, irreconcilable evidence, or inability to prove completion. Continue independent ready work when safe.

## Completion and integration

The PM integrates only accepted artifacts in dependency order. QA verifies the exact candidate in a representative environment; Platform/Security validates deployment, telemetry and rollback; Product validates approved journeys and measures. Reconcile artifact versions, task state, decisions, defects, exceptions, runbooks, ownership, and cleanup. Present a release dossier and residual-risk summary. Completion requires all approved deliverables and gates, no hidden blockers, production/support ownership, recovery readiness, and explicit human closure.
