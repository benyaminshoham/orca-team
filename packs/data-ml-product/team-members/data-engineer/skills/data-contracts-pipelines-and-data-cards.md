# Data contracts, pipelines, and data cards

## Purpose

Turn authorized sources into versioned, tested, documented data releases whose
fitness and limitations are inspectable across the ML lifecycle.

## Triggers

Use for source onboarding, dataset discovery, pipeline creation/change, split
construction, data release, drift investigation, incident response, and retirement.

## Required inputs

Approved product/measurement brief; source inventory and use authority; data owners;
schema and semantic expectations; population and slice needs; sensitivity,
retention, access, and security rules; target/label definitions; evaluation design;
runtime environment and consumers.

## Workflow

1. Verify source owner, collection origin, permitted purposes, access, sensitivity,
   retention/deletion, geographic or contractual limits, and downstream consumers.
2. Define a data contract: fields and semantics, units, keys, time meaning, expected
   ranges/distributions, freshness, null/duplicate policy, referential rules,
   quality service levels, compatibility policy, owner, and incident path.
3. Profile coverage, missingness, duplicates, outliers, temporal behavior, source
   shifts, labels, class balance, subgroup representation, and suspicious
   correlations. Protect raw sensitive values and report aggregates safely.
4. Design transformations with traceable inputs/outputs, deterministic behavior
   where possible, validation at boundaries, error quarantine, audit metadata, and
   recovery. Avoid collecting or retaining fields without a declared need.
5. Agree with the ML role on entity-, group-, location-, or time-aware splitting.
   Deduplicate across splits and prevent direct, derived, post-outcome, and process
   leakage. Isolate final evaluation data and access.
6. Version source snapshots or immutable references, transformation code/config,
   schema, quality results, and released partitions. Record environment and
   dependencies needed for reproduction.
7. Test contract conformance, completeness, transformation invariants, split
   isolation, freshness, access controls, and expected failure handling.
8. Publish the release and data card; notify consumers of limitations and breaking
   changes. Define monitoring and deprecation/retirement rules.

## Decision rules

- No verified use authority means no use—not an assumption.
- A passed schema check does not establish representativeness or label validity.
- Prefer data minimization and derived/aggregated forms when they satisfy purpose.
- Quarantine invalid records rather than silently coercing consequential values.
- A material source, label, population, or transformation change creates a new
  release and triggers downstream impact assessment.
- Synthetic data inherits risks from its source and generation process; document
  generation, privacy, fidelity, and failure testing.

## Output contract

Provide a release identifier; source and transformation lineage; contract and owner;
schema/semantics; access and retention constraints; split manifest; quality and
leakage evidence; reproducibility instructions; known limitations; monitoring and
change policy; and a data card covering motivation, composition, provenance,
collection/annotation, processing, uses, gaps, maintenance, and contact.

## Quality checklist

- Authority, ownership, sensitivity, retention, and access are explicit.
- Every released field and label has traceable meaning and transformation lineage.
- Quality tests cover correctness, completeness, consistency, freshness, uniqueness,
  representativeness, and relevant slices—not only schema.
- Split isolation and leakage analysis match the actual decision timeline/entity.
- Release is immutable or traceably versioned and consumers can reproduce it.
- Data card discloses decisions, intended/prohibited uses, gaps, risks, and changes.

## Failure and escalation conditions

Stop and escalate unauthorized or unexpectedly sensitive data, compromised source,
unrecoverable destructive operation, evaluation contamination, critical contract
breach, unverifiable provenance, unsafe access, or data incapable of supporting the
approved population and claim.

## Collaboration touchpoints

Product Lead owns semantics and purpose; ML role co-designs splits/features and
reports consumption defects; Reviewer challenges authority, representation,
leakage, and documentation; PM controls versions, handoffs, and retries; qualified
privacy/security/legal owners decide their domain requirements.

## Data card outline

1. Identity, owner, version, status, and update history
2. Motivation, intended/prohibited uses, users, and decision context
3. Composition, population, time coverage, units, labels, and sensitive attributes
4. Provenance, collection/consent or authority, annotation, and source limitations
5. Processing, transformations, filtering, deduplication, and split policy
6. Quality, representation, privacy/security checks, and known gaps
7. Access, retention, deletion, distribution, and dependency terms
8. Maintenance, monitoring, change notification, incident contact, and retirement
