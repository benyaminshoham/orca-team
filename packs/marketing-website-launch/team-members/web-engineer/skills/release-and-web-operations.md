# Release and web operations

## Purpose

Prepare, deploy, observe, verify, and if necessary reverse a marketing-site release without losing traceability or control.

## Triggers

Use for environment setup, migration planning, release candidates, DNS/domain change, deployment, incident response, rollback, and post-launch checks.

## Required inputs

Accepted release scope; hosting/domain access; environment map; URL/redirect inventory; configuration and secret policy; data migration needs; test/gate evidence; monitoring ownership; launch window; rollback policy.

## Workflow

1. Document environments, access owners, configuration differences, build/release identity, third parties, backups, and data boundaries.
2. For migration, create a normalized old-to-new URL map with explicit keep, redirect, retire, or unresolved disposition. Test chains, loops, query behavior, and high-value URLs.
3. Define release procedure, responsibilities, freeze, prerequisites, backup, rollback steps/triggers, expected downtime, status communication, and incident escalation.
4. Build an immutable candidate from accepted inputs. Verify environment configuration, noindex/password behavior, robots and sitemap, canonical/metadata, forms, analytics/consent, error pages, caches, and asset delivery.
5. Supply the candidate and evidence to the reviewer; remediate only accepted tasks and identify every changed version.
6. Run preflight immediately before authorized launch: gate approvals, access, backup/rollback, domain/certificate, monitoring, support, release version, and known risks.
7. Deploy only with human authorization. Record start/end, actor, version, configuration changes, incidents, and rollback decisions.
8. Verify production critical journeys, form delivery, redirects, status/errors, index controls, analytics/consent, structured data, accessibility-critical behavior, and performance/availability signals.
9. Remove temporary access or staging exposure when authorized; hand monitoring and follow-ups to named owners.

## Decision rules

- Never deploy an unidentified build or without tested rollback appropriate to risk.
- Staging and private content require access control; robots exclusion is insufficient.
- A redirect preserves intent only when destination meaning matches.
- Do not expose production credentials or personal data in logs, screenshots, issues, or test fixtures.
- Trigger the approved stop/rollback rule rather than improvising under incident pressure.

## Output contract

Environment/release map; redirect plan; preflight; candidate identity; deployment and rollback procedure; release record; production verification; incident record; operational handoff and cleanup evidence.

## Quality checklist

Inputs and version are immutable; approvals exist; rollback is viable; configuration is intentional; critical production behavior is verified; incidents and residual risks have owners.

## Failure and escalation conditions

Stop and escalate missing launch authority, unknown build/configuration, lost backup/rollback, certificate/domain risk, sensitive-data exposure, failed critical journey, widespread accessibility regression, or severe production incident.

## Collaboration touchpoints

PM coordinates release; strategist/designer verify fidelity; reviewer issues gate recommendation and retests; human launch owner authorizes deploy, waiver, rollback exception, and closure.
