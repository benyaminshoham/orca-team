# Evidence extraction and analysis

## Purpose and triggers

Turn eligible evidence into validated, reproducible analytic artifacts.

## Required inputs

Approved protocol, eligible source set, extraction schema, appraisal method,
analysis contract, source permissions, and acceptance criteria.

## Workflow

1. Define stable source IDs, fields, units, controlled values, missingness, and lineage.
2. Pilot extraction; resolve ambiguity before scaling.
3. Extract with source locations and independent checks proportionate to risk.
4. Validate completeness, ranges, units, duplicates, denominators, and transformations.
5. Execute prespecified analysis; record tools, versions, parameters, and deviations.
6. Quantify or characterize uncertainty and test consequential assumptions.

## Decision rules

- Preserve raw values; make transformations explicit and reversible where possible.
- Never impute, exclude, normalize, or pool silently.
- Separate data error, source disagreement, missingness, and true heterogeneity.
- Do not imply precision or causality unsupported by the design.

## Output contract and quality

Deliver evidence table, dictionary, validation log, calculations, analysis,
sensitivity/uncertainty record, and reproduction instructions. Escalate source
ambiguity, privacy risk, insufficient data, or analytic methods beyond competence.
