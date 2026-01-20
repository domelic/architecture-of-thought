# DCF Essentials

**The Dialectical Cognition Framework — A Practitioner's Guide**

> **DCF positions LLMs as *thinking mirrors*: collaborative partners in the architecture of thought itself.**

**What is DCF?** A methodology for *thinking with AI*, not just using it. While most approaches focus on what to ask, DCF focuses on **how to think** during the collaboration. The quality of what you get back depends on the quality of thought you bring.

**Who is this for?** Software engineers, technical writers, and knowledge workers who want to move beyond surface-level prompting with AI coding assistants.

**Reading time:** ~5 minutes for essentials, ~15 minutes for everything.

<details>
<summary><strong>What's covered</strong></summary>

- **8 Socratic operations** — questioning toolkit mapped from 2,400-year-old method
- **24 modes** across 5 categories for `/dcf` skill
- **5 phases** of Socratic prompting with operation mappings
- **6 anti-patterns** (of 14 total) with symptoms and fixes
- **Trust vs Engage matrix** for agentic systems
- **Workflow chains** for common scenarios
- **Research-validated** checkpoint protocol ("Could you be wrong?")

</details>

---

## Table of Contents

| Practice | Theory & Reference |
|----------|-------------------|
| [Quick Start](#quick-start) — First actions | [The Six Principles](#the-six-principles) — Core philosophy |
| [The Socratic Toolkit](#the-socratic-toolkit) — 8 operations | [Going Deeper](#going-deeper) — Advanced topics |
| [How to Use It](#how-to-use-it) — Phases, modes, workflows | [Further Reading](#further-reading) — Sources |
| [Quick Reference](#quick-reference-prompts) — Prompts by situation | |
| [What to Avoid](#what-to-avoid) — 6 failure modes | |
| [Agentic Context](#agentic-context) — When to trust vs engage | |

**Start with [Quick Start](#quick-start), then explore [The Socratic Toolkit](#the-socratic-toolkit).**

---

## Quick Start

**1. Install the skills** (requires [Claude Code](https://docs.anthropic.com/en/docs/claude-code)):

```bash
curl -fsSL https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/scripts/install-dcf.sh | bash
```

**2. Try your first Socratic dialogue:**

```text
/dcf                  # General Socratic questioning
/cybw                 # Quick "Could you be wrong?" challenge
```

**3. After any AI response, ask one of these:**

- "Could you be wrong?"
- "What assumptions are in that?"
- "What's the strongest argument against this?"

**4. Before approving any plan:**

- What alternatives were considered?
- What's the riskiest assumption?
- What would make this fail?

That's the core of DCF. Everything else is refinement.

**Want to see it in action?** Read the [Example Transcripts](resources/DCF_EXAMPLE_TRANSCRIPTS.md) — 4 annotated real-world conversations.

**Have questions?** See the [FAQ](resources/DCF_FAQ.md) for common questions and misconceptions.

---

## The Socratic Toolkit

The 2,400-year-old Socratic method maps directly to AI collaboration. These 8 operations are your questioning toolkit:

| Operation | What It Does | Example Prompt |
|-----------|--------------|----------------|
| **Elenchus** | Expose hidden assumptions | "What assumptions are in that answer?" |
| **Maieutics** | Draw out latent knowledge | "Help me articulate what I'm trying to express" |
| **Dialectic** | Test via opposition | "Present the strongest counterargument" |
| **Evidence** | Probe the reasoning | "How do you know? What evidence supports this?" |
| **Consequences** | Trace implications | "What are the consequences? What if you're wrong?" |
| **Aporia** | Productive confusion | "What am I not seeing about this?" |
| **Meta-question** | Find the right inquiry | "What question should I be asking?" |
| **Via Negativa** | Define by exclusion | "What should we explicitly NOT do here?" |

**Practice:** After every AI response, use at least one operation before accepting it.

---

## How to Use It

### The Five Phases

A typical Socratic prompting session flows through five phases. Each phase uses different operations from the toolkit:

| Phase | What to Do | Operations Used |
|-------|------------|-----------------|
| **1. Raw Inquiry** | Start messy. Think aloud. | Maieutics |
| **2. Reflective Clarification** | Challenge the response. Don't accept—interrogate. | Elenchus, Evidence, Consequences |
| **3. Personal Synthesis** | Anchor in your specific context. | Maieutics, Aporia |
| **4. Operationalization** | Convert insight to structure. | *(action phase)* |
| **5. Recursive Loop** | Start again from your evolved perspective. | Meta-question |

**Example flow:**

```text
Phase 1: "I'm trying to understand why our API keeps timing out under load."
Phase 2: "What assumptions underlie that answer? How would this change at 10x traffic?"
Phase 3: "That reminds me of last month's outage. Can you help me connect these?"
Phase 4: "Based on this, write me a checklist for load testing."
Phase 5: "What question should I be asking next?"
```

### The /dcf Modes

24 modes across 5 categories. Each mode applies Socratic questioning to a specific situation:

```text
/dcf [mode] [context]

/dcf                  # General Socratic dialogue

# Evaluation & Review
/dcf review           # Evaluate before committing
/dcf checkpoint       # Agentic decision point
/dcf self-review      # Have Claude review its own work
/dcf refine           # Iterate on output

# Problem Solving
/dcf debug            # Question the mental model
/dcf unstick          # Break through blocks
/dcf simplify         # Find the essential
/dcf diagnose         # Identify anti-pattern
/dcf decompose        # Systematic task breakdown
/dcf verify           # Multi-path reasoning synthesis

# Design & Analysis
/dcf architect        # Divergent → convergent design
/dcf tradeoffs        # Structured tradeoff analysis
/dcf assumptions      # Deep assumption excavation
/dcf premortem        # Anticipate failure
/dcf challenge        # Steelman opposition
/dcf decide           # Reach closure
/dcf constrain        # Define boundaries before generation

# Learning & Exploration
/dcf learn <topic>    # Build understanding
/dcf onboard          # Explore unfamiliar territory
/dcf explain          # Feynman technique

# Session Management
/dcf compact          # Prepare for compaction
/dcf context-health   # Assess context rot
/dcf retro            # Capture learning
/dcf skill            # Capture as reusable skill
```

<details>
<summary><strong>Key questions by mode</strong></summary>

| Mode | Key Question |
|------|--------------|
| `review` | "What would make you regret this?" |
| `checkpoint` | "What assumptions did the agent make?" |
| `debug` | "Where does expectation diverge from reality?" |
| `unstick` | "What's the smallest piece you can progress on?" |
| `simplify` | "What's the 20% that delivers 80%?" |
| `decompose` | "What blocks what? What can parallelize?" |
| `verify` | "Do first-principles, analogical, and consequential paths agree?" |
| `architect` | "What's the minimal change after understanding the landscape?" |
| `tradeoffs` | "What do you gain/give up with each option?" |
| `assumptions` | "Which assumption, if wrong, invalidates everything?" |
| `premortem` | "Imagine it failed—why?" |
| `challenge` | "What's the strongest counterargument?" |
| `decide` | "If you had to decide now..." |
| `constrain` | "What must it NOT do? What's out of scope?" |
| `learn` | "What do you already know about this?" |
| `onboard` | "Where can you make a small, safe change?" |
| `explain` | "Where did you hesitate or use hand-wavy language?" |
| `compact` | "What context matters for the next session?" |
| `context-health` | "How severe is the degradation (1-5)?" |
| `retro` | "What's understood now that wasn't before?" |

</details>

### Workflow Chains

The install script adds `dcf-workflow` to your PATH. Chain modes for common scenarios:

```bash
dcf-workflow new-project       # onboard → architect → premortem
dcf-workflow debug             # debug → assumptions → simplify
dcf-workflow decision          # tradeoffs → challenge → decide
dcf-workflow complex-task      # constrain → decompose → architect
dcf-workflow high-stakes       # assumptions → verify → challenge → decide
dcf-workflow unfamiliar        # onboard → decompose → verify
dcf-workflow learning          # learn → explain → retro
dcf-workflow session-end       # context-health → compact → retro
dcf-workflow code-review       # review → assumptions → challenge
dcf-workflow pre-implementation # architect → tradeoffs → premortem
```

Each transition is a checkpoint—engage fully before proceeding.

---

## Quick Reference: Prompts

### For Clarification
- "What assumptions are built into that?"
- "How would this change in [different context]?"
- "What's the simplest version of this?"

### For Challenge
- **"Could you be wrong?"** ← Most powerful single question
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

See [DCF Prompt Library](resources/DCF_PROMPT_LIBRARY.md) for the complete collection.

---

## What to Avoid

These aren't just bad habits—they're **autonomy risks**. Accepting hallucinations corrupts your mental model. Outsourcing all thinking degrades your capabilities.

| Category | Anti-Pattern | Symptom | Fix |
|----------|-------------|---------|-----|
| **Unproductive** | Socratic Theater | Going through motions | Ask questions you don't know the answer to |
| | Lazy Prompting | Vague prompts, poor outputs | Structure with context and constraints |
| **No Progress** | Infinite Refinement | Never "good enough" | Set convergence criteria upfront |
| **Trust Issues** | Hallucination Acceptance | Trusting without verifying | "Could you be wrong?" + verify claims |
| | Mirror Narcissism | Using AI to confirm beliefs | Explicitly request counterarguments |
| **Capability Loss** | Cognitive Atrophy | Declining unassisted ability | Practice without AI; use learning stance |

See [Anti-Patterns Guide](resources/DCF_ANTI_PATTERNS.md) for all 14 failure modes across 5 categories.

---

## Agentic Context

In agentic systems, AI executes autonomously between checkpoints. DCF applies at **decision points**, not every interaction.

### Trust vs. Engage

| Trust the Agent | Engage Dialectically |
|-----------------|---------------------|
| Task is well-defined and bounded | Requirements are ambiguous |
| Failure is low-cost and reversible | Architectural decisions are being made |
| Output is easy to verify | Trade-offs reflect your values |
| Tests/linters catch errors | Output is hard to verify or undo |

### Steering Model

| Problem | Strengthen |
|---------|------------|
| Agent keeps making same mistakes | **Upstream** (add to CLAUDE.md) |
| Need confidence in correctness | **Downstream** (add tests) |
| Output doesn't match style | **Upstream** (document conventions) |
| Quality varies | **Downstream** (add linters) |

### Model Selection

| Model | When to Use | DCF Implication |
|-------|-------------|-----------------|
| Haiku | Quick searches, exploration | Lower stakes, more review |
| Sonnet | Most development work | Balanced engagement |
| Opus | Architecture, complex judgment | High stakes, deep engagement |

---

## The Six Principles

*The theoretical foundation. Practice first, understand later.*

### 1. The Thinking Mirror

LLMs reflect and transform your thought. Vague input → vague output. Structured inquiry → increasing clarity. The response reveals structures, implications, and contradictions you hadn't seen.

### 2. Collaboration Over Extraction

"Help me think through this" not "give me the answer." Recursive dialogue, not one-shot prompts. Measure clarity gained, not just correctness.

### 3. Socratic Dialogue

Challenge every response with the [8 operations](#the-socratic-toolkit). The 2,400-year-old method maps directly to AI collaboration.

### 4. Recursive Refinement

Articulate → Generate → Evaluate → Refine → Repeat. Stop when quality threshold met, changes become cosmetic, or purpose fulfilled. Plans are hypotheses, not contracts.

### 5. Scaffolding, Not Replacement

AI should make you more capable when it's gone. If you're extracting answers without growth, you're being carried, not scaffolded.

### 6. The Meta-Question

"What question should I be asking?" Often more powerful than any answer. Users are frequently stuck because they're asking the wrong question.

---

## Going Deeper

<details>
<summary><strong>The Learning Stance</strong></summary>

Most people use AI to avoid learning. Invert this:

| Instead of... | Try... |
|--------------|--------|
| "Write a function that does X" | "What approaches could I take, and what are the tradeoffs?" |
| "Fix this bug" | "Help me understand why this is failing" |
| "Give me the answer" | "Ask me questions that help me discover the answer" |

**The paradox:** By seeking understanding rather than answers, you become capable of generating better answers yourself.

**AI as Learning Accelerator:** Start with the problem, not prerequisites. Use AI to scaffold understanding as you need it. Learn in context of real application.

</details>

<details>
<summary><strong>Anticipatory Calibration</strong></summary>

Before prompting, form a hypothesis: *What do I expect the AI to produce?*

Then compare:
- Did it match your prediction?
- What surprised you?
- What does the gap reveal?

**The practice:** Predict → Prompt → Compare → Update your mental model.

Surprise is your learning signal. Over time, you build an accurate model of AI capabilities.

</details>

<details>
<summary><strong>The "Could You Be Wrong?" Protocol</strong></summary>

Research validates this simple technique (Hills, 2025): follow any AI response with "Could you be wrong?"

Unlike chain-of-thought, this generates *adversarial* information:
- Error identification
- Bias surfacing
- Contradictory evidence
- Alternative approaches

**None of this appears in the initial response.** The question unlocks it.

Use at every checkpoint before approval. Four words that operationalize critical rationalism.

</details>

<details>
<summary><strong>Memory as Cognitive Infrastructure</strong></summary>

**CLAUDE.md (Project Memory):** Your externalized project cognition—context, conventions, DCF preferences. See [CLAUDE.md Template](resources/CLAUDE_MD_TEMPLATE.md).

**Conversation Context:** When it grows long, summarize decisions, note open questions, capture insights.

**Creating Skills from Patterns:** When you find a prompting approach that works, codify it as a skill in `.claude/commands/`. Skills are crystallized expertise.

</details>

<details>
<summary><strong>Session Continuity</strong></summary>

Before long sessions end, capture:
- What was accomplished and why
- Unresolved issues
- Prioritized next steps
- Non-obvious context

Use `/dcf compact` to create SESSION_FINDINGS.md (gitignored). This is anticipatory calibration applied to session management.

</details>

<details>
<summary><strong>Research Validation</strong></summary>

Recent research validates DCF's core practices:

| Finding | Source | DCF Implication |
|---------|--------|-----------------|
| "Could you be wrong?" generates adversarial info absent from initial responses | Hills (2025) | Validates checkpoint protocol |
| False mental states and cognitive deskilling are primary autonomy risks | Kovács & Szelényi (2025) | Validates anti-pattern warnings |
| Collaborative AI metacognition is measurable | Sidra & Mason (2025) | DCF skills can be assessed |
| Socratic elements effective in multi-agent architecture | Hashemi Tonekaboni & Soleymani (2026) | Independent validation of approach |

DCF synthesizes established research (Extended Mind, Scaffolding Theory, Critical Rationalism) with emerging human-AI collaboration findings.

</details>

---

## The Ultimate Test

After every significant AI collaboration, ask:

> **Did I understand more deeply, think more clearly, or become capable of harder challenges?**

If yes—the methodology is working. If you merely completed a task without growth—the potential remains unrealized.

---

## One-Page Cheat Sheet

| | DCF Essentials |
|---|----------------|
| **Core Loop** | Articulate → Generate → Evaluate → Refine → *(repeat)* |
| **At Every Response** | • "Could you be wrong?" ← *surfaces hidden info* |
| | • "What assumptions are in that?" |
| | • "What's the counterargument?" |
| | • "What am I not seeing?" |
| **Before Approving** | • What alternatives were considered? |
| | • What's the riskiest assumption? |
| | • What would make this fail? |
| **Stop When** | • Quality threshold met |
| | • Changes become cosmetic |
| | • Purpose fulfilled |
| **The Test** | *Am I more capable now than before?* |
| **Remember** | The AI is a thinking mirror, not an oracle. Quality in → Quality out. |

---

## Further Reading

### Practical Resources
- [DCF FAQ](resources/DCF_FAQ.md) — Common questions and misconceptions
- [DCF Glossary](resources/DCF_GLOSSARY.md) — Terminology reference
- [DCF Prompt Library](resources/DCF_PROMPT_LIBRARY.md) — Ready-to-use prompts by situation
- [Case Studies](examples/README.md) — Real-world applications (debugging, architecture, learning)

### Theoretical Foundations
- **Full treatise**: [The Architecture of Thought](THE_ARCHITECTURE_OF_THOUGHT.pdf) (265 pages, optional)
- **Extended mind**: Clark & Chalmers, "The Extended Mind" (1998)
- **Scaffolding**: Vygotsky, "Mind in Society" (1978)
- **Critical rationalism**: Popper, "Conjectures and Refutations" (1963)
- **Metacognitive prompting**: Hills, "Could You Be Wrong" (2025)
- **Autonomy risks**: Kovács & Szelényi, "Addressing Autonomy Risks in Generative Chatbots" (2025)

See [DCF Reading List](resources/DCF_READING_LIST.md) for the complete annotated bibliography.

---

*The architecture of thought is yours to build.*
