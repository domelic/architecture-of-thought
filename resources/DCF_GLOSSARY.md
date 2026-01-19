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

### Steering Model
A framework for understanding agentic control through two complementary forces: **Upstream Steering** (what you control before the agent runs—CLAUDE.md, specs, conventions) shapes what the agent generates; **Downstream Steering** (what validates after—tests, linters, type checkers) forces self-correction through failure feedback. When the agent keeps making mistakes, strengthen upstream; when you need confidence in correctness, strengthen downstream.

### Phase Lock Protocol
An optional strict mode for high-stakes work that enforces phase discipline: RESEARCH → ANALYZE → PLAN → IMPLEMENT → VERIFY. Each phase has allowed and forbidden actions; transitions require explicit user approval. Use when architectural decisions affect multiple systems, for security-sensitive changes, or in unfamiliar domains with high uncertainty. Scaffolding, not standard practice—internalize the discipline, then relax the rules.

### Disposable Plans Principle
The recognition that a plan is a hypothesis about achieving a goal, not a contract. When tasks keep getting added, completed work needs rework, or implementation feels forced, regenerate the plan rather than forcing fit. One planning session is cheap compared to circular implementation failures.

### Task State Markers
Explicit state tracking for decomposed tasks to prevent goal drift: brainstormed → validated → blocked → in_progress → review → done. Makes progress visible and ensures state transitions are deliberate rather than implicit.

### Chain-of-Verification Protocol
A structured approach for high-stakes claims: (1) state the claim, (2) identify 2-3 specific verification questions, (3) gather evidence independently for each, (4) synthesize agreeing/conflicting findings, (5) render verdict with confidence level. The key: gathering evidence independently prevents confirmation bias.

### Multi-Perspective Synthesis
A protocol for the `/dcf challenge` mode: generate challenges from four frames (Technical, User, Maintenance, Adversarial) before synthesis. If concerns converge across frames, that's a critical vulnerability; if they diverge, the position may be more robust than initial analysis suggested.

### Anticipatory Calibration
The practice of forming a hypothesis about what AI will produce before prompting, then comparing to build an accurate mental model. Predict → Prompt → Compare → Update.

### Architectural Funnel
A workflow pattern for complex problems: divergent exploration that converges to minimal viable change. Four phases: (1) Broad exploration of the landscape, (2) Capture and compact before context limits, (3) Extract signal from noise, (4) Crystallize MVP. Embodies the principle that understanding enables minimalism—you can only build the minimal solution after seeing the full picture.

### Signal from Noise
The convergent phase of the Architectural Funnel where you extract what actually matters from broad exploration. Metaphorically: "selecting the proper notes from the sounds"—the exploratory phase generates raw material, synthesis composes the melody.

### Escape Paths
Questions or conditions embedded in prompts that help AI determine when it has produced sufficient output. Rather than relying solely on human judgment to terminate iteration, escape paths build exit conditions directly into prompt design. Example: "When this meets the bar for production use, indicate we're done."

### Socratic Fatigue
Exhaustion from over-application of Socratic questioning, occurring when the collaborative energy of productive dialogue masks diminishing returns. The human tendency toward over-perfection when engaged in recursive refinement. Counteracted by designing prompts with escape paths and exit hooks.

### Could You Be Wrong Protocol
A metacognitive prompting technique that generates adversarial information by asking "Could you be wrong?" after receiving a response. Unlike chain-of-thought (which elaborates reasoning), this produces error identification, biases, contradictory evidence, and alternatives not present in the initial response. Research shows it functions like "asking for a second opinion," borrowing from wisdom-of-crowds effects. In DCF: a checkpoint question and foundation for the `challenge` mode. (Hills, 2025)

### Compounding (Cognitive)
The phenomenon where AI-assisted learning produces accelerating returns: better questions lead to better responses, which deepen understanding, which enables even better questions. Occurs through the reinforcement loop of articulation, challenge, synthesis, and internalization. Distinguishes learning-stance practitioners from extraction-mode users.

### Reinforcement Loop
The four-stage cycle through which AI dialogue builds durable capability: (1) Articulation—externalizing thinking; (2) Challenge—AI responses that force active processing; (3) Synthesis—integrating new with existing understanding; (4) Internalization—patterns becoming automatic. The mechanism behind cognitive compounding.

### Research Dialogue
Using AI for exploration and understanding rather than task completion. Distinct from extraction: produces understanding rather than artifacts, explores multiple paths, and expands capability rather than leaving it unchanged. Investment that compounds over time.

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

### Critical Rationalism
Karl Popper's philosophical stance that all knowledge is provisional, conjectural, and open to revision through criticism. In DCF, provides the foundation for treating AI outputs as hypotheses to be tested rather than truths to be accepted.

### Falsificationism
Popper's principle that hypotheses gain credibility not from confirmation but from surviving serious attempts at refutation. In DCF, grounds the practice of actively challenging AI outputs rather than seeking confirmation.

### Double-Loop Learning
Chris Argyris's distinction between learning that adjusts actions within existing assumptions (single-loop) and learning that questions the assumptions themselves (double-loop). DCF's metacognitive emphasis enables double-loop learning by surfacing and examining underlying mental models.

### Fusion of Horizons
Hans-Georg Gadamer's concept (*Horizontverschmelzung*) that understanding emerges through dialogue when different perspectives merge to create shared meaning. In DCF, explains why human-AI collaboration is partnership: genuine understanding requires dialogue that changes both parties.

### Mental Model Triad
Three complementary mental models that evolve through human-AI collaboration: (1) **Domain model**—understanding of the subject matter; (2) **Information processing model**—comprehension of how the AI reasons; (3) **Complementarity-awareness model**—recognition of how human and AI capabilities combine. Evolution mechanisms: data contextualization, reasoning transparency, and performance feedback. In DCF: the Thinking Mirror metaphor primarily addresses complementarity-awareness; the learning stance develops all three. (Mental Models Framework, 2025)

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
Trusting AI outputs without verification, especially factual claims. Treating AI output as truth. The risk is *false mental states*: misinformation that distorts cognitions, causing beliefs to deviate from what you'd endorse under ideal conditions. Counteracted by verification protocols and the "Could you be wrong?" checkpoint question.

### Rubber Stamping
Approving AI outputs without meaningful review. Treating checkpoints as interruptions.

### Cognitive Atrophy
Declining ability to think without AI scaffolding. Over-reliance that weakens independent capability. The mechanism is *cognitive deskilling*: sustained practice maintains skills, and outsourcing cognitive tasks removes opportunities to exercise them. Research documents memory decline, reduced concentration, and diminished analysis depth in heavy AI users. Counteracted by the learning stance—engaging with AI to understand, not just to extract.

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

### False Mental States
An autonomy risk where AI-generated misinformation distorts user cognitions, causing beliefs to deviate from what the user would endorse under ideal conditions. Encompasses both unintentional errors (hallucinations, training biases) and deliberate manipulation. In DCF: the mechanism behind the Hallucination Acceptance anti-pattern. (SocrAI, 2025)

### Cognitive Deskilling
An autonomy risk where sustained outsourcing of cognitive tasks to AI degrades intellectual capacities. Manifests as memory decline, reduced concentration, and diminished analysis depth. Occurs because sustained practice maintains skills—when AI performs thinking tasks, users lose opportunities to exercise essential capabilities. In DCF: the mechanism behind the Cognitive Atrophy anti-pattern. (SocrAI, 2025)

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
A metric framework for measuring human-AI collaboration effectiveness across task completion, innovation, adaptability, and error detection. (Riedl & Weidmann, 2025)

### Collaborative AI Literacy
The knowledge and skills required for effective AI collaboration: understanding AI capabilities and limitations, directing outputs effectively, providing appropriate context, and refining results. Measurable through validated scales. In DCF: what you *know* about collaboration—the techniques themselves. (Sidra & Mason, 2025)

### Collaborative AI Metacognition
The ability to monitor and regulate your own cognitive processes during AI collaboration: planning your approach, tracking whether collaboration is productive, and adjusting strategy as needed. Predicts effective AI use better than literacy alone. In DCF: *awareness of* your collaboration—anticipatory calibration, checkpoint discipline, and knowing when you're drifting. (Sidra & Mason, 2025)

---

## Operational Terms

### CLAUDE.md
A configuration file in Claude Code projects that provides context and instructions to the AI. In DCF, a form of externalized cognitive infrastructure.

### Prompt Library
A collection of ready-to-use prompts organized by situation or purpose.

### Skill (Claude Code)
A predefined workflow that can be invoked with a command. The /dcf skill applies DCF principles.

### Pattern Capture (Pattern-to-Skill)
The practice of recognizing effective prompting patterns and codifying them as reusable Claude Code skills. When you discover an approach that works well for a category of tasks, extract its transferable essence and document it in `.claude/commands/`. The `/dcf skill` mode guides this process.

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
| **Critical Rationalism** | Popper: all knowledge is provisional, open to criticism |
| **Falsificationism** | Try to disprove, not confirm |
| **Double-Loop Learning** | Question the assumptions, not just fix within them |
| **Fusion of Horizons** | Understanding emerges when perspectives merge through dialogue |
| **Could You Be Wrong** | Metacognitive prompt that surfaces adversarial information |
| **False Mental States** | Autonomy risk: AI misinformation distorting user beliefs |
| **Cognitive Deskilling** | Autonomy risk: capability loss from outsourcing thinking |
| **Mental Model Triad** | Domain, processing, and complementarity-awareness models |
| **Collaborative AI Literacy** | Knowledge/skills for effective AI collaboration (measurable) |
| **Collaborative AI Metacognition** | Monitoring your own thinking during AI collaboration |

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
