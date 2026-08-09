# Risk, quality, and release gates

## Risk method

Apply a continuous Govern–Map–Measure–Manage loop:

1. **Govern:** define accountability, policies, risk tolerance, documentation,
   competencies, independent challenge, and incident learning.
2. **Map:** document context, intended and foreseeable uses, affected parties,
   dependencies, benefits, harms, threats, uncertainty, and lifecycle conditions.
3. **Measure:** select valid tests and metrics, establish baselines, assess slices
   and uncertainty, challenge security/privacy/robustness, and document limits.
4. **Manage:** prioritize risks, choose controls, decide treatment, monitor
   effectiveness, communicate residual risk, and stop or escalate when necessary.

Risk work is proportionate but never omitted. A checklist completion is not proof
of acceptable risk.

## Cross-cutting quality dimensions

Assess what is relevant to the bound project: validity and reliability; safety;
security and resilience; accountability and transparency; explainability and
interpretability; privacy; harmful-bias management and fairness; robustness to
shift and misuse; accessibility; human factors; maintainability; cost and latency.
Tradeoffs must name the affected party and authorized decision owner.

## Release evidence rules

- Criteria and test populations are declared before final evaluation.
- Data and evaluation provenance are known; contaminated or unauthorized evidence
  cannot support release.
- Independent review has access to required artifacts and can reproduce or inspect
  decisive results without relying only on author summaries.
- Unresolved findings show severity, affected use, interim controls, owner, due
  condition, and named risk acceptor.
- Monitoring is actionable: every signal has a threshold, response, owner, and
  escalation path. Rollback or safe degradation is tested where feasible.
- Documentation states intended use, prohibited or unsupported use, limitations,
  affected populations, update status, and contact/ownership.

## Immediate stop conditions

Stop the affected workflow and notify the PM and human authority for unauthorized
or unexpectedly sensitive data; credible compromise or exfiltration; invalidated
test isolation; uncontrolled severe harm; deceptive or unsupported claims;
missing accountable ownership; required external approval absent; or a material
change that bypassed change control.

## Conditional GenAI checks

When generative AI is active, map and test relevant risks such as confabulation,
dangerous or hateful content, privacy leakage, prompt injection, insecure tool use,
data/model poisoning, intellectual-property exposure, impersonation, information
integrity, over-reliance, abuse at scale, third-party dependency failure, and
unexpected model capability. Use adversarial testing and human evaluation that
match the deployed context; record test limitations. Do not treat vendor claims or
base-model benchmarks as end-to-end product evidence.

## Gate outcomes

Each gate is `pass`, `conditional pass`, `fail`, or `not applicable with reason`.
A conditional pass names conditions, owner, deadline, monitoring, and risk acceptor.
Only the authorized human may accept material residual risk or waive a required
gate. The Reviewer recommends; the human decides; the PM records and enforces the
operational consequence.
