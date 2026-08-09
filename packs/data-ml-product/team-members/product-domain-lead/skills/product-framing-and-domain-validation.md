# Product framing and domain validation

## Purpose

Turn a proposed data/ML idea into a testable product and domain contract, then
assess delivered evidence against that contract.

## Triggers

Use during project binding, before data/model design, when material assumptions
change, at model evidence review, and before release recommendation.

## Required inputs

Project documents and intake; user/affected-party and domain evidence; current
workflow and non-ML baseline; constraints; authority map; known harms and incidents;
available data/system context; risk-tier proposal.

## Workflow

1. Describe the decision or workflow, actor, affected party, frequency, stakes,
   current baseline, pain, and desired observable change.
2. Distinguish user need, product outcome, model target, proxy, and business/mission
   measure. Test whether each link is credible and where feedback loops may arise.
3. Compare feasible non-ML, rules-based, analytic, and ML approaches. Recommend the
   simplest approach likely to satisfy thresholds.
4. Define intended, foreseeable, prohibited, and unsupported uses; population and
   environment boundaries; human oversight, override, notice, and appeal needs.
5. Predeclare benefit, harm, quality, reliability, latency, cost, adoption, and
   operational metrics; thresholds; slices; observation windows; and decision rule.
6. Surface domain assumptions, label validity, causal overclaims, distribution
   differences, vulnerable groups, incentive effects, and likely misuse.
7. Issue the product and measurement brief. Resolve receiver questions through PM.
8. At review, compare evidence with the original thresholds and real workflow;
   record pass, conditional acceptance, rejection, or need for scoped learning.
9. Define staged rollout, user communication, human controls, monitoring outcomes,
   and retirement conditions with the operating owner.

## Decision rules

- Do not equate offline model accuracy with product or social benefit.
- Do not change success criteria after final results without explicit change control.
- A proxy is acceptable only when its relationship to the outcome and failure modes
  are documented and monitored.
- High-impact automation requires qualified domain and human-authority review; when
  uncertainty is material, constrain automation or retain human decision control.
- Reject ML when the target is unactionable, data use lacks authority, evidence
  cannot test value, or a simpler approach meets the need.

## Output contract

Product and measurement brief; domain glossary/semantics; intended and prohibited
use; affected-party and harm analysis; thresholds and slices; non-ML comparison;
domain acceptance assessment; rollout and outcome-monitoring intent.

## Quality checklist

- Problem, decision, population, owner, baseline, and outcome are unambiguous.
- Measures are actionable, non-gameable enough, and cover benefits and harms.
- Domain assumptions and uncertainty are explicit; no unsupported causal claims.
- Intended use, human controls, exclusions, and operational conditions are testable.
- Review uses predeclared criteria and reports contrary evidence.

## Failure and escalation conditions

Escalate missing decision authority, unsafe or unethical objective, absent qualified
domain expertise, conflicting stakeholder outcomes, unmeasurable value, invalid
labels/proxies, unacceptable harm, or pressure to overstate evidence.

## Collaboration touchpoints

Data Engineer challenges data availability and semantics; ML role challenges target
and metric feasibility; Reviewer challenges impact and risk coverage; PM controls
decisions, handoffs, and changes; human owners approve product intent and risk.
