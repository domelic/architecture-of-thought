# Case Study: API Architecture Decision — REST vs. GraphQL

**Author:** Anonymous Contributor
**Date:** January 2026
**Domain:** System Design / Strategic Decision
**Duration:** ~90 minutes (spread over 2 sessions)

---

## Context

### Situation

Our team was starting a new customer-facing API for a B2B SaaS product. The API would be used by enterprise customers to integrate our analytics platform into their systems. We needed to decide between REST and GraphQL architectures.

### Background

- Team had strong REST experience, limited GraphQL experience
- Enterprise customers had mixed technical capabilities
- API would need to support complex, nested data queries
- Long-term maintainability was critical (5+ year horizon)
- Decision would be difficult to reverse once customers integrated

### Why DCF?

This wasn't a "right answer" problem—both architectures could work. The challenge was making a decision we could defend and live with. I wanted to think through it rigorously rather than defaulting to familiarity (REST) or novelty (GraphQL).

---

## DCF Application

### Approach

- [x] Thinking Mirror (articulation for insight)
- [x] Socratic Questioning (elenchus, maieutics, dialectic, aporia)
- [ ] Recursive Refinement (iterative improvement)
- [x] Checkpoint Protocol (structured review)
- [ ] Learning Stance (understanding over answers)

### The Interaction

**Opening — Framing the Real Decision:**

I started by articulating what I thought we were deciding:

> We need to choose between REST and GraphQL for our new B2B API. REST is what we know, GraphQL seems better for complex queries. Help me think through this.

The AI immediately reframed:

> **AI:** Before comparing architectures, let's be clear about what you're optimizing for. You mentioned "complex queries" and "enterprise customers." A few questions:
>
> 1. What makes queries "complex" in your domain? Many nested relationships? Varied data needs per customer? High query customization?
>
> 2. Who are these enterprise customers? Do they have dedicated integration teams, or are they using low-code tools? What's their technical sophistication range?
>
> 3. What does "long-term maintainability" mean to you? Schema stability? Backward compatibility? Team onboarding?

This reframing was crucial. I realized I was treating the decision as "REST vs. GraphQL" when the real question was "What does our customer need, and which architecture serves that?"

**Key Exchange 1 — Surfacing the Real Constraints:**

> **ME:** Okay, let me think through your questions:
>
> 1. Complex = customers query across accounts, users, events, and computed metrics. One customer might need just account summaries; another needs full event streams with user details. Very different shapes.
>
> 2. Customers range from "dedicated integration team" to "one developer who also does IT support." We can't assume GraphQL expertise.
>
> 3. Maintainability = we'll evolve the data model, but can't break existing integrations. Also, half our team is new to APIs; steep learning curve is risky.
>
> **AI:** Now we have clearer constraints:
> - **Varied data shapes**: Points toward GraphQL
> - **Low customer technical sophistication**: Points toward REST
> - **Team inexperience + need for stability**: Points toward REST
>
> The tension is real. But let me challenge one assumption: you said customers "range from" dedicated teams to single developers. What's the actual distribution? If 90% are sophisticated, that changes the calculus.

I didn't know the distribution off the top of my head. This sent me to talk to our sales team.

**Key Exchange 2 — The Dialectic:**

After getting customer data:

> **ME:** Talked to sales. Roughly 60% of customers have integration teams; 40% are "one dev wearing many hats." But here's the thing: the 60% generate 85% of our revenue.
>
> **AI:** That's a critical insight. Now let's steelman both sides:
>
> **Case for GraphQL:**
> - Your high-value customers (60%, 85% revenue) likely can handle GraphQL
> - Their "varied data shape" need is exactly GraphQL's strength
> - You could provide REST-like "preset queries" for simpler customers
>
> **Case for REST:**
> - 40% of customers would struggle; that's not a trivial minority
> - Team learning curve creates near-term delivery risk
> - "REST with good filtering/expansion" might serve complex needs adequately
> - GraphQL's flexibility can become a support burden (N+1 queries, etc.)
>
> What's the strongest argument against each?

**Key Exchange 3 — The Checkpoint Protocol:**

> **ME:** Strongest argument against GraphQL: our team doesn't know it, and we're already behind on delivery. Introducing learning curve now is risky.
>
> Strongest argument against REST: we'll end up with 50 endpoints to serve different customer needs, and it'll become unmaintainable.
>
> **AI:** Good. Now the checkpoint questions:
>
> 1. **What alternatives were considered?** Have you considered a hybrid? REST for simple use cases, GraphQL for power users? Or REST now with a path to GraphQL later?
>
> 2. **What's the riskiest assumption?** You're assuming team can't learn GraphQL fast enough. Is that true? How long would it take?
>
> 3. **What would make this decision fail?** For each option, what scenario would make you regret it in 2 years?

The third question was key. I realized REST failure mode was "death by a thousand endpoints." GraphQL failure mode was "support nightmare from inexperienced customers writing bad queries."

**Resolution:**

> **ME:** I think the answer is REST with a clear extension path. We do REST now, but design our data models knowing we might expose them via GraphQL later. We also invest in good filtering and sparse fieldsets on REST to handle varied data needs.
>
> The failure mode I can live with is "we add GraphQL in 18 months when team is ready." The failure mode I can't live with is "we shipped GraphQL, half our customers can't use it, team is drowning in support."
>
> **AI:** That sounds like a reasoned decision. To make it concrete:
>
> 1. Document the "GraphQL later" assumption so it doesn't get lost
> 2. Design REST responses with GraphQL-compatible structure (no transformation needed later)
> 3. Set a review trigger: "When >70% of support tickets are about data fetching limitations, revisit GraphQL"

### DCF Principles in Action

| Principle | How It Appeared |
|-----------|-----------------|
| Thinking Mirror | Initial framing was "REST vs. GraphQL"; reframed to "what do customers need?" |
| Dialectic | Steelmanned both architectures before deciding |
| Checkpoint Protocol | Applied the three checkpoint questions to stress-test the decision |
| Elenchus | "What's the actual customer distribution?" sent me to get real data |

---

## Outcomes

### Primary Outcome

Decided on REST with explicit GraphQL-ready design and a documented decision record. The decision was accepted by the team and stakeholders because it came with clear reasoning and failure mode analysis.

### Secondary Outcomes

- Created a decision record template based on the checkpoint questions
- Established "review trigger" pattern for deferring decisions with clear revisit criteria
- Sales team appreciated being consulted on customer sophistication distribution

### Comparison to Counterfactual

Without DCF: Likely would have defaulted to REST because it's familiar, without articulating why. Or, equally likely, someone would have championed GraphQL as "modern" without analyzing customer needs. Either way, the decision would have been based on preference rather than reasoning.

---

## Analysis

### What Worked

1. **Reframing from "A vs. B" to "What are we solving for?"** — Prevented premature debate
2. **Going to get real data** — Customer distribution wasn't just trivia; it changed the analysis
3. **Steelmanning both sides** — Made the final decision more defensible
4. **Checkpoint questions** — Surfaced the "riskiest assumption" and failure modes

### What Didn't Work

1. **Initial prompt was lazy** — "Help me think through this" needed more structure
2. **First session ended without decision** — Had to come back after getting customer data; could have anticipated this

### Surprises

The "review trigger" idea—setting concrete criteria for when to revisit the decision—was something I hadn't considered. It turned a permanent-feeling decision into a staged one.

### Key Insight

**Architecture decisions aren't "which technology is better" but "which technology serves our constraints."** DCF forced me to articulate constraints (customer sophistication, team experience, maintenance horizon) before comparing solutions.

---

## Patterns and Transferability

### Applicable Patterns

| Pattern | When to Apply |
|---------|---------------|
| **Constraint articulation first** | Any "A vs. B" technology decision |
| **Steelman both sides** | When you notice preference driving analysis |
| **Review triggers** | Decisions that feel permanent but might need revisiting |
| **Get real data** | When a key assumption is based on vibes, not facts |

### Prerequisites

- Willingness to defer decision to get better information
- Stakeholders who value reasoning over speed
- Time to do the analysis (not always available)

### Anti-Patterns Avoided

- [x] Lazy Prompting - Initial prompt was weak; AI reframed productively
- [ ] Mirror Narcissism - Genuinely open to either architecture
- [x] Rubber Stamping - Did the checkpoint protocol sincerely
- [ ] Socratic Theater - Real questions, real uncertainty

Notes:
I was tempted to skip the "go get customer data" step because it required talking to sales (friction). DCF's insistence on examining assumptions made me do it anyway.

---

## Reflection

### Personal Growth

Learned to distinguish between "technology comparison" and "technology for this context." Also learned the "review trigger" pattern, which I've since used for other deferrable decisions.

### What Would You Do Differently?

Would start with constraint articulation explicitly: "Before comparing options, let me list what we're optimizing for." Also would anticipate data-gathering needs and do them before the AI session.

### Rating

| Aspect | Rating (1-5) |
|--------|--------------|
| Clarity gained | 5/5 |
| Time efficiency | 3/5 |
| Outcome quality | 5/5 |
| Personal growth | 4/5 |
| **Overall** | **4.25/5** |

Time efficiency was lower because I had to pause for data gathering. Worth it, but could be anticipated.

---

## Artifacts

### Transcript Excerpt

See "Key Exchange 2" and "Key Exchange 3" above—lightly edited from actual conversation.

### Related Materials

- Architecture Decision Record (ADR) created documenting the reasoning
- Review trigger set: "Revisit GraphQL when >70% of data-fetching support tickets"
- Team retrospective included this as example of "good decision process"

---

## Submission

**Submitted to:** DCF GitHub Repository
**Date submitted:** January 2026

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
