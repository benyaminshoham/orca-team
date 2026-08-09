# Accessible web implementation

## Purpose

Implement accepted content and design as robust web behavior with semantic structure, accessible interactions, responsive rendering, and maintainable components.

## Triggers

Use for technical design, component/page development, content integration, form and media work, metadata, defect remediation, and implementation QA.

## Required inputs

Accepted page briefs/copy; design and state specifications; accessibility target; technical/platform constraints; browser/device matrix; data/integration contract; asset rights; acceptance criteria.

## Workflow

1. Define architecture, rendering/content strategy, component boundaries, dependency choices, and progressive-enhancement behavior; record consequential tradeoffs.
2. Use native semantic elements first. Preserve meaningful DOM order, landmarks, headings, names, labels, descriptions, status announcements, and control states.
3. Implement keyboard operation, visible focus, skip/navigation behavior, error recovery, responsive reflow, zoom/text spacing resilience, reduced motion, and accessible media.
4. Integrate approved copy without silent rewriting. Associate errors, help, disclosures, and consent information with the affected interaction.
5. Implement assets responsively with appropriate dimensions, alternatives, and loading behavior. Avoid essential text embedded in images.
6. Implement forms against the approved data-flow contract: necessary fields only, validation, abuse handling, secure transport, destination, success/failure behavior, and no sensitive logging.
7. Implement unique titles, descriptive metadata, canonical/index decisions, crawlable internal links, sitemap/robots behavior, and visible-content-aligned structured data where applicable.
8. Test components and representative templates across the support matrix and relevant assistive interaction. Record automated and manual evidence separately.
9. Publish a versioned preview and difference report for content, design, and independent review.

## Decision rules

- Native elements take precedence over custom emulations unless the accepted need cannot be met.
- Do not add third-party scripts, trackers, cookies, or data fields without approved purpose and controls.
- Structured data describes visible, accurate content; fewer complete properties beat inaccurate breadth.
- Crawling, indexing, authentication, and privacy controls are distinct.
- Automated accessibility success is necessary evidence when specified, never proof of conformance by itself.

## Output contract

Technical design record; implemented components/pages; configuration; metadata/search controls; form/integration behavior; dependency and third-party inventory; versioned preview; test evidence; deviations and known issues.

## Quality checklist

Semantics, keyboard/focus, errors, reflow, media, and states work; copy/design meaning is preserved; data flows match approval; metadata/index behavior is intentional; no secrets or unapproved tracking exist; deviations are disclosed.

## Failure and escalation conditions

Escalate unsafe/unmaintained dependency, inaccessible third-party widget, unavailable content alternative, ambiguous data destination, architecture scope growth, irreconcilable browser constraint, or requirement conflict.

## Collaboration touchpoints

Strategist validates content fidelity; designer validates behavior and visual intent; reviewer independently tests; PM controls tasks and accepted deviations.
