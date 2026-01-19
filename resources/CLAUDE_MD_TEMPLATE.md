# CLAUDE.md Template (DCF-Informed)

Copy this template to your project root as `CLAUDE.md` and customize for your project.

---

```markdown
# CLAUDE.md

## Project Overview

[One paragraph: What this project does, its purpose, and current state.]

## Quick Start

```bash
# Install dependencies
[command]

# Run the project
[command]

# Run tests
[command]
```text

## Architecture

### Key Directories
- `src/` — [description]
- `tests/` — [description]
- `docs/` — [description]

### Core Patterns
- [Pattern 1]: [Brief explanation]
- [Pattern 2]: [Brief explanation]

### Important Files
- `[file]` — [what it does, when to modify it]

## Conventions

### Code Style
- [Language-specific conventions]
- [Naming patterns]
- [File organization rules]

### Git Workflow
- Branch naming: `[pattern]`
- Commit format: `[format]`
- PR process: `[description]`

### Testing
- Test file pattern: `[pattern]`
- Coverage requirements: `[threshold]`
- How to run specific tests: `[command]`

---

## For Claude (DCF Configuration)

### Interaction Philosophy

This project uses the **Dialectical Cognition Framework (DCF)**. Key principles:

1. **Thinking Mirror**: Reflect back assumptions and implications I might not see
2. **Socratic Dialogue**: Use questioning to arrive at clarity, not just provide answers
3. **Recursive Refinement**: Iterate toward quality—first attempts are drafts

### When Working on This Project

**Before implementing:**
- Ask clarifying questions if requirements are ambiguous
- Present your understanding of the task before coding
- Surface trade-offs explicitly

**During implementation:**
- Explain architectural decisions, not just code
- Flag assumptions you're making
- Note when multiple valid approaches exist

**At checkpoints:**
- Summarize what was done and why
- Identify what might need review
- Suggest what to verify

### Plan Mode Preferences

When entering Plan Mode:
- Research existing patterns in the codebase first
- Present 2-3 approaches with trade-offs when decisions aren't obvious
- Identify the riskiest assumptions in your plan
- Ask: "What would make this approach fail?"

### Review Preferences

When I ask for review, apply these DCF questions:
- What assumptions are built into this code?
- What's the strongest argument against this approach?
- What edge cases might we be missing?
- How will we know if this is working correctly?

### Communication Style

- Be direct and concise
- Challenge my assumptions respectfully
- When I'm wrong, say so clearly
- Explain the "why" behind recommendations

### What NOT to Do

- Don't implement without confirming understanding on complex tasks
- Don't make architectural decisions silently
- Don't skip tests to move faster
- Don't assume I've considered all options—ask

---

## Domain Knowledge

### Key Concepts
- [Term]: [Definition relevant to this project]
- [Term]: [Definition]

### External Dependencies
- [Dependency]: [What it's used for, version constraints]

### Known Gotchas
- [Gotcha 1]: [How to avoid/handle]
- [Gotcha 2]: [How to avoid/handle]

---

## Current State

### Active Work
- [ ] [Current task or feature]

### Technical Debt
- [ ] [Known issue to address]

### Recent Decisions
- [Date]: [Decision and rationale]

---

*Template based on the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
```text

---

## Customization Guide

### Minimal Version

If you want a lighter template, keep only:
- Project Overview
- Quick Start
- For Claude (DCF Configuration)

### Team Version

For team projects, add:
- Team member responsibilities
- Review/approval requirements
- Shared decision log

### Learning Project Version

For projects where you're learning, emphasize:
- "Explain concepts as you use them"
- "Ask me questions to help me understand"
- "Suggest what I should learn next"

---

## Why This Structure?

| Section | DCF Principle |
|---------|---------------|
| Project Overview | Context for the thinking mirror |
| For Claude | Explicit cognitive partnership terms |
| Plan Mode Preferences | Structured dialectic at decision points |
| Review Preferences | Socratic questioning built in |
| What NOT to Do | Guardrails against common failures |
| Current State | Persistent working memory |

The goal: **Every session starts with shared context and clear collaboration norms.**
