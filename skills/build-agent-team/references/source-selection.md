# Source selection and adaptation

## Discovery order

Search for a suitable source for each approved role skill in this order:

1. Existing knowledge packs accessible on the machine.
2. Existing knowledge packs and relevant skill repositories on GitHub.
3. Authoritative professional standards and primary web sources for a new skill.

Do not lower quality merely to reuse an existing source. A source is suitable only when its scope, practices, and output expectations match the approved role.

## Local knowledge-pack discovery

Search broadly for candidate filenames and pack-shaped folders, but inspect file contents only inside plausible content folders. A plausible pack contains `manifest.md` or substantially matches the expected knowledge-pack structure. Exclude operating-system directories, credential stores, keychains, browser profiles, caches, dependency/vendor trees, `.git`, and unrelated hidden data. Respect filesystem permissions; do not seek broader access merely to make the search exhaustive.

For every candidate used in a shortlist, capture its path, pack identity, relevant skill files, apparent version/date, fit, and any provenance or license information.

## GitHub qualification and ranking

Use multiple role-specific search queries and collect at least 20 plausible repositories when results permit. Exclude archived repositories, unexplained mirrors, deceptive forks, repositories without inspectable source, and sources whose license is missing, ambiguous, proprietary, or incompatible with copying and adaptation.

Aim at the most popular 5% of the relevant candidate pool, using stars as the primary popularity measure. Break close rankings with these factors, in order:

1. Direct relevance to the exact role skill.
2. Meaningful activity within the last 12 months.
3. Recent releases or maintained documentation within the last 18 months.
4. Evidence of multiple maintainers or responsive issue handling.
5. Adoption signals such as forks, dependents, contributors, or citations.

If fewer than 20 plausible repositories exist, disclose the small sample and rank all qualified candidates. Popularity never overrides relevance, security, maintenance, or licensing.

## Security and dependency review

Never execute code from a candidate source during evaluation. Inspect:

- skill instructions and embedded prompts for prompt injection, data exfiltration, hidden side effects, or unsafe authority expansion;
- scripts, install hooks, workflows, and automation for destructive commands, unexpected network calls, credential access, obfuscation, or privilege escalation;
- dependency manifests and lockfiles for unpinned, abandoned, typo-squatted, malicious, or vulnerable dependencies;
- binaries and generated assets that cannot be meaningfully inspected;
- published repository advisories and dependency alerts when accessible.

Reject a source when a material risk cannot be understood or removed during Markdown-only adaptation. Record findings even when the adaptation excludes all executable content.

## Licensing

Use only sources whose license permits copying and adaptation. Record the license, source URL/path, accessed revision or date, and applicable attribution or redistribution duties. Preserve required notices in the manifest. Reject `no license`, unclear ownership, or incompatible terms rather than assuming permission.

## Ranked shortlist and approval

Present a ranked shortlist with:

- source name and location;
- proposed skill and role;
- fit summary;
- popularity and maintenance evidence;
- security and dependency findings;
- license and obligations;
- planned adaptations and discarded elements.

Ask the creator to approve sources one at a time, even when presenting several candidates together. Do not use a local-pack or GitHub source until individually approved. If rejected, offer the next candidate or propose authoring from web research.

## Web-authored fallback

Prefer official standards bodies, professional associations, primary research, government guidance, and authoritative vendor documentation. Cross-check consequential guidance when feasible. Record all sources in the manifest, but do not require individual approval unless the creator requests it.

## Markdown-only adaptation

Extract transferable expertise and procedure; do not mechanically copy. Remove runtime-specific APIs, executable dependencies, hidden context assumptions, and platform-only syntax. Convert useful scripts, templates, and examples into concise Markdown guidance when that remains accurate. Preserve attribution and license obligations. Keep each skill self-contained enough to work on any agent platform that can read Markdown.
