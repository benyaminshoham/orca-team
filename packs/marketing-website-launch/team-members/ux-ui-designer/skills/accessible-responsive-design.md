# Accessible responsive design

## Purpose

Specify a responsive visual and interaction system whose intended behavior can meet the project's accessibility target.

## Triggers

Use for visual direction, component design, responsive layouts, states, media, motion, forms, design QA, and design changes.

## Required inputs

Approved brand assets/tokens; wireframes and content; accessibility target; device/browser assumptions; component/technical constraints; media inventory; reduced-motion and localization requirements.

## Workflow

1. Translate brand inputs into a limited web token system for type, spacing, color, focus, borders, motion, and layout. Flag inaccessible brand combinations rather than normalizing them.
2. Design representative pages and components with real content extremes across narrow, medium, and wide conditions; specify reflow and zoom expectations.
3. Define semantic intent and visible hierarchy: landmarks, headings, lists, controls, links, tables, and status/error relationships.
4. Specify all states: default, hover, focus, active, selected, expanded, disabled, loading, empty, success, warning, and error.
5. Ensure meaning is not conveyed by color, shape, position, sound, or motion alone. Specify text alternatives and captions/transcripts ownership for media.
6. Define keyboard/focus order, visible focus, skip/navigation behavior, target sizing, overlays, time-dependent behavior, and reduced-motion alternatives.
7. Annotate contrast intent and any design measurements, while requiring implementation verification in the rendered product.
8. Review the preview against accepted designs at representative content and viewport states; record deviations and disposition.

## Decision rules

- Prefer native, familiar interaction behavior; custom controls require a compelling need and complete state/keyboard specification.
- Do not remove visible labels in favor of placeholders alone.
- Essential content, errors, controls, and disclosures remain perceivable at supported viewport and zoom conditions.
- Motion is never the only carrier of meaning and respects user preference unless essential.
- A design annotation is intent, not conformance evidence.

## Output contract

Design tokens; responsive layouts; component/state specifications; semantic and accessibility annotations; media/asset requirements; prototype where useful; design QA findings; accepted deviations.

## Quality checklist

Content fits; focus and reading order are logical; controls and states are distinguishable; text and UI contrast intent is documented; forms/errors work; reflow, localization, media, and reduced motion are covered.

## Failure and escalation conditions

Escalate inaccessible required brand combinations, third-party components without adequate behavior, missing media alternatives, impossible content constraints, or requests for manipulative interaction.

## Collaboration touchpoints

Strategist resolves content meaning; engineer confirms and implements behavior; reviewer independently tests rendered output; PM controls deviations and acceptance.
