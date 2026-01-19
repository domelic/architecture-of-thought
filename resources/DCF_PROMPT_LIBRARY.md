# DCF Prompt Library

Ready-to-use Socratic prompts organized by situation. Copy and adapt as needed.

---

## Clarification Prompts

### When requirements are unclear

```text
Before I proceed, help me understand:
- What problem are we actually solving?
- Who is this for and what do they need?
- What does success look like?
```text

```text
I want to make sure I understand. You're asking for [X], which means [Y].
Is that right, or am I missing something?
```text

```text
What's the one thing this absolutely must do? What's negotiable?
```text

### When scope is ambiguous

```text
This could be interpreted as [A] or [B]. Which direction should we go?
```text

```text
Should this be a minimal solution that works, or a robust solution that handles edge cases?
```text

```text
What's out of scope? What should I explicitly NOT build?
```text

---

## Challenge Prompts

### Questioning assumptions

```text
What assumptions are built into that approach?
```text

```text
What would change if [key constraint] were different?
```text

```text
Why this approach instead of [alternative]? What are we optimizing for?
```text

```text
What are we taking for granted that might not be true?
```text

### Stress-testing decisions

```text
What's the strongest argument against this approach?
```text

```text
If this fails, what's the most likely reason?
```text

```text
What would make us regret this decision in 6 months?
```text

```text
Who would disagree with this, and why?
```text

### Finding blind spots

```text
What am I not seeing about this problem?
```text

```text
What question should I be asking that I'm not?
```text

```text
What does someone who's solved this before know that I don't?
```text

---

## Plan Review Prompts

### Before approving a plan

```text
Before I approve this plan:
1. What alternatives did you consider?
2. What's the riskiest assumption?
3. What would make this approach fail?
```text

```text
Walk me through the trade-offs. What does this optimize for? What does it sacrifice?
```text

```text
What's the simplest version of this plan that could work?
```text

```text
If we had half the time, what would you cut?
```text

### Evaluating complexity

```text
Is this complexity necessary, or are we over-engineering?
```text

```text
What's the maintenance burden of this approach?
```text

```text
Could someone new to the codebase understand this?
```text

---

## Anticipatory Calibration Prompts

### Before reading AI output

```text
[Pause] What do I expect this response to contain?
```text

```text
I predict the AI will suggest [X]. Let me see if that's right.
```text

```text
Before I read: I expect this to be strong on [A] but probably miss [B].
```text

### After receiving output

```text
That surprised me—I expected [X] but got [Y]. What does that tell me?
```text

```text
This matched my prediction exactly. Am I being too predictable in my prompts?
```text

```text
The AI exceeded my expectations on [X]. I should trust it more with similar tasks.
```text

### Calibrating your mental model

```text
I keep being surprised by [pattern]. My model of AI capabilities is off—how should I update it?
```text

```text
I expected this to be easy for AI but it struggled. Why?
```text

---

## Code Review Prompts

### Understanding code

```text
Explain this code as if I'm a new team member. What's the key insight?
```text

```text
What's the "why" behind this implementation choice?
```text

```text
Where are the assumptions buried in this code?
```text

### Finding issues

```text
What edge cases does this not handle?
```text

```text
Where could this fail silently?
```text

```text
What would a security reviewer flag here?
```text

```text
Is there a simpler way to achieve the same result?
```text

### Verifying correctness

```text
How would we test that this works correctly?
```text

```text
What would convince me this is production-ready?
```text

```text
What monitoring or logging would help us know if this breaks?
```text

---

## Learning Prompts

### Understanding concepts

```text
Explain [concept] as if I'm smart but unfamiliar with this domain.
```text

```text
What's the key insight that would unlock my understanding of this?
```text

```text
What prerequisite knowledge am I missing?
```text

```text
Give me an analogy that makes this click.
```text

### Guided discovery

```text
Don't give me the answer—ask me questions that help me discover it.
```text

```text
What should I be thinking about to solve this myself?
```text

```text
What's the first principle I should reason from?
```text

### Building depth

```text
I think I understand [concept]. Quiz me to find my gaps.
```text

```text
What would I need to know to teach this to someone else?
```text

```text
What's the next level of depth I should explore?
```text

---

## Debugging Prompts

### Diagnosing problems

```text
Let me describe what I'm seeing. Help me identify what's actually going wrong.
```text

```text
What are the possible causes of this behavior? Let's rank them by likelihood.
```text

```text
What assumptions am I making about how this should work?
```text

### Systematic investigation

```text
What's the smallest test case that reproduces this?
```text

```text
What changed recently that might have caused this?
```text

```text
If we assume [component] is working correctly, what does that tell us?
```text

### Getting unstuck

```text
I've been stuck on this for a while. Help me step back and see it fresh.
```text

```text
What would I try if I knew it would work?
```text

```text
Am I solving the right problem, or have I drifted?
```text

---

## Checkpoint Prompts

### At agentic decision points

```text
Before proceeding:
- Does this match my original intent?
- What assumptions did you make?
- What should I verify?
```text

```text
Summarize what you've done and why. What decision points did you encounter?
```text

```text
Is this the right level of autonomy for this task, or should I be more involved?
```text

### Progress evaluation

```text
Are we converging on a solution or going in circles?
```text

```text
What's blocking progress? What would unblock it?
```text

```text
Should we continue this approach or reconsider?
```text

---

## Synthesis Prompts

### Wrapping up work

```text
Summarize what we accomplished and the key decisions made.
```text

```text
What's the one thing I should remember from this session?
```text

```text
What would I tell my future self about this work?
```text

### Capturing learning

```text
What did I learn that I didn't know before?
```text

```text
What should be documented for others?
```text

```text
What would I do differently next time?
```text

### Identifying next steps

```text
What question should I be asking next?
```text

```text
What's the most valuable thing to work on from here?
```text

```text
What's still unresolved that will matter later?
```text

---

## Session Continuity Prompts

### Before compaction or long breaks

```text
Before we compact, let me capture what matters:
1. What did we accomplish?
2. What's still open?
3. What does future-me need to know?
```text

```text
This session is getting long. Let's document our state before context is lost.
```text

```text
Create a SESSION_FINDINGS.md with:
- Completed work and rationale
- Open questions
- Recommended next steps
- Non-obvious context
```text

### Capturing completed work

```text
Summarize what we changed this session and why each change was made.
```text

```text
Which files were modified? What was the rationale for each?
```text

```text
What decisions were made, and what alternatives did we reject?
```text

### Identifying what survives compaction

```text
What context is essential for continuing this work?
```text

```text
What assumptions are we making that aren't documented anywhere?
```text

```text
If you had to brief someone taking over this work, what would they need to know?
```text

### Prioritizing next steps

```text
What should be done next, in priority order?
```text

```text
What dependencies exist between remaining tasks?
```text

```text
What's the most important unfinished work?
```text

---

## Skill Creation Prompts

### Recognizing patterns worth capturing

```text
I've done this same sequence a few times now. Is this a pattern worth capturing as a skill?
```text

```text
What's the transferable essence of what we just did? Strip away the instance-specific details.
```text

```text
Could this approach apply to other similar tasks? What would need to change?
```text

### Extracting the skill

```text
Help me articulate the pattern we've been using. What are the key steps?
```text

```text
What made this approach work? What's the non-obvious insight?
```text

```text
If I had to teach this to someone else, what would I tell them?
```text

### Creating the skill file

```text
Let's create a skill file for this pattern. What should the usage modes be?
```text

```text
Write the instructions section for this skill—what should Claude know to execute it well?
```text

```text
What criteria determine when this skill is appropriate vs. not?
```text

### Refining existing skills

```text
This skill didn't work well for [case]. What's missing?
```text

```text
Should this be a new mode, or does the core skill need adjustment?
```text

```text
What edge cases should the skill instructions address?
```text

---

## Meta Prompts

### Process reflection

```text
Am I engaging thoughtfully or just going through the motions?
```text

```text
Am I extracting answers or building understanding?
```text

```text
What's my cognitive engagement level right now?
```text

### Collaboration calibration

```text
Is this the right level of back-and-forth, or should we adjust?
```text

```text
Am I rubber-stamping your suggestions or genuinely reviewing them?
```text

```text
What would make this collaboration more effective?
```text

---

## Prompt Formulation Techniques

### Negative to Alternative Reframing

**The Problem**: Constraints phrased as negatives ("don't do X") can confuse AI agents. They may get stuck trying to avoid something without knowing what to do instead.

**The Solution**: Replace negative constraints with positive alternatives.

| Instead of... | Say... |
|---------------|--------|
| "Don't use global variables" | "Use local variables and pass them as parameters" |
| "Don't make it too complex" | "Keep the solution simple—prefer readability over cleverness" |
| "Never use --force flag" | "Use safe git operations; if push is rejected, fetch and rebase first" |
| "Don't hardcode values" | "Extract configurable values to constants or config files" |
| "Avoid nested callbacks" | "Use async/await for asynchronous operations" |

**Why this works**: Positive instructions give the AI a clear path forward. Negative instructions only close a door without opening another.

**In CLAUDE.md files**: This is especially important. Instead of a list of "don'ts," provide a list of preferred approaches.

```text
# Instead of:
"Don't use mocks in tests unless absolutely necessary."

# Prefer:
"Write integration tests with real dependencies. If a dependency is truly
impractical to use (external API, slow database), document why before mocking."
```text

### Specificity Gradient

The more specific your prompt, the fewer iterations needed:

| Specificity Level | Example | Likely Iterations |
|-------------------|---------|-------------------|
| Vague | "Add tests for foo.py" | 3-5 |
| Medium | "Add unit tests for the parse_input function in foo.py" | 2-3 |
| Specific | "Write a test case for parse_input in foo.py covering the edge case where input is empty string, expecting ValueError" | 1 |

**When to be vague**: Exploration, when you don't know what you want yet.
**When to be specific**: Execution, when you know exactly what you need.

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
| Pattern recognition | "Is this a pattern worth capturing as a skill?" |

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
