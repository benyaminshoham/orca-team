# Contributing

Contributions to skills, templates, and knowledge packs are welcome.

## Ground rules

1. Keep skill and knowledge-pack content readable, portable Markdown.
2. Keep runtime-specific behavior in a runtime skill, not in a reusable pack.
3. Make every pack universal within a declared project-class applicability.
4. Include a dedicated Project Manager & Orchestration Lead in every pack.
5. Document source provenance, licenses, adaptations, and security findings.
6. Never commit credentials, private project documents, or sensitive data.
7. Prefer focused changes and explain any change to role authority or approval
   gates in the pull request.

## Adding a knowledge pack

Start from `packs/template`, use the `build-agent-team` workflow, and complete
the required interview and approval steps. Before proposing the pack:

- replace instance-specific placeholders with explicit execution-time intake questions;
- validate every relative link;
- ensure every deliverable has one accountable owner;
- verify PM/specialist/reviewer/human authority boundaries;
- record all sources and compatible licenses in `manifest.md`;
- confirm the pack contains only Markdown content files.

Packs contain durable project-class guidance, applicability boundaries,
conditional variants, and an execution-time input contract. Concrete project
facts belong in the runner's approved project brief, never in the pack.

## Updating vendored skills

Copy the complete skill directory, including `SKILL.md`, `agents/`, and
`references/`. Review the diff, test both installers, and update documentation
when behavior or requirements change.
