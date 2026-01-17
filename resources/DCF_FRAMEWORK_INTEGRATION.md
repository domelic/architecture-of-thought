# DCF Framework Integration Guide

How to combine DCF with other AI agent methodologies.

---

## The Stack Model

DCF operates at the **MICRO level**—how you think during interactions. It complements frameworks at other levels:

```
MACRO:  Project orchestration    → Ralph, Plan Mode
MESO:   Phase strategy           → Research-Plan-Implement, SPARC
MICRO:  Cognitive engagement     → DCF ← You are here
ATOMIC: Prompt optimization      → Chain-of-Thought, Few-Shot
```

**Key insight:** DCF is the cognitive operating system that runs on top of whatever framework you choose.

---

## DCF + Plan Mode (Research-Plan-Implement)

### The Pattern

Plan Mode structures work into phases. DCF tells you how to think within each phase.

```
┌─────────────────────────────────────────────────────┐
│                    RESEARCH PHASE                   │
├─────────────────────────────────────────────────────┤
│                                                     │
│  Agent explores codebase, gathers context           │
│                                                     │
│  DCF Application:                                   │
│  • "What did you find that surprised you?"          │
│  • "What's still unclear after research?"           │
│  • "What assumptions are you making about the       │
│     codebase based on what you found?"              │
│                                                     │
└─────────────────────────────────────────────────────┘
                         │
                         ▼
┌─────────────────────────────────────────────────────┐
│                     PLAN PHASE                      │
├─────────────────────────────────────────────────────┤
│                                                     │
│  Agent proposes implementation approach             │
│                                                     │
│  DCF Application (HIGH ENGAGEMENT):                 │
│  • "What alternatives did you consider?"            │
│  • "What's the riskiest assumption in this plan?"   │
│  • "What would make us regret this approach?"       │
│  • "What's the simplest version that could work?"   │
│                                                     │
│  This is the PRIMARY checkpoint for Socratic        │
│  dialogue. Don't rush past it.                      │
│                                                     │
└─────────────────────────────────────────────────────┘
                         │
                         ▼
┌─────────────────────────────────────────────────────┐
│                   IMPLEMENT PHASE                   │
├─────────────────────────────────────────────────────┤
│                                                     │
│  Agent executes the approved plan                   │
│                                                     │
│  DCF Application (LOWER, targeted):                 │
│  • Trust execution, verify outputs                  │
│  • At sub-checkpoints: "Does this match intent?"    │
│  • Post-implementation: "What deviated from plan?"  │
│                                                     │
└─────────────────────────────────────────────────────┘
```

### Integration Commands

```
# Enter Plan Mode with DCF mindset
"Enter plan mode. When you present your plan, I'll be asking:
what alternatives you considered, the riskiest assumptions,
and what would make this approach fail."

# During plan review
"Before I approve: walk me through the trade-offs.
What does this optimize for? What does it sacrifice?"

# Exiting plan mode
"The plan looks solid after our discussion.
Key decision was [X] because [Y]. Proceed."
```

---

## DCF + Ralph Loop

### The Philosophical Tension

| Ralph Philosophy | DCF Philosophy |
|------------------|----------------|
| Naive persistence | Informed guidance |
| Let model self-correct | Human dialectic improves outcomes |
| Automation over guidance | Quality over speed |
| Quantity of attempts | Quality of direction |

### The Resolution

**Ralph handles execution; DCF handles judgment.**

```
┌───────────────────────────────────────────────────┐
│              DCF: DEFINE THE TASK                 │
│                                                   │
│  Use Socratic dialogue to clarify:                │
│  • What exactly should be accomplished?           │
│  • What are the success criteria?                 │
│  • What are the boundaries?                       │
│                                                   │
└───────────────────────┬───────────────────────────┘
                        │
                        ▼
┌───────────────────────────────────────────────────┐
│           RALPH: AUTONOMOUS EXECUTION             │
│                                                   │
│  Agent iterates until completion                  │
│  (Trust the loop)                                 │
│                                                   │
└───────────────────────┬───────────────────────────┘
                        │
                        ▼
┌───────────────────────────────────────────────────┐
│              DCF: EVALUATE OUTPUT                 │
│                                                   │
│  Apply Socratic review:                           │
│  • Did this converge on the RIGHT solution?       │
│  • What assumptions did the loop make?            │
│  • Is this what we actually needed?               │
│                                                   │
└───────────────────────┬───────────────────────────┘
                        │
              ┌─────────┴─────────┐
              │                   │
           Accept              Refine
              │                   │
              ▼                   ▼
           Done           Back to DCF/Ralph
```

### When to Use Which

| Situation | Approach |
|-----------|----------|
| Well-defined, reversible task | Ralph (let it iterate) |
| Ambiguous requirements | DCF first, then Ralph |
| Architectural decision | DCF throughout |
| Bug with clear repro | Ralph |
| Bug with unclear cause | DCF to diagnose, then Ralph to fix |

### Integration Pattern

```
# Start with DCF to define
"I need to [goal]. Before we start, help me clarify:
- What exactly should the end state be?
- What are the boundaries of this task?
- How will we know it's done correctly?"

# Hand off to Ralph
"Now that we've defined it clearly, iterate until [success criteria].
Don't stop until tests pass / output matches spec / etc."

# Return to DCF for evaluation
"Ralph completed the task. Before I accept:
- Walk me through what it actually did
- What assumptions did it make during iteration?
- Is this what we intended?"
```

---

## DCF + BMAD Method

### BMAD Overview

BMAD (BMad Agentic Development) uses specialized personas:
- **Analyst** — Requirements gathering
- **Architect** — System design
- **Developer** — Implementation
- **QA** — Testing and validation

### DCF Integration by Persona

```
┌─────────────────────────────────────────────────────┐
│                     ANALYST                         │
├─────────────────────────────────────────────────────┤
│                                                     │
│  DCF Focus: Clarification & Synthesis               │
│                                                     │
│  • "What problem are we actually solving?"          │
│  • "What assumptions are in these requirements?"    │
│  • "What's ambiguous that we need to clarify?"      │
│  • "Who would disagree with this scope?"            │
│                                                     │
└─────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────┐
│                    ARCHITECT                        │
├─────────────────────────────────────────────────────┤
│                                                     │
│  DCF Focus: Challenge & Alternatives                │
│                                                     │
│  • "What are the alternative architectures?"        │
│  • "What's the strongest argument against this?"    │
│  • "Where could this design fail under load?"       │
│  • "What would we regret in 2 years?"               │
│                                                     │
└─────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────┐
│                    DEVELOPER                        │
├─────────────────────────────────────────────────────┤
│                                                     │
│  DCF Focus: Implementation Review                   │
│                                                     │
│  • "What edge cases does this not handle?"          │
│  • "Where could this fail silently?"                │
│  • "Is there a simpler way?"                        │
│  • "What assumptions are in the code?"              │
│                                                     │
└─────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────┐
│                       QA                            │
├─────────────────────────────────────────────────────┤
│                                                     │
│  DCF Focus: Verification & Completeness             │
│                                                     │
│  • "What scenarios aren't covered by tests?"        │
│  • "What would convince me this works?"             │
│  • "How would we know if this broke in prod?"       │
│  • "What's the riskiest untested path?"             │
│                                                     │
└─────────────────────────────────────────────────────┘
```

---

## DCF + 12-Factor Agents

### 12-Factor Overview

12-Factor Agents focuses on production reliability:
1. Natural language to structured output
2. Own your prompts
3. Structured outputs
4. Tools as structured inputs/outputs
5. Unify execution state
...etc.

### DCF Complement

12-Factor tells you HOW TO BUILD reliable agents.
DCF tells you HOW TO THINK with those agents.

| 12-Factor Principle | DCF Application |
|---------------------|-----------------|
| "Own your prompts" | DCF helps you craft better prompts through Socratic refinement |
| "Structured outputs" | Use DCF to evaluate if the structure captures what you need |
| "Human in the loop" | DCF defines WHAT that human should be thinking |
| "Compact prompts" | DCF recursive refinement produces clearer, tighter prompts |

---

## DCF + ACE-FCA

### ACE-FCA Overview

Autonomous Context Engineering with Feedback-Controlled Adaptation:
- Self-improving context management
- Automatic prompt refinement based on outcomes

### Integration

ACE automates context curation. DCF ensures human judgment remains sharp.

```
ACE: "I've automatically adjusted the context based on previous outcomes."

DCF: "Before we proceed with this new context:
      - What changed and why?
      - What assumptions drove the adjustment?
      - Could this optimization be heading the wrong direction?"
```

**Risk:** ACE's automation can lead to rubber-stamping.
**Solution:** Periodic DCF review of ACE's adaptations.

---

## DCF + Custom Workflows

### Building Your Own Integration

1. **Identify checkpoint moments** in your workflow
2. **Map DCF questions** to each checkpoint type
3. **Calibrate engagement level** by task type
4. **Create prompt templates** for common situations
5. **Review and iterate** the integration itself

### Template

```markdown
# Workflow: [Name]

## Checkpoint 1: [Description]
DCF Engagement Level: [High/Medium/Low]
Standard Questions:
- [Question 1]
- [Question 2]

## Checkpoint 2: [Description]
...

## Post-Workflow Review
- Did this produce the right outcome?
- Where did DCF add value?
- Where was it overhead?
```

---

## Quick Reference: Framework Pairings

| Framework | DCF Role | Key Integration Point |
|-----------|----------|----------------------|
| **Plan Mode** | Think during plan review | Before approving plans |
| **Ralph Loop** | Define task, evaluate output | Before and after loop |
| **BMAD** | Per-persona questioning | Each persona transition |
| **12-Factor** | Human-in-the-loop thinking | Where humans intervene |
| **ACE-FCA** | Audit automatic adaptations | Periodic review |
| **Chain-of-Thought** | Evaluate reasoning chains | After CoT output |

---

## Anti-Pattern: Framework Overload

**Warning:** Don't combine everything at once.

```
BAD:  Plan Mode + Ralph + BMAD + DCF + ACE at every step
      → Paralysis, overhead, frustration

GOOD: Pick one MACRO framework (e.g., Plan Mode)
      Apply DCF at key checkpoints
      Add others only when clearly needed
```

**Start simple. Add complexity only when the simpler approach fails.**

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
