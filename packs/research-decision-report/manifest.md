# Research and Decision Report Team

## Identity and applicability

- Version: 1.0.0
- Creation date: 2026-08-09
- Language: English
- Project class: evidence research, synthesis, and decision reporting
- Applicability: market, policy, scientific, technical, product, and operational
  research that must produce an auditable report or recommendation

This pack supports rapid evidence scans, narrative reviews, structured evidence
reviews, systematic reviews, mixed-method research, comparative evaluations, and
decision memos. The runtime brief must select the method appropriate to the
claim and stakes. The pack does not confer licensed legal, clinical, financial,
or statistical authority and does not substitute for institutional ethics review.

## Supported outcomes

- an approved research question, protocol, evidence standard, and decision frame;
- reproducible search, source inventory, screening, extraction, and analysis records;
- transparent synthesis with uncertainty, limitations, and competing explanations;
- audience-appropriate report, recommendation, evidence tables, and audit trail;
- independent fact, logic, citation, and editorial review.

Completion requires traceability from material claims to evidence, declared
methods and deviations, reconciled calculations, resolved critical review
findings, explicit uncertainty and residual risk, and human acceptance.

## Execution-time input contract

Bind each project with [research intake](shared-project-knowledge/project-intake.md).
Required inputs include the decision and audience, questions, scope, jurisdictions,
source eligibility, time horizon, method, rigor target, data access, conflicts,
privacy/ethics constraints, deadlines, formats, and approval owners.

## Conditional variants

- Use a protocol, duplicate screening/extraction, flow accounting, bias assessment,
  and applicable reporting checklist for systematic or high-stakes reviews.
- Add primary-research ethics, consent, privacy, sampling, and instrument gates
  when collecting data from people or confidential systems.
- Add Statistical or Methods expertise when inference, meta-analysis, forecasting,
  causal claims, or complex modeling exceeds the Evidence Analyst's approved scope.
- Add licensed domain review for regulated or high-consequence recommendations.
- Use a lighter documented scan only when the human accepts its narrower evidence claim.

## Team roster and authority

- [Project Manager & Orchestration Lead](team-members/project-manager-orchestration-lead/system-prompt.md): operational planning, task state, assignment control, handoffs, integration flow, recovery, and closure.
- [Research Lead](team-members/research-lead/system-prompt.md): research question, protocol, source strategy, method, and synthesis authority.
- [Evidence & Data Analyst](team-members/evidence-data-analyst/system-prompt.md): structured extraction, data quality, calculations, analysis, and reproducibility evidence.
- [Domain Specialist](team-members/domain-specialist/system-prompt.md): terminology, context, domain validity, applicability, and consequence review.
- [Independent Editor & Fact Checker](team-members/independent-editor-fact-checker/system-prompt.md): independent claim, citation, logic, uncertainty, and publication-readiness gate.

The PM has no research or domain authority. The Research Lead owns method but
cannot waive independent review. The Domain Specialist cannot override evidence
quality. The reviewer cannot rewrite conclusions to personal preference. The
human owns the decision, risk acceptance, external publication, and final closure.

## Role-to-skill map

- PM: planning/task management; orchestration/assignment control; handoff/integration/recovery/closure.
- Research Lead: research framing, protocol, discovery, appraisal, and synthesis.
- Evidence & Data Analyst: extraction schema, data validation, analysis, uncertainty, and reproducibility.
- Domain Specialist: domain interpretation, applicability, taxonomy, and consequence review.
- Independent Editor & Fact Checker: claim verification, citation audit, logic challenge, and editorial gate.

## Dependencies and handoffs

The approved brief precedes the protocol. Protocol acceptance precedes final
search/screening and analysis. Discovery and domain-context work may proceed in
parallel after shared definitions are approved. Evidence extraction precedes
synthesis; the Domain Specialist reviews interpretation, not source selection by
preference. The independent reviewer receives a stable draft and evidence index.

## Shared knowledge

- [Research project binding](shared-project-knowledge/project-intake.md)
- [Evidence and reporting standards](shared-project-knowledge/evidence-standards.md)

## Provenance, licenses, and security review

- Repository `packs/template`, accessed 2026-08-09, MIT License, creator-approved
  for pack generation. PM foundation adapted to this class. Markdown only; no risk found.
- PRISMA Executive, [PRISMA 2020](https://www.prisma-statement.org/prisma-2020)
  and [checklist](https://www.prisma-statement.org/prisma-2020-checklist), accessed
  2026-08-09. Official reporting guidance; checklist is CC BY 4.0. Concepts were
  paraphrased; no checklist text reproduced. Attribute PRISMA when applied.
- Cochrane, [Handbook for Systematic Reviews of Interventions](https://training.cochrane.org/handbook/current),
  version 6.5 referenced, accessed 2026-08-09. Official methodological guidance;
  source copyright and reuse terms apply. Concepts referenced without copying.
- UK Research Integrity Office, [Code of Practice for Research](https://ukrio.org/ukrio-resources/publications/code-of-practice-for-research/),
  version 3.5, accessed 2026-08-09. Official integrity guidance; source terms
  apply. Principles paraphrased without reproducing the code.

The specialist skills are original synthesis under this repository's MIT
License. Sources contained no imported prompts or executable dependencies; no
code, binaries, install hooks, credential access, or network automation was used.

## Risks and unsupported conditions

Source access, publication bias, time limits, language coverage, unavailable raw
data, and conflicts of interest can constrain conclusions. A reusable pack cannot
preselect the right review method, bias instrument, statistical model, reporting
guideline, or domain expert; the runtime plan must justify each. Generative tools
must not be treated as evidence sources or final claim authorities.
