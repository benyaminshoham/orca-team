# Accessibility review

## Purpose

Independently assess rendered website content and interactions against the approved accessibility target, with reproducible evidence and explicit coverage limits.

## Triggers

Use for early pattern review, release-candidate gate, remediation retest, regression, production smoke check, and any accessibility-impacting change.

## Required inputs

Approved target and scope; representative templates and unique/high-risk pages; release version/environment; browser/device/assistive-technology matrix; design intent; component/state inventory; content/media inventory; known third-party constraints.

## Workflow

1. Define scope and sampling rationale. Include shared templates/components, unique content, forms, navigation, overlays, media, errors, dynamic states, and conditional variants.
2. Map applicable success criteria and project acceptance checks; mark excluded or blocked coverage explicitly.
3. Run approved automated checks and preserve tool/version, URL, date, and output. Treat results as leads and regression evidence.
4. Manually inspect semantic structure, headings/landmarks, reading order, text alternatives, labels/instructions, names/roles/states, status/error announcements, and content clarity.
5. Test keyboard-only operation: reachability, order, visible focus, traps, activation, dismissal, skip behavior, and recovery.
6. Test contrast and non-color meaning, zoom/reflow/text spacing, target/interaction behavior, timing, motion/reduced motion, and media alternatives as applicable.
7. Test representative journeys with the approved assistive technologies where available; disclose missing coverage.
8. Record each finding against the exact version with user impact, criterion/requirement, evidence, reproduction, severity, and expected behavior.
9. Retest fixes and relevant regression scope; do not close based solely on implementation assertion.

## Decision rules

- Scope claims apply only to fully tested pages/states within the declared target.
- Automated no-error output is not a pass for criteria requiring human judgment.
- Prioritize user impact, reach, task criticality, and absence of workaround—not cosmetic preference.
- Third-party ownership does not remove user impact or evidence obligations.
- A formal conformance statement requires complete, authorized evidence beyond a sample review.

## Output contract

Test plan and matrix; scope/limitations; tool and manual evidence; findings; criterion/requirement mapping; retest results; unresolved risks; accessibility gate recommendation.

## Quality checklist

Version and environment are identified; critical states and journeys are covered; manual testing complements automation; findings reproduce; passes are not overclaimed; limitations and third-party issues are visible.

## Failure and escalation conditions

Escalate critical task blockage, keyboard trap, inaccessible authentication/form path, flashing risk, missing essential alternative, widespread shared-component defect, unavailable testing access, or pressure to waive evidence.

## Collaboration touchpoints

Owners clarify intent but do not control findings. PM routes remediation; engineer fixes implementation; strategist/designer fix owned source artifacts; human accepts residual risk.
