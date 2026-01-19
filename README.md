# The Architecture of Thought

**The Dialectical Cognition Framework (DCF): A Methodology for Human-AI Collaboration**

[![DOI](https://zenodo.org/badge/1136026127.svg)](https://zenodo.org/badge/latestdoi/1136026127)
[![GitHub release](https://img.shields.io/github/v/release/domelic/architecture-of-thought)](https://github.com/domelic/architecture-of-thought/releases/latest)
[![License: All Rights Reserved](https://img.shields.io/badge/License-All%20Rights%20Reserved-red.svg)](LICENSE)

> **DCF positions LLMs as *thinking mirrors*: collaborative partners in the architecture of thought itself.**

**What is DCF?** A methodology for working with AI that emphasizes *questioning over extraction*. Instead of "give me the answer," you engage in structured Socratic dialogue that surfaces assumptions, explores alternatives, and builds genuine understanding. The framework provides 24 modes for different situations—debugging, architecture decisions, learning new domains, and more.

**Who is this for?** Software engineers, technical writers, and knowledge workers who want to move beyond surface-level prompting with AI coding assistants.

---

## Table of Contents

| Practice | Theory & Reference |
|----------|-------------------|
| [Quick Start](#quick-start) — Install & begin | [The Book (Optional)](#the-book-optional) — 265-page treatise |
| [Claude Code Skills](#claude-code-skills) — `/dcf` and `/cybw` | [Theoretical Foundations](#theoretical-foundations) — Research basis |
| [Practical Resources](#practical-resources) — Templates, prompts, exercises | [All DCF Modes](#all-dcf-modes) — Complete 24-mode reference |
| [Installation](#installation) — Setup details | [Citation](#citation) — How to cite |

**Most users should start with [Quick Start](#quick-start) and the [Practical Resources](#practical-resources).**

---

## Quick Start

**You don't need to read the book to use DCF.** Start with the practical tools:

| To... | Use this |
|-------|----------|
| Install the skills | `curl -fsSL https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/scripts/install-dcf.sh \| bash` |
| Get a 5-minute overview | [DCF Essentials](DCF_ESSENTIALS.md) |
| Start a Socratic dialogue | `/dcf` in Claude Code |
| Challenge your assumptions | `/cybw` in Claude Code |
| See it in action | [Example Transcripts](resources/DCF_EXAMPLE_TRANSCRIPTS.md) |

---

## Claude Code Skills

### `/dcf [mode] [context]` — Socratic Dialogue

24 modes across 5 categories for structured thinking:

```bash
/dcf                     # General Socratic dialogue

# Evaluation & Review
/dcf review              # Evaluate before committing
/dcf checkpoint          # Agentic decision point
/dcf self-review         # Have Claude review its own work

# Problem Solving
/dcf debug               # Question the mental model
/dcf unstick             # Break through blocks
/dcf decompose           # Systematic task breakdown

# Design & Analysis
/dcf architect           # Divergent exploration → minimal viable change
/dcf tradeoffs           # Structured tradeoff analysis
/dcf assumptions         # Deep assumption excavation
/dcf premortem           # Anticipate failure before starting

# Learning
/dcf learn <topic>       # Build understanding through dialogue
/dcf onboard             # Explore unfamiliar codebase
```

[See all 24 modes →](#all-dcf-modes)

### `/cybw [target]` — Could You Be Wrong?

Quick adversarial checkpoint based on Hills (2025) research:

```bash
/cybw                           # Challenge the last response
/cybw the caching strategy      # Challenge a specific decision
/cybw "users want this feature" # Challenge an assumption
```

---

## Practical Resources

### Start Here

| Resource | Description | Time |
|----------|-------------|------|
| [DCF Essentials](DCF_ESSENTIALS.md) | Condensed practitioner's guide | 5 min |
| [Example Transcripts](resources/DCF_EXAMPLE_TRANSCRIPTS.md) | 4 annotated real-world conversations | 15 min |
| [Anti-Patterns Guide](resources/DCF_ANTI_PATTERNS.md) | 14 failure modes with fixes | 10 min |

### Daily Practice

| Resource | Description |
|----------|-------------|
| [Prompt Library](resources/DCF_PROMPT_LIBRARY.md) | Ready-to-use Socratic prompts for any situation |
| [CLAUDE.md Template](resources/CLAUDE_MD_TEMPLATE.md) | DCF-informed project configuration |
| [Self-Assessment](resources/DCF_SELF_ASSESSMENT.md) | Weekly reflection template |
| [Workshop Exercises](resources/DCF_WORKSHOP_EXERCISES.md) | 8 hands-on practice scenarios |

### Reference

| Resource | Description |
|----------|-------------|
| [Visual Guide](resources/DCF_VISUAL_GUIDE.md) | Diagrams and visual references |
| [FAQ](resources/DCF_FAQ.md) | Comprehensive Q&A |
| [Glossary](resources/DCF_GLOSSARY.md) | 40+ term definitions |
| [Framework Integration](resources/DCF_FRAMEWORK_INTEGRATION.md) | DCF + Ralph, Plan Mode, BMAD |
| [Comparison Matrix](resources/DCF_COMPARISON_MATRIX.md) | DCF vs other methodologies |

### Case Studies

| Example | Domain | DCF Principles |
|---------|--------|----------------|
| [Debugging Race Condition](examples/CASE_STUDY_debugging_race_condition.md) | Software Development | Elenchus, Recursive Refinement |
| [API Architecture Decision](examples/CASE_STUDY_api_architecture.md) | System Design | Dialectic, Checkpoint Protocol |
| [Learning Rust Ownership](examples/CASE_STUDY_learning_rust.md) | Learning | Maieutics, Learning Stance |

See [examples/README.md](examples/README.md) for the full collection.

### Team Adoption

| Resource | Description |
|----------|-------------|
| [Team Adoption Playbook](resources/DCF_TEAM_ADOPTION_PLAYBOOK.md) | 5-phase organizational guide |
| [Slide Deck](resources/DCF_SLIDE_DECK.md) | Presentation for teaching DCF |
| [Case Study Template](resources/DCF_CASE_STUDY_TEMPLATE.md) | Standardized documentation format |
| [Reading List](resources/DCF_READING_LIST.md) | Annotated bibliography for deeper learning |

---

## The Book (Optional)

> **Note:** The book is an early draft — a work in progress exploring the theoretical foundations. You can be fully productive with DCF using just the skills and resources above.

**"The Architecture of Thought"** is a 265-page treatise that dives deep into the philosophy and cognitive science behind DCF. It's for those who want to understand *why* the framework works, not just *how* to use it.

| Format | Link |
|--------|------|
| Free PDF | [Download (265 pages)](THE_ARCHITECTURE_OF_THOUGHT.pdf) |
| Free EPUB | [Download](https://github.com/domelic/architecture-of-thought/releases/latest/download/Omelic-Architecture-of-Thought.epub) |
| Kindle | [Amazon ($9.99)](https://www.amazon.com/dp/B0GHM2M6HR) |

[![Pages](https://img.shields.io/badge/Pages-265-blue.svg)](THE_ARCHITECTURE_OF_THOUGHT.pdf)
[![LaTeX](https://img.shields.io/badge/Format-LaTeX-green.svg)](THE_ARCHITECTURE_OF_THOUGHT.tex)
[![Amazon KDP](https://github.com/domelic/architecture-of-thought/actions/workflows/amazon-kdp-publish.yml/badge.svg)](https://github.com/domelic/architecture-of-thought/actions/workflows/amazon-kdp-publish.yml)

<details>
<summary><strong>Book Contents (12 Parts)</strong></summary>

| Part | Title | Key Chapters |
|------|-------|--------------|
| I | The Core Philosophy of DCF | Extraction to Collaboration, The Thinking Mirror, Language as Infrastructure |
| II | The Socratic Method Reimagined | Socratic Dialogue as Methodology, The Five Phases of Socratic Prompting |
| III | Prompt Chaining as Cognitive Architecture | Why Single Prompts Fail, Designing Prompt Chains, Recursive Refinement |
| IV | From Documentation to Knowledge Engineering | Minimal Viable Document, Documentation as System Design, Knowledge Architecture |
| V | Metacognition and Self-Directed Learning | Thinking About Thinking, The Learning Stance, Building PKM Systems |
| VI | Philosophical and Cognitive Science Foundations | Extended Mind Thesis, Distributed Cognition, Scaffolding Theory, Dialectical Tradition |
| VII | Claude Code and Development Best Practices | Architecture, Agent Ecosystem, Memory Systems, Team-Scale DCF, MCP Orchestration |
| VIII | Practical Application Framework | Practitioner's Toolkit, Failure Modes (14 anti-patterns), Measuring Improvement, Case Studies |
| IX | The Emerging Discipline | Naming the Field, The Future of Thought Work, Your Role in This Emergence |
| X | Positioning Within the AI Methodology Landscape | Framework Comparisons (ACE-FCA, BMAD, Ralph), The Stack View, Practical Integration |
| XI | Agentic Era Adaptations | Manual to Autonomous, Extended Thinking, When to Engage vs. Trust |
| XII | Critical Perspectives | Limitations of DCF, Ethical Considerations |

**Appendices:** DCF Principles Summary, Prompt Reference, Recommended Reading, Claude Code Resources, Research References, Meta-Example, Glossary (~40 terms), Exercises

</details>

---

## Theoretical Foundations

DCF draws on established research in cognitive science and philosophy:

- **Extended Mind Thesis** — Clark & Chalmers (1998)
- **Distributed Cognition** — Hutchins (1995)
- **Scaffolding Theory** — Vygotsky, Bruner, Wood & Ross
- **Hermeneutics** — Gadamer's "fusion of horizons" (*Horizontverschmelzung*)
- **Critical Rationalism** — Popper's falsificationism (1963)
- **Double-Loop Learning** — Argyris (1977)

<details>
<summary><strong>Research validation</strong></summary>

Recent research validates DCF's core practices:

- **Metacognitive Prompting** — Hills (2025) demonstrates that "Could you be wrong?" generates adversarial information absent from initial responses
- **Autonomy Risk Framework** — Kovács & Szelényi (2025) identifies false mental states and cognitive deskilling as primary risks
- **Collaboration Measurement** — Sidra & Mason (2025) provides validated scales for collaborative AI literacy and metacognition
- **Human-AI Collaboration** — Nature Human Behaviour (2024) meta-analysis, Synergy Index (2025)
- **Independent Validation** — Hashemi Tonekaboni & Soleymani (HICSS 2026) independently operationalizes Socratic elements in multi-agent architecture

</details>

---

## Installation

**Prerequisite:** [Claude Code](https://docs.anthropic.com/en/docs/claude-code) — Anthropic's agentic coding tool

**Quick Install (recommended):**

```bash
curl -fsSL https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/scripts/install-dcf.sh | bash
```

This installs the `/dcf` and `/cybw` skills globally, the `dcf-workflow` script, and optionally configures hooks.

<details>
<summary><strong>Manual Installation</strong></summary>

**1. Install skills:**

```bash
# Global installation (available in all projects)
mkdir -p ~/.claude/commands
curl -o ~/.claude/commands/dcf.md https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/commands/dcf.md
curl -o ~/.claude/commands/cybw.md https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/commands/cybw.md

# Or project-level installation
mkdir -p .claude/commands
curl -o .claude/commands/dcf.md https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/commands/dcf.md
curl -o .claude/commands/cybw.md https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/commands/cybw.md
```

**2. Install `dcf-workflow` script (optional):**

```bash
mkdir -p ~/bin
curl -o ~/bin/dcf-workflow https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/scripts/dcf-workflow
chmod +x ~/bin/dcf-workflow
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

**3. Verify installation:**

```bash
dcf-workflow --help  # Check workflow script
/dcf                  # Check skill in Claude Code
```

</details>

---

## All DCF Modes

<details>
<summary><strong>Complete list of 24 modes</strong></summary>

```bash
/dcf [mode] [context]

/dcf                     # General Socratic dialogue

# Evaluation & Review
/dcf review              # Evaluate before committing
/dcf checkpoint          # Agentic decision point
/dcf self-review         # Have Claude review its own work
/dcf refine              # Iterate deliberately on output

# Problem Solving
/dcf debug               # Question the mental model
/dcf unstick             # Break through blocks
/dcf simplify            # Find the essential
/dcf diagnose            # Identify which anti-pattern you're falling into
/dcf decompose           # Systematic task breakdown with dependency mapping
/dcf verify              # Multi-path reasoning synthesis for confidence

# Design & Analysis
/dcf architect           # Divergent exploration → minimal viable change
/dcf tradeoffs           # Structured tradeoff analysis
/dcf assumptions         # Deep assumption excavation
/dcf premortem           # Anticipate failure before starting
/dcf challenge           # Steelman the opposition
/dcf decide              # Reach closure on a decision
/dcf constrain           # Define boundaries before generation

# Learning & Exploration
/dcf learn <topic>       # Build understanding through dialogue
/dcf onboard             # Explore unfamiliar codebase/domain
/dcf explain             # Feynman technique - teach to test understanding

# Session Management
/dcf compact             # Prepare for session compaction
/dcf context-health      # Assess and address context rot
/dcf retro               # Capture learning
/dcf skill               # Capture pattern as reusable skill
```

</details>

<details>
<summary><strong>Workflow automation with dcf-workflow</strong></summary>

Chain modes with checkpoints:

```bash
dcf-workflow new-project              # onboard → architect → premortem
dcf-workflow debug "auth timeout"     # debug → assumptions → simplify
dcf-workflow decision "API design"    # tradeoffs → challenge → decide
dcf-workflow complex-task             # constrain → decompose → architect
dcf-workflow high-stakes              # assumptions → verify → challenge → decide
dcf-workflow unfamiliar               # onboard → decompose → verify
```

> **Caution:** Workflows are scaffolding. Each transition should be a genuine checkpoint—not automatic progression.

</details>

<details>
<summary><strong>Optional: Configure hooks</strong></summary>

Add to your project's `.claude/settings.local.json`:

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Edit",
        "hooks": [
          {
            "type": "command",
            "command": "echo '💭 DCF Checkpoint: What assumptions did this edit make?'"
          }
        ]
      }
    ],
    "SessionStart": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "echo '🪞 DCF Active: Think WITH the AI, not just use it.'"
          }
        ]
      }
    ]
  }
}
```

See `.claude/settings.example.json` for additional examples.

</details>

---

## Citation

If you use or reference this work, please cite:

```bibtex
@misc{omelic2026architecture,
  author = {Omelic, Damir and {Claude (Anthropic)}},
  title = {The Architecture of Thought: The Dialectical Cognition Framework},
  year = {2026},
  doi = {10.5281/zenodo.18275169},
  url = {https://doi.org/10.5281/zenodo.18275169},
  note = {A Treatise on Human-AI Collaboration in the Agentic Era}
}
```

<details>
<summary><strong>APA / Chicago formats</strong></summary>

**APA:** Omelic, D., & Claude. (2026). *The Architecture of Thought: The Dialectical Cognition Framework*. Zenodo. https://doi.org/10.5281/zenodo.18275169

**Chicago:** Omelic, Damir, and Claude. "The Architecture of Thought: The Dialectical Cognition Framework." Zenodo, 2026. https://doi.org/10.5281/zenodo.18275169.

</details>

---

## Repository Structure

<details>
<summary><strong>Directory layout</strong></summary>

```text
/
├── README.md                         # This file
├── LICENSE                           # All Rights Reserved license
├── CLAUDE.md                         # Claude Code project instructions
├── DCF_ESSENTIALS.md                 # Condensed practitioner's guide
├── CONTRIBUTING.md                   # Contribution guidelines
├── CODE_OF_CONDUCT.md                # Community guidelines
├── CHANGELOG.md                      # Version history (auto-generated)
├── RELEASING.md                      # Release process checklist
├── CITATION.cff                      # Machine-readable citation
├── THE_ARCHITECTURE_OF_THOUGHT.pdf   # Compiled document (265 pages)
├── THE_ARCHITECTURE_OF_THOUGHT.tex   # LaTeX source
├── references.bib                    # BibTeX bibliography (31 sources)
├── commitlint.config.js              # Conventional commit enforcement
├── release-please-config.json        # Release automation config
├── assets/
│   └── cover.jpg                     # Book cover image
├── .github/
│   ├── CODEOWNERS                    # Code ownership definitions
│   ├── FUNDING.yml                   # Sponsorship configuration
│   ├── PULL_REQUEST_TEMPLATE.md      # PR template
│   ├── dependabot.yml                # Dependency update automation
│   ├── social-preview.svg            # Repository social image
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md             # Bug report template
│   │   ├── feature_request.md        # Feature request template
│   │   ├── case_study.md             # Case study submission template
│   │   └── config.yml                # Template chooser config
│   └── workflows/
│       ├── release-please.yml        # Automated releases
│       ├── amazon-kdp-publish.yml    # EPUB build on release
│       ├── commitlint.yml            # Commit message validation
│       ├── markdown-lint.yml         # Markdown formatting
│       ├── spell-check.yml           # Spelling validation
│       ├── link-checker.yml          # Broken link detection
│       ├── compile-pdf.yml           # LaTeX compilation
│       ├── pdf-preview.yml           # PR artifact preview
│       ├── stale.yml                 # Inactive issue management
│       └── welcome.yml               # New contributor greeting
├── .claude/
│   ├── commands/
│   │   └── dcf.md                    # Claude Code skill for DCF
│   ├── scripts/
│   │   ├── dcf-workflow              # Workflow automation script
│   │   ├── install-dcf.sh            # Installation script
│   │   └── README.md                 # Scripts documentation
│   └── settings.example.json         # Example hooks configuration
├── .serena/
│   ├── .gitignore                    # Cache exclusion
│   ├── project.yml                   # Serena project configuration
│   └── memories/
│       ├── LATEX_EDITING_GUIDE.md    # Document structure and editing patterns
│       ├── DCF_CONCEPTS.md           # Framework terminology quick reference
│       ├── STYLE_GUIDE.md            # Writing conventions and formatting
│       ├── CROSS_REFERENCES.md       # Concept dependencies and locations
│       ├── BIBLIOGRAPHY_SOURCES.md   # Annotated citation guide
│       └── REVISION_DECISIONS.md     # Editorial decision log
├── examples/
│   ├── README.md                     # Examples overview
│   ├── CASE_STUDY_debugging_race_condition.md
│   ├── CASE_STUDY_api_architecture.md
│   └── CASE_STUDY_learning_rust.md
└── resources/
    ├── CLAUDE_MD_TEMPLATE.md         # Project configuration template
    ├── DCF_PROMPT_LIBRARY.md         # Socratic prompts by situation
    ├── DCF_SELF_ASSESSMENT.md        # Weekly reflection template
    ├── DCF_WORKSHOP_EXERCISES.md     # 8 practice exercises
    ├── DCF_VISUAL_GUIDE.md           # Diagrams and visual references
    ├── DCF_SLIDE_DECK.md             # Presentation slides
    ├── DCF_FRAMEWORK_INTEGRATION.md  # Integration with other frameworks
    ├── DCF_ANTI_PATTERNS.md          # 14 failure modes with fixes
    ├── DCF_EXAMPLE_TRANSCRIPTS.md    # 4 annotated conversations
    ├── DCF_FAQ.md                    # Frequently asked questions
    ├── DCF_GLOSSARY.md               # Term definitions
    ├── DCF_READING_LIST.md           # Annotated bibliography
    ├── DCF_COMPARISON_MATRIX.md      # DCF vs other methodologies
    ├── DCF_TEAM_ADOPTION_PLAYBOOK.md # Organizational adoption guide
    ├── DCF_CASE_STUDY_TEMPLATE.md    # Documentation template
    ├── DCF_VIDEO_SCRIPT.md           # Media production script
    └── DCF_RESEARCH_AGENDA.md        # Open research questions
```

</details>

<details>
<summary><strong>Building from source</strong></summary>

Requires LaTeX (TeX Live 2025 or MacTeX):

```bash
# Full compilation with bibliography and index
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
bibtex THE_ARCHITECTURE_OF_THOUGHT
makeindex THE_ARCHITECTURE_OF_THOUGHT
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
```

</details>

---

## Contributing

| File | Description |
|------|-------------|
| [CONTRIBUTING.md](CONTRIBUTING.md) | How to contribute to DCF |
| [CHANGELOG.md](CHANGELOG.md) | Version history and changes |
| [RELEASING.md](RELEASING.md) | Release process and checklist |

---

## License & Copyright

**© 2026 Damir Omelic. All Rights Reserved.**

Co-authored with Claude (Anthropic). The human author retains full intellectual property rights.

---

If you find DCF useful, consider [starring the repo](https://github.com/domelic/architecture-of-thought) to help others discover it.
