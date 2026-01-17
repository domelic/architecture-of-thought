# DCF Anti-Patterns Guide

Common failure modes in human-AI collaboration and how to recognize and fix them.

---

## Overview

Even with good intentions, DCF practice can go wrong. This guide documents the failure modes, their symptoms, root causes, and corrections.

---

## Anti-Pattern 1: Socratic Theater

### What It Looks Like

Going through the motions of Socratic questioning without genuine inquiry.

```
Human: "What assumptions are in that?"
AI: [Lists assumptions]
Human: "OK, what's the counterargument?"
AI: [Provides counterargument]
Human: "OK, proceed."
```

No actual engagement with the answers. The questions become ritual.

### Symptoms

- You ask DCF questions but don't change course based on answers
- The dialogue feels performative
- You couldn't summarize what you learned from the exchange
- Time pressure makes you rush through "required" questions

### Root Cause

- Treating DCF as a checklist rather than a thinking tool
- Fatigue from over-application
- Not actually caring about the current task
- External pressure to "look like" you're doing DCF

### The Fix

1. **Only ask questions you genuinely want answered**
2. **If you don't care, skip DCF** — it's for when thinking matters
3. **Pause after answers** — actually consider them before proceeding
4. **Track whether your course changed** — if never, you're in theater mode

### Example of Real Engagement

```
Human: "What assumptions are in that approach?"
AI: [Lists assumptions including "the database can handle this query load"]
Human: "Wait—we haven't tested that assumption. Before we proceed,
        what would happen if that's wrong, and how could we verify it?"
```

The difference: genuine curiosity, willingness to change direction.

---

## Anti-Pattern 2: Mirror Narcissism

### What It Looks Like

Using the AI to confirm what you already believe rather than challenge it.

```
Human: "I think we should use microservices. Explain why that's the right choice."
AI: [Provides justification for microservices]
Human: "Great, that confirms my thinking."
```

The mirror reflects only what you want to see.

### Symptoms

- You frame questions to get confirming answers
- You dismiss AI pushback as "not understanding the context"
- You feel validated but never challenged
- Alternative perspectives feel like attacks

### Root Cause

- Ego investment in existing decisions
- Seeking validation rather than truth
- Fear of being wrong
- Sunk cost on current approach

### The Fix

1. **Explicitly request counterarguments**
   ```
   "I'm leaning toward X. Give me the strongest argument for Y instead."
   ```

2. **Steelman the opposition**
   ```
   "Assume someone smart disagrees with me. What would they say?"
   ```

3. **Notice defensive reactions** — they signal you might be in narcissism mode

4. **Ask the uncomfortable question**
   ```
   "What if I'm wrong about this?"
   ```

### Red Flag Phrases

- "Explain why X is right" (instead of "evaluate X")
- "Confirm that..." (instead of "assess whether...")
- "Obviously we should..." (obvious to whom?)

---

## Anti-Pattern 3: Reactive Evaluation

### What It Looks Like

Evaluating AI output without having formed expectations first. Asking "does this look good?" rather than "does this match what I predicted?"

```
Human: "Write a function to parse user input"
AI: [Provides function]
Human: [Reads it] "Yeah, that looks fine."
```

No prediction, no comparison, no learning signal.

### Symptoms

- You can't articulate what you expected before seeing the output
- "Looks good" is your default evaluation
- You accept plausible-sounding output without rigorous assessment
- Your mental model of AI capabilities doesn't improve over time
- You're frequently surprised (positively or negatively) but don't update

### Root Cause

- Passive consumption habits from other media
- Time pressure discouraging deliberate evaluation
- Lack of awareness that anticipation is a skill
- Over-trust in AI outputs

### The Fix

1. **Pause before reading** — form an explicit prediction
   ```
   "Before I look: I expect this to cover X, probably miss Y, and maybe suggest Z."
   ```

2. **Compare against your prediction**
   ```
   "Did it match? What surprised me? What does that reveal?"
   ```

3. **Track surprise patterns** — repeated surprises in one direction mean your mental model is miscalibrated

4. **Use surprise as signal**
   - Positive surprise → delegate more of this type
   - Negative surprise → prompt quality issue or AI limitation?

### The Deeper Issue

Reactive evaluation means you're not building a calibrated model of AI capabilities. You're flying blind, unable to predict what AI will do well or poorly. Anticipatory calibration is scientific thinking applied to AI collaboration.

---

## Anti-Pattern 4: Infinite Refinement

### What It Looks Like

Never reaching "good enough." Endless iteration without convergence.

```
Iteration 15:
Human: "This is almost right, but the third paragraph could be clearer..."
AI: [Revises]
Human: "Better, but now the flow from paragraph 2 to 3 feels off..."
[Continues indefinitely]
```

### Symptoms

- Can't ship / commit / publish anything
- Quality feels perpetually inadequate
- Small improvements feel as urgent as large ones
- You can't articulate what "done" looks like

### Root Cause

- Perfectionism
- Unclear success criteria
- Fear of judgment
- Using iteration as procrastination

### The Fix

1. **Define "done" before starting**
   ```
   "This is done when: [specific criteria]"
   ```

2. **Set iteration limits**
   ```
   "We'll do at most 3 refinement rounds, then ship."
   ```

3. **Distinguish cosmetic from substantive**
   - Would this change affect outcomes?
   - Would anyone notice besides me?

4. **Apply the "good enough" test**
   ```
   "Is this good enough to serve its purpose? Not perfect—good enough."
   ```

### Convergence Signals

- Changes are getting smaller
- You're oscillating between versions
- Improvements don't affect core purpose
- You're wordsmithing, not restructuring

---

## Anti-Pattern 5: Lazy Prompting

### What It Looks Like

Vague prompts, then frustration with vague outputs.

```
Human: "Make this better."
AI: [Makes changes]
Human: "No, not like that. Better."
AI: [Makes different changes]
Human: "This AI doesn't understand me."
```

### Symptoms

- Frequent frustration with AI outputs
- Feeling like the AI "doesn't get it"
- Multiple clarification rounds on every task
- Blaming the tool instead of the input

### Root Cause

- Thinking isn't clear enough to articulate
- Assuming AI can read your mind
- Underestimating the value of specificity
- Laziness (hoping AI will do the thinking)

### The Fix

1. **Articulate before prompting**
   - What exactly do I want?
   - What does success look like?
   - What constraints matter?

2. **Be specific about dimensions**
   ```
   Bad:  "Make this better"
   Good: "Make this more concise while keeping the technical accuracy.
          Target audience is senior engineers. Aim for 50% fewer words."
   ```

3. **Provide examples**
   ```
   "Here's an example of the style I want: [example]"
   ```

4. **If output is wrong, diagnose input first**
   - What didn't I specify?
   - What could I have meant?

---

## Anti-Pattern 6: Hallucination Acceptance

### What It Looks Like

Trusting AI outputs without verification, especially factual claims.

```
AI: "According to the React documentation, useEffect cleanup runs
     before every re-render."
Human: [Implements based on this claim without checking]
[Later: Bug because the claim was subtly wrong]
```

### Symptoms

- Treating AI output as authoritative
- No verification step for factual claims
- Surprised when AI-generated code doesn't work
- "But the AI said..." as a defense

### Root Cause

- Overestimating AI reliability
- Time pressure / convenience
- Not knowing what needs verification
- Fluency ≠ accuracy (AI sounds confident even when wrong)

### The Fix

1. **Treat AI output as draft, not truth**

2. **Verify factual claims** — especially:
   - API behaviors
   - Library functions
   - Configuration syntax
   - Security implications

3. **Test generated code** — actually run it

4. **Triangulate important information**
   ```
   "Is this consistent with the official documentation?"
   "Let me verify this against the source."
   ```

5. **Calibrate by domain** — AI is more reliable on common patterns, less on edge cases

---

## Anti-Pattern 7: Rubber Stamping

### What It Looks Like

Approving AI outputs without meaningful review.

```
AI: "Here's my implementation plan: [lengthy plan]"
Human: [Skims for 5 seconds] "Looks good, proceed."
[Later: Plan had a fundamental flaw]
```

### Symptoms

- Approval time is constant regardless of complexity
- Can't explain why you approved something
- Surprises in implementation that "should have been caught"
- Treating checkpoints as interruptions

### Root Cause

- Decision fatigue
- Trust without verification
- Time pressure
- Checkpoints feel like overhead

### The Fix

1. **Match review depth to stakes**
   - Routine task? Quick review is fine.
   - Architectural decision? Deep engagement required.

2. **Verbalize your review**
   ```
   "Let me make sure I understand: you're proposing X because Y,
    which means Z. Is that right?"
   ```

3. **Ask at least one question** — forces engagement
   ```
   "What's the riskiest part of this plan?"
   ```

4. **If you don't have time to review, say so**
   ```
   "I can't properly review this right now. Let's pause and
    come back when I can give it attention."
   ```

---

## Anti-Pattern 8: Complexity Creep

### What It Looks Like

Each iteration makes the solution more complex rather than clearer.

```
Iteration 1: Simple solution
Iteration 2: Added error handling
Iteration 3: Added configuration options
Iteration 4: Added abstraction layer
Iteration 5: Now it's a framework
[Original problem: format a string]
```

### Symptoms

- Solutions grow more complex with each refinement
- "While we're at it..." additions
- Losing sight of original problem
- Over-engineering simple tasks

### Root Cause

- Feature creep during iteration
- AI tendency to add "improvements"
- Not distinguishing "could" from "should"
- Perfectionism about edge cases

### The Fix

1. **Anchor to original problem**
   ```
   "Wait—does this complexity serve the original goal?"
   ```

2. **Apply YAGNI** (You Ain't Gonna Need It)
   ```
   "Let's remove anything we don't need RIGHT NOW."
   ```

3. **Simplify after adding**
   ```
   "Now that it works, what can we remove?"
   ```

4. **Track complexity direction**
   - If complexity only increases, something's wrong

---

## Anti-Pattern 9: Cognitive Atrophy

### What It Looks Like

Declining ability to think without AI scaffolding.

```
Before AI: Could debug code by reading it
After AI:  "Claude, what's wrong with this code?"
           [Can't start without AI assistance]
```

### Symptoms

- Helpless without AI access
- Skills that existed before have faded
- Can't explain how things work, only that AI helped
- Anxiety when AI is unavailable

### Root Cause

- Over-reliance without intentional practice
- Using AI to DO instead of to LEARN
- No unassisted practice
- Confusing tool capability with personal capability

### The Fix

1. **Regular unassisted practice**
   - Pick one task per week to do without AI
   - Notice what's hard

2. **Use AI to learn, not just do**
   ```
   "Don't give me the answer—help me figure it out."
   ```

3. **Test internalization**
   - Can you explain this to someone else?
   - Could you do this again without help?

4. **Celebrate independence**
   - When you can do something without AI that you once needed help with, that's success

---

## Anti-Pattern 10: Goal Drift

### What It Looks Like

Losing sight of the original objective through successive iterations.

```
Original goal: Write a function to validate emails
Iteration 1: Validation function
Iteration 2: Added internationalization
Iteration 3: Now discussing email standards
Iteration 4: Debating whether email validation is even possible
Iteration 5: Philosophical tangent about identity
[Email function never completed]
```

### Symptoms

- Can't remember what you were originally trying to do
- Tangents feel as important as the main task
- Scope expands with each exchange
- Deliverable never materializes

### Root Cause

- Interesting tangents are more engaging than boring tasks
- No explicit goal tracking
- AI is happy to explore any direction
- Losing forest for trees

### The Fix

1. **State the goal explicitly at the start**
   ```
   "My goal is: [specific deliverable]. Let's stay focused on this."
   ```

2. **Check alignment periodically**
   ```
   "Are we still working toward [original goal]?"
   ```

3. **Capture tangents separately**
   ```
   "That's interesting but off-topic. Let me note it for later.
    Back to [original goal]."
   ```

4. **Time-box explorations**
   ```
   "Let's spend 5 minutes on this tangent, then return to the main task."
   ```

---

## Anti-Pattern 11: Abstraction Addiction

### What It Looks Like

Preferring abstract discussion over concrete action.

```
Human: "Let's discuss the principles of good API design."
[30 minutes of high-level discussion]
Human: "Great insights. Now, about the principles of REST..."
[Never actually designs an API]
```

### Symptoms

- Lengthy discussions, few deliverables
- Preference for "exploring" over "building"
- Abstract frameworks feel more valuable than working code
- Implementation feels like a comedown from strategic thinking

### Root Cause

- Abstract discussion feels productive without accountability
- Concrete work can fail; abstract work cannot
- AI is good at abstract discussion (trained on it)
- Some problems don't need solving, just discussing

### The Fix

1. **Force concreteness**
   ```
   "Enough principles. Show me what this looks like in code."
   ```

2. **Deliverable-first framing**
   ```
   "I need a working [thing], not a framework for thinking about [thing]."
   ```

3. **Time-limit abstraction**
   ```
   "5 minutes on principles, then we implement."
   ```

4. **Concrete validation**
   ```
   "Does this abstract insight change what we actually build? If not, move on."
   ```

---

## Anti-Pattern 12: Reinvention Addiction

### What It Looks Like

Repeatedly solving the same type of problem from scratch instead of capturing and reusing effective patterns.

```
Week 1: "Help me structure this code review"
[Great approach discovered]

Week 2: "Help me structure this other code review"
[Starts from scratch, same questions, same process]

Week 3: "Help me structure yet another code review"
[Still hasn't captured the pattern as a skill]
```

### Symptoms

- Solving the same category of problem repeatedly without efficiency gains
- "We figured this out before" moments that don't lead to capture
- Effective approaches exist only in conversation history
- No skill library despite repeated successful patterns
- Relying on memory instead of infrastructure

### Root Cause

- Capture feels like "extra work" in the moment
- Not recognizing when a pattern has reached skill-worthy status
- Undervaluing future time savings
- Preference for "fresh" solutions over systematized ones
- Conversation feels more natural than documentation

### The Fix

1. **Notice repetition**
   ```
   "Wait—I've done this same sequence before. Is this skill-worthy?"
   ```

2. **Set a capture trigger**
   - Third time solving the same type of problem? Capture it.
   - If you're explaining your approach, it's probably worth documenting.

3. **Use /dcf skill**
   ```
   "Let's capture this pattern as a reusable skill before we forget."
   ```

4. **Value infrastructure**
   - 10 minutes capturing a pattern saves hours over time
   - Your skill library is compounding expertise

### The Deeper Issue

Reinvention addiction treats each session as isolated rather than building cumulative capability. Effective DCF practice includes recognizing when you've discovered something reusable and taking the time to capture it. Your future self will thank you.

---

## Anti-Pattern 13: Context Rot

**The Pattern**: Allowing the conversation context to degrade through accumulated noise, contradictions, or irrelevant information until the AI's performance noticeably suffers.

```
[Session starts clean]
Human: Great explanation of the auth system!
Human: Actually wait, let's try a different approach...
Human: No, go back to the first idea.
Human: Here's some additional context [pastes large document]
Human: Ignore that last part, it's outdated.
[40 messages later]
Human: Why does Claude keep getting confused about basic requirements?
```

### The Four Causes of Context Rot

1. **Poisoning**: Incorrect information enters the context and isn't corrected
   - Outdated requirements pasted and never updated
   - Wrong assumptions stated early that are never explicitly revised

2. **Distraction**: Irrelevant information dilutes attention
   - Large documents pasted "just in case"
   - Tangential discussions that don't get cleared

3. **Confusion**: Similar but different information creates ambiguity
   - Multiple versions of the same spec
   - Contradictory instructions at different points

4. **Clash**: Direct contradictions that create logical impossibilities
   - "Use approach A" followed later by "Use approach B" without resolution
   - Requirements that cannot all be satisfied simultaneously

### Symptoms

- AI performance degrades as session lengthens
- Repeated misunderstandings of "obvious" requirements
- AI seems to forget or contradict earlier agreements
- You're frequently saying "No, I meant..." or "Remember when we said..."
- Context usage hits 60%+ without proportional value

### Root Cause

- Treating context like infinite storage rather than working memory
- Not recognizing when context hygiene is needed
- Reluctance to clear and restart because of sunk cost
- Pasting large documents without summarizing relevance
- Not explicitly resolving contradictions when plans change

### The Fix

1. **Monitor context health**
   ```
   Check /context periodically. If above 50-60% on a complex task,
   consider clearing.
   ```

2. **Explicit contradiction resolution**
   ```
   "Earlier we said X, but now we're doing Y. To be clear: Y is the
   current approach, ignore X."
   ```

3. **Summarize, don't paste**
   ```
   Instead of pasting a 500-line doc, summarize: "The key constraints
   from the spec are: 1, 2, 3. Full doc at path/to/spec.md if needed."
   ```

4. **Clear and restart with summary**
   ```
   When context gets cluttered, use /clear then restart with a clean
   summary of current state and next steps.
   ```

5. **Use /dcf compact proactively**
   ```
   Before context gets critical, capture state in a durable document
   that can survive a fresh start.
   ```

### The Deeper Issue

Context is the AI's working memory. Just as you can't think clearly with a cluttered desk and competing demands, the AI can't perform well with poisoned, distracted, confused, or clashing context. Context hygiene is a skill that improves outcomes more than most prompt engineering tricks.

---

## Anti-Pattern 14: Knowledge Gatekeeping

### What It Looks Like

Organizational knowledge hoarding that prevents effective AI collaboration.

```
Developer: "I want to use Claude to help refactor the auth system"
Reality: The auth system's quirks exist only in Sarah's head
Result: AI produces technically correct but contextually wrong changes
```

The AI has access to code, but not to the tribal knowledge that makes the code make sense.

### Symptoms

- "Ask [person], they know how that works"
- Undocumented decisions, conventions, and gotchas
- Fear of looking ignorant prevents questions
- AI-assisted work requires constant "actually, we don't do it that way" corrections
- Same AI failures repeat because context never gets documented

### Root Cause

- Information asymmetry treated as job security
- No culture of documentation or knowledge sharing
- Psychological safety issues (asking = admitting ignorance)
- Time pressure that prevents proper onboarding
- Territorial ownership of code/systems

### The Fix

1. **Build shared context infrastructure**
   ```
   Create a context-engineering repo or team wiki where AI-relevant
   knowledge gets captured: conventions, gotchas, architectural decisions.
   ```

2. **Normalize knowledge sharing**
   ```
   "What I learned today" becomes a team ritual.
   Questions are celebrated, not stigmatized.
   ```

3. **Document for AI, not just humans**
   ```
   CLAUDE.md files, inline comments explaining "why", and ADRs
   (Architecture Decision Records) give AI the context it needs.
   ```

4. **Permission to explore**
   ```
   Explicitly invite: "You don't need to be the expert to work on this."
   Reduce territorial ownership.
   ```

### Connection to DCF

Knowledge gatekeeping is the organizational equivalent of "lazy prompting" - expecting good outputs without providing necessary context. DCF assumes you can provide quality input to get quality reflection. If knowledge is locked in people's heads, AI can only reflect what's visible in code.

### The Organizational Insight

AI amplifies what you know. If knowledge is siloed, AI benefits are siloed too. The teams that gain most from AI are those that have already built knowledge-sharing cultures. For others, AI adoption becomes a forcing function to fix long-standing information asymmetries.

---

## Quick Reference: Anti-Pattern Detection

| You Might Be In... | If You Notice... |
|--------------------|------------------|
| Socratic Theater | Questions but no course changes |
| Mirror Narcissism | Only confirming, never challenging |
| Reactive Evaluation | No expectations, just "looks good" |
| Infinite Refinement | Can't ship, always "almost done" |
| Lazy Prompting | Frustrated with AI "not getting it" |
| Hallucination Acceptance | No verification, just trust |
| Rubber Stamping | Fast approvals, later surprises |
| Complexity Creep | Solutions only grow, never simplify |
| Cognitive Atrophy | Can't function without AI |
| Goal Drift | Forgot original objective |
| Abstraction Addiction | Discussing, not doing |
| Reinvention Addiction | Solving same problem type from scratch repeatedly |
| Context Rot | AI performance degrades as session lengthens |
| Knowledge Gatekeeping | AI fails because tribal knowledge isn't documented |

---

## The Meta-Fix: Self-Awareness

The universal remedy: **metacognitive awareness**.

Periodically ask yourself:
- What am I actually trying to accomplish?
- Is this interaction serving that goal?
- Am I engaging genuinely or going through motions?
- Would I be embarrassed if someone watched this session?

If you notice a pattern, name it. Naming gives you power over it.

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
