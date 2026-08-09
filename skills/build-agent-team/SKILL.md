---
name: build-agent-team
description: Design and generate universal, runtime-neutral, Markdown-only knowledge packs that define reusable teams of specialized AI agents with a mandatory dedicated Project Manager and Orchestration Lead. Use when Codex must define a project class and applicability, interview the creator about team constraints, select a balanced 3–7-role team, source or author role-specific skills, define concise system prompts and end-to-end orchestration, or create/update an agent-team pack that can be bound to concrete project documents at execution time. Generate the pack only; do not launch or coordinate the agents that it describes.
---

# Build Agent Team

Create a self-contained knowledge pack that another orchestration system can bind to a concrete project and use to instantiate a team. Every pack is reusable; there is no project-specific pack mode. Interview before designing, approve before writing, and never launch the generated team.

## Non-negotiable boundaries

- Generate knowledge-pack files only. Do not run the team or execute the underlying project.
- Keep the generated pack runtime-neutral and Markdown-only.
- Ask for the pack language; do not infer it from example project documents alone.
- Treat supplied project documents as design examples or source material, never as facts to embed about one project.
- Do not copy source documents into the pack. Distill only durable knowledge needed across projects in the declared applicability.
- Do not put source citations inside shared-project-knowledge files. Record provenance in `manifest.md`.
- Treat creator-provided requirements as authoritative. Label decisions made for unanswered questions as assumptions.
- Every generated pack must contain a dedicated Project Manager & Orchestration Lead. Do not omit, merge, or reduce this role to a generic coordination paragraph.

## Required workflow

### 1. Establish applicability and inputs

Ask first which project class the pack should support, how broad its applicability should be, and which variants it must handle. Read supplied descriptions and documents as examples and design inputs. Follow [references/intake-and-team-design.md](references/intake-and-team-design.md) to interview for missing material information. Accept `unknown`, `not applicable`, or `decide for me`; when asked to decide, make the smallest defensible assumption and surface it for approval.

Define the execution-time intake contract: the project facts and documents a runner must supply before using the pack. Encode intake questions and conditional branches as durable instructions, not unresolved placeholder values. Never bake one project's name, dates, stakeholders, credentials, repository state, or deliverable details into the pack.

Ask where to save the finished pack: the project folder, a local knowledge-packs folder, or a GitHub repository working tree. If the target already exists, stop and ask whether to update it, create a versioned sibling, replace selected files, or choose another target. Never overwrite by assumption. Do not commit or push unless separately requested.

### 2. Design the complete team

Map the full project lifecycle, required deliverables, disciplines, risks, review needs, and dependencies. Design a balanced team of 3–7 roles, including the mandatory Project Manager & Orchestration Lead, unless the creator instructs otherwise. Combine closely related specialist responsibilities when their handoffs would add more overhead than expertise; split roles when independent specialist judgment or a separate quality gate is valuable.

Read and apply [references/project-manager-role.md](references/project-manager-role.md) for every new or updated pack. Keep the PM dedicated and platform-neutral. Separate its ownership of execution planning, task state, assignments, sequencing, retries, handoffs, integration flow, and closure from strategic, product, scientific, technical, and independent quality authority.

For every proposed member, define:

- mission, responsibilities, and explicit boundaries;
- required inputs and owned outputs;
- collaboration and handoff relationships;
- necessary role-specific skills;
- quality authority and escalation conditions.

Present the complete proposed team, responsibility coverage, and role-to-skill map in chat. Require explicit approval of the team as a whole before sourcing skills or writing pack files. Revise until approved.

### 3. Source skills in priority order

For each required skill, use this order:

1. Suitable skills in existing local or GitHub knowledge packs.
2. Strong, adaptable GitHub skills or role guidance.
3. A new skill compiled from authoritative professional standards and primary web sources.

Follow [references/source-selection.md](references/source-selection.md) for discovery, ranking, security inspection, licensing, approval, adaptation, and provenance. Require the creator to approve each local-pack or GitHub source individually. Web sources used to compile a new skill do not require individual approval, but must be recorded in `manifest.md`.

### 4. Draft and write the pack

Follow [references/pack-format.md](references/pack-format.md) exactly, including all mandatory PM files. Draft content only after the team and applicable sources are approved.

Keep each system prompt concise: include identity, mission, responsibilities, boundaries, inputs, operating method, outputs, quality standards, collaboration and handoffs, escalation, and definition of done without duplicating its skill files.

Make each role skill focused and efficient. Include purpose, triggers, inputs, workflow, decision rules, output contract, quality checklist, failure/escalation conditions, collaboration touchpoints, and examples/templates/references only when they materially improve execution. Prefer several focused files over one bloated file. Target at most 250 lines per role-skill file; exceed that only when removing content would make the skill unsafe or ambiguous.

### 5. Validate before handoff

Inspect every generated file and validate:

- complete lifecycle and deliverable coverage;
- missing, duplicated, or conflicting responsibilities;
- a dedicated Project Manager & Orchestration Lead with all three required PM skills;
- clear separation of PM execution authority from strategic, specialist, reviewer, and human authority;
- viable dependencies, handoffs, review gates, and approval points;
- concise, internally consistent system prompts;
- complete and usable role skills;
- runtime neutrality and Markdown-only contents;
- manifest completeness, provenance, licenses, and source approvals;
- GitHub-source maintenance and security findings;
- absence of copied project documents and sensitive source material;
- correct links, paths, filenames, and pack structure.

Fix defects that do not change approved scope. Ask before making a material team or source change. Deliver the pack and send the validation report in chat; do not add a validation-report file to the pack.
