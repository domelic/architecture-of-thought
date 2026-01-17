# DCF Glossary

Quick reference definitions for terms used in the Dialectical Cognition Framework.

---

## Core Concepts

### Dialectical Cognition Framework (DCF)
A methodology for human-AI collaboration that focuses on how humans should think during AI interactions, emphasizing Socratic dialogue, recursive refinement, and metacognitive awareness.

### Thinking Mirror
The central metaphor of DCF: AI reflects and transforms your thought, revealing patterns, assumptions, and implications you might not see. Quality input yields quality reflection.

### Cognitive Partnership
The relationship model DCF proposes: AI and human as collaborative thinking partners, rather than tool-user or question-answerer.

---

## Socratic Operations

### Elenchus (Cross-examination)
Questioning that exposes contradictions or unexamined assumptions in a position. In DCF: "What assumptions are built into that?"

### Maieutics (Intellectual Midwifery)
Drawing out knowledge that the person already has but hasn't articulated. In DCF: "Help me express what I'm trying to say."

### Dialectic (Reasoned Argument)
Examining opposing positions to arrive at truth. In DCF: "What's the strongest argument against this?"

### Aporia (Productive Confusion)
The state of puzzlement that precedes insight. In DCF: "What am I not seeing about this problem?"

---

## Process Terms

### Recursive Refinement
The iterative process of improving outputs: Articulate → Generate → Evaluate → Refine → Repeat until convergence.

### Convergence
The point at which further refinement yields diminishing returns; changes become cosmetic rather than substantive.

### Checkpoint
A decision point in an agentic workflow where human judgment is applied. DCF provides protocols for engaging at checkpoints.

### Checkpoint Protocol
The standard DCF questions applied at decision points:
1. What alternatives were considered?
2. What's the riskiest assumption?
3. What would make this fail?

### Anticipatory Calibration
The practice of forming a hypothesis about what AI will produce before prompting, then comparing to build an accurate mental model. Predict → Prompt → Compare → Update.

---

## Stances

### Learning Stance
Approaching AI interaction to understand, not just to get answers. "Help me figure this out" rather than "Give me the answer."

### Extraction Stance (Anti-pattern)
Using AI purely to get outputs without engagement or understanding. The opposite of DCF's approach.

---

## Theoretical Foundations

### Extended Mind Thesis
The philosophical position (Clark & Chalmers, 1998) that cognition can extend beyond the brain to include external tools and resources.

### Distributed Cognition
The view (Hutchins, 1995) that cognitive processes are distributed across individuals, artifacts, and environment.

### Zone of Proximal Development (ZPD)
Vygotsky's concept: the space between what you can do alone and what you can do with help. Where learning happens.

### Scaffolding
Support provided to help someone accomplish what they couldn't do alone, with the expectation that support fades as capability builds.

---

## Framework Levels

### Macro Level
Project-level orchestration: what tasks, in what order, who decides. Examples: Ralph Loop, Plan Mode.

### Meso Level
Phase-level strategy: how each phase of work proceeds. Examples: Research-Plan-Implement, BMAD.

### Micro Level
Interaction-level cognition: how to think effectively during AI exchanges. This is where DCF operates.

### Atomic Level
Prompt-level optimization: crafting effective individual prompts. Examples: Chain-of-Thought, Few-Shot.

---

## Anti-Patterns

### Socratic Theater
Going through the motions of Socratic questioning without genuine inquiry. Asking DCF questions but not engaging with answers.

### Mirror Narcissism
Using AI to confirm existing beliefs rather than challenge them. Seeking validation instead of truth.

### Infinite Refinement
Never reaching "good enough"; endless iteration without convergence. Perfectionism disguised as quality.

### Lazy Prompting
Providing vague inputs then being frustrated with vague outputs. Expecting AI to read your mind.

### Hallucination Acceptance
Trusting AI outputs without verification, especially factual claims. Treating AI output as truth.

### Rubber Stamping
Approving AI outputs without meaningful review. Treating checkpoints as interruptions.

### Cognitive Atrophy
Declining ability to think without AI scaffolding. Over-reliance that weakens independent capability.

### Goal Drift
Losing sight of the original objective through successive iterations. Tangents overwhelming the main task.

### Complexity Creep
Each iteration making solutions more complex rather than clearer. Over-engineering simple problems.

### Abstraction Addiction
Preferring abstract discussion over concrete action. Analyzing instead of building.

### Reinvention Addiction
Repeatedly solving the same type of problem from scratch instead of capturing effective patterns as reusable skills. Treating each session as isolated rather than building cumulative capability.

---

## Related Frameworks

### Ralph Loop / Ralph Wiggum
An autonomous iteration pattern where AI works without human intervention between cycles. Emphasizes naive persistence.

### Plan Mode
A three-phase workflow: Research → Plan → Implement, with human approval between phases.

### Chain-of-Thought (CoT)
A prompting technique that encourages AI to reason step-by-step, showing its work.

### BMAD Method
A persona-based framework using specialized roles (Analyst, Architect, Developer, QA) for AI-assisted development.

### ACE-FCA
Autonomous Context Engineering with Feedback-Controlled Adaptation: self-improving context management.

### 12-Factor Agents
Principles for building production-reliable AI agents.

---

## Measurement Terms

### Synergy Index
A metric framework for measuring human-AI collaboration effectiveness across task completion, innovation, adaptability, and error detection.

### Collaborative AI Literacy
The ability to direct, contextualize, and refine AI outputs effectively.

### Collaborative AI Metacognition
Awareness of your own thinking process during AI collaboration; planning, monitoring, and evaluating your cognitive engagement.

---

## Operational Terms

### CLAUDE.md
A configuration file in Claude Code projects that provides context and instructions to the AI. In DCF, a form of externalized cognitive infrastructure.

### Prompt Library
A collection of ready-to-use prompts organized by situation or purpose.

### Skill (Claude Code)
A predefined workflow that can be invoked with a command. The /dcf skill applies DCF principles.

### Pattern Capture (Pattern-to-Skill)
The practice of recognizing effective prompting patterns and codifying them as reusable Claude Code skills. When you discover an approach that works well for a category of tasks, extract its transferable essence and document it in `.claude/skills/`. The `/dcf skill` mode guides this process.

---

## Quick Definitions

| Term | One-Line Definition |
|------|---------------------|
| **DCF** | Methodology for thinking with AI, not just using it |
| **Thinking Mirror** | AI as reflection of your thought |
| **Elenchus** | Questioning that exposes assumptions |
| **Maieutics** | Drawing out unspoken knowledge |
| **Recursive Refinement** | Iterating toward clarity |
| **Checkpoint** | Decision point requiring human judgment |
| **Learning Stance** | Seeking understanding over answers |
| **Scaffolding** | Support that builds independence |
| **ZPD** | Zone where learning happens |
| **Convergence** | When refinement yields diminishing returns |

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
