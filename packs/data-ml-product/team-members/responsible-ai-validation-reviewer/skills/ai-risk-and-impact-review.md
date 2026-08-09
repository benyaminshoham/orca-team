# AI risk and impact review

## Purpose

Map and prioritize risks to people, organizations, society, and the environment;
define proportionate evidence and controls across the product lifecycle.

## Triggers

Use during binding and design, after material context/data/model changes, before
release validation, after incidents or drift, and before retirement or repurposing.

## Required inputs

Project brief and authority; product/measurement brief; user and affected-party
evidence; system/data/model context; intended/foreseeable/prohibited uses; policies
and qualified external requirements; prior incidents; operational and threat model.

## Workflow

1. Confirm governance: accountable product, data, model, operations, incident, risk-
   acceptance, and release owners; applicable policies; competence and independence.
2. Map system boundary and lifecycle, actors and affected parties, decisions,
   dependencies, data flows, external models/tools, benefits, harms, misuse, and
   failure propagation.
3. Characterize each risk with cause/event/consequence, affected party, existing
   evidence, severity, scale, likelihood or plausibility, reversibility,
   detectability, uncertainty, and distribution of benefit/burden.
4. Assess relevant trustworthiness dimensions and tensions: validity/reliability,
   safety, security/resilience, accountability/transparency, explainability,
   privacy, harmful-bias management, and human factors.
5. Prioritize treatment. Prefer elimination or design constraint before detection
   and disclosure. Assign owner, control, validation method, threshold, monitoring,
   fallback, and residual-risk acceptor.
6. For high-impact uses, examine automation bias, meaningful human review, notice,
   explanation, override, appeal/contestability, accessibility, and vulnerable or
   underrepresented groups. Require qualified domain review.
7. For GenAI, map relevant confabulation, information-integrity, privacy/IP,
   harmful-content, abuse, injection/tool, poisoning, over-reliance, dependency,
   and capability risks; define context-matched adversarial evidence.
8. Update risk register and validation plan as evidence changes. Communicate
   uncertainty and unresolved conflict without compressing them into a score.

## Decision rules

- Risk tier is reasoned from context and impact, not model type alone.
- Unknown use authority, release ownership, or severe-harm control is a blocker.
- Do not infer fairness from removal of sensitive attributes or from aggregate parity.
- A control counts only if its owner, implementation evidence, effectiveness test,
  and failure response are identified.
- External standards and vendor statements inform analysis but do not establish
  project compliance or acceptable risk.

## Output contract

Context/system map; affected-party and misuse analysis; reasoned risk tier; risk
register; required evidence and validation plan; control/owner matrix; monitoring,
incident, fallback, and residual-risk requirements; external-expertise referrals.

## Quality checklist

- Lifecycle, end-to-end system, actors, impacts, dependencies, and variants are mapped.
- Benefits and harms include non-users and uneven distribution across relevant groups.
- Risks are evidence-linked; uncertainty and disagreements remain visible.
- Each material risk has treatment, test, threshold, owner, and escalation path.
- GenAI/high-impact/sensitive-data branches are activated when applicable.

## Failure and escalation conditions

Escalate absent authority, credible severe or irreversible harm, illegal or unethical
objective, missing qualified expertise, unverifiable critical control, compromised
independence, or residual risk beyond the approved tolerance.

## Collaboration touchpoints

Product Lead supplies context and affected-party evidence; Data and ML roles supply
technical artifacts; external experts determine specialized obligations; PM routes
findings and state; humans set risk tolerance and accept material residual risk.
