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

### Meta-Question
The practice of asking "What question should I be asking?" rather than seeking answers directly. Often the most powerful Socratic move—users are frequently stuck not because they lack answers but because they're asking the wrong question. Elevated to a core principle in DCF.

### Evidence (Probing Reasons)
Questioning that examines the factual foundation of statements. In DCF: "How do you know? What evidence supports this?" Many beliefs rest on untested assumptions or weakly understood foundations—this operation surfaces them.

### Consequences (Tracing Implications)
Questioning that explores the logical implications and outcomes of ideas. In DCF: "What are the consequences? What if you're wrong?" Reveals whether an idea actually works in practice and surfaces unintended effects.

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

### Architectural Funnel
A workflow pattern for complex problems: divergent exploration that converges to minimal viable change. Four phases: (1) Broad exploration of the landscape, (2) Capture and compact before context limits, (3) Extract signal from noise, (4) Crystallize MVP. Embodies the principle that understanding enables minimalism—you can only build the minimal solution after seeing the full picture.

### Signal from Noise
The convergent phase of the Architectural Funnel where you extract what actually matters from broad exploration. Metaphorically: "selecting the proper notes from the sounds"—the exploratory phase generates raw material, synthesis composes the melody.

---

## Stances

### Learning Stance
Approaching AI interaction to understand, not just to get answers. "Help me figure this out" rather than "Give me the answer."

### Learning Accelerator
The phenomenon where AI dramatically accelerates skill acquisition by providing just-in-time, contextualized learning. Skills that take months can be acquired in weeks—not by skipping learning, but by learning in context of real application.

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

### Test Coverage as Scaffolding
The principle that comprehensive test suites enable confident approval of bold AI-assisted changes. Tests verify behavior automatically, reducing human verification burden and enabling faster, larger refactorings.

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

### Context Rot
Allowing conversation context to degrade through accumulated noise, contradictions, or irrelevant information. Four causes: poisoning (incorrect info), distraction (irrelevant tangents), confusion (similar but different concepts), clash (unresolved contradictions).

### Knowledge Gatekeeping
Organizational knowledge hoarding that prevents effective AI collaboration. Tribal knowledge locked in people's heads rather than documented, causing AI to produce technically correct but contextually wrong outputs.

---

## Adoption Concepts

### Demonstration Over Explanation
The adoption principle that results convince better than arguments. Work wins convert skeptics faster than presentations.

### Trust-Speed-Rigor Triangle
The three forces that must be balanced when building with AI: Trust (confidence in AI-assisted quality), Speed (velocity of development), and Rigor (verification processes). High speed requires established trust; low trust requires more rigor.

### Adoption Stages
The diffusion of innovations pattern: Innovators (~2.5%), Early Adopters (~13.5%), Early Majority (~34%), Late Majority (~34%), Laggards (~16%). Work with willing adopters first; culture shifts bring others along.

### Shared Context Infrastructure
Team-level systems for collective AI knowledge: context engineering repositories, prompt libraries, shared CLAUDE.md templates, and knowledge wikis. Prevents siloing of AI expertise.

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

### Hooks
Shell commands that execute automatically before or after Claude Code tool calls. Enable automated DCF checkpoints—for example, running tests after every file edit.

### Workflow Composition
The practice of chaining multiple DCF skills into sequences appropriate for common scenarios. Skills remain atomic (invoked individually), but recommended sequences provide guidance for multi-phase work like "New Project" (`onboard` → `architect` → `premortem`) or "Decision Point" (`tradeoffs` → `challenge` → `decide`). Each transition is a checkpoint—engage fully before proceeding.

### Session Lifecycle
The practice of managing conversation context over time. Includes knowing when to start fresh sessions vs. continue existing ones, and using `/dcf compact` to capture state before context limits are reached.

### Background Agents
Agents spawned via the Task tool that run asynchronously while you continue other work. Trade engagement for efficiency—use for exploration, engage synchronously for judgment calls.

---

## Quick Definitions

| Term | One-Line Definition |
|------|---------------------|
| **DCF** | Methodology for thinking with AI, not just using it |
| **Thinking Mirror** | AI as reflection of your thought |
| **Elenchus** | Questioning that exposes assumptions |
| **Maieutics** | Drawing out unspoken knowledge |
| **Evidence** | Probing reasons and factual foundations |
| **Consequences** | Tracing implications and outcomes |
| **Recursive Refinement** | Iterating toward clarity |
| **Checkpoint** | Decision point requiring human judgment |
| **Learning Stance** | Seeking understanding over answers |
| **Scaffolding** | Support that builds independence |
| **ZPD** | Zone where learning happens |
| **Convergence** | When refinement yields diminishing returns |
| **Learning Accelerator** | AI enables faster skill acquisition through context |
| **Context Rot** | Conversation context degrading over time |
| **Knowledge Gatekeeping** | Tribal knowledge hoarding blocking AI benefits |
| **Shared Context** | Team-level AI knowledge infrastructure |
| **Trust-Speed-Rigor** | Three forces to balance when building with AI |
| **Workflow Composition** | Chaining skills into sequences for common scenarios |

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
