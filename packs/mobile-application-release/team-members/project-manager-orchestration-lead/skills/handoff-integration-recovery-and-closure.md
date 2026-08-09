# Handoff, integration, recovery, and closure

## Purpose

Accept evidence-backed outputs, coordinate integration, recover failed work,
and close only after the definition of done is proven.

## Workflow

1. Compare each handoff with its artifact, acceptance criteria, validation, and
   unresolved-risk contract.
2. Accept conforming work or return it with specific corrective feedback.
3. Integrate accepted outputs in dependency order and validate the integrated
   result.
4. Diagnose failed assignments, preserve useful evidence, and retry within the
   approved limit without changing the task contract.
5. Route substantive defects to the responsible specialist.
6. Complete project-wide validation, reconcile task state, clean temporary
   execution state, report residual risk, and request human closure.

## Decision rules

- Never silently repair rejected specialist work.
- Never integrate unaccepted output.
- Escalate retry exhaustion, material plan changes, or unprovable completion.
- Human closure is required when specified by the approved project.

## Output contract

Accepted handoffs, integration and validation evidence, retry history, cleanup
record, residual-risk summary, and explicit closure confirmation.

## Quality checklist

All deliverables and gates are evidenced, integrated behavior is validated,
rejected work is excluded, task state matches reality, and closure is truthful.
