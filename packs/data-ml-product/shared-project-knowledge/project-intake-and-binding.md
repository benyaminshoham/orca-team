# Project intake and binding

## Purpose

Bind this universal pack to a concrete project without changing the pack. The
binding output is an approved project brief and source inventory stored in the
runtime workspace. Facts must cite their project source there; shared pack files
contain no project facts or citations.

## Execution-time questions

### Outcome and authority

- What decision, workflow, or user outcome should improve, and why might data or
  ML be appropriate?
- What is the current non-ML or incumbent baseline?
- Who are users, affected parties, domain experts, product owner, risk owner,
  release approver, and operators? Who may stop the project?
- What measurable benefit, harm, reliability, cost, latency, adoption, and
  operational thresholds define success and failure?
- What is explicitly excluded, forbidden, or deferred?

### Data and system context

- What data sources exist; who owns them; under what collection, consent,
  contractual, privacy, intellectual-property, retention, and access terms may
  they be used?
- What populations, periods, environments, and edge cases must the data represent?
  What gaps, proxies, labels, and historical biases are known?
- What target or ground truth exists, when does it become observable, and can the
  proposed features leak it?
- What system interfaces, repositories, infrastructure, vendors, models, and
  upstream/downstream dependencies are authoritative?
- What security classification, threat model, privacy risk, and incident process
  apply?

### Validation and lifecycle

- Is the system predictive, ranking, generative, retrieval-augmented, online
  learning, human-in-the-loop, high-impact, regulated, or research-only?
- Which evaluation populations, slices, stress cases, red-team scenarios, and
  comparisons are required? What uncertainty is acceptable?
- What human review, explanation, notification, appeal, override, or contestability
  must the workflow provide?
- What deployment stages, monitoring signals, drift thresholds, incident triggers,
  rollback criteria, retraining rules, and retirement conditions apply?
- What timeline, budget, compute, skills, tools, environments, access, and external
  approvals constrain delivery?
- Which artifacts and evidence define done, and where will authoritative task and
  artifact records live?

Accept `unknown`, `not applicable`, or a human-delegated decision. Do not convert
an unknown legal basis, data authority, harm threshold, release owner, or safety
condition into an assumption; treat it as a blocker.

## Risk-tier and variant binding

The Product Lead proposes and the Reviewer challenges a proportionate risk tier
based on impact severity, scale, reversibility, affected-party vulnerability,
automation, data sensitivity, external exposure, adversarial incentive, novelty,
and uncertainty. Record the reasoning rather than relying on a label alone.

Activate every conditional variant in the manifest that applies. Add qualified
external expertise when domain regulation, privacy, security, safety, legal,
accessibility, or operations exceeds the five-role team's competence.

## Binding output contract

The approved runtime project brief must contain:

- objective, non-ML baseline, scope, exclusions, users, affected parties, and
  decision workflow;
- source-document inventory with authority and date;
- product, technical, harm, cost, reliability, and operational measures with
  acceptance thresholds;
- data/system inventory, use authority, sensitivity, constraints, and unknowns;
- selected variants, reasoned risk tier, activated gates, required external roles,
  and segregation-of-duty rules;
- team authority, human approval points, escalation path, and risk-acceptance owner;
- deliverables, evidence requirements, milestones, capacity, and definition of
  done;
- assumptions with owner and validation deadline, open decisions, and blockers;
- artifact registry, task-system location, communication cadence, and change
  control.

The human decision owner approves the brief. Any material change to scope, data,
population, model class, decision authority, external exposure, risk tier,
threshold, or release control reopens binding and plan approval.
