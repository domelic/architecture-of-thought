# DCF Frequently Asked Questions

Common questions, objections, and misconceptions about the Dialectical Cognition Framework.

---

## Basic Understanding

### What is DCF in one sentence?

DCF is a methodology for **thinking with AI**, not just using it—focusing on how humans should engage cognitively during AI interactions to build understanding rather than just extract answers.

### How is DCF different from prompt engineering?

| Prompt Engineering | DCF |
|-------------------|-----|
| Focuses on crafting better inputs | Focuses on how you think during the interaction |
| Goal: better AI outputs | Goal: better human thinking + AI outputs |
| Single-prompt optimization | Multi-turn dialogue strategy |
| Technique-based | Philosophy-based |

Prompt engineering asks "how do I get better answers?" DCF asks "how do I think better with AI?"

### Do I need to be an expert to use DCF?

No. DCF is a thinking methodology, not a technical skill. The core practices—asking clarifying questions, challenging assumptions, iterating toward clarity—are accessible to anyone.

However, DCF is most valuable when you have *some* domain knowledge. The framework helps you think more clearly about what you already partially understand. For topics where you're a complete novice, start with basic learning before applying DCF.

### Is DCF only for software development?

No. The examples often use coding contexts, but DCF applies to any knowledge work:
- Writing and documentation
- Strategic decision making
- Research and analysis
- Learning new subjects
- Creative work
- Problem-solving in any domain

The principles (Socratic dialogue, recursive refinement, scaffolding) are domain-agnostic.

---

## Practical Application

### How long does a DCF interaction take?

It depends on the task:

| Task Type | Typical DCF Time |
|-----------|------------------|
| Quick clarification | 2-5 minutes |
| Code review | 10-15 minutes |
| Complex debugging | 20-30 minutes |
| Strategic decision | 30-60 minutes |
| Learning a concept | Variable (multiple sessions) |

DCF often *saves* time overall by reducing rework and catching issues earlier.

### When should I NOT use DCF?

Skip DCF when:
- Task is trivial and well-defined ("format this JSON")
- You genuinely need a quick factual answer
- You're doing routine work that doesn't require thinking
- Time pressure is extreme and stakes are low

Use DCF when:
- Requirements are ambiguous
- Decisions have significant consequences
- You're trying to learn, not just do
- You've been stuck and need a breakthrough

### Can I use DCF with any AI model?

Yes. DCF is model-agnostic. The principles work with:
- Claude (Anthropic)
- GPT-4 (OpenAI)
- Gemini (Google)
- Open-source models

More capable models support deeper dialogue, but the methodology applies regardless.

### How do I know if I'm doing DCF correctly?

Signs you're applying DCF well:
- Your course of action changes based on the dialogue
- You understand *why*, not just *what*
- You could explain the outcome to someone else
- You feel like you thought through the problem, not just got an answer

Signs you're doing "DCF theater" (going through motions):
- You ask the questions but don't engage with answers
- Your approach never changes based on dialogue
- You couldn't summarize what you learned
- It feels performative

---

## Objections and Concerns

### Isn't this just overthinking? Sometimes I need quick answers

DCF isn't about applying maximum rigor to everything. It's about matching engagement level to task importance:

| Stakes | Engagement |
|--------|------------|
| Low (routine task) | Quick exchange is fine |
| Medium (significant work) | Light DCF: 2-3 clarifying questions |
| High (architecture, strategy) | Full DCF engagement |

The skill is calibrating appropriately, not maximizing every interaction.

### Won't this slow me down?

Short-term: sometimes yes, slightly.

Long-term: DCF typically saves time by:
- Catching issues before implementation
- Reducing rework from misunderstandings
- Building capability that speeds future work
- Avoiding rabbit holes from unclear requirements

The investment in thinking pays off in execution.

### Is this just being skeptical of AI?

No. DCF is not anti-AI—it's pro-collaboration. The framework assumes AI is valuable and seeks to maximize that value through structured engagement.

Skepticism is passive ("I don't trust this"). DCF is active ("Let's think through this together").

### Can't I just trust AI for most things?

You can—and should—trust AI for many things. DCF isn't about constant verification; it's about knowing *when* to engage deeply.

Trust is appropriate when:
- Task is well-defined
- Output is easy to verify
- Stakes are low
- AI has clear expertise

Engage deeply when:
- Requirements are ambiguous
- Verification is difficult
- Stakes are high
- You're making architectural decisions

### This seems like a lot of work. Is it worth it?

The core of DCF is simple:
1. Ask clarifying questions before accepting
2. Challenge assumptions
3. Iterate when needed

That's not "a lot of work"—it's basic cognitive hygiene. The full framework provides structure, but the essence is lightweight.

### What if the AI doesn't respond well to Socratic questioning?

Current AI models respond well to this style. If you encounter resistance:
- Be explicit: "I'd like you to ask me questions rather than give answers"
- Reframe: "Help me think through this" rather than "solve this"
- Set context: "I'm using a Socratic approach—please engage dialectically"

Most friction comes from prompting style, not model limitations.

---

## Philosophical Questions

### Is human oversight still necessary as AI improves?

DCF says yes, but the nature of oversight evolves:

| AI Capability | Human Role |
|---------------|------------|
| Current | Active engagement at every step |
| Near-future | Checkpoints at decision points |
| Further out | Goal-setting and value alignment |

Even highly capable AI benefits from human judgment on values, priorities, and context that can't be fully specified.

### Does DCF make humans dependent on AI?

The opposite, if practiced correctly. DCF emphasizes:
- **Scaffolding theory**: AI support should build independent capability
- **Learning stance**: Understanding over answer extraction
- **Regular unassisted practice**: Testing what you've internalized

Dependency is an anti-pattern DCF explicitly warns against (see "Cognitive Atrophy" in Anti-Patterns Guide).

### Can AI apply DCF to itself?

Partially. AI models can:
- Engage in internal dialectic (extended thinking)
- Challenge their own assumptions when prompted
- Iterate toward better answers

But DCF is fundamentally about *human* cognition during AI collaboration. The human's judgment, values, and contextual understanding remain central.

### Is there research supporting DCF?

DCF synthesizes established research:
- **Extended Mind Thesis**: Clark & Chalmers (1998)
- **Distributed Cognition**: Hutchins (1995)
- **Scaffolding Theory**: Vygotsky, Bruner
- **Human-AI Collaboration**: Nature Human Behaviour (2024)

The specific synthesis into DCF is new, but the foundations are well-established.

---

## Claude Code Integration

### What is the /dcf skill?

The `/dcf` skill is a principle-based Claude Code skill that applies DCF's Socratic questioning contextually. Unlike scripted skills with rigid steps, it trusts Claude to adapt questioning to the actual situation.

### What modes does the /dcf skill have?

```text
/dcf [mode] [context]

# Core modes
/dcf                     # General Socratic dialogue
/dcf review              # Evaluate before committing
/dcf checkpoint          # Agentic decision point
/dcf refine              # Iterate deliberately on output
/dcf self-review         # Have Claude review its own work
/dcf debug               # Question the mental model
/dcf learn <topic>       # Build understanding through dialogue
/dcf decide              # Reach closure on a decision
/dcf unstick             # Break through blocks
/dcf premortem           # Anticipate failure before starting
/dcf challenge           # Steelman the opposition
/dcf simplify            # Find the essential
/dcf retro               # Capture learning

# Design & analysis
/dcf architect           # Divergent → convergent design
/dcf tradeoffs           # Structured tradeoff analysis
/dcf assumptions         # Deep assumption excavation

# Learning & onboarding
/dcf onboard             # Explore unfamiliar codebase/domain
/dcf explain             # Feynman technique

# Session management
/dcf compact             # Prepare for session compaction
/dcf context-health      # Assess and address context rot
/dcf diagnose            # Identify anti-pattern
/dcf skill               # Capture pattern as skill
```

### When should I use each mode?

| Mode | Use When |
|------|----------|
| `/dcf` | General Socratic questioning on any topic |
| `/dcf review` | Evaluating a plan, proposal, or code before committing |
| `/dcf checkpoint` | At an agentic decision point requiring approval |
| `/dcf refine` | Output needs iteration—want to avoid drift or infinite loops |
| `/dcf self-review` | Want Claude to catch errors in its own output |
| `/dcf debug` | Debugging—examine your mental model, not just the code |
| `/dcf learn` | You want to understand deeply, not just get information |
| `/dcf decide` | Analysis is complete but you're having trouble committing |
| `/dcf unstick` | You're blocked and don't know what question to ask |
| `/dcf premortem` | Before starting—imagine failure and work backward |
| `/dcf challenge` | Strengthen your position by arguing against it |
| `/dcf simplify` | A solution has grown unwieldy and needs reduction |
| `/dcf retro` | End of session—capture what you learned |
| `/dcf architect` | Designing something—need broad exploration then minimal MVP |
| `/dcf tradeoffs` | Choosing between options—need explicit analysis |
| `/dcf assumptions` | Suspect hidden assumptions affecting your thinking |
| `/dcf onboard` | Entering unfamiliar codebase or domain |
| `/dcf explain` | Want to test your understanding by teaching |
| `/dcf compact` | Preparing for session compaction or break |
| `/dcf context-health` | Session feels degraded or confused |
| `/dcf diagnose` | Something's wrong but you don't know which anti-pattern |
| `/dcf skill` | Discovered a pattern worth capturing for reuse |

### What about the procedural version?

The original procedural version with scripted steps for each mode is archived at `.claude/skills/archive/dcf-procedural.md`. The current version is principle-based, trusting Claude to apply Socratic questioning contextually rather than following rigid scripts.

### How do I chain modes together?

Use the `dcf-workflow` script for workflow automation:

```bash
dcf-workflow new-project              # learn → premortem → review
dcf-workflow debug "auth timeout"     # debug → simplify → decide
dcf-workflow decision "API design"    # review → challenge → decide
```

See `.claude/scripts/README.md` for full documentation.

### How do I install the /dcf skill?

1. Copy `.claude/skills/dcf.md` to your project's `.claude/skills/` directory
2. Optionally add `.claude/scripts/` to your PATH for workflow automation
3. See `.claude/settings.example.json` for hooks configuration

### What about hooks for automated DCF?

Claude Code hooks can trigger DCF checkpoints automatically. See `.claude/settings.example.json` for a complete example:

```json
{
  "hooks": {
    "post_tool_call": [
      {
        "tool": "Edit",
        "command": "echo '💭 DCF Checkpoint: What assumptions did this edit make?'"
      }
    ]
  }
}
```

Hooks enable DCF at scale without manual invocation.

### Which model should I use with DCF?

| Model | Best For | DCF Implication |
|-------|----------|-----------------|
| Haiku | Quick searches, exploration | Lower stakes, verify more |
| Sonnet | Most development work | Balanced engagement |
| Opus | Architecture, complex judgment | High stakes, deep engagement |

**Principle:** Match model capability to decision stakes.

### How do I chain modes together for complex scenarios?

Use the `dcf-workflow` script to chain modes with checkpoints:

```bash
dcf-workflow new-project              # onboard → architect → premortem
dcf-workflow debug "auth issue"       # debug → assumptions → simplify
dcf-workflow decision "API design"    # tradeoffs → challenge → decide
dcf-workflow learning "rust ownership"# learn → explain → retro
dcf-workflow unstuck                  # diagnose → unstick → simplify
dcf-workflow session-end              # context-health → compact → retro
```

The script provides checkpoints between each mode, prompting you to reflect before proceeding.

**Key principle:** Modes remain atomic—each transition is a checkpoint where you engage fully before moving on.

### How do I manage long sessions?

Use `/dcf retro` at the end of sessions to capture:
- What was accomplished
- Open questions remaining
- Recommended next steps
- Context that matters for continuity

The output goes to `SESSION_FINDINGS.md` (gitignored) so compaction summaries have explicit material to work with.

---

## Implementation Questions

### How do I get my team to adopt DCF?

1. **Start with one person**: Model the behavior yourself
2. **Show, don't tell**: Share successful DCF interactions
3. **Introduce lightweight practices first**: "Let's always ask 'what assumptions?' before approving"
4. **Create shared resources**: Adopt the prompt library, checkpoint protocols
5. **Discuss failures**: Use anti-patterns as learning opportunities

See the Team Adoption Playbook for detailed guidance.

### How do I measure if DCF is working?

Qualitative indicators:
- Fewer surprises in implementation
- Better understanding of trade-offs
- Increased capability over time
- More confident decisions

Quantitative proxies:
- Reduced rework cycles
- Faster convergence on solutions
- Higher code review quality
- Decreased "just tell me the answer" interactions

See the Self-Assessment Template for structured evaluation.

### Can I customize DCF for my domain?

Absolutely. DCF provides principles; you adapt the practices:

- **For legal work**: Emphasize assumption questioning, precedent analysis
- **For design**: Focus on trade-off exploration, user perspective challenges
- **For research**: Prioritize hypothesis stress-testing, methodology review
- **For writing**: Apply recursive refinement, clarity verification

The core loop (articulate → generate → evaluate → refine) applies everywhere.

---

## Misconceptions

### "DCF means always questioning everything"

No. DCF means questioning *appropriately*—matching engagement to stakes. Constant questioning is exhausting and counterproductive.

### "DCF is just the Socratic method"

DCF incorporates Socratic methods but is broader:
- Adds recursive refinement patterns
- Includes metacognitive practices
- Adapts for agentic AI systems
- Provides operational frameworks (checkpoints, skills)

### "DCF is about not trusting AI"

DCF is about *productive* collaboration, not distrust. Trust and critical engagement aren't opposites—they're complements.

### "DCF is only for complex tasks"

Lightweight DCF (one clarifying question, one challenge) applies even to simple tasks. The full framework is for complex work.

### "You need to read the whole treatise to use DCF"

Start with DCF Essentials (one page). Practice the core loop. Read more as needed. The treatise provides depth, not prerequisites.

---

## Getting Started

### What's the single most important DCF practice?

**Ask one challenging question before accepting any AI output.**

That's it. Start there. Everything else builds on that foundation.

### What should I read first?

1. **DCF Essentials** — One-page overview (5 minutes)
2. **Example Transcripts** — See it in action (15 minutes)
3. **Prompt Library** — Ready-to-use questions (reference)

Then explore based on need: Anti-Patterns if you're struggling, Workshop Exercises if you want practice, the full Treatise if you want depth.

### What's one thing I should try today?

In your next AI interaction:

1. After the AI responds, pause
2. Ask: "What assumptions are built into that answer?"
3. Engage with the response before proceeding

Notice what happens. That's DCF in action.

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
