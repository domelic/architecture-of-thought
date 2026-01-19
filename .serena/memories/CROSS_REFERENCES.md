# Cross-References Map

Concept dependencies, definition locations, and term relationships for THE_ARCHITECTURE_OF_THOUGHT.

## Document Structure Overview

| Part | Title | Lines | Core Concepts |
|------|-------|-------|---------------|
| I | The Core Philosophy of DCF | 196-298 | Thinking Mirror, Collaboration vs Extraction, Language as Infrastructure |
| II | The Socratic Method Reimagined | 299-436 | Seven Socratic Operations, Five Phases of Prompting |
| III | Prompt Chaining as Cognitive Architecture | 437-769 | Recursive Refinement, Escape Paths, Chain Composition |
| IV | From Documentation to Knowledge Engineering | 770-849 | PKM, Zettelkasten, PARA Method |
| V | Metacognition and Self-Directed Learning | 850-1447 | Anticipatory Calibration, Learning Accelerator |
| VI | Philosophical Foundations | 1448-1805 | Extended Mind, Distributed Cognition, ZPD, Scaffolding, Dialectical Thinking |
| VII | Claude Code and Development | 1806-2573 | Agent Ecosystem, Session Continuity, Skill Creation, Hooks |
| VIII | Practical Application Framework | 2574-3428 | Architectural Funnel, Failure Modes (14 anti-patterns) |
| IX | The Emerging Discipline | 3429-3628 | Future directions |
| X | AI Methodology Landscape | 3629-3989 | ACE-FCA, 12-Factor Agents, BMAD, Ralph, Framework Comparison |
| XI | Agentic Era Adaptations | 3990-4287 | Trust vs Engage, Test Coverage as Scaffolding |
| XII | Critical Perspectives | 4288+ | Limitations, Critiques |

## Term Definition Locations

### Core DCF Concepts

| Term | Defined In | Line ~Range | Dependencies |
|------|-----------|-------------|--------------|
| Dialectical Cognition Framework | Abstract | 148 | - |
| Thinking Mirror | Part I, Ch 2 | 230-263 | Extended Mind (Part VI) |
| Collaboration Over Extraction | Part I, Ch 1 | 198-228 | - |
| Language as Infrastructure | Part I, Ch 3 | 265-293 | - |
| CLAUDE.md | Part I, Ch 3 | 288 | Language as Infrastructure |

### Socratic Method

| Term | Defined In | Line ~Range | Dependencies |
|------|-----------|-------------|--------------|
| Elenchus | Part II, Ch 4 | 306 | - |
| Maieutics | Part II, Ch 4 | 307 | - |
| Dialectic | Part II, Ch 4 | 308 | - |
| Evidence (Socratic) | Part II, Ch 4 | 309 | - |
| Consequences (Socratic) | Part II, Ch 4 | 310 | - |
| Aporia | Part II, Ch 4 | 311 | - |
| Meta-question | Part II, Ch 4 | 312 | - |
| Five Phases | Part II | 360-430 | Seven Operations |

### Cognitive Science Foundations (Part VI)

| Term | Defined In | Line ~Range | Dependencies |
|------|-----------|-------------|--------------|
| Extended Mind Thesis | Part VI | 1452 | Clark & Chalmers |
| Distributed Cognition | Part VI | 1533 | Hutchins |
| Zone of Proximal Development (ZPD) | Part VI | 1630-1658 | Vygotsky |
| Scaffolding | Part VI | 1660 | Bruner, Wood, Ross; requires ZPD |
| Dialectical Thinking | Part VI | 1758-1800 | Riegel, Basseches; Post-formal development |
| Horizontverschmelzung | Part I | 253 | Gadamer (used to explain Thinking Mirror) |

### Prompting & Refinement (Parts III-V)

| Term | Defined In | Line ~Range | Dependencies |
|------|-----------|-------------|--------------|
| Recursive Refinement Loop | Part III, Ch 6 | 519 | - |
| Escape Paths | Part III | 648 | Recursive Refinement |
| Socratic Fatigue | Part III | 671 | - |
| Anticipatory Calibration | Part V | 904 | Metacognition |
| Learning Accelerator | Part V | 1031 | Scaffolding (Part VI) |

### Agentic Era (Part VII)

| Term | Defined In | Line ~Range | Dependencies |
|------|-----------|-------------|--------------|
| Agent Ecosystem | Part VII, Ch | 1901 | - |
| Background Agents | Part VII | 1933 | Agent Ecosystem |
| Session Continuity | Part VII | 2015 | Context Rot (anti-pattern) |
| Shared Context Infrastructure | Part VII | 2086 | CLAUDE.md |
| Skill Creation | Part VII | 2236 | - |
| Hooks | Part VII | 2383 | - |
| Model Selection | Part VII | 2446 | - |
| Session Lifecycle | Part VII | 2474 | - |

### Anti-Patterns (Part VIII)

All 14 anti-patterns defined in Part VIII, Chapter "Failure Modes and Mitigations" starting at line 2711:

| Anti-Pattern | Line ~Start | Related Concepts |
|--------------|-------------|------------------|
| Socratic Theater | 2715 | Socratic Method |
| Mirror Narcissism | 2749 | Thinking Mirror |
| Reactive Evaluation | 2781 | Anticipatory Calibration |
| Infinite Refinement | 2814 | Recursive Refinement |
| Lazy Prompting | 2848 | Five Phases |
| Hallucination Acceptance | 2880 | - |
| Rubber Stamping | 2910 | Checkpoint mode |
| Complexity Creep | 2940 | Simplify mode |
| Cognitive Atrophy | 2973 | Scaffolding |
| Goal Drift | 3003 | - |
| Abstraction Addiction | 3037 | - |
| Reinvention Addiction | 3068 | Skill Creation |
| Context Rot | 3101 | Session Continuity |
| Knowledge Gatekeeping | 3132 | - |

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
        └── 21 Modes
            └── Workflow Chains

Hermeneutics (Gadamer)
    └── Fusion of Horizons
        └── Thinking Mirror foundation
```

## Cross-Reference Patterns

### When referencing concepts forward:
```latex
(see Section~\ref{sec:anticipatory-calibration})
(discussed further in Part~VI)
```

### When referencing concepts backward:
```latex
As established in the Thinking Mirror hypothesis (Chapter~2)...
Building on the scaffolding principles from Part~VI...
```

### Key labels in document:
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

## Editing Guidelines

### Adding new concepts:
1. Check if concept relates to existing foundations
2. Reference the foundational concept on first use
3. Add to this cross-reference map
4. Ensure index entry created

### Modifying existing concepts:
1. Check dependency graph for downstream references
2. Verify changes don't contradict dependent content
3. Update anti-pattern sections if behavior implications change

### Adding new anti-patterns:
1. Follow naming convention (Title Case)
2. Define in Part VIII after existing anti-patterns
3. Link to the DCF concept it inverts
4. Add to DCF_CONCEPTS memory
