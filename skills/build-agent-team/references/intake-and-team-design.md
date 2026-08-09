# Intake and team design

## Intake sequence

Ask a small number of related questions per turn. Do not write files while material questions or required approvals remain open.

1. Ask which project class, applicability boundary, and variants the universal pack must support.
2. Read supplied project descriptions and documents as examples and design inputs.
3. Summarize understood facts separately from unresolved items.
4. Interview only for information not reliably present in the supplied data.
5. Accept `unknown`, `not applicable`, and `decide for me`. Record creator-delegated decisions as assumptions in the proposed design and later in the manifest.
6. Confirm the complete proposed team before sourcing or writing.

## Interview coverage

Resolve or explicitly waive:

- goals, success measures, scope, and exclusions;
- required deliverables and completion criteria;
- intended users, stakeholders, and decision owners;
- timeline, milestones, budget, and resource limits;
- required, preferred, and forbidden roles;
- team-size constraints and desired specialization;
- methodology, process, technology, and platform constraints;
- legal, regulatory, privacy, security, accessibility, and brand requirements;
- available inputs, systems, tools, data, and existing work;
- approval gates, risk tolerance, escalation paths, and quality expectations;
- target location and handling of an existing pack;
- project characteristics that require conditional roles, skills, or gates.

Do not ask the creator to repeat information found in the provided materials. Never invent a constraint merely to fill a field.

## Universal pack model

Every pack is reusable across concrete projects within its declared applicability. There is no project-specific mode.

- Keep guidance durable for the project class.
- Define required execution-time inputs and intake questions instead of placeholder values.
- Put project-binding rules and questions in shared knowledge.
- Avoid carrying facts from an example or prior project into the pack.
- Define conditional role, skill, evidence, and gate branches where project characteristics materially change execution.
- Require the runner to bind project documents and intake answers into an approved project brief without modifying the pack.

## Team-sizing heuristic

Default to 3–7 members and balance breadth with specialization.

- Always include the dedicated Project Manager & Orchestration Lead described in [project-manager-role.md](project-manager-role.md). Count it within the team-size target and never merge it into another role.

- Merge roles when responsibilities are adjacent, workloads are compatible, and independent review is unnecessary.
- Split roles when specialist expertise, parallel throughput, segregation of duties, or an independent quality gate matters.
- Add strategic, product, or domain leadership only when it owns decisions and artifacts distinct from PM execution control.
- Give quality, safety, or compliance work an explicit owner when the project risk warrants it.
- Ensure every deliverable has exactly one accountable owner, while allowing contributors and reviewers.

Build a coverage matrix before proposing the team: lifecycle stage × deliverable × accountable role × contributors/reviewers × prerequisite. Use it internally to detect gaps; show a compact version in chat when it helps the creator evaluate the proposal.

## Approval presentation

Present the team as one approval unit. For each role, show:

- role name and short mission;
- owned outcomes and boundaries;
- required skills;
- key handoffs;
- why the role is separate or combined.

Also show assumptions, lifecycle gaps resolved by the design, and any non-obvious tradeoffs. Ask for explicit approval or requested changes. Do not interpret silence as approval.

Make the PM boundary visible in the approval proposal: the PM owns operational planning, task management, orchestration, handoffs, integration flow, recovery, and closure; other leaders retain strategy and domain decisions.
