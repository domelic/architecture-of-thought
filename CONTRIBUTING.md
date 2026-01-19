# Contributing to the Dialectical Cognition Framework

Thank you for your interest in contributing to DCF! This document provides guidelines for contributing to the project.

---

## Ways to Contribute

### 1. Share Your Experience

The most valuable contribution is real-world experience. You can:

- **Submit a case study**: Use the [Case Study Template](resources/DCF_CASE_STUDY_TEMPLATE.md) to document your DCF application
- **Share transcripts**: Anonymized examples of DCF in practice
- **Report what works**: Domain-specific adaptations, team practices, personal insights
- **Report what doesn't**: Anti-patterns you've discovered, situations where DCF fell short

### 2. Improve Documentation

Help make DCF more accessible:

- **Fix errors**: Typos, broken links, unclear explanations
- **Clarify concepts**: If something confused you, others are probably confused too
- **Add examples**: Concrete illustrations of abstract principles
- **Translate**: Help bring DCF to non-English speakers

### 3. Extend the Framework

Theoretical and practical extensions:

- **Domain adaptations**: How does DCF apply in your field?
- **Integration guides**: DCF with other tools and frameworks
- **Research contributions**: Empirical studies, measurement development
- **Tool development**: Software that supports DCF practice

### 4. Community Building

Help grow the DCF community:

- **Answer questions**: Help others in discussions
- **Write about DCF**: Blog posts, videos, talks
- **Run workshops**: Teach DCF to your team or community
- **Connect researchers**: Facilitate academic collaboration

---

## Contribution Process

### For Small Changes (Typos, Clarifications)

1. Fork the repository
2. Make your changes
3. Submit a pull request with a clear description

### For Larger Changes (New Resources, Extensions)

1. **Open an issue first** to discuss your idea
2. Get feedback from maintainers
3. Fork and develop your contribution
4. Submit a pull request referencing the issue

### For Case Studies and Examples

1. Use the provided templates
2. Anonymize any sensitive information
3. Submit via pull request to the appropriate directory

---

## Branch Naming Convention

Branch names should match the conventional commit type:

| Type | Branch Prefix | Example |
|------|---------------|---------|
| `feat` | `feat/` | `feat/multi-agent-patterns` |
| `fix` | `fix/` | `fix/citation-error` |
| `docs` | `docs/` | `docs/workshop-guide` |
| `style` | `style/` | `style/formatting` |
| `refactor` | `refactor/` | `refactor/resources-folder` |
| `chore` | `chore/` | `chore/update-deps` |
| `ci` | `ci/` | `ci/add-workflow` |

**Rules:**
- Use lowercase
- Use hyphens to separate words
- Keep names concise but descriptive
- Branches are automatically deleted after PR merge

---

## Commit Message Convention

This project uses [Conventional Commits](https://www.conventionalcommits.org/) for automated releases. Please format your commit messages as:

```text
<type>: <description>
```text

### Types

| Type | Use For | Example |
|------|---------|---------|
| `feat` | New content or features | `feat: add section on multi-agent patterns` |
| `fix` | Corrections and bug fixes | `fix: correct citation in Chapter 4` |
| `docs` | Documentation changes | `docs: clarify prompt chaining examples` |
| `chore` | Maintenance (no release) | `chore: update dependencies` |
| `refactor` | Restructuring (no release) | `refactor: reorganize resources folder` |

### Examples

```bash
# Adding new content
git commit -m "feat: add case study on debugging with DCF"

# Fixing an error
git commit -m "fix: correct typo in DCF_ESSENTIALS.md"

# Updating documentation
git commit -m "docs: expand workshop exercise instructions"
```text

See [RELEASING.md](RELEASING.md) for full details on how commits trigger releases.

---

## Style Guidelines

### Writing Style

- **Concise**: Say it in fewer words when possible
- **Practical**: Ground abstractions in concrete examples
- **Accessible**: Write for practitioners, not just theorists
- **Honest**: Include failures and limitations, not just successes

### Markdown Formatting

- Use ATX-style headers (`#`, `##`, `###`)
- Use fenced code blocks with language specifiers
- Include a table of contents for documents over ~100 lines
- End files with a newline

### Code/Prompt Examples

- Include context for when the example applies
- Show both good and bad examples when illustrating anti-patterns
- Annotate key moments in transcripts

---

## Quality Standards

### For Documentation

- [ ] Accurate: Claims are correct and verifiable
- [ ] Clear: A newcomer could understand it
- [ ] Complete: Covers necessary ground without excessive length
- [ ] Consistent: Matches existing documentation style
- [ ] Actionable: Reader knows what to do with the information

### For Case Studies

- [ ] Honest: Includes what didn't work, not just successes
- [ ] Specific: Concrete details, not vague generalizations
- [ ] Transferable: Others can learn and apply insights
- [ ] Anonymized: No sensitive or identifying information

### For Extensions

- [ ] Grounded: Connected to DCF core principles
- [ ] Useful: Solves a real problem
- [ ] Documented: Others can understand and use it
- [ ] Tested: You've actually used this

---

## Code of Conduct

### Our Standards

- **Be respectful**: Treat all contributors with respect
- **Be constructive**: Critique ideas, not people
- **Be inclusive**: Welcome contributors of all backgrounds
- **Be honest**: Acknowledge uncertainty and limitations

### Unacceptable Behavior

- Harassment, discrimination, or personal attacks
- Dismissing others' contributions without engagement
- Claiming credit for others' work
- Promoting misinformation

### Enforcement

Violations may result in removal of contributions and/or banning from the project. Report issues to project maintainers.

---

## Attribution

### Citing DCF

If you build on DCF in your work, please cite:

```text
Dialectical Cognition Framework (DCF)
https://github.com/domelic/architecture-of-thought
```text

### Contributing Authors

Significant contributors will be acknowledged in:
- The README contributors section
- The relevant resource files they contributed to
- Release notes when applicable

---

## Questions?

- **Open an issue** for questions about contributing
- **Start a discussion** for broader conversations about DCF
- **Check the FAQ** for common questions

---

## Thank You

Every contribution—from fixing a typo to submitting original research—helps advance human-AI collaboration.

The DCF community exists because people like you are willing to share what they learn.

---

*From the Dialectical Cognition Framework (DCF)*
*https://github.com/domelic/architecture-of-thought*
