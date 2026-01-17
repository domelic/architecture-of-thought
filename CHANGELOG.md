# Changelog

All notable changes to the Dialectical Cognition Framework project.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased]

*No unreleased changes*

---

## [2.2.0] - 2026-01-17

### Added

#### Meta-Question as Core Principle
- Elevated "What question should I be asking?" to a core DCF principle
- Added to /dcf skill as 5th core principle and Socratic Toolkit operation
- Added dedicated "The Question" section to skill response format
- Added Meta-Question entry to DCF_GLOSSARY.md
- Added as 6th principle in DCF_ESSENTIALS.md
- Added as 8th principle (Metacognitive) in treatise with glossary entry

#### New Skill Modes (21 total)
- **`/dcf refine`** - Iterate deliberately on output without drift or infinite loops
- **`/dcf self-review`** - Have Claude review its own output (activates evaluation mode)

#### Workflow Automation
- **`dcf-workflow`** - Shell script for chaining modes with checkpoints
- **`.claude/scripts/README.md`** - Script documentation
- **`.claude/settings.example.json`** - Example hooks configuration

### Changed

#### Skill Refactoring
- Converted from procedural (scripted steps) to principle-based (outcomes)
- Reduced from 22 modes to 21 modes (more focused)
- Reorganized into 4 categories (was 6):
  - Core modes (13)
  - Design & Analysis (3)
  - Learning & Onboarding (2)
  - Session Management (4)
- Archived procedural version to `.claude/skills/archive/dcf-procedural.md`

#### Updated Workflows
- `new-project`: onboard → architect → premortem (was learn → premortem → review)
- `debug`: debug → assumptions → simplify (was debug → simplify → decide)
- `decision`: tradeoffs → challenge → decide (was review → challenge → decide)
- `session-end`: context-health → compact → retro (was just retro)

#### Treatise Updates
- Updated skill description to reflect principle-based approach
- Updated principle count to 16 (was 15)
- Renumbered Collaboration and Agentic Era principles

---

## [2.1.0] - 2026-01-17

### Added

#### DCF Skill Enhancements (22 total modes)
- **`/dcf diagnose`** - Identify which anti-pattern you're falling into
- **`/dcf onboard`** - Guided exploration of unfamiliar codebase/domain
- **`/dcf decide`** - Reach closure when you have options
- **`/dcf assumptions`** - Deep excavation of hidden assumptions
- **`/dcf simplify`** - Reduce complexity to essential
- **`/dcf context-health`** - Assess and address context rot
- **Workflow Composition** - Recommended skill sequences for common scenarios
- **See Also hints** - Each skill now suggests related skills that chain well

#### Treatise Updates
- Updated skill reference to reflect 22 modes across 6 categories
- Added Workflow Composition to glossary with index entry

#### Anti-Patterns (14 total)
- **Anti-Pattern 13: Context Rot** - Conversation context degrading over time
- **Anti-Pattern 14: Knowledge Gatekeeping** - Tribal knowledge blocking AI effectiveness

#### Resources Updates
- **DCF_VISUAL_GUIDE.md** - New Skill Workflows diagram with 8 recommended sequences
- **DCF_ESSENTIALS.md** - Skill Workflows quick reference table
- **DCF_GLOSSARY.md** - New terms: Learning Accelerator, Context Rot, Knowledge Gatekeeping, Workflow Composition, Trust-Speed-Rigor Triangle, Adoption Stages, Shared Context Infrastructure, Test Coverage as Scaffolding
- **DCF_TEAM_ADOPTION_PLAYBOOK.md** - Core adoption principles: Demonstration Over Explanation, Adoption Stages, Trust-Speed-Rigor Triangle
- **DCF_FAQ.md** - Workflow composition guidance

### Changed
- PDF now 190 pages (up from 180)
- Skill modes expanded from 16 to 22
- Anti-patterns expanded from 12 to 14

---

## [2.0.0] - 2026-01-17

### Added

#### Treatise Expansions
- **Prompt Reference Appendix** (NEW) - 8 tables of essential prompts organized by situation
  - Clarification, Challenge, Plan Review, Learning, Debugging, Code Review, Synthesis, Meta
  - Makes the treatise more self-contained as a practical resource
- **Framework Comparison Tables** - 3 new tables in Part X
  - Comparison matrix across dimensions (DCF vs Prompt Eng vs Ralph vs Plan Mode)
  - Situation-based framework selection guide
  - Anti-patterns and risks by framework
- **Exercise 8: The Silence Test** - Tests what practitioners have internalized vs. depend on AI for
  - Operationalizes the scaffolding principle
  - Includes tracking sheet and reflection questions
- **Failure Modes Chapter** - Expanded from 4 brief modes to 12 detailed anti-patterns (~350 lines)
  - Each pattern includes: What It Looks Like, Symptoms, Root Causes, The Fix
  - New patterns: Socratic Theater, Mirror Narcissism, Reactive Evaluation, Infinite Refinement, Rubber Stamping, Complexity Creep, Goal Drift, Abstraction Addiction, Reinvention Addiction
  - Quick Reference detection table
  - Meta-Fix section on self-awareness
- **Anticipatory Calibration Section** - Metacognitive skill of forming expectations before prompting
- **Session Continuity Section** - Pre-compaction documentation strategy
- **Pattern-to-Skill Section** - Capturing effective patterns as reusable skills
- **Agent Ecosystem Chapter** - Specialized agents (Explore, Plan, code-reviewer, code-architect)
  - When to use which agent
  - Background agents: sync vs async execution
  - Multi-agent orchestration patterns
- **Configuration Philosophy Expansion**
  - Hooks: automated DCF triggers
  - Settings configuration (.claude/settings.json)
  - Model selection (haiku/sonnet/opus) as DCF decision
  - Session lifecycle and context hygiene
  - IDE integration patterns (VS Code)
- **Glossary Additions** - 5 new terms: Background Agents, Hooks, Pattern Capture, Reinvention Addiction, Session Lifecycle

#### DCF Skill Enhancements
- **`/dcf refine`** - Iterate on output that needs improvement
- **`/dcf retro`** - End-of-session reflection and learning capture
- **`/dcf compact`** - Prepare for session compaction
- **`/dcf skill`** - Capture an effective pattern as a reusable skill

#### Resources Updates
- **DCF_FAQ.md** - New "Claude Code Integration" section with /dcf skill documentation
- **DCF_VISUAL_GUIDE.md** - New diagrams: /dcf skill modes, agent selection guide, model selection
- **DCF_FRAMEWORK_INTEGRATION.md** - New sections: Agent Ecosystem, Hooks, Model Selection, Session Lifecycle
- **DCF_ANTI_PATTERNS.md** - Added Anti-Pattern 12: Reinvention Addiction
- **DCF_GLOSSARY.md** - New terms: Pattern Capture, Reinvention Addiction, Hooks, Session Lifecycle, Background Agents, Anticipatory Calibration
- **DCF_PROMPT_LIBRARY.md** - Session Continuity Prompts, Skill Creation Prompts sections
- **DCF_ESSENTIALS.md** - Agent selection table, model selection table, skill creation guidance

#### Examples
- **Examples Directory** - Completed case studies demonstrating DCF in action
  - Debugging Race Condition (Software Development)
  - API Architecture Decision (System Design)
  - Learning Rust Ownership (Learning New Technology)

#### Project Infrastructure
- **DCF Research Agenda** - Open questions and research priorities
- **DCF Video/Podcast Script** - Ready-to-use script for media production
- **CONTRIBUTING.md** - Contribution guidelines for the community
- **CHANGELOG.md** - This file

### Changed
- PDF now 180 pages (up from 150)
- Index now contains 64 entries (up from 56)
- Anti-patterns expanded from 4 to 12
- Exercises expanded from 7 to 8

### Fixed
- Completed DCF_CASE_STUDY_TEMPLATE.md (was truncated)

---

## [1.0.0] - 2026-01-15

### Added
- **THE_ARCHITECTURE_OF_THOUGHT.tex** - Full treatise on the Dialectical Cognition Framework
  - Part I: Foundations - Extended mind thesis, cognitive partnership
  - Part II: The Socratic Core - Elenchus, maieutics, dialectic, aporia
  - Part III: Recursive Refinement - Iteration methodology
  - Part IV: Agentic Adaptations - Checkpoints, trust calibration
  - Part V: Theoretical Integration - Multi-level framework analysis
  - Part VI: Measurement - Synergy Index, metrics
  - Part VII: Applications - Domain-specific guidance
  - Part VIII: Future Directions - Research agenda
- Initial README with project overview
- MIT License

---

## Version Numbering

This project uses [Semantic Versioning](https://semver.org/):

- **Major version**: Significant changes to core DCF principles
- **Minor version**: New resources, extensions, substantial improvements
- **Patch version**: Bug fixes, typos, clarifications

---

## Roadmap

### Planned for Future Releases

- [ ] Translation to other languages
- [ ] Interactive web-based tools
- [ ] Video tutorials
- [ ] Community-contributed case studies
- [ ] Empirical validation studies
- [ ] Integration with additional AI tools

### Community Requests

*None yet. Open an issue to suggest features!*

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for how to contribute to this project.

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
