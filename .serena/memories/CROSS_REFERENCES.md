# Cross-References Map

Concept dependencies, definition locations, and term relationships for THE_ARCHITECTURE_OF_THOUGHT.

## Document Structure Overview

| Part | Title | Directory | Core Concepts |
|------|-------|-----------|---------------|
| I | Core Philosophy | `part01-core-philosophy/` | Thinking Mirror, Collaboration vs Extraction, Language as Infrastructure |
| II | Socratic Method Reimagined | `part02-socratic-method/` | Seven Socratic Operations, Five Phases of Prompting |
| III | Prompt Chaining | `part03-prompt-chaining/` | Recursive Refinement, Escape Paths, Chain Composition |
| IV | Knowledge Engineering | `part04-knowledge-engineering/` | PKM, Zettelkasten, PARA Method |
| V | Metacognition | `part05-metacognition/` | Anticipatory Calibration, Learning Accelerator |
| VI | Philosophical Foundations | `part06-philosophical-foundations/` | Extended Mind, Distributed Cognition, ZPD, Scaffolding, Dialectical Thinking |
| VII | Claude Code | `part07-claude-code/` | Agent Ecosystem, Session Continuity, Skill Creation, Hooks |
| VIII | Practical Application | `part08-practical-application/` | Architectural Funnel, Failure Modes (14 anti-patterns) |
| IX | Emerging Discipline | `part09-emerging-discipline/` | Future directions |
| X | Methodology Landscape | `part10-methodology-landscape/` | ACE-FCA, 12-Factor Agents, BMAD, Ralph, Framework Comparison |
| XI | Agentic Era | `part11-agentic-era/` | Trust vs Engage, Test Coverage as Scaffolding |
| XII | Critical Perspectives | `part12-critical-perspectives/` | Limitations, Critiques |

## Term Definition Locations

### Core DCF Concepts

| Term | File | Dependencies |
|------|------|--------------|
| Dialectical Cognition Framework | `parts/frontmatter.tex` | - |
| Thinking Mirror | `ch02-thinking-mirror.tex` | Extended Mind (Part VI) |
| Collaboration Over Extraction | `ch01-beyond-prompting.tex` | - |
| Language as Infrastructure | `ch03-language-infrastructure.tex` | - |
| CLAUDE.md | `ch03-language-infrastructure.tex` | Language as Infrastructure |

### Socratic Method

| Term | File | Dependencies |
|------|------|--------------|
| Elenchus | `ch04-socratic-dialogue.tex` | - |
| Maieutics | `ch04-socratic-dialogue.tex` | - |
| Dialectic | `ch04-socratic-dialogue.tex` | - |
| Evidence (Socratic) | `ch04-socratic-dialogue.tex` | - |
| Consequences (Socratic) | `ch04-socratic-dialogue.tex` | - |
| Aporia | `ch04-socratic-dialogue.tex` | - |
| Meta-question | `ch04-socratic-dialogue.tex` | - |
| Five Phases | `ch05-five-phases.tex` | Seven Operations |

### Cognitive Science Foundations (Part VI)

| Term | File | Dependencies |
|------|------|--------------|
| Extended Mind Thesis | `ch15-extended-mind.tex` | Clark & Chalmers |
| Distributed Cognition | `ch16-distributed-cognition.tex` | Hutchins |
| Zone of Proximal Development (ZPD) | `ch17-scaffolding-theory.tex` | Vygotsky |
| Scaffolding | `ch17-scaffolding-theory.tex` | Bruner, Wood, Ross; requires ZPD |
| Dialectical Thinking | `ch18-dialectical-thinking.tex` | Riegel, Basseches |
| Horizontverschmelzung | `ch02-thinking-mirror.tex` | Gadamer |

### Prompting & Refinement (Parts III-V)

| Term | File | Dependencies |
|------|------|--------------|
| Recursive Refinement Loop | `ch08-recursive-refinement.tex` | - |
| Escape Paths | `ch08-recursive-refinement.tex` | Recursive Refinement |
| Socratic Fatigue | `ch08-recursive-refinement.tex` | - |
| Anticipatory Calibration | `ch12-thinking-about-thinking.tex` | Metacognition |
| Learning Accelerator | `ch13-learning-stance.tex` | Scaffolding (Part VI) |

### Claude Code (Part VII)

| Term | File | Dependencies |
|------|------|--------------|
| Agent Ecosystem | `ch21-agent-ecosystem.tex` | - |
| Background Agents | `ch21-agent-ecosystem.tex` | Agent Ecosystem |
| Session Continuity | `ch22-memory-systems.tex` | Context Rot (anti-pattern) |
| Shared Context Infrastructure | `ch22-memory-systems.tex` | CLAUDE.md |
| Skill Creation | `ch25-skill-composition.tex` | - |
| Hooks | `ch28-configuration-philosophy.tex` | - |
| Model Selection | `ch28-configuration-philosophy.tex` | - |
| Session Lifecycle | `ch28-configuration-philosophy.tex` | - |

### Research Validation

| Term | File | Citation |
|------|------|----------|
| Collaborative AI Literacy | `ch31-measuring-improvement.tex` | Sidra & Mason (2025) |
| Collaborative AI Metacognition | `ch31-measuring-improvement.tex` | Sidra & Mason (2025) |
| False Mental States | `ch30-failure-modes.tex` | Kovács & Szelényi (2025) |
| Cognitive Deskilling | `ch30-failure-modes.tex` | Kovács & Szelényi (2025) |

### Anti-Patterns

All 14 anti-patterns defined in `parts/part08-practical-application/ch30-failure-modes.tex`:

| Anti-Pattern | Related Concepts |
|--------------|------------------|
| Socratic Theater | Socratic Method |
| Mirror Narcissism | Thinking Mirror |
| Reactive Evaluation | Anticipatory Calibration |
| Infinite Refinement | Recursive Refinement |
| Lazy Prompting | Five Phases |
| Hallucination Acceptance | - |
| Rubber Stamping | Checkpoint mode |
| Complexity Creep | Simplify mode |
| Cognitive Atrophy | Scaffolding |
| Goal Drift | - |
| Abstraction Addiction | - |
| Reinvention Addiction | Skill Creation |
| Context Rot | Session Continuity |
| Knowledge Gatekeeping | - |

## Concept Dependency Graph

```text
Extended Mind (Clark & Chalmers)
    └── Thinking Mirror Hypothesis
        └── Collaboration Over Extraction
            └── Socratic Dialogue
                ├── Seven Operations
                └── Five Phases

Zone of Proximal Development (Vygotsky)
    └── Scaffolding Theory (Bruner)
        ├── AI as Learning Accelerator
        └── Cognitive Atrophy (anti-pattern: inverse)

Dialectical Thinking (Riegel/Basseches)
    └── DCF Methodology
        └── 24 Modes
            └── Workflow Chains

Hermeneutics (Gadamer)
    └── Fusion of Horizons
        └── Thinking Mirror foundation

Research Validation
    ├── Hills (2025) "Could You Be Wrong?"
    │   └── Checkpoint Protocol
    ├── Kovács & Szelényi (2025) Autonomy Risks
    │   ├── False Mental States → Hallucination Acceptance
    │   └── Cognitive Deskilling → Cognitive Atrophy
    ├── Sidra & Mason (2025) Measurement
    │   ├── Collaborative AI Literacy
    │   └── Collaborative AI Metacognition
    └── Hashemi Tonekaboni & Soleymani (2026)
        └── Independent Socratic validation
```

## Key Labels in Document

- `\label{ch:thinking-mirror}` - Thinking Mirror chapter
- `\label{sec:anticipatory-calibration}` - Anticipatory Calibration section
- `\label{sec:learning-accelerator}` - AI as Learning Accelerator
- `\label{ch:agent-ecosystem}` - Agent Ecosystem chapter
- `\label{sec:session-continuity}` - Session Continuity
- `\label{sec:shared-context}` - Shared Context Infrastructure
- `\label{sec:pattern-to-skill}` - Creating Skills from Patterns
- `\label{sec:hooks}` - Hooks section
- `\label{sec:session-lifecycle}` - Session Lifecycle
- `\label{sec:architectural-funnel}` - Architectural Funnel
- `\label{ch:failure-modes}` - Failure Modes chapter
- `\label{sec:test-scaffolding}` - Test Coverage as Scaffolding
- `\label{ch:prompt-reference}` - Prompt Reference appendix

## Cross-Reference Patterns

### When Referencing Concepts Forward
```latex
(see Section~\ref{sec:anticipatory-calibration})
(discussed further in Part~VI)
```

### When Referencing Concepts Backward
```latex
As established in the Thinking Mirror hypothesis (Chapter~2)...
Building on the scaffolding principles from Part~VI...
```

## Editing Guidelines

### Adding New Concepts
1. Check if concept relates to existing foundations
2. Reference the foundational concept on first use
3. Add to this cross-reference map
4. Ensure index entry created

### Modifying Existing Concepts
1. Check dependency graph for downstream references
2. Verify changes don't contradict dependent content
3. Update anti-pattern sections if behavior implications change

### Adding New Anti-Patterns
1. Follow naming convention (Title Case)
2. Define in `ch30-failure-modes.tex`
3. Link to the DCF concept it inverts
4. Add to DCF_CONCEPTS memory
