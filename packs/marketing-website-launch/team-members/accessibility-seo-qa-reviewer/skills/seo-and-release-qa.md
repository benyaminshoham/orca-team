# SEO and release QA

## Purpose

Independently test search readiness, content/configuration fidelity, critical journeys, compatibility, and release controls for an identified candidate and production launch.

## Triggers

Use for test planning, candidate review, migration, remediation retest, launch preflight, and post-launch verification.

## Required inputs

Approved brief and page/URL inventory; candidate version; content/design sources; search baselines and requirements; redirect map; metadata/index/canonical/structured-data intent; browser/device matrix; form/data flow; release/rollback plan.

## Workflow

1. Define risk-based coverage across representative templates plus every unique, high-value, conversion, legal/disclosure, form, migration, and error path.
2. Verify content/design fidelity: headings, copy, claims/disclosures, assets, navigation, links, states, responsive behavior, and no placeholder/stale content.
3. Exercise critical journeys and forms for validation, errors, success, delivery, duplicate behavior, consent choices, and approved measurement without exposing real personal data.
4. Inspect response/status behavior, internal links, redirects, canonical decisions, titles/descriptions, heading structure, crawl/index directives, sitemap and robots consistency, and staging privacy controls.
5. Validate structured data against visible content and applicable requirements; record tool/result without predicting rich-result eligibility.
6. Test supported browser/device conditions, not-found/error behavior, key performance acceptance thresholds, third-party failure, and basic resilience named in the brief.
7. Review release evidence: immutable candidate, configuration differences, backups, rollback triggers, monitoring/support, and approvals.
8. Record findings with exact environment/version, reproduction, expected behavior, severity/impact, owner, and gate effect.
9. Retest fixes plus affected regression scope. After launch, repeat production-critical smoke, redirect/index, form, analytics/consent, and error checks.

## Decision rules

- Search readiness is controllable; indexing, ranking, traffic, and rich results are not guaranteed.
- Robots.txt does not prevent indexing or protect private content.
- Structured data must be complete, accurate, and represented in visible page content.
- Severity reflects user/business risk, reach, recoverability, and release impact.
- Privacy/legal uncertainty is escalated, not interpreted by the reviewer.

## Output contract

Coverage matrix; environment/version record; functional/content/SEO findings; redirect and index-control evidence; structured-data validation; form/measurement results; retests; production smoke; gate recommendation and residual risks.

## Quality checklist

Critical and unique scope is covered; candidate identity is stable; search controls agree; no staging/privacy leak exists; forms and consent match intent; findings reproduce; untested areas are explicit.

## Failure and escalation conditions

Escalate unintended public/indexable content, broken critical journey, widespread broken links/redirects, claims or consent mismatch, loss of rollback, severe browser regression, or untestable production-critical dependency.

## Collaboration touchpoints

Engineer supplies builds and fixes; strategist/design owner resolves source fidelity; PM controls defect state and gates; human launch owner decides authorized waivers and release.
