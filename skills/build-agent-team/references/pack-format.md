# Knowledge-pack format

## Required structure

```text
<pack-name>/
├── manifest.md
├── orchestration-instructions.md
├── shared-project-knowledge/
│   └── <topic>.md
└── team-members/
    ├── project-manager-orchestration-lead/
    │   ├── system-prompt.md
    │   └── skills/
    │       ├── project-planning-and-task-management.md
    │       ├── team-orchestration-and-assignment-control.md
    │       └── handoff-integration-recovery-and-closure.md
    └── <specialist-role-name>/
        ├── system-prompt.md
        └── skills/
            └── <skill-name>.md
```

Use lowercase hyphen-case for folder and file names other than the fixed names shown above. Use relative Markdown links within the pack. Create only `.md` content files.

## Mandatory project manager

Every pack must include `team-members/project-manager-orchestration-lead/` with a system prompt and these three skill files:

- `project-planning-and-task-management.md`
- `team-orchestration-and-assignment-control.md`
- `handoff-integration-recovery-and-closure.md`

Implement the role using [project-manager-role.md](project-manager-role.md). The PM owns execution planning, task records, assignment control, sequencing, progress visibility, operational escalation, retries, handoff acceptance, integration flow, and closure. It does not own project strategy, product intent, scientific judgment, architecture, specialist deliverables, independent review, or human approvals. If the team includes a Director, Product Lead, Principal Investigator, Architect, or similar strategic leader, state the authority split explicitly.

## `manifest.md`

Include:

1. Pack identity: name, version, creation date, language, project class, and applicability boundaries.
2. Supported outcomes, typical deliverables, explicit exclusions, and conditional variants.
3. Execution-time input contract, required project documents, intake questions, and project-binding rules.
4. Design-source inventory. Identify documents used to design the pack, but do not copy them into the pack or cite them in shared knowledge.
5. Team roster with role missions and links to role folders.
6. Role-to-skill mapping and responsibility boundaries.
7. Dependencies and major handoff relationships.
8. Shared-knowledge index.
9. Source provenance: local packs, GitHub sources, and web research.
10. Licenses, attribution duties, accessed revisions/dates, security findings, and creator approval status for every local or GitHub source.
11. Known risks, unsupported project conditions, and intentional omissions.

Keep the manifest descriptive. Put operational sequencing in orchestration instructions and detailed expertise in skills.

## Shared project knowledge

Create topic files only when two or more roles need the information, or when it is a pack-wide source of truth. Possible topics include project-binding intake, terminology, architecture patterns, policies, brand constraints, data definitions, and delivery standards.

Write distilled, standalone guidance. Do not reproduce source documents, add document citations, or include facts unrelated to team execution. Put role-exclusive knowledge in the relevant role skill or system prompt instead.

## `system-prompt.md`

Keep the prompt short and directly usable. Target 300–500 words unless the role requires less. Include:

- identity and mission;
- responsibilities and boundaries;
- required inputs;
- operating method;
- owned outputs and output standards;
- quality authority;
- collaboration and handoff rules;
- escalation conditions;
- definition of done.

Link to applicable shared knowledge and role skills. Do not duplicate their detailed procedures.

## Role-skill files

Include these sections when applicable:

1. Purpose
2. Triggers
3. Required inputs
4. Workflow
5. Decision rules
6. Output contract
7. Quality checklist
8. Failure and escalation conditions
9. Collaboration touchpoints
10. Examples, templates, and references

Keep the file focused. Target no more than 250 lines. Split materially different capabilities into separate skills. Embed examples, templates, or reference excerpts only when they reduce ambiguity or recurring work.

## `orchestration-instructions.md`

Remain platform-neutral and define:

1. Project decomposition and workstreams.
2. Role invocation order and entry conditions.
3. Work that may run in parallel.
4. Dependencies and blocking relationships.
5. Artifact ownership and shared workspace conventions.
6. Handoff contracts: sender, receiver, artifact, acceptance criteria, and feedback loop.
7. Review and quality gates.
8. Human approval points.
9. Conflict-resolution rules and decision authority.
10. Escalation rules.
11. Completion criteria and final integration procedure.

Describe behavior rather than commands for any specific agent runtime.

Route operational orchestration through the PM. Require an approved execution plan before dispatch, one accountable role and acceptance contract per assignment, an authoritative task-management record, dependency-aware scheduling, capacity safeguards, recorded retries, contract-based handoff acceptance, integrated validation, and explicit human closure.

## Update behavior

When modifying an existing pack, first inventory its files and provenance. Ask the creator whether to update in place, create a versioned sibling, replace selected files, or choose a different location. Preserve unrelated creator content. Revalidate the entire pack after changes.
