# DCF Essentials
## The Dialectical Cognition Framework — A Practitioner's Guide

**Companion to "The Architecture of Thought"**

*Damir Omelic & Claude (Anthropic) | January 2026*

---

## What is DCF?

The Dialectical Cognition Framework is a methodology for **thinking with AI**, not just using it. While most approaches focus on what to ask AI, DCF focuses on **how to think** during the collaboration.

**The core insight:** LLMs are not answer machines—they're *thinking mirrors*. The quality of what you get back depends on the quality of thought you bring to the interaction.

---

## The Five Core Principles

### 1. The Thinking Mirror

> An LLM reflects and transforms your thought. Vague input → vague output. Structured inquiry → increasing clarity.

When you articulate an idea to an AI, you're externalizing cognition. The response reveals:
- Structures you hadn't noticed
- Implications you hadn't considered
- Contradictions you hadn't seen

**Practice:** Before prompting, ask yourself: "What am I actually trying to understand?"

---

### 2. Collaboration Over Extraction

| Extraction Mindset | DCF Mindset |
|-------------------|-------------|
| "Give me the answer" | "Help me think through this" |
| One-shot prompts | Recursive dialogue |
| Measure: correctness | Measure: clarity gained |
| AI as tool | AI as thinking partner |

**Practice:** Replace "Write me X" with "Help me understand what X should accomplish, then let's build it together."

---

### 3. Socratic Dialogue

The 2,400-year-old Socratic method maps directly to AI collaboration:

| Socratic Operation | DCF Application |
|-------------------|-----------------|
| **Elenchus** (cross-examination) | "What assumptions are in that answer?" |
| **Maieutics** (drawing out knowledge) | "Help me articulate what I'm trying to express" |
| **Dialectic** (reasoned argument) | "Present the strongest counterargument" |
| **Aporia** (productive confusion) | "What am I not seeing about this?" |

**Practice:** After every AI response, ask at least one challenging question before accepting it.

---

### 4. Recursive Refinement

```
Articulate → Generate → Evaluate → Refine
     ↑                              |
     |______________________________|
```

Each cycle:
1. **Articulate**: Express your current understanding
2. **Generate**: Let AI produce new content
3. **Evaluate**: Assess quality, identify gaps
4. **Refine**: Improve based on evaluation

**Stop when:**
- Output meets your quality threshold
- Changes become cosmetic, not substantive
- Purpose is fulfilled

**Watch for:**
- Circular refinement (oscillating without progress)
- Perfectionism trap (endless tweaking)
- Goal drift (losing original purpose)

---

### 5. Scaffolding, Not Replacement

From Vygotsky: there are things you can do alone, things you can't do at all, and things you can do *with help*. AI should scaffold you into the third category—then fade as you internalize the capability.

**The test:** Does your AI collaboration make you more capable when the AI is gone?

If you're just extracting answers without growth, you're not being scaffolded—you're being carried.

---

## The Five Phases of Socratic Prompting

### Phase 1: Raw Inquiry
Begin with the messy question. Don't optimize—think aloud.

> "I'm trying to understand why our API keeps timing out under load. What might I be missing?"

### Phase 2: Reflective Clarification
Challenge the response. Don't accept—interrogate.

> "What assumptions underlie that answer?"
> "How would this change if we had 10x the traffic?"
> "Reframe this from a security perspective."

### Phase 3: Personal Synthesis
Anchor abstract responses in your specific context.

> "That reminds me of the outage last month. Can you help me connect these patterns?"

### Phase 4: Operationalization
Convert insight into structure.

> "Based on this, write me a checklist for load testing."

### Phase 5: Recursive Loop
Start again from your evolved perspective.

> "What question should I be asking next?"

---

## Agentic Era: DCF at Checkpoints

In agentic systems (Claude Code, etc.), AI executes autonomously between human checkpoints. DCF now applies at **decision points**, not every interaction.

### When the Agent Presents a Plan

```
Agent: "Here's my implementation plan: [details]. Ready to proceed?"

You (DCF): "Before I approve:
1. What alternatives did you consider?
2. What's the riskiest assumption?
3. What would make us regret this approach?"
```

### Trust vs. Engage Decision Matrix

**Trust the agent when:**
- Task is well-defined and bounded
- Failure is low-cost and reversible
- You can easily verify output

**Engage dialectically when:**
- Requirements are ambiguous
- Architectural decisions are being made
- Trade-offs reflect your values
- Output is hard to verify or undo

### Agent Selection

| Agent | Use For | DCF Engagement |
|-------|---------|----------------|
| Explore | Understanding code | Review findings for completeness |
| Plan | Architecture design | Full Socratic review |
| code-reviewer | Quality analysis | Evaluate flagged issues |
| Background | Long explorations | Review output later |

### Model Selection

| Model | When to Use | DCF Implication |
|-------|-------------|-----------------|
| Haiku | Quick searches, exploration | Lower stakes, more review |
| Sonnet | Most development work | Balanced engagement |
| Opus | Architecture, complex judgment | High stakes, deep engagement |

**Principle:** Match model capability to decision stakes.

### The /dcf Skill

The `/dcf` skill is **principle-based**, not scripted. Each mode has an outcome, not a script:

```
/dcf [mode] [context]

# Core modes
/dcf                  # General Socratic dialogue
/dcf review           # Evaluate before committing
/dcf checkpoint       # Agentic decision point
/dcf refine           # Iterate deliberately on output
/dcf self-review      # Have Claude review its own work
/dcf debug            # Question the mental model
/dcf learn <topic>    # Build understanding through dialogue
/dcf decide           # Reach closure on a decision
/dcf unstick          # Break through blocks
/dcf premortem        # Anticipate failure before starting
/dcf challenge        # Steelman the opposition
/dcf simplify         # Find the essential
/dcf retro            # Capture learning

# Design & analysis
/dcf architect        # Divergent → convergent design
/dcf tradeoffs        # Structured tradeoff analysis
/dcf assumptions      # Deep assumption excavation

# Learning & session
/dcf onboard          # Explore unfamiliar territory
/dcf explain          # Feynman technique
/dcf compact          # Prepare for compaction
/dcf context-health   # Assess context rot
/dcf diagnose         # Identify anti-pattern
/dcf skill            # Capture as reusable skill
```

**Workflow Automation:** Use `dcf-workflow` to chain modes with checkpoints:

```bash
dcf-workflow new-project    # onboard → architect → premortem
dcf-workflow debug          # debug → assumptions → simplify
dcf-workflow decision       # tradeoffs → challenge → decide
```

**Principle:** Claude adapts Socratic questioning to the actual situation—no rigid scripts.

---

## Quick Reference: Socratic Prompts

### For Clarification
- "What assumptions are built into that?"
- "How would this change in [different context]?"
- "What's the simplest version of this?"

### For Challenge
- "What's the strongest argument against this?"
- "What could go wrong?"
- "What am I not seeing?"

### For Synthesis
- "How does this connect to [related concept]?"
- "What pattern emerges from these examples?"
- "Summarize the key insight in one sentence."

### For Operationalization
- "Turn this into a checklist/template/process."
- "What's the first concrete step?"
- "How would I verify this worked?"

### For Metacognition
- "What question should I be asking?"
- "What would I miss if I just accepted this?"
- "Where is my thinking still fuzzy?"
- "Before I read this—what do I expect the AI produced?"

---

## Common Failure Modes

| Failure Mode | Symptom | Fix |
|-------------|---------|-----|
| **Socratic Theater** | Going through motions without genuine inquiry | Ask questions you don't know the answer to |
| **Mirror Narcissism** | Using AI to confirm existing beliefs | Explicitly request counterarguments |
| **Infinite Refinement** | Never reaching "good enough" | Set convergence criteria upfront |
| **Lazy Prompting** | Vague prompts, frustrated by poor outputs | Structure prompts with context and constraints |
| **Hallucination Acceptance** | Trusting without verification | Treat AI output as draft, not truth |
| **Cognitive Atrophy** | Declining ability to think without AI | Practice unassisted reasoning regularly |

---

## The Learning Stance

Most people use AI to avoid learning. They want the answer, not understanding.

**Invert this:**

| Instead of... | Try... |
|--------------|--------|
| "Write a function that does X" | "What approaches could I take for X, and what are the tradeoffs?" |
| "Fix this bug" | "Help me understand why this is failing" |
| "Give me the answer" | "Ask me questions that will help me discover the answer" |

**The paradox:** By seeking understanding rather than answers, you become capable of generating better answers yourself.

### AI as Learning Accelerator

A counterintuitive finding: AI doesn't just help with tasks you know—it *dramatically accelerates learning* tasks you don't yet understand.

**The pattern:**
1. Start with the problem, not prerequisite knowledge
2. Use AI to scaffold understanding as you need it
3. Learn concepts in context of real application
4. Build working solutions while acquiring knowledge

**The shift in value:**
- Syntax/API details → Lower value (AI handles these)
- Patterns/concepts → Higher value (guides AI direction)
- Problem decomposition → Critical (enables effective AI use)

**Key insight:** AI is the most powerful learning tool ever created—but only for those who approach it as learners, not extractors.

---

## Anticipatory Calibration

Before prompting, form a hypothesis: *What do I expect the AI to produce?*

Then compare:
- Did it match your prediction?
- What surprised you?
- What does the gap reveal?

**Why this matters:**
- Comparing against expectation is more rigorous than "does this look good?"
- Surprise is your learning signal—it reveals miscalibration
- Over time, you build an accurate mental model of AI capabilities

**The practice:** Predict → Prompt → Compare → Update your mental model.

This is scientific thinking applied to prompting.

---

## DCF + Common Workflows

### With Plan Mode (Research-Plan-Implement)

```
[Research phase]
→ DCF: "What did you find that surprised you?"
→ DCF: "What's still unclear after research?"

[Plan phase]
→ DCF: "What's the riskiest part of this plan?"
→ DCF: "What would a simpler approach look like?"

[Implement phase]
→ Trust automation, review outputs
→ DCF at checkpoints: "Does this match the plan's intent?"
```

### With Ralph Loop (Autonomous Iteration)

```
[Define task with DCF]
→ Clear objectives, constraints, success criteria

[Let Ralph execute]
→ Trust autonomous iteration

[Review at checkpoint]
→ DCF: "Did the iterations converge on the right solution?"
→ DCF: "What assumptions did the loop make?"
```

**Key insight:** Ralph handles execution; DCF handles judgment.

---

## Memory as Cognitive Infrastructure

### CLAUDE.md (Project Memory)

Your externalized project cognition. Include:
- Project context and architecture
- Conventions and patterns
- **DCF preferences**: "Always present plans before implementing. Challenge my assumptions. Show trade-offs explicitly."

### Conversation Context

The active working memory. When it grows long:
- Summarize key decisions made
- Note open questions
- Capture insights for CLAUDE.md

### Personal Knowledge System

Accumulate what works:
- Prompt patterns that succeeded
- Insights from productive dialogues
- Approaches for specific problem types

### Creating Skills from Patterns

When you discover a prompting approach that works well, **codify it as a skill**.

**Signs a pattern is skill-worthy:**
- You've used it successfully multiple times
- It applies to a category of tasks, not just one instance
- The approach is non-obvious enough to be worth preserving
- You find yourself re-explaining or re-discovering it

**The process:**
1. Notice you're repeating a successful pattern
2. Extract the transferable essence
3. Create `.claude/skills/skillname.md`
4. Test on new instances, refine

**Example:** The `/dcf` skill itself is pattern capture — Socratic questioning applied to AI collaboration, codified into reusable infrastructure.

Skills are crystallized expertise. Your skill library compounds your effectiveness over time.

---

## Session Continuity: Preparing for Compaction

Long sessions hit context limits. When Claude Code compacts, it generates a summary—but summary quality depends on what's available to summarize.

### The Pre-Compaction Checklist

Before a long session ends or compacts, capture:

```
## Session Findings

### Completed Work
- [ ] What was accomplished
- [ ] Which files were modified and why
- [ ] Decisions made with rationale

### Open Questions
- [ ] Unresolved issues
- [ ] Clarifications still needed

### Recommended Next Steps
- [ ] Prioritized remaining work
- [ ] Dependencies between tasks

### Context That Matters
- [ ] Assumptions being made
- [ ] Non-obvious constraints discovered
```

### When to Capture

| Trigger | Action |
|---------|--------|
| Natural break (lunch, end of day) | Quick capture |
| Completed logical chunk | Document what was done |
| Session feels "heavy" | Full capture before continuing |
| Before running `/compact` | Comprehensive documentation |

### Gitignore Strategy

Session documents are working artifacts:

```
# .gitignore
SESSION_NOTES.md
SESSION_FINDINGS.md
```

Content either gets incorporated into permanent artifacts (CLAUDE.md, docs) or becomes obsolete.

### DCF Connection

This is **anticipatory calibration** applied to session management—forming an explicit model of "what matters" before compaction forces reliance on automated summarization. The act of writing clarifies your understanding: the thinking mirror at work.

---

## The Ultimate Test

After every significant AI collaboration, ask:

> **Did I understand more deeply, think more clearly, or become capable of harder challenges?**

If yes—the methodology is working.

If you merely completed a task without growth—the potential remains unrealized.

---

## One-Page Cheat Sheet

```
┌─────────────────────────────────────────────────────────────┐
│                    DCF ESSENTIALS                           │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  CORE LOOP:  Articulate → Generate → Evaluate → Refine     │
│                    ↑_______________________________↓        │
│                                                             │
│  AT EVERY RESPONSE, ASK ONE OF:                            │
│  • "What assumptions are in that?"                         │
│  • "What's the counterargument?"                           │
│  • "What am I not seeing?"                                 │
│                                                             │
│  BEFORE APPROVING A PLAN:                                  │
│  • What alternatives were considered?                      │
│  • What's the riskiest assumption?                         │
│  • What would make this fail?                              │
│                                                             │
│  STOP ITERATING WHEN:                                      │
│  • Quality threshold met                                   │
│  • Changes become cosmetic                                 │
│  • Purpose fulfilled                                       │
│                                                             │
│  THE TEST:                                                 │
│  Am I more capable now than before this interaction?       │
│                                                             │
│  REMEMBER:                                                 │
│  The AI is a thinking mirror, not an oracle.              │
│  Quality in → Quality out.                                 │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

## Further Reading

- **Full treatise**: "The Architecture of Thought: The Dialectical Cognition Framework"
- **Philosophical foundations**: Clark & Chalmers, "The Extended Mind" (1998)
- **Scaffolding theory**: Vygotsky, "Mind in Society" (1978)
- **Distributed cognition**: Hutchins, "Cognition in the Wild" (1995)
- **PKM methodology**: Ahrens, "How to Take Smart Notes" (2017)

---

*The architecture of thought is yours to build.*
