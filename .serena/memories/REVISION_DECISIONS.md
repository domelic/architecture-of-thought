# Revision Decisions Log

Editorial decisions and rationale for THE_ARCHITECTURE_OF_THOUGHT. Update this log when making significant changes to maintain consistency across editing sessions.

---

## Decision Log Template

When making editorial decisions, add entries in this format:

```markdown
### [YYYY-MM-DD] Decision Title

**Context:** What prompted this decision?

**Options Considered:**
1. Option A - pros/cons
2. Option B - pros/cons

**Decision:** What was chosen and why

**Affected Sections:** Part X, Chapter Y, lines ~NNNN

**Related Decisions:** Link to any connected decisions
```

---

## Active Decisions

### 2026-01 Terminology: "Agentic Era" vs "Autonomous Era"

**Context:** Need consistent terminology for the post-2024 period of AI development.

**Decision:** Use "Agentic Era" throughout. This aligns with industry terminology (Anthropic, OpenAI) and emphasizes agency over mere automation.

**Affected Sections:** Throughout document, especially Parts VII, X, XI

---

### 2026-01 Quotebox Pattern for Updates

**Context:** Original content written in conversational era needs updates for agentic era without losing historical value.

**Decision:** Use `\begin{quotebox}` with "Agentic Era Update:" prefix. Preserves original content while clearly marking adaptations.

**Affected Sections:** Parts I-V primarily

---

### 2026-01 Anti-Pattern Count: 14

**Context:** Determining comprehensive list of failure modes.

**Decision:** 14 anti-patterns in Part VIII. If adding new ones, ensure they're genuinely distinct (not variants of existing patterns).

**Current List:**
1. Socratic Theater
2. Mirror Narcissism
3. Reactive Evaluation
4. Infinite Refinement
5. Lazy Prompting
6. Hallucination Acceptance
7. Rubber Stamping
8. Complexity Creep
9. Cognitive Atrophy
10. Goal Drift
11. Abstraction Addiction
12. Reinvention Addiction
13. Context Rot
14. Knowledge Gatekeeping

---

### 2026-01 Mode Count: 21

**Context:** DCF skill defines operational modes for practitioners.

**Decision:** 21 modes across 5 categories. New modes require clear differentiation from existing ones.

**Categories:**
- Evaluation & Review (4): review, checkpoint, self-review, refine
- Problem Solving (4): debug, unstick, simplify, diagnose
- Design & Analysis (6): architect, tradeoffs, assumptions, premortem, challenge, decide
- Learning & Exploration (3): learn, onboard, explain
- Session Management (4): compact, context-health, retro, skill

---

## Pending Decisions

Use this section for decisions that need resolution:

```markdown
### [PENDING] Decision Title

**Context:** What's the issue?

**Options:**
1. ...
2. ...

**Blockers:** What's preventing resolution?

**Target Resolution:** When should this be decided?
```

---

## Style Precedents

Record style choices that set precedent for similar future situations:

| Situation | Precedent | Example |
|-----------|-----------|---------|
| New technical term | Bold + index on first use | `\textbf{term}\index{Term}` |
| Era-specific updates | Quotebox pattern | `\begin{quotebox}\textbf{Agentic Era Update:}...` |
| Framework comparisons | Table format | Part X comparison matrix |
| Workflow chains | Table with arrows | `onboard → architect → premortem` |
| Code examples | lstlisting with style | `\begin{lstlisting}[style=prompt]` |

---

## Rejected Alternatives

Document rejected approaches to avoid revisiting:

### Rejected: Inline updates instead of quoteboxes

**Why rejected:** Mixing conversational-era and agentic-era content inline makes it hard to understand the evolution of ideas. Quoteboxes preserve the pedagogical progression.

---

### Rejected: Separate "Agentic DCF" document

**Why rejected:** DCF principles are unified across eras; only application differs. Separating would create redundancy and suggest false dichotomy.

---

### Rejected: Numbered principles throughout

**Why rejected:** Early parts use "DCF Principle #N" format, but later parts describe concepts without explicit numbering. Forcing consistent numbering would require artificial enumeration. Instead, key principles are clearly labeled where they appear.

---

## Version Notes

Track major revision milestones:

| Version | Date | Major Changes |
|---------|------|---------------|
| 1.0 | 2026-01 | Initial complete draft |
| - | - | - |

---

## Review Checklist

Before considering a revision complete:

- [ ] Terminology consistent with STYLE_GUIDE memory
- [ ] New concepts added to CROSS_REFERENCES memory
- [ ] New citations added to BIBLIOGRAPHY_SOURCES memory
- [ ] Index entries for new terms
- [ ] Cross-references validate (`\ref{}` targets exist)
- [ ] Related anti-patterns or modes updated if needed
- [ ] Decision logged in this file if precedent-setting
