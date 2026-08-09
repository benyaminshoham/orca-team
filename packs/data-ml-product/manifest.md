# Data and ML Product Team

## Identity

- Version: 1.0.0
- Creation date: 2026-08-09
- Language: English
- Project class: Data products and machine-learning-enabled products
- Applicability: Reusable for discovery, development, validation, release, and
  lifecycle planning of analytics, predictive ML, decision-support, and
  generative-AI products. It supports new systems and material model or data
  changes in existing systems, independent of implementation stack or runtime.

## Supported outcomes

Typical outcomes are an approved product and measurement brief; governed data
assets and pipelines; a reproducible baseline and candidate model; evaluation
evidence; data and model documentation; risk treatment; release recommendation;
and monitoring, rollback, and retirement plans.

This pack does not itself provide legal certification, privacy-officer sign-off,
penetration testing, production operations, clinical or safety certification,
procurement authority, or human approval. It does not assume that ML is the
correct solution and explicitly permits a non-ML recommendation.

## Execution-time input contract

Before substantive dispatch, the runner must bind this read-only pack to
project documents and intake answers using [Project intake and binding](shared-project-knowledge/project-intake-and-binding.md).
The resulting project brief must be stored outside the pack and approved by the
human decision owner.

Required project evidence, when it exists:

- problem statement, intended users, business or mission objective, and current
  workflow;
- success, harm, reliability, latency, cost, and adoption measures;
- data inventory, provenance, collection basis, access rules, retention rules,
  representative samples, and known quality limitations;
- applicable policies, contracts, laws, risk classifications, and prior reviews;
- system context, interfaces, repository, infrastructure, threat model, and
  operational constraints;
- baseline behavior, experiment history, incidents, user research, and existing
  model or dataset documentation;
- release authority, deployment environment, monitoring owner, rollback path,
  timeline, budget, and definition of done.

The execution-time questions and binding rules are normative in the shared
knowledge. Unknown facts must remain visible assumptions or blockers; they must
never be silently invented.

## Conditional variants

- **Predictive or ranking ML:** require leakage analysis, temporal or grouped
  splits where appropriate, baseline comparison, calibration when decisions use
  probabilities, and slice-level error analysis.
- **Generative AI or foundation models:** activate NIST AI 600-1 and SP 800-218A
  considerations; assess confabulation, prompt injection, harmful content,
  information integrity, privacy leakage, third-party model dependencies, misuse,
  and human oversight. Add adversarial evaluation proportionate to exposure.
- **High-impact or rights-affecting use:** require documented affected parties,
  contestability and human-override design, subgroup and intersectional analysis,
  independent review, and explicit accountable human release approval.
- **Sensitive, personal, proprietary, or regulated data:** require verified use
  authority, minimization, access segregation, retention/deletion controls,
  privacy and security review, and incident handling before data use.
- **Online learning or continuously changing data:** require drift thresholds,
  change controls, canary or shadow evaluation, rollback, lineage, and periodic
  revalidation.
- **Research or prototype only:** deployment controls may be deferred only if
  access and use are constrained and the artifact is clearly marked non-production;
  data, experiment, limitation, and risk documentation still apply.
- **No-ML solution is adequate:** stop model development and produce the evidence,
  product recommendation, and implementation handoff for the simpler approach.

## Design sources

- Repository skill `skills/build-agent-team/` and its format, intake, sourcing,
  and Project Manager role references.
- Repository scaffold `packs/template/`, used only as a structural and PM-procedure
  starting point.
- Primary standards and publications listed under Provenance and licenses.
- No concrete project document was used or copied.

## Team roster

- [Project Manager & Orchestration Lead](team-members/project-manager-orchestration-lead/system-prompt.md) — controlled planning, dispatch, handoffs, integration, and closure.
- [Product & Domain Lead](team-members/product-domain-lead/system-prompt.md) — problem validity, user and domain intent, product measures, and acceptance authority.
- [Data Engineer](team-members/data-engineer/system-prompt.md) — governed data contracts, pipelines, quality, lineage, and dataset documentation.
- [ML Engineer & Scientist](team-members/ml-engineer-scientist/system-prompt.md) — baselines, experiments, model implementation, evaluation, and model documentation.
- [Responsible AI & Validation Reviewer](team-members/responsible-ai-validation-reviewer/system-prompt.md) — independent risk challenge, validation sufficiency, and release-gate recommendation.

## Role-to-skill mapping and boundaries

| Role | Skills | Accountable outcomes | Explicit boundary |
|---|---|---|---|
| Project Manager & Orchestration Lead | [Planning](team-members/project-manager-orchestration-lead/skills/project-planning-and-task-management.md), [assignment control](team-members/project-manager-orchestration-lead/skills/team-orchestration-and-assignment-control.md), [handoff and closure](team-members/project-manager-orchestration-lead/skills/handoff-integration-recovery-and-closure.md) | Task system, sequencing, accepted handoffs, integrated closure record | Does not decide product intent, model validity, data fitness, risk acceptance, or human approvals |
| Product & Domain Lead | [Product framing and domain validation](team-members/product-domain-lead/skills/product-framing-and-domain-validation.md) | Product brief, decision context, domain acceptance criteria, impact and rollout intent | Does not certify data pipelines, select models unilaterally, or waive independent risk findings |
| Data Engineer | [Data contracts, pipelines, and data cards](team-members/data-engineer/skills/data-contracts-pipelines-and-data-cards.md) | Data readiness, reproducible datasets, lineage, quality evidence, data card | Does not assert collection authority, choose product outcomes, or approve model validity |
| ML Engineer & Scientist | [Experiment and model development](team-members/ml-engineer-scientist/skills/experiment-and-model-development.md), [Evaluation and model reporting](team-members/ml-engineer-scientist/skills/evaluation-and-model-reporting.md) | Baselines, reproducible candidates, evaluation package, model card | Does not approve its own independent release gate or redefine product/risk thresholds |
| Responsible AI & Validation Reviewer | [AI risk and impact review](team-members/responsible-ai-validation-reviewer/skills/ai-risk-and-impact-review.md), [Independent validation and release gate](team-members/responsible-ai-validation-reviewer/skills/independent-validation-and-release-gate.md) | Risk register, challenge tests, validation finding, release recommendation | Does not implement the artifact it independently reviews or accept residual risk for the human owner |

Every deliverable has one accountable owner. Contributors provide evidence;
reviewers do not silently repair rejected specialist work.

## Dependencies and handoffs

1. Product & Domain Lead supplies the approved problem, decision, outcome, harm,
   and acceptance contract to Data and ML roles.
2. Data Engineer supplies versioned datasets, contracts, lineage, quality results,
   and a data card to the ML Engineer & Scientist and Reviewer.
3. ML Engineer & Scientist supplies reproducible baselines, candidates, evaluation
   evidence, and a model card to the Product Lead and independent Reviewer.
4. Responsible AI & Validation Reviewer returns findings to the accountable
   specialist, then issues a gate recommendation to the human release owner.
5. The PM accepts only contract-conforming handoffs, integrates accepted evidence,
   and requests final human closure.

Detailed contracts and gates are in [Orchestration instructions](orchestration-instructions.md).

## Shared knowledge

- [Project intake and binding](shared-project-knowledge/project-intake-and-binding.md)
- [Lifecycle, artifacts, and evidence](shared-project-knowledge/lifecycle-artifacts-and-evidence.md)
- [Risk, quality, and release gates](shared-project-knowledge/risk-quality-and-release-gates.md)

## Provenance and licenses

All web sources were accessed on 2026-08-09. They were used as professional
guidance and paraphrased; no executable content or dependencies were imported.

| Source | Use and revision | License or usage status | Security findings | Approval status |
|---|---|---|---|---|
| Repository `packs/template/` and `skills/build-agent-team/` | Structure and adapted PM procedures; local revision present 2026-08-09 | Repository MIT License; retain repository license and attribution | Markdown inspected; no scripts, network calls, credential access, or hidden runtime actions imported | Creator-directed and approved for reuse in this task |
| [NIST AI Risk Management Framework 1.0](https://doi.org/10.6028/NIST.AI.100-1) | Govern, Map, Measure, Manage lifecycle; NIST AI 100-1, 2023 | NIST technical publication; generally public domain in the US, foreign rights noted; source credited per [NIST policy](https://www.nist.gov/open/copyright-fair-use-and-licensing-statements-srd-data-software-and-technical-series-publications) | Official publication; guidance only; no code or dependencies | Web-authored source; individual approval not required by builder workflow |
| [NIST AI RMF Generative AI Profile](https://doi.org/10.6028/NIST.AI.600-1) | Conditional GenAI risk and action guidance; NIST AI 600-1, 2024 | NIST technical publication; generally public domain in the US, foreign rights and possible third-party material noted; no text copied; attribution provided | Official publication; guidance only; no code or dependencies | Web-authored source; individual approval not required by builder workflow |
| [NIST Secure Software Development Framework 1.1](https://doi.org/10.6028/NIST.SP.800-218) | Secure development outcomes, provenance, requirements, and vulnerability response; final, 2022 | NIST SP 800 publication, not subject to US copyright; attribution appreciated | Official publication; guidance only; no code or dependencies | Web-authored source; individual approval not required by builder workflow |
| [NIST SP 800-218A](https://doi.org/10.6028/NIST.SP.800-218A) | Conditional secure development for generative AI and dual-use foundation models; final, 2024 | NIST SP 800 publication, not subject to US copyright; attribution appreciated | Official publication; guidance only; no code or dependencies | Web-authored source; individual approval not required by builder workflow |
| [Model Cards for Model Reporting](https://research.google/pubs/model-cards-for-model-reporting/) | Primary publication informing transparent intended-use, limitation, evaluation, and subgroup reporting; 2019 publication page | Copyrighted scholarly work; used for facts and high-level ideas under citation/fair-use principles; no text, figures, templates, or code copied | Publication page and paper guidance only; no code or dependencies imported | Web-authored source; individual approval not required by builder workflow |
| [Data Cards: Purposeful and Transparent Dataset Documentation for Responsible AI](https://research.google/pubs/data-cards-purposeful-and-transparent-dataset-documentation-for-responsible-ai/) | Primary publication informing lifecycle-aware dataset documentation; 2022 publication page | Copyrighted scholarly work; used for facts and high-level ideas under citation/fair-use principles; no text, figures, templates, or code copied | Publication page and paper guidance only; no code or dependencies imported | Web-authored source; individual approval not required by builder workflow |

Local-template reuse was explicitly requested as part of repository pack
generation. Web-authored sources require no individual approval under the pack
builder workflow. No GitHub source was used.

## Known risks and unsupported conditions

- Domain-specific regulation and professional standards must be supplied and
  interpreted by qualified humans at execution time.
- A five-role team cannot replace dedicated security, privacy, legal, UX,
  accessibility, safety-engineering, clinical, or production-operations experts;
  the runtime plan must add external reviewers when the intake requires them.
- The independent reviewer may lack sufficient independence in a very small
  organization; disclose the conflict and obtain external review for high-impact
  releases.
- The pack provides process and evidence contracts, not guarantees of fairness,
  security, privacy, correctness, or fitness for use.
- Hardware design, robotics, autonomous control, and safety-critical certification
  are outside scope unless a qualified project-specific safety process is added.
