# Orca Team

![Robotic orcas leaping above an ocean, with abstract AI infrastructure in the background](assets/orca-ai-hero-v3.png)

Orca Team packages a practical workflow for designing portable agent teams and
binding them to concrete projects in Codex and Claude Code. It includes two installable skills, a
runtime-neutral knowledge-pack template, starter-pack proposals, and simple
installers for macOS/Linux and Windows.

## Included

- `build-agent-team`: interviews a pack creator, designs a reusable 3–7-role
  team, and writes a Markdown-only universal knowledge pack. Every team includes a dedicated
  Project Manager & Orchestration Lead.
- `run-agent-team-on-codex`: binds one approved universal pack to the current
  project documents, creates a project brief and execution plan, and coordinates
  work through visible Codex tasks, isolated Git worktrees, and an approved
  connected task-management system.
- `run-agent-team-on-claude-code`: the Claude Code equivalent, using isolated
  Claude Code agents or worktree sessions and the same approved task system.
- Five ready-to-bind universal starter packs for SaaS, marketing websites,
  data/ML products, mobile applications, and research reports.
- `packs/template`: a copyable, runtime-neutral starting structure for new packs.
- `docs/pack-catalog.md`: applicability and team summaries for the included packs.

The build skill creates knowledge packs but never launches a team. The run
skill executes from an approved pack but treats that pack as read-only.

## Install

Clone the repository and enter its root:

```sh
git clone https://github.com/benyaminshoham/orca-team.git
cd orca-team
```

Or download this repository, then run the installer from its root.

### macOS or Linux

```sh
./scripts/install.sh
```

If the script is not executable in a downloaded archive:

```sh
sh scripts/install.sh
```

### Windows PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install.ps1
```

Both installers default to `$CODEX_HOME/skills` when `CODEX_HOME` is set and
otherwise use `~/.codex/skills`. Existing skill directories are never replaced
unless you explicitly pass `--force` on macOS/Linux or `-Force` on Windows.
Forced updates move the previous copies to timestamped backup directories.

Custom destination examples:

```sh
./scripts/install.sh --dest /path/to/codex/skills
```

```powershell
.\scripts\install.ps1 -Destination 'C:\path\to\codex\skills'
```

Restart Codex after installation so it reloads the skills.

### Claude Code

Install the Claude Code runner into your user skills directory:

```sh
mkdir -p ~/.claude/skills
cp -R skills/run-agent-team-on-claude-code ~/.claude/skills/
```

Restart Claude Code, then invoke `$run-agent-team-on-claude-code` with the
pack and project documents. The Codex installer remains Codex-only.

## Use

### 1. Build a universal pack

Start with a project description and any authoritative project documents, then
ask Codex:

```text
Use $build-agent-team to create a universal knowledge pack for this class of
projects. Save it under packs/<pack-name>.
```

The skill will interview you, propose the complete team, request approval, and
only then write the pack. Do not skip the approvals: they establish ownership,
boundaries, source licensing, and handoffs.

### 2. Review the generated pack

Check its manifest, role roster, source provenance, assumptions, approval
gates, orchestration instructions, applicability, execution-time intake
contract, and completion rules. Packs contain reusable guidance and questions,
not instance-specific placeholder values.

### 3. Run the team

With a project repository, its source documents, and an applicable approved pack available, ask:

```text
Use $run-agent-team-on-codex to bind packs/<pack-name> to this project and
execute it using the project documents.
```

The run skill will validate applicability, bind project facts into a proposed
project brief, inspect connected task-management options, and present the brief
and execution plan for approval before creating tasks or launching role agents.

See [docs/operating-guide.md](docs/operating-guide.md) for the full operating
flow and [docs/pack-catalog.md](docs/pack-catalog.md) for starter-pack ideas.

## Repository layout

```text
orca-team/
├── skills/
│   ├── build-agent-team/
│   ├── run-agent-team-on-codex/
│   └── run-agent-team-on-claude-code/
├── packs/
│   ├── saas-mvp-delivery/
│   ├── marketing-website-launch/
│   ├── data-ml-product/
│   ├── mobile-application-release/
│   ├── research-decision-report/
│   └── template/
├── docs/
│   ├── operating-guide.md
│   └── pack-catalog.md
└── scripts/
    ├── install.sh
    └── install.ps1
```

## Safety model

- Every pack is reusable, Markdown-only, and runtime-neutral.
- Concrete project facts live in the approved runtime project brief, not the pack.
- Copied or adapted sources require compatible licensing and provenance.
- Team execution requires a human-approved plan and connected task system.
- Role agents work in visible Codex or Claude Code agent tasks and isolated Git
  worktrees.
- External actions require explicit authorization.
- Knowledge packs stay read-only during execution.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). By contributing, you agree that your
contribution is licensed under this repository's MIT License.
