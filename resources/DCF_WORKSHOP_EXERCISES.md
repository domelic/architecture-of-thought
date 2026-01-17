# DCF Workshop Exercises

Practical exercises for developing Dialectical Cognition Framework skills. Can be done solo or in groups.

---

## Exercise 1: The Mirror Experiment

**Objective:** Experience how articulation itself produces insight.

**Time:** 15 minutes

**Instructions:**

1. Choose a problem you're currently stuck on (technical, design, or conceptual)
2. Open a conversation with an AI, but before prompting, write down:
   - What you think the problem is
   - What you've already tried
   - What you think the answer might be

3. Now articulate the problem to the AI as thoroughly as possible—not asking for a solution, just explaining

4. Before reading the AI's response, write down:
   - Any new clarity you gained just from articulating
   - Assumptions you noticed while explaining
   - Questions that emerged

5. Now read the response and note: What did the mirror show you that you didn't see in your own articulation?

**Reflection Questions:**
- How much insight came from articulation vs. the AI's response?
- What does this tell you about how you should use AI?

---

## Exercise 2: The Assumption Hunt

**Objective:** Practice identifying hidden assumptions.

**Time:** 20 minutes

**Instructions:**

1. Ask an AI to explain how to solve a common problem in your domain (e.g., "How should I structure a REST API?" or "How should I organize my documentation?")

2. For each recommendation in the response, identify:
   - What assumption underlies this advice?
   - In what context would this assumption be wrong?
   - What alternative assumption could lead to different advice?

3. Challenge the AI: "What assumptions are built into your recommendation about [specific point]?"

4. Compare: Did the AI identify assumptions you missed? Did you identify assumptions the AI missed?

**Example Template:**

| Recommendation | Hidden Assumption | When It's Wrong |
|---------------|-------------------|-----------------|
| "Use JWT for auth" | Stateless is preferred | When you need instant revocation |
| "Keep functions small" | Readability > locality | When tracing flow matters more |

---

## Exercise 3: The Dialectic Duel

**Objective:** Practice productive disagreement with AI.

**Time:** 25 minutes

**Instructions:**

1. Take a position on a debatable technical topic:
   - "Microservices are better than monoliths"
   - "TypeScript is worth the overhead"
   - "Comments are code smell"
   - Or your own controversial opinion

2. Ask the AI to argue the opposing position as strongly as possible

3. Respond to each point—genuinely engage, don't just dismiss

4. Ask the AI: "What's the strongest point I made? What's the weakest?"

5. Ask yourself: Did your position change? Become more nuanced? Stay the same but better defended?

**Scoring:**
- Position unchanged, no new considerations: 0 points
- Position unchanged, but understood opposition better: 1 point
- Position became more nuanced: 2 points
- Position changed based on argument: 3 points

---

## Exercise 4: The Refinement Race

**Objective:** Practice recursive refinement and recognize convergence.

**Time:** 30 minutes

**Instructions:**

1. Give the AI a writing task: "Write a one-paragraph explanation of [concept in your field] for a non-technical audience"

2. Evaluate the first output. Don't accept it. Identify ONE specific improvement needed.

3. Request that improvement. Evaluate again. Identify ONE improvement.

4. Repeat until you reach quality convergence (changes become cosmetic).

5. Count your iterations and track what improved each time:

| Iteration | What Improved | Quality Rating (1-10) |
|-----------|--------------|----------------------|
| 1 (initial) | — | |
| 2 | | |
| 3 | | |
| ... | | |

**Analysis:**
- How many iterations to convergence?
- Where did the biggest quality jumps happen?
- Did you notice diminishing returns? Where?

---

## Exercise 5: The Checkpoint Challenge

**Objective:** Practice engaged review at agentic decision points.

**Time:** 20 minutes

**Instructions:**

1. Give an AI a multi-step task: "Create a plan for [something in your work]"

2. When the AI presents its plan, resist the urge to approve immediately

3. Apply this checkpoint protocol:
   ```
   Before I approve:
   a) What alternatives did you consider and reject?
   b) What's the riskiest assumption in this plan?
   c) What would make us regret this approach?
   ```

4. Based on the answers, either:
   - Approve with clear reasoning
   - Request a revision with specific direction
   - Reject and redirect entirely

5. Reflect: How different is the final plan from what you would have approved initially?

---

## Exercise 6: The Learning Ladder

**Objective:** Practice using AI for understanding, not just answers.

**Time:** 30 minutes

**Instructions:**

1. Choose something you want to learn but don't fully understand

2. Ask the AI: "I want to understand [topic]. Instead of explaining it, ask me questions that will help me discover the key concepts."

3. Attempt to answer each question the AI asks. When stuck, say "I'm stuck" and let it guide you.

4. After 5-10 exchanges, ask: "Based on my answers, what do I understand well and where are my gaps?"

5. Continue until you can explain the concept back to the AI without help

**Success Criteria:**
- [ ] I can explain the concept without referring to notes
- [ ] I understand why, not just what
- [ ] I could teach this to someone else

---

## Exercise 7: The Silence Test

**Objective:** Assess what you've internalized vs. what you still depend on AI for.

**Time:** 30 minutes

**Instructions:**

1. Choose a task you normally do with AI assistance

2. Attempt it without AI. Set a timer for 20 minutes.

3. Track:
   - Where you got stuck
   - What you reached for AI to help with
   - What you successfully did independently

4. After 20 minutes, use AI to complete the task

5. Compare: What was genuinely difficult vs. what was just habitual dependency?

**Reflection:**
- What should I practice doing without AI?
- What is AI genuinely augmenting vs. replacing?
- Am I building capability or dependency?

---

## Exercise 8: The Meta-Cognition Monitor

**Objective:** Develop awareness of your own thinking during AI collaboration.

**Time:** One full work session (1-2 hours)

**Instructions:**

1. During a normal AI-assisted work session, keep a meta-log

2. Every 10-15 minutes, pause and note:
   - What's my engagement level? (1-5)
   - Am I thinking critically or accepting passively?
   - What just happened that I should examine?

3. At the end, review your log:
   - When was engagement highest/lowest?
   - What triggered passive acceptance?
   - What triggered deep engagement?

**Log Template:**

| Time | Engagement (1-5) | What I Was Doing | Observation |
|------|-----------------|------------------|-------------|
| | | | |

---

## Group Workshop Format

### 2-Hour Workshop Agenda

| Time | Activity |
|------|----------|
| 0:00-0:10 | Introduction to DCF principles |
| 0:10-0:30 | Exercise 1: Mirror Experiment (individual) |
| 0:30-0:45 | Share findings in pairs |
| 0:45-1:10 | Exercise 3: Dialectic Duel (pairs) |
| 1:10-1:20 | Break |
| 1:20-1:45 | Exercise 5: Checkpoint Challenge (individual) |
| 1:45-2:00 | Group debrief and takeaways |

### Discussion Questions for Groups

1. What surprised you about how you normally interact with AI?
2. Where do you see the most value in applying DCF?
3. What habits will you change based on these exercises?
4. How could we apply these principles as a team?

---

## Self-Paced Learning Track

### Week 1: Foundation
- Day 1-2: Exercise 1 (Mirror)
- Day 3-4: Exercise 2 (Assumptions)
- Day 5: Reflection and journaling

### Week 2: Dialogue
- Day 1-2: Exercise 3 (Dialectic)
- Day 3-4: Exercise 4 (Refinement)
- Day 5: Reflection and journaling

### Week 3: Application
- Day 1-2: Exercise 5 (Checkpoints)
- Day 3-4: Exercise 6 (Learning)
- Day 5: Reflection and journaling

### Week 4: Integration
- Day 1-2: Exercise 7 (Silence Test)
- Day 3-4: Exercise 8 (Meta-Cognition)
- Day 5: Complete self-assessment, set goals

---

## Progress Tracking

### Exercise Completion Log

| Exercise | Date Completed | Key Insight | Skill Developed |
|----------|---------------|-------------|-----------------|
| 1. Mirror | | | |
| 2. Assumptions | | | |
| 3. Dialectic | | | |
| 4. Refinement | | | |
| 5. Checkpoint | | | |
| 6. Learning | | | |
| 7. Silence | | | |
| 8. Meta-Cognition | | | |

### Growth Indicators

After completing all exercises, assess:

- [ ] I naturally ask clarifying questions before prompting
- [ ] I challenge AI assumptions without prompting myself
- [ ] I recognize when to iterate vs. when to accept
- [ ] I can articulate why I agree/disagree with AI outputs
- [ ] I notice my own cognitive engagement level
- [ ] I use AI to learn, not just to do

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
