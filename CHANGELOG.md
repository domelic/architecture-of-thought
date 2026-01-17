# Changelog

All notable changes to the Dialectical Cognition Framework project.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased]

### Added

#### Treatise Expansions
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

#### DCF Skill Enhancements
- **`/dcf refine`** - Iterate on output that needs improvement
- **`/dcf retro`** - End-of-session reflection and learning capture
- **`/dcf compact`** - Prepare for session compaction
- **`/dcf skill`** - Capture an effective pattern as a reusable skill

#### Resources Updates
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
- Index now contains 56+ entries
- Anti-patterns expanded from 4 to 12

### Fixed
- Completed DCF_CASE_STUDY_TEMPLATE.md (was truncated)

---

## [2.0.0] - 2026-01-16

### Added

#### Core Resources
- **DCF Essentials** - One-page practitioner's quick-start guide
- **Claude Code Skill** - `/dcf` skill for applying DCF in Claude Code sessions

#### Practical Resources
- **CLAUDE.md Template** - DCF-informed project configuration template
- **Prompt Library** - Ready-to-use Socratic prompts organized by situation
- **Self-Assessment Tool** - Weekly/monthly reflection templates
- **Workshop Exercises** - 8 hands-on exercises for learning DCF
- **Visual Guide** - ASCII diagrams and one-page summary
- **Slide Deck** - Presentation materials for teaching DCF
- **Framework Integration Guide** - DCF with Plan Mode, Ralph, BMAD, etc.
- **Anti-Patterns Guide** - Detailed guide to 10 DCF failure modes

#### Community Resources
- **Example Transcripts** - 4 annotated real-world DCF conversations
- **FAQ** - Comprehensive frequently asked questions
- **Team Adoption Playbook** - 5-phase organizational adoption guide
- **Annotated Reading List** - Curated sources with DCF context
- **Case Study Template** - Standardized format for documenting applications
- **Comparison Matrix** - DCF vs other methodologies
- **Glossary** - 40+ term definitions for DCF vocabulary

### Changed
- Updated README with comprehensive resources section
- Added repository structure documentation
- Added download/installation instructions

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
