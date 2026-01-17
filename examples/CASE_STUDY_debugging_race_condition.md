# Case Study: Debugging an Intermittent Race Condition

**Author:** Anonymous Contributor
**Date:** January 2026
**Domain:** Software Development
**Duration:** ~45 minutes

---

## Context

### Situation

A payment processing service was experiencing intermittent failures in production. Approximately 0.3% of transactions were failing with a "duplicate key" database error, but only under load. The bug couldn't be reproduced in development or staging environments.

### Background

- The service had been stable for 8 months
- A recent deployment added a new "retry with idempotency" feature
- The team had spent 2 days trying to reproduce and fix the issue
- Standard debugging (logs, traces, unit tests) hadn't revealed the cause
- Pressure was mounting as the failure rate was affecting revenue

### Why DCF?

After two days of staring at the code without progress, I realized I was stuck in a loop: read code, make hypothesis, can't reproduce, repeat. I decided to use AI as a thinking partner rather than just asking "what's wrong with this code?"

---

## DCF Application

### Approach

- [x] Thinking Mirror (articulation for insight)
- [x] Socratic Questioning (elenchus, maieutics, dialectic, aporia)
- [x] Recursive Refinement (iterative improvement)
- [ ] Checkpoint Protocol (structured review)
- [ ] Learning Stance (understanding over answers)

### The Interaction

**Opening:**

I started not by pasting code, but by articulating my mental model:

> I have a race condition I can't find. Let me describe what I think is happening, and I want you to challenge my assumptions.
>
> The flow is: Request comes in → Check if idempotency key exists → If not, insert record with key → Process payment → Return success
>
> My hypothesis: Two requests with the same idempotency key arrive simultaneously, both pass the "check if exists" step, then both try to insert, causing duplicate key error.
>
> But here's what confuses me: We have database-level unique constraints, so one insert should succeed and one should fail with a constraint violation - which we handle. So why are we seeing unhandled errors?

**Key Exchange 1 — The Assumption Challenge:**

> **AI:** Let me make sure I understand your model. You said:
> 1. Check if key exists (SELECT)
> 2. If not, insert record (INSERT)
> 3. Process payment
> 4. Return success
>
> A few questions to surface assumptions:
> - Is the "check if exists" and "insert" happening in a single transaction, or are they separate database calls?
> - When you say you "handle" the constraint violation, what exactly happens in that handler?
> - You mentioned this is a "retry with idempotency" feature - does the retry logic interact with the idempotency check?

The second question stopped me cold. I realized I hadn't actually traced what the constraint violation handler did. I assumed it returned the cached response, but I hadn't verified it.

**Key Exchange 2 — The Discovery:**

After checking the code:

> **ME:** You're right to ask. I looked at the handler, and here's what it does: on constraint violation, it queries for the existing record and returns its cached response. But wait... the retry feature ALSO catches exceptions and retries. Let me check if...
>
> Oh. The retry wrapper is catching the constraint violation BEFORE our handler sees it. It's retrying the entire operation, including the insert. So we get: insert fails → retry catches it → retries the insert → fails again → retries → eventually exhausts retries and throws a different error.
>
> **AI:** That would explain why you see "duplicate key error" but not your handled constraint violation response. The retry wrapper is swallowing the specific exception you designed to handle.
>
> What's the exception hierarchy? Is the retry configured to catch all exceptions, or specific types?

This was exactly it. The retry decorator was configured with a broad exception base class that included database constraint violations.

**Resolution:**

> **ME:** Found it. The retry decorator uses `catch=DatabaseError` which is the parent class of `UniqueConstraintViolation`. I need to either:
> 1. Make retry exclude `UniqueConstraintViolation`, or
> 2. Move the idempotency check outside the retry boundary
>
> **AI:** Option 2 seems cleaner - idempotency checking is conceptually separate from "retry on transient failure." A unique constraint violation isn't transient; retrying won't help.
>
> But before implementing, what's the riskiest assumption in either approach?

I chose option 2 and the fix worked. The 0.3% failure rate dropped to zero.

### DCF Principles in Action

| Principle | How It Appeared |
|-----------|-----------------|
| Thinking Mirror | Articulating my mental model revealed I hadn't verified the handler behavior |
| Elenchus | AI's questions about transaction boundaries and handler behavior exposed unexamined assumptions |
| Recursive Refinement | Each exchange refined understanding: model → handler → retry interaction → fix |

---

## Outcomes

### Primary Outcome

Bug identified and fixed in 45 minutes after 2 days of stalling. The issue was an interaction between two features (idempotency and retry) that neither developer had considered.

### Secondary Outcomes

- Discovered a general pattern: broad exception catching can mask specific handlers
- Added a team guideline: retry decorators should exclude non-transient exceptions
- Gained appreciation for articulating mental models before diving into code

### Comparison to Counterfactual

Without DCF: I would have continued reading code and adding logging, trying to reproduce in staging. Might have eventually found it, but likely would have taken another day or more. More importantly, I was looking at the wrong part of the code entirely - I was focused on the database operations, not the retry wrapper.

---

## Analysis

### What Worked

1. **Starting with mental model, not code** - Forced me to articulate assumptions
2. **AI asking "what does the handler actually do?"** - Simple question I hadn't thought to verify
3. **Not asking "fix my code"** - The conversation explored the problem space, not just generated solutions

### What Didn't Work

1. Initially I almost just pasted the code and asked "what's wrong?" - caught myself
2. First response was too long - should have been more focused

### Surprises

The bug wasn't in the code I was looking at. The DCF process led me to adjacent code (the retry wrapper) that I hadn't considered as a suspect. This reframing was the key insight.

### Key Insight

**The bug was in my mental model, not (just) in the code.** I had a correct model of idempotency and a correct model of retry, but I never combined them mentally. DCF's insistence on articulating thinking made the gap visible.

---

## Patterns and Transferability

### Applicable Patterns

| Pattern | When to Apply |
|---------|---------------|
| **Articulate before debugging** | When stuck on any non-obvious bug |
| **Question the handler** | When you have error handling you haven't traced |
| **Look for feature interactions** | When bug appears after adding new features to stable code |

### Prerequisites

- Willingness to slow down and articulate (hard under pressure)
- AI as thinking partner, not answer machine
- Accepting that the problem might not be where you're looking

### Anti-Patterns Avoided

- [x] Lazy Prompting - Almost just pasted code, caught myself
- [x] Hallucination Acceptance - Verified AI's suggestions against actual code
- [ ] Socratic Theater - Genuinely didn't know the answers
- [ ] Rubber Stamping - N/A (debugging, not reviewing)

Notes:
The temptation to just paste code and ask "what's wrong?" was strong, especially given time pressure. Taking 5 minutes to articulate my model felt like a waste but turned out to be the key.

---

## Reflection

### Personal Growth

Learned that my debugging process was too focused on "find the bug in this code" rather than "verify my model of how this code works." Now I start debugging sessions by writing out what I think happens.

### What Would You Do Differently?

Would have started with DCF approach from day 1 instead of after 2 days of frustration. Also would structure the opening articulation more formally - maybe use a template.

### Rating

| Aspect | Rating (1-5) |
|--------|--------------|
| Clarity gained | 5/5 |
| Time efficiency | 4/5 |
| Outcome quality | 5/5 |
| Personal growth | 4/5 |
| **Overall** | **4.5/5** |

---

## Artifacts

### Transcript Excerpt

See "Key Exchange 1" and "Key Exchange 2" above - these are lightly edited excerpts from the actual conversation.

### Related Materials

- Team guideline added: "Retry decorators should exclude non-transient exceptions"
- Internal wiki updated with this case as an example

---

## Submission

**Submitted to:** DCF GitHub Repository
**Date submitted:** January 2026

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
