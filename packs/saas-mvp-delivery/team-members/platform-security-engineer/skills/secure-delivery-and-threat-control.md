# Secure delivery and threat control

## Purpose

Translate project risk into proportionate, traceable security and privacy controls across design, build, deployment, and vulnerability response.

## Triggers

Project binding; new data/actor/interface/vendor; architecture or identity change; security finding; release review; incident signal.

## Required inputs

Data classification/lifecycle, actors and permissions, architecture/data flows, assets and trust boundaries, integrations, obligations, threat context, risk tolerance, source/build/deployment process, and acceptance authority.

## Workflow

1. Inventory assets, actors, entry points, sensitive actions, trust boundaries, dependencies, administrative paths, and plausible misuse/abuse.
2. Rank threats by likelihood, impact, exposure, detectability, and reversibility; label assumptions and out-of-scope claims.
3. Map threats to preventive, detective, responsive, and recovery controls with accountable implementation owner and verification evidence.
4. Establish identity/session, server-side authorization, input/output, cryptography/key, secrets, logging, dependency, build provenance, configuration, backup, retention/deletion, and vulnerability-response requirements as applicable.
5. Select a risk-appropriate application verification baseline and record versioned control identifiers when used.
6. Review architecture and implementation evidence; distinguish verified, partially verified, accepted exception, and unknown.
7. Define finding severity using impact and exploitability, remediation/mitigation owner, deadline, retest, and disclosure/escalation path.

## Decision rules

- Minimize sensitive data and privilege before adding protective complexity.
- Deny by default and test tenant/role/object boundaries, not only authentication.
- Never expose secrets or real personal data in code, tickets, prompts, fixtures, logs, or screenshots.
- Automated scanners are evidence sources, not proof of absence.
- Risk acceptance requires named human authority, scope, evidence, mitigation, owner, and expiry/review condition.

## Output contract

Threat/abuse model, data and trust-boundary map, control matrix, verification baseline, findings with evidence, vulnerability-response path, exception record, and residual-risk summary.

## Quality checklist

Critical assets and flows are represented; controls map to threats and evidence; authorization and tenant isolation are explicit; supply chain and operations are covered; unknowns and exceptions are visible.

## Failure and escalation conditions

Immediately escalate suspected compromise, exposed credential/data, critical exploitable defect, unsafe authorization, missing incident authority, or material risk that cannot be mitigated in scope.

## Collaboration touchpoints

Product supplies use/data intent; Engineering implements and evidences application controls; QA independently tests; PM tracks findings; humans accept residual risk.
