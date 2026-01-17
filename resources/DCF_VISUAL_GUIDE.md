# DCF Visual Guide

Diagrams and visual references for the Dialectical Cognition Framework.

---

## The Core Loop

```
                    ┌─────────────────────────────────────┐
                    │                                     │
                    ▼                                     │
    ┌───────────────────────────────┐                    │
    │         ARTICULATE            │                    │
    │   Express current thinking    │                    │
    │   Identify what's unclear     │                    │
    └───────────────┬───────────────┘                    │
                    │                                     │
                    ▼                                     │
    ┌───────────────────────────────┐                    │
    │          GENERATE             │                    │
    │   AI produces new content     │                    │
    │   Explores possibilities      │                    │
    └───────────────┬───────────────┘                    │
                    │                                     │
                    ▼                                     │
    ┌───────────────────────────────┐                    │
    │          EVALUATE             │                    │
    │   Assess quality              │                    │
    │   Identify gaps               │                    │
    │   Challenge assumptions       │                    │
    └───────────────┬───────────────┘                    │
                    │                                     │
                    ▼                                     │
    ┌───────────────────────────────┐                    │
    │           REFINE              │                    │
    │   Improve based on eval       │                    │
    │   Prepare next iteration      │──────────────────►─┘
    └───────────────────────────────┘
                    │
                    ▼ (when converged)
    ┌───────────────────────────────┐
    │          COMPLETE             │
    │   Quality threshold met       │
    │   Purpose fulfilled           │
    └───────────────────────────────┘
```

---

## The Thinking Mirror

```
    ┌─────────────────────────────────────────────────────────┐
    │                        HUMAN                            │
    │                                                         │
    │   ┌─────────────┐                                      │
    │   │  Thoughts   │ ──── Articulate ────►                │
    │   │  Questions  │                      │                │
    │   │  Confusion  │                      │                │
    │   └─────────────┘                      │                │
    │          ▲                             │                │
    │          │                             ▼                │
    │          │              ╔═══════════════════════════╗  │
    │          │              ║                           ║  │
    │          │              ║    THE THINKING MIRROR    ║  │
    │          │              ║         (LLM)             ║  │
    │          │              ║                           ║  │
    │          │              ║   • Reflects patterns     ║  │
    │    Insight &            ║   • Surfaces assumptions  ║  │
    │    New questions        ║   • Reveals implications  ║  │
    │          │              ║   • Shows contradictions  ║  │
    │          │              ║                           ║  │
    │          │              ╚═══════════════════════════╝  │
    │          │                             │                │
    │          └──────────── Reflection ◄────┘                │
    │                                                         │
    └─────────────────────────────────────────────────────────┘

    Key insight: The mirror shows you YOUR thought transformed.
    Quality in → Quality out.
```

---

## The Five Phases of Socratic Prompting

```
    Phase 1                Phase 2                Phase 3
    RAW INQUIRY    ───►   REFLECTIVE      ───►   PERSONAL
                          CLARIFICATION          SYNTHESIS

    "I'm trying            "What assumptions      "That reminds me
     to understand          are in that            of when I..."
     why..."                answer?"
                                                  Connect to
    Start messy.           Challenge.             your context.
    Think aloud.           Don't accept.          Make it real.

         │                      │                      │
         └──────────────────────┼──────────────────────┘
                                │
                                ▼

                          Phase 4
                     OPERATIONALIZATION

                      "Turn this into a
                       checklist/template"

                      Convert insight
                      to structure.

                                │
                                ▼

                          Phase 5
                      RECURSIVE LOOP

                      "What question should
                       I be asking next?"

                      Start again, evolved.
```

---

## The Stack View

```
    ┌─────────────────────────────────────────────────────┐
    │                                                     │
    │   MACRO: Project-Level Orchestration               │
    │   What tasks? In what order? Who decides?          │
    │   Examples: Ralph Loop, Plan Mode                  │
    │                                                     │
    ├─────────────────────────────────────────────────────┤
    │                                                     │
    │   MESO: Phase-Level Strategy                       │
    │   How should each phase proceed?                   │
    │   Examples: Research-Plan-Implement, SPARC         │
    │                                                     │
    ├─────────────────────────────────────────────────────┤
    │                                                     │
    │   MICRO: Interaction-Level Cognition    ◄── DCF    │
    │   How do I think effectively with AI?              │
    │   Examples: Socratic Prompting, Recursive Refine   │
    │                                                     │
    ├─────────────────────────────────────────────────────┤
    │                                                     │
    │   ATOMIC: Prompt-Level Optimization                │
    │   How do I craft effective prompts?                │
    │   Examples: Chain-of-Thought, Few-Shot             │
    │                                                     │
    └─────────────────────────────────────────────────────┘

    DCF operates at MICRO level—the cognitive strategy
    that runs on top of whatever framework you choose.
```

---

## Trust vs. Engage Decision

```
                         Is the task well-defined?
                                   │
                    ┌──────────────┴──────────────┐
                    │                             │
                   YES                            NO
                    │                             │
                    ▼                             ▼
            Is failure cheap              ┌─────────────┐
            and reversible?               │   ENGAGE    │
                    │                     │   with DCF  │
         ┌─────────┴─────────┐           └─────────────┘
         │                   │
        YES                  NO
         │                   │
         ▼                   ▼
    ┌─────────┐        ┌─────────────┐
    │  TRUST  │        │   ENGAGE    │
    │  agent  │        │   with DCF  │
    └─────────┘        └─────────────┘
         │
         ▼
    But verify output
```

---

## Agentic Checkpoint Pattern

```
    ┌─────────────────────────────────────────────────────────┐
    │                    AGENTIC WORKFLOW                     │
    └─────────────────────────────────────────────────────────┘

              │
              ▼
    ┌───────────────────┐
    │  Agent researches │
    │  and plans        │
    └─────────┬─────────┘
              │
              ▼
    ╔═══════════════════╗
    ║    CHECKPOINT     ║ ◄─── Apply DCF here
    ║                   ║
    ║  "Before I        ║      Questions to ask:
    ║   approve..."     ║      • What alternatives considered?
    ║                   ║      • Riskiest assumption?
    ╚═════════╤═════════╝      • What would make this fail?
              │
         ┌────┴────┐
         │         │
      Approve    Revise
         │         │
         ▼         │
    ┌───────────┐  │
    │  Agent    │  │
    │  executes │  │
    └─────┬─────┘  │
          │        │
          ▼        │
    ╔═══════════════════╗
    ║    CHECKPOINT     ║ ◄─── And here
    ╚═════════╤═════════╝
              │
         Continue...
```

---

## Convergence Criteria

```
    Quality
      ▲
      │
      │                              ╭─────── Converged
      │                         ╭────╯        (stop here)
      │                    ╭────╯
      │               ╭────╯
      │          ╭────╯
      │     ╭────╯
      │╭────╯
      ├─────┬─────┬─────┬─────┬─────┬─────►
      1     2     3     4     5     6     Iterations


    STOP WHEN:
    ├── Quality threshold met
    ├── Changes become cosmetic
    ├── Purpose fulfilled
    └── Diminishing returns reached

    WARNING SIGNS:
    ├── Oscillating between versions (circular)
    ├── Endless tweaking (perfectionism)
    ├── Losing original purpose (drift)
    └── Getting more complex each iteration (creep)
```

---

## The Learning Stance vs. Extraction Stance

```
    EXTRACTION STANCE                 LEARNING STANCE

    "Give me the answer"              "Help me understand"
           │                                 │
           ▼                                 ▼
    ┌─────────────────┐              ┌─────────────────┐
    │                 │              │                 │
    │   Task done     │              │   Task done     │
    │                 │              │       +         │
    │   No learning   │              │   Capability    │
    │                 │              │   increased     │
    └─────────────────┘              └─────────────────┘
           │                                 │
           ▼                                 ▼
    ┌─────────────────┐              ┌─────────────────┐
    │                 │              │                 │
    │   Next task:    │              │   Next task:    │
    │   Same          │              │   Easier        │
    │   dependency    │              │   (or can do    │
    │                 │              │   without AI)   │
    └─────────────────┘              └─────────────────┘


    THE PARADOX:
    By seeking understanding rather than answers,
    you become capable of generating better answers yourself.
```

---

## One-Page Summary Poster

```
╔═══════════════════════════════════════════════════════════════════╗
║                                                                   ║
║              THE DIALECTICAL COGNITION FRAMEWORK                  ║
║                                                                   ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║   CORE INSIGHT: LLMs are thinking mirrors, not answer machines.   ║
║                 Quality in → Quality out.                         ║
║                                                                   ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║   THE LOOP:     Articulate → Generate → Evaluate → Refine        ║
║                      ↑________________________________↓           ║
║                                                                   ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║   SOCRATIC OPERATIONS:                                            ║
║                                                                   ║
║   • Elenchus:  "What assumptions are in that?"                    ║
║   • Maieutics: "Help me articulate what I mean"                   ║
║   • Dialectic: "What's the strongest counterargument?"            ║
║   • Aporia:    "What am I not seeing?"                            ║
║                                                                   ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║   AT EVERY CHECKPOINT:                                            ║
║                                                                   ║
║   1. What alternatives were considered?                           ║
║   2. What's the riskiest assumption?                              ║
║   3. What would make this fail?                                   ║
║                                                                   ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║   THE TEST:                                                       ║
║                                                                   ║
║   Does this collaboration make me more capable,                   ║
║   or just more productive in the moment?                          ║
║                                                                   ║
╠═══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║   REMEMBER: Seek understanding, not just answers.                 ║
║             The scaffolding should eventually fade.               ║
║             You're building capability, not dependency.           ║
║                                                                   ║
╚═══════════════════════════════════════════════════════════════════╝
```

---

## The /dcf Skill Modes

The skill is **principle-based**, not scripted. Each mode has an **outcome**, not a script.

```
┌─────────────────────────────────────────────────────────────────────┐
│                    /dcf SKILL MODES (Principle-Based)               │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│   /dcf [mode] [context]                                             │
│                                                                     │
│   ┌─────────────────────────────────────────────────────────────┐   │
│   │                                                             │   │
│   │    /dcf                General Socratic dialogue            │   │
│   │    /dcf review         Evaluate before committing           │   │
│   │    /dcf checkpoint     Agentic decision point               │   │
│   │    /dcf debug          Question the mental model            │   │
│   │    /dcf learn <topic>  Build understanding through dialogue │   │
│   │    /dcf decide         Reach closure on a decision          │   │
│   │    /dcf unstick        Break through blocks                 │   │
│   │    /dcf premortem      Anticipate failure before starting   │   │
│   │    /dcf challenge      Steelman the opposition              │   │
│   │    /dcf simplify       Find the essential                   │   │
│   │    /dcf retro          Capture learning                     │   │
│   │                                                             │   │
│   └─────────────────────────────────────────────────────────────┘   │
│                                                                     │
│   KEY PRINCIPLE:                                                    │
│   Each mode describes an OUTCOME, not a script.                     │
│   Claude adapts Socratic questioning to the actual situation.       │
│                                                                     │
│   ARCHIVED: 22-mode procedural version at                           │
│   .claude/skills/archive/dcf-procedural.md                          │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

---

## Workflow Automation

Use `dcf-workflow` to chain modes with checkpoints:

```
┌─────────────────────────────────────────────────────────────────────┐
│                        dcf-workflow <scenario>                       │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│   new-project     learn ──► premortem ──► review                    │
│   debug           debug ──► simplify ──► decide                     │
│   decision        review ──► challenge ──► decide                   │
│   learning        learn ──► challenge ──► retro                     │
│   unstuck         unstick ──► simplify ──► decide                   │
│   session-end     retro                                             │
│                                                                     │
│   Each arrow (──►) is a CHECKPOINT where you engage fully           │
│   before proceeding to the next mode.                               │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

---

## Agent Selection Guide

```
    What are you trying to do?
              │
    ┌─────────┴─────────────────────────────────┐
    │                                           │
    ▼                                           ▼
  Understand                                 Execute
  the codebase                               a task
    │                                           │
    ▼                                           │
┌─────────┐                          ┌─────────┴─────────┐
│ Explore │                          │                   │
│  agent  │                          ▼                   ▼
└─────────┘                     Need design?      Routine work?
                                     │                   │
                               ┌─────┴─────┐            │
                               │           │            │
                               ▼           ▼            ▼
                          ┌────────┐  ┌─────────┐  ┌────────────┐
                          │  Plan  │  │  code-  │  │  Direct    │
                          │ agent  │  │ reviewer│  │  execution │
                          └────────┘  └─────────┘  └────────────┘


    DCF ENGAGEMENT BY AGENT:

    ┌──────────────┬─────────────────────────────────────┐
    │ Agent        │ DCF Checkpoint                      │
    ├──────────────┼─────────────────────────────────────┤
    │ Explore      │ Review findings for completeness    │
    │ Plan         │ Full Socratic review of approach    │
    │ code-reviewer│ Evaluate flagged issues critically  │
    │ Background   │ Review async output when complete   │
    └──────────────┴─────────────────────────────────────┘
```

---

## Model Selection Decision

```
                        What are the stakes?
                              │
              ┌───────────────┼───────────────┐
              │               │               │
              ▼               ▼               ▼
           LOW            MEDIUM           HIGH
        (routine)       (standard)      (critical)
              │               │               │
              ▼               ▼               ▼
         ┌────────┐     ┌────────┐     ┌────────┐
         │ Haiku  │     │ Sonnet │     │  Opus  │
         └────────┘     └────────┘     └────────┘
              │               │               │
              ▼               ▼               ▼
         Quick tasks    Most work      Architecture
         Exploration    Development    Complex judgment
         File search    Code changes   Strategic decisions

    PRINCIPLE: Match model capability to decision stakes.
               Haiku for speed, Opus for depth.
```

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
