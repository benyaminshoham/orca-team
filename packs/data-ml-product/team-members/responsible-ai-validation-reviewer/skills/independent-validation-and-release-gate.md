# Independent validation and release gate

## Purpose

Independently test whether the complete evidence package supports the intended use,
activated controls, and release decision without concealing residual risk.

## Triggers

Use at data/model/release gates, after remediation, for material changes or drift,
after incidents, and when a conditional release reaches its deadline.

## Required inputs

Approved brief and thresholds; risk register and validation plan; data contract,
release, lineage, quality evidence, and data card; experiment records; frozen model
and evaluation package; model card; product acceptance assessment; security/privacy
evidence; rollout, monitoring, incident, rollback, and retirement plans.

## Workflow

1. Declare scope, independence/conflicts, methods, decisive criteria, access limits,
   and evidence gaps before reviewing final claims.
2. Verify artifact identity, provenance, approvals, version consistency, test
   isolation, and traceability from requirement to result and control.
3. Challenge data authority, representativeness, labels, transformations, leakage,
   splits, and documentation. Sample underlying evidence rather than relying only on
   summaries.
4. Challenge experiment validity, baseline relevance, selection process, uncertainty,
   slice/error analysis, operational tests, reproducibility, and claims versus design.
5. Exercise or inspect risk controls and context-relevant adverse cases. Include
   human workflow, fallback, monitoring, incident, rollback, and dependency failure.
6. For GenAI, challenge injection and insecure tool use, harmful or deceptive output,
   confabulation/grounding, privacy leakage, abuse, information integrity, model or
   corpus change, and evaluator limitations in the deployed system context.
7. Classify findings by evidence-backed severity and release impact. Give each owner
   a corrective condition and retest method through the PM.
8. Independently retest remediation. Do not accept a policy statement as evidence
   of implemented/effective control.
9. Decide each activated gate: pass, conditional pass, fail, or not applicable with
   reason. Issue a clear release, conditional-release, or reject recommendation.

## Decision rules

- Independence compromised or decisive evidence inaccessible means no clean pass;
  disclose and escalate.
- A failed hard threshold or unresolved severe finding blocks release unless the
  governing process explicitly permits an authorized, documented exception—and the
  Reviewer must still record disagreement.
- Conditional release requires bounded exposure, conditions, owner, deadline,
  monitoring, rollback, and named human risk acceptance.
- Retest changed artifacts and affected regressions, not only the reported symptom.
- The Reviewer recommends; the authorized human makes the release/risk decision.

## Output contract

Validation report with scope, methods, environment and versions, independence
statement, evidence reviewed, reproduction/challenge results, findings and severity,
retest status, evidence limitations, gate outcomes, residual risks, and a reasoned
release/conditional-release/reject recommendation.

## Quality checklist

- Review covers all activated variants, risks, thresholds, artifacts, and end-to-end
  controls at proportionate depth.
- Decisive claims are traced to inspectable evidence and contrary results are shown.
- Findings are reproducible enough, actionable, assigned, and linked to gates.
- Conditional outcomes include bounded conditions and authorized risk acceptance.
- Recommendation, unresolved risk, evidence limits, and independence are explicit.

## Failure and escalation conditions

Escalate blocked access, compromised independence, evidence tampering or
contamination, unresolved severe harm, unauthorized data/model use, invalid claims,
missing external approval, ineffective rollback/monitoring, or pressure to alter a
finding without evidence.

## Collaboration touchpoints

Accountable specialists answer findings and implement remediation; Product Lead
clarifies domain intent without changing criteria; PM controls correction/retest
state and routes the final packet; human release owner accepts or rejects residual
risk and release.

## Finding template

- Identifier, title, date, and reviewer
- Affected artifact/version, use, population, risk, and gate
- Observation and directly supporting evidence
- Severity and rationale, including uncertainty
- Required correction or acceptance condition
- Accountable owner and retest method
- Status, retest result, residual risk, and authorized decision
