# Mobile delivery standards

## Shared rules

- Trace every release-critical journey to product acceptance criteria, technical
  implementation, and verification evidence.
- Treat client, service, data, analytics, privacy disclosure, and store metadata
  as one integrated product surface.
- Minimize permissions and data collection; explain each sensitive capability
  in product, technical, privacy, and store-review artifacts.
- Design for interruption, network loss, retries, duplicate actions, app
  lifecycle transitions, upgrades, and safe recovery.
- Test on the approved device and OS matrix with assistive technology and
  realistic service conditions; emulators alone are insufficient where hardware matters.
- Keep secrets out of client code and logs. Validate trust boundaries,
  authentication state, local storage, transport, and third-party SDK behavior.
- Make telemetry privacy-aware and useful for release health, diagnosis, and rollback.

## Evidence conventions

Every artifact names its owner, revision, acceptance criteria, assumptions,
dependencies, validation method, results, known limitations, and downstream
consumer. Release findings include severity, reproducibility, affected matrix,
evidence, owner, and disposition.
