# Marketing Website Launch Team

## Identity

- Version: 1.0.0
- Creation date: 2026-08-09
- Language: English
- Project class: Public-facing marketing website launches and substantial relaunches
- Applicability: Reusable for brochure sites, campaign microsites, product and service marketing sites, and content-led corporate sites, from discovery through production launch and early post-launch validation.

## Supported outcomes

The pack supports an approved launch brief, message architecture, content inventory and production copy, accessible experience design, implemented site, analytics and search-readiness specifications, evidence-backed quality review, controlled release, and post-launch verification.

Typical deliverables are a sitemap, page briefs, claims register, design direction, responsive page designs, component specifications, production implementation, redirect and metadata plans, consent-aware measurement plan, accessibility and SEO evidence, release record, and residual-risk register.

Excluded: product application development beyond lightweight marketing interactions; brand identity creation from nothing; paid-media campaign operation; ongoing editorial operations; penetration testing; legal advice; regulatory certification; and guarantees of rankings, traffic, conversion, or WCAG conformance without complete evidence.

## Execution-time input contract

Before work starts, the runner must bind project documents and intake answers into a dated project brief outside this read-only pack. The human decision owner approves the brief and its assumptions. Required inputs:

- business goal, measurable launch outcomes, target date, budget or capacity limits, and decision owners;
- audiences, priority journeys, markets, languages, and accessibility target;
- offer, approved brand system, voice, source materials, factual claims, substantiation, and prohibited claims;
- required pages, content ownership, integrations, forms, data collection, analytics, advertising tags, and consent requirements;
- domain, hosting, CMS or framework, repository, environments, browser/device support, deployment access, and rollback owner;
- current-site inventory, URL and redirect requirements, search performance baselines, and migration constraints when applicable;
- applicable laws, policies, contracts, security controls, and human legal/privacy approvers;
- definition of done, launch authority, review gates, and tolerated residual risk.

The complete questions and binding rules are in [Project binding and intake](shared-project-knowledge/project-binding-and-intake.md). Unknown material facts remain explicit blockers or approved assumptions; the team must not invent them.

## Conditional variants

- **Relaunch or migration:** require URL inventory, redirect mapping, current analytics/search baseline, staging index controls, and post-launch crawl checks.
- **Lead-generation forms:** require data-flow inventory, minimization, validation/error behavior, consent and retention decisions, abuse controls, and form-delivery testing.
- **E-commerce or regulated offers:** activate a human legal/compliance gate and specialist review outside this team; never infer eligibility, pricing, health, financial, environmental, or performance claims.
- **Testimonials, endorsements, reviews, or native advertising:** require provenance, permission, material-connection disclosure, representative-context review, and human compliance approval.
- **International or multilingual:** require locale ownership, translation/localization review, language metadata, local legal review, and locale-specific QA.
- **Authenticated, personalized, or application-like behavior:** treat the affected scope as an adjacent product-engineering project and obtain architecture, security, and testing support.
- **New brand identity:** bind an approved identity project or add qualified brand-identity support before visual production.
- **High-risk data or children-directed experiences:** stop routine launch flow and require qualified privacy/security/legal owners and expanded gates.
- **Material animation, video, or audio:** require motion, caption, transcript, audio-description, and reduced-motion acceptance criteria.

## Design sources

- Repository skill `skills/build-agent-team/` and its format, intake, sourcing, and mandatory PM references.
- Repository universal pack template `packs/template/`, used as the starting pattern for PM role files and pack structure.
- Creator-approved five-role roster supplied for this pack.
- Primary web sources listed under Provenance and licenses.

No example project facts or source documents are copied into this pack.

## Team roster

- [Project Manager & Orchestration Lead](team-members/project-manager-orchestration-lead/system-prompt.md) — controls execution, task state, handoffs, integration, and closure.
- [Brand & Content Strategist](team-members/brand-content-strategist/system-prompt.md) — owns audience/message strategy, content system, claims evidence, and production copy readiness.
- [UX/UI Designer](team-members/ux-ui-designer/system-prompt.md) — owns information architecture, interaction and visual design, responsive specifications, and design-level accessibility.
- [Web Engineer](team-members/web-engineer/system-prompt.md) — owns technical design, implementation, integrations, deployment readiness, and operational verification.
- [Accessibility, SEO & QA Reviewer](team-members/accessibility-seo-qa-reviewer/system-prompt.md) — independently evaluates accessibility, search readiness, functional quality, and release evidence.

## Role-to-skill mapping and boundaries

| Role | Skills | Accountable outcomes | Explicit boundary |
|---|---|---|---|
| Project Manager & Orchestration Lead | [Planning](team-members/project-manager-orchestration-lead/skills/project-planning-and-task-management.md), [assignment control](team-members/project-manager-orchestration-lead/skills/team-orchestration-and-assignment-control.md), [handoff and closure](team-members/project-manager-orchestration-lead/skills/handoff-integration-recovery-and-closure.md) | Approved execution plan, authoritative task state, accepted handoffs, integrated closure | Does not decide brand, design, technical substance, independent gate results, or human approvals |
| Brand & Content Strategist | [Message and content strategy](team-members/brand-content-strategist/skills/message-and-content-strategy.md), [claims and conversion content](team-members/brand-content-strategist/skills/claims-and-conversion-content.md) | Message architecture, page briefs, production copy, claims register | Does not provide legal approval, fabricate evidence, or decide interface/implementation |
| UX/UI Designer | [Experience architecture](team-members/ux-ui-designer/skills/experience-architecture.md), [accessible responsive design](team-members/ux-ui-designer/skills/accessible-responsive-design.md) | Sitemap, flows, wireframes, visual and component specifications | Does not approve copy claims, implement production code, or self-certify accessibility |
| Web Engineer | [Accessible web implementation](team-members/web-engineer/skills/accessible-web-implementation.md), [release and web operations](team-members/web-engineer/skills/release-and-web-operations.md) | Working site, technical metadata, integrations, deployment and rollback evidence | Does not rewrite approved intent, provide legal judgment, or issue independent QA approval |
| Accessibility, SEO & QA Reviewer | [Accessibility review](team-members/accessibility-seo-qa-reviewer/skills/accessibility-review.md), [SEO and release QA](team-members/accessibility-seo-qa-reviewer/skills/seo-and-release-qa.md) | Findings, severity, evidence, gate recommendation, regression verification | Does not silently repair work, guarantee rankings, or substitute for legal/security certification |

## Dependencies and handoffs

The approved project brief precedes all substantive work. Content strategy and experience architecture iterate together; the content strategist owns meaning and claims, while the designer owns structure and interaction. Approved page briefs and designs feed implementation. The engineer returns preview builds and technical evidence to the originating specialists and independent reviewer. The reviewer returns traceable findings to accountable owners through the PM. Only accepted fixes enter release integration. See [Orchestration instructions](orchestration-instructions.md) and [Artifact and handoff contracts](shared-project-knowledge/artifact-and-handoff-contracts.md).

## Shared knowledge

- [Project binding and intake](shared-project-knowledge/project-binding-and-intake.md)
- [Delivery standards and decision policy](shared-project-knowledge/delivery-standards-and-decision-policy.md)
- [Artifact and handoff contracts](shared-project-knowledge/artifact-and-handoff-contracts.md)

## Provenance and licenses

All web sources were accessed 2026-08-09. Guidance was distilled into original, runtime-neutral procedures; no source code, executable dependency, or substantial source text was copied.

| Source | Use | License or usage status | Security findings | Approval |
|---|---|---|---|---|
| Repository `packs/template/` | Structure and adapted PM role files | Repository MIT License; preserve repository license when redistributing | Markdown-only; no scripts, network calls, credentials, or authority expansion in adapted files | Approved by creator instruction to reuse/adapt |
| Repository `skills/build-agent-team/` and references | Universal-pack requirements and team design | Repository MIT License | Markdown-only instructions reviewed; no executable content used | Required by creator |
| [W3C WCAG 2.2 Recommendation](https://www.w3.org/TR/WCAG22/) | Accessibility principles, conformance model, and review criteria | Copyright W3C; document-use rules apply. Referenced and paraphrased only; no claim of endorsement | Static standards content; no executable content or dependencies imported | Web-authored source; individual approval not required |
| [W3C WCAG overview](https://www.w3.org/WAI/standards-guidelines/wcag/) | Current-version and standards context | W3C document-use rules apply; referenced and paraphrased only | Static guidance; no executable content or dependencies imported | Web-authored source; individual approval not required |
| [Google Search SEO Starter Guide](https://developers.google.com/search/docs/fundamentals/seo-starter-guide) | Crawlable content, page titles, snippets, links, images, and site organization | Page content is generally CC BY 4.0 except where noted; no code copied; attribution supplied here | Static documentation; no scripts or dependencies imported | Web-authored source; individual approval not required |
| [Google Search robots.txt guide](https://developers.google.com/search/docs/crawling-indexing/robots/intro) | Crawl-control decision rules and warning that robots.txt is not an indexing/privacy control | CC BY 4.0 except where noted; no code copied; attribution supplied here | Static documentation; no executable examples imported | Web-authored source; individual approval not required |
| [Google Search structured-data introduction](https://developers.google.com/search/docs/appearance/structured-data/intro-structured-data) | Accurate, visible-content-aligned structured data and validation | CC BY 4.0 except where noted; no code copied; attribution supplied here | Static documentation; no executable examples imported | Web-authored source; individual approval not required |
| [FTC Advertising and Marketing](https://www.ftc.gov/business-guidance/advertising-marketing) and [Advertising FAQs](https://www.ftc.gov/business-guidance/resources/advertising-faqs-guide-small-business) | Truthful, non-deceptive, evidence-backed claims and heightened-risk claim handling | U.S. government guidance; referenced and paraphrased only. Legal applicability must be confirmed by qualified counsel | Static government guidance; no executable content or dependencies imported | Web-authored source; individual approval not required |
| [FTC Privacy and Security](https://www.ftc.gov/business-guidance/privacy-security) and [Protecting Personal Information](https://www.ftc.gov/business-guidance/resources/protecting-personal-information-guide-business) | Data minimization, truthful privacy representations, access and lifecycle review | U.S. government guidance; referenced and paraphrased only. Not legal advice | Static government guidance; no executable content or dependencies imported | Web-authored source; individual approval not required |

## Assumptions

- English is the pack language; individual projects may activate multilingual handling.
- WCAG 2.2 Level AA is the default accessibility target unless the runtime brief names another binding standard; a formal conformance claim requires complete scoped evidence and appropriate authority.
- The team has five fixed roles; conditional high-risk needs are handled by external specialists or a separately approved team change.
- The task-management and publishing platforms remain runtime choices.

## Risks and unsupported conditions

Brand, accessibility, privacy, advertising, and search requirements vary by jurisdiction and context. This pack provides disciplined delivery guidance, not legal advice or certification. Automated tests cannot establish full accessibility or functional quality. Search guidance cannot ensure indexing or ranking. Unknown ownership of content, assets, domains, data, or credentials blocks use. Projects involving payments, protected health or financial data, children, regulated claims, complex authentication, or substantial application logic require qualified owners outside the default roster. Security assessment beyond launch hygiene is intentionally omitted.
