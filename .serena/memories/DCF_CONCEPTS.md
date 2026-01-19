# DCF Concepts Quick Reference

Quick reference for Dialectical Cognition Framework terminology, modes, and relationships.

## Core Metaphor

**Thinking Mirror** - LLMs reflect and transform thought. Quality in → Quality out. Not answer machines but collaborative partners in cognition.

## The 21 DCF Modes

### Evaluation & Review (4 modes)

| Mode | Purpose | Key Question |
|------|---------|--------------|
| `review` | Evaluate before committing | "What would make you regret this?" |
| `checkpoint` | Agentic decision point | "What assumptions did the agent make?" |
| `self-review` | Claude reviews own output | "What issues do you see in what you produced?" |
| `refine` | Iterate on output | "Are we refining toward the right goal?" |

### Problem Solving (4 modes)

| Mode | Purpose | Key Question |
|------|---------|--------------|
| `debug` | Question the mental model | "Where does expectation diverge from reality?" |
| `unstick` | Break through blocks | "What's the smallest piece you can progress on?" |
| `simplify` | Find the essential | "What's the 20% that delivers 80%?" |
| `diagnose` | Identify anti-pattern | "Which failure mode matches these symptoms?" |

### Design & Analysis (6 modes)

| Mode | Purpose | Key Question |
|------|---------|--------------|
| `architect` | Divergent → convergent design | "What's the minimal change after understanding the landscape?" |
| `tradeoffs` | Structured tradeoff analysis | "What do you gain/give up with each option?" |
| `assumptions` | Deep assumption excavation | "Which assumption, if wrong, invalidates everything?" |
| `premortem` | Anticipate failure | "Imagine it failed—why?" |
| `challenge` | Steelman opposition | "What's the strongest counterargument?" |
| `decide` | Reach closure | "If you had to decide now..." |

### Learning & Exploration (3 modes)

| Mode | Purpose | Key Question |
|------|---------|--------------|
| `learn` | Build understanding | "What do you already know about this?" |
| `onboard` | Explore unfamiliar territory | "Where can you make a small, safe change?" |
| `explain` | Feynman technique | "Where did you hesitate or use hand-wavy language?" |

### Session Management (4 modes)
| Mode | Purpose | Key Question |
|------|---------|--------------|
| `compact` | Prepare for compaction | "What context matters for the next session?" |
| `context-health` | Assess context rot | "How severe is the degradation (1-5)?" |
| `retro` | Capture learning | "What's understood now that wasn't before?" |
| `skill` | Capture as reusable skill | "What's the transferable essence?" |

## The Socratic Toolkit (7 operations)

| Operation | Purpose | Example Prompt |
|-----------|---------|----------------|
| **Elenchus** | Expose assumptions | "What assumptions are in that answer?" |
| **Maieutics** | Draw out knowledge | "What do you already understand?" |
| **Dialectic** | Test via opposition | "What's the strongest argument against?" |
| **Evidence** | Probe reasons | "How do you know? What evidence?" |
| **Consequences** | Trace implications | "What are the consequences if wrong?" |
| **Aporia** | Productive confusion | "What question are you not asking?" |
| **Meta-question** | Find next inquiry | "What question should you be asking now?" |

## Core Loop

```text
Articulate → Generate → Evaluate → Refine
     ↑______________________________|
```

**Stop when:** Quality threshold met, changes cosmetic, purpose fulfilled.

## Six Essential Principles

1. **Thinking Mirror** - Reflects and transforms thought
2. **Collaboration Over Extraction** - "Help me think" not "give me answer"
3. **Socratic Dialogue** - Challenge every response
4. **Recursive Refinement** - Iterate with purpose
5. **Scaffolding, Not Replacement** - Build capability
6. **Meta-Question** - Find the right question

## Five Phases of Socratic Prompting

1. **Raw Inquiry** - Messy question, think aloud
2. **Reflective Clarification** - Challenge the response
3. **Personal Synthesis** - Anchor in specific context
4. **Operationalization** - Convert to structure
5. **Recursive Loop** - Start again evolved

## 14 Anti-Patterns

| Category | Anti-Patterns |
|----------|--------------|
| Unproductive | Socratic Theater, Rubber Stamping, Lazy Prompting |
| No Progress | Infinite Refinement, Abstraction Addiction, Goal Drift |
| Trust Issues | Hallucination Acceptance, Mirror Narcissism |
| Quality Degrading | Context Rot, Complexity Creep, Reactive Evaluation |
| Capability Not Building | Cognitive Atrophy, Reinvention Addiction, Knowledge Gatekeeping |

## Common Workflow Chains

| Scenario | Flow |
|----------|------|
| New project | `onboard` → `architect` → `premortem` |
| Deep debug | `debug` → `assumptions` → `simplify` |
| Decision point | `tradeoffs` → `challenge` → `decide` |
| Learning arc | `learn` → `explain` → `retro` |
| Getting unstuck | `diagnose` → `unstick` → `simplify` |
| Session end | `context-health` → `compact` → `retro` |
| Code review | `review` → `assumptions` → `challenge` |
| Pre-implementation | `architect` → `tradeoffs` → `premortem` |

## Agentic Era Adaptations

**Trust vs Engage Matrix:**
- **Trust agent:** Well-defined task, low-cost failure, easy verification
- **Engage dialectically:** Ambiguous requirements, architectural decisions, value trade-offs

**Model Selection by Stakes:**
- Haiku: Quick searches, low stakes
- Sonnet: Most development work
- Opus: Architecture, complex judgment

## Key Terminology

| Term | Definition | First Defined |
|------|------------|---------------|
| Thinking Mirror | LLM as cognitive collaborator | Part I |
| ZPD (Zone of Proximal Development) | Tasks achievable with help | Part VI |
| Scaffolding | Temporary support that fades | Part VI |
| Anticipatory Calibration | Predict before prompting | Part IV |
| Context Rot | Degradation of session context | Part VIII |
| CLAUDE.md | Project-level cognitive context | Part V |
| Dialectical Thinking | Holding contradictions productively | Part VI |
| Extended Mind | Cognition beyond brain boundaries | Part VI |
| Distributed Cognition | System-level cognitive analysis | Part VI |

## Cross-References for Editing

When adding content about:
- **Modes** → Part VIII (The DCF Skill) defines authoritative mode descriptions
- **Anti-patterns** → Part VIII (Failure Modes) is the definitive source
- **Theoretical foundations** → Part VI (Theoretical Foundations)
- **Agentic concerns** → Part VII (The Agentic Era)
- **Practical application** → Parts III-V cover prompting practice
