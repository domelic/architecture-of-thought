# DCF Prompt Library

Ready-to-use Socratic prompts organized by situation. Copy and adapt as needed.

---

## Clarification Prompts

### When requirements are unclear

```
Before I proceed, help me understand:
- What problem are we actually solving?
- Who is this for and what do they need?
- What does success look like?
```

```
I want to make sure I understand. You're asking for [X], which means [Y].
Is that right, or am I missing something?
```

```
What's the one thing this absolutely must do? What's negotiable?
```

### When scope is ambiguous

```
This could be interpreted as [A] or [B]. Which direction should we go?
```

```
Should this be a minimal solution that works, or a robust solution that handles edge cases?
```

```
What's out of scope? What should I explicitly NOT build?
```

---

## Challenge Prompts

### Questioning assumptions

```
What assumptions are built into that approach?
```

```
What would change if [key constraint] were different?
```

```
Why this approach instead of [alternative]? What are we optimizing for?
```

```
What are we taking for granted that might not be true?
```

### Stress-testing decisions

```
What's the strongest argument against this approach?
```

```
If this fails, what's the most likely reason?
```

```
What would make us regret this decision in 6 months?
```

```
Who would disagree with this, and why?
```

### Finding blind spots

```
What am I not seeing about this problem?
```

```
What question should I be asking that I'm not?
```

```
What does someone who's solved this before know that I don't?
```

---

## Plan Review Prompts

### Before approving a plan

```
Before I approve this plan:
1. What alternatives did you consider?
2. What's the riskiest assumption?
3. What would make this approach fail?
```

```
Walk me through the trade-offs. What does this optimize for? What does it sacrifice?
```

```
What's the simplest version of this plan that could work?
```

```
If we had half the time, what would you cut?
```

### Evaluating complexity

```
Is this complexity necessary, or are we over-engineering?
```

```
What's the maintenance burden of this approach?
```

```
Could someone new to the codebase understand this?
```

---

## Anticipatory Calibration Prompts

### Before reading AI output

```
[Pause] What do I expect this response to contain?
```

```
I predict the AI will suggest [X]. Let me see if that's right.
```

```
Before I read: I expect this to be strong on [A] but probably miss [B].
```

### After receiving output

```
That surprised me—I expected [X] but got [Y]. What does that tell me?
```

```
This matched my prediction exactly. Am I being too predictable in my prompts?
```

```
The AI exceeded my expectations on [X]. I should trust it more with similar tasks.
```

### Calibrating your mental model

```
I keep being surprised by [pattern]. My model of AI capabilities is off—how should I update it?
```

```
I expected this to be easy for AI but it struggled. Why?
```

---

## Code Review Prompts

### Understanding code

```
Explain this code as if I'm a new team member. What's the key insight?
```

```
What's the "why" behind this implementation choice?
```

```
Where are the assumptions buried in this code?
```

### Finding issues

```
What edge cases does this not handle?
```

```
Where could this fail silently?
```

```
What would a security reviewer flag here?
```

```
Is there a simpler way to achieve the same result?
```

### Verifying correctness

```
How would we test that this works correctly?
```

```
What would convince me this is production-ready?
```

```
What monitoring or logging would help us know if this breaks?
```

---

## Learning Prompts

### Understanding concepts

```
Explain [concept] as if I'm smart but unfamiliar with this domain.
```

```
What's the key insight that would unlock my understanding of this?
```

```
What prerequisite knowledge am I missing?
```

```
Give me an analogy that makes this click.
```

### Guided discovery

```
Don't give me the answer—ask me questions that help me discover it.
```

```
What should I be thinking about to solve this myself?
```

```
What's the first principle I should reason from?
```

### Building depth

```
I think I understand [concept]. Quiz me to find my gaps.
```

```
What would I need to know to teach this to someone else?
```

```
What's the next level of depth I should explore?
```

---

## Debugging Prompts

### Diagnosing problems

```
Let me describe what I'm seeing. Help me identify what's actually going wrong.
```

```
What are the possible causes of this behavior? Let's rank them by likelihood.
```

```
What assumptions am I making about how this should work?
```

### Systematic investigation

```
What's the smallest test case that reproduces this?
```

```
What changed recently that might have caused this?
```

```
If we assume [component] is working correctly, what does that tell us?
```

### Getting unstuck

```
I've been stuck on this for a while. Help me step back and see it fresh.
```

```
What would I try if I knew it would work?
```

```
Am I solving the right problem, or have I drifted?
```

---

## Checkpoint Prompts

### At agentic decision points

```
Before proceeding:
- Does this match my original intent?
- What assumptions did you make?
- What should I verify?
```

```
Summarize what you've done and why. What decision points did you encounter?
```

```
Is this the right level of autonomy for this task, or should I be more involved?
```

### Progress evaluation

```
Are we converging on a solution or going in circles?
```

```
What's blocking progress? What would unblock it?
```

```
Should we continue this approach or reconsider?
```

---

## Synthesis Prompts

### Wrapping up work

```
Summarize what we accomplished and the key decisions made.
```

```
What's the one thing I should remember from this session?
```

```
What would I tell my future self about this work?
```

### Capturing learning

```
What did I learn that I didn't know before?
```

```
What should be documented for others?
```

```
What would I do differently next time?
```

### Identifying next steps

```
What question should I be asking next?
```

```
What's the most valuable thing to work on from here?
```

```
What's still unresolved that will matter later?
```

---

## Session Continuity Prompts

### Before compaction or long breaks

```
Before we compact, let me capture what matters:
1. What did we accomplish?
2. What's still open?
3. What does future-me need to know?
```

```
This session is getting long. Let's document our state before context is lost.
```

```
Create a SESSION_FINDINGS.md with:
- Completed work and rationale
- Open questions
- Recommended next steps
- Non-obvious context
```

### Capturing completed work

```
Summarize what we changed this session and why each change was made.
```

```
Which files were modified? What was the rationale for each?
```

```
What decisions were made, and what alternatives did we reject?
```

### Identifying what survives compaction

```
What context is essential for continuing this work?
```

```
What assumptions are we making that aren't documented anywhere?
```

```
If you had to brief someone taking over this work, what would they need to know?
```

### Prioritizing next steps

```
What should be done next, in priority order?
```

```
What dependencies exist between remaining tasks?
```

```
What's the most important unfinished work?
```

---

## Meta Prompts

### Process reflection

```
Am I engaging thoughtfully or just going through the motions?
```

```
Am I extracting answers or building understanding?
```

```
What's my cognitive engagement level right now?
```

### Collaboration calibration

```
Is this the right level of back-and-forth, or should we adjust?
```

```
Am I rubber-stamping your suggestions or genuinely reviewing them?
```

```
What would make this collaboration more effective?
```

---

## Quick Reference Card

| Situation | Go-to Prompt |
|-----------|-------------|
| Unclear requirements | "What problem are we actually solving?" |
| Before approving | "What's the riskiest assumption?" |
| Code review | "What edge cases does this not handle?" |
| Stuck | "What would I try if I knew it would work?" |
| Learning | "What's the key insight that would unlock this?" |
| Wrapping up | "What's the one thing I should remember?" |
| Before compaction | "What context is essential for continuing this work?" |

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
