# First-project example: a small SaaS MVP

This example shows the expected flow before agents begin implementation. It is
deliberately generic: replace the sample facts with your project documents and
constraints.

## Starting point

You have an existing repository for a small web application and a short product
brief describing its first release. The goal is to plan and deliver a usable
MVP without giving agents unchecked authority over scope, deployments, or
external services.

Install Orca Team, restart Codex, open the application repository, and ask:

```text
Use $run-agent-team-on-codex to bind packs/saas-mvp-delivery to this project
and execute it using the project documents.
```

## What happens next

1. The runner verifies that the SaaS MVP pack fits the project and identifies
   missing inputs, such as target users, acceptance criteria, deployment rules,
   or security constraints.
2. It proposes a project brief and task graph. The plan names accountable roles
   for product and UX, application delivery, platform and security, and release
   review; the Project Manager coordinates rather than silently doing their
   specialist work.
3. You review and explicitly approve the brief and plan. Until then, no team is
   launched and no external action is authorized.
4. After approval, each accepted assignment is performed in a visible Codex task
   and isolated Git worktree. The Project Manager checks handoffs and integrates
   accepted work in dependency order.
5. The project closes only after integrated validation, required approvals, and
   task-system reconciliation. Any remaining risk is reported to you.

## What to bring

The better the source material, the better the plan. A useful first run has:

- a short product or feature brief and known users;
- repository access and any existing architecture or design notes;
- constraints on deployment, security, privacy, or external actions;
- a definition of what a successful first release means.

Unknowns are fine. State them explicitly so the runner can record them as
assumptions or bring them back for a human decision.

## Give feedback

After the run, open an **Onboarding feedback** issue with the pack used, your
project type, the point where you stalled, and the result you expected. Do not
include credentials or private source documents.
