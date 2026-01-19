# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains **"The Architecture of Thought"** — a treatise presenting the Dialectical Cognition Framework (DCF), a methodology for human-AI collaboration. The main output is a ~200-page LaTeX document with supporting practical resources in Markdown.

## Build & Validation Commands

### LaTeX Compilation

```bash
# Full compilation with bibliography and index (requires TeX Live 2025 or MacTeX)
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
bibtex THE_ARCHITECTURE_OF_THOUGHT
makeindex THE_ARCHITECTURE_OF_THOUGHT
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
```

The triple pdflatex run resolves cross-references and index entries.

### Validation (run before committing markdown changes)

```bash
# Spell check (requires cspell: npm install -g cspell)
cspell --config .cspell.json "**/*.md" --no-progress

# Markdown lint (requires markdownlint-cli2: npm install -g markdownlint-cli2)
markdownlint-cli2 "**/*.md" --config .markdownlint.json --ignore CHANGELOG.md
```

Add project-specific words to `.cspell.json` `words` array when needed.

## Key Files

| File | Purpose |
|------|---------|
| `THE_ARCHITECTURE_OF_THOUGHT.tex` | Main LaTeX source (12 parts + appendices) |
| `DCF_ESSENTIALS.md` | Condensed practitioner's guide — read this to understand DCF concepts |
| `.claude/commands/dcf.md` | The `/dcf` skill definition (24 modes in 5 categories) |
| `.claude/commands/cybw.md` | The `/cybw` skill — quick adversarial checkpoint |
| `.claude/scripts/dcf-workflow` | Shell script for chaining DCF modes with checkpoints |
| `resources/CLAUDE_MD_TEMPLATE.md` | Template for DCF-informed CLAUDE.md files |
| `references.bib` | BibTeX bibliography |

## Available Skills

### `/dcf [mode] [context]` — Socratic Dialogue

Applies Socratic questioning contextually. See `.claude/commands/dcf.md` for full details.

| Category | Modes |
|----------|-------|
| Evaluation & Review | `review`, `checkpoint`, `self-review`, `refine` |
| Problem Solving | `debug`, `unstick`, `simplify`, `diagnose`, `decompose`, `verify` |
| Design & Analysis | `architect`, `tradeoffs`, `assumptions`, `premortem`, `challenge`, `decide`, `constrain` |
| Learning & Exploration | `learn`, `onboard`, `explain` |
| Session Management | `compact`, `context-health`, `retro`, `skill` |

### `/cybw [target]` — Could You Be Wrong?

Quick adversarial checkpoint based on Hills (2025) research. Surfaces errors, biases, contradictory evidence, and alternatives absent from initial responses.

```text
/cybw                           # Challenge the last response
/cybw the caching strategy      # Challenge a specific decision
/cybw "users want this feature" # Challenge a specific assumption
```

Use `/cybw` for fast checks. Use `/dcf challenge` for full structured analysis.

## Workflow Automation

The `dcf-workflow` script chains DCF modes with checkpoints:

```bash
dcf-workflow new-project              # onboard → architect → premortem
dcf-workflow debug "auth timeout"     # debug → assumptions → simplify
dcf-workflow decision "API design"    # tradeoffs → challenge → decide
dcf-workflow complex-task             # constrain → decompose → architect
dcf-workflow high-stakes              # assumptions → verify → challenge → decide
dcf-workflow unfamiliar               # onboard → decompose → verify
dcf-workflow --list                   # show all workflows
dcf-workflow --dry-run <workflow>     # preview without executing
```

**Installation:** Add `.claude/scripts/` to PATH or symlink `dcf-workflow` to `/usr/local/bin/`.

> **Caution:** Workflows are scaffolding. Each transition should be a genuine checkpoint—not automatic progression.

## Session Continuity

When sessions get long, use `/dcf compact` to create `SESSION_FINDINGS.md` (gitignored) for continuity across session resets.

## CI Checks

PRs trigger these GitHub Actions (all must pass):

- **commitlint**: Validates conventional commit format
- **markdown-lint**: Checks markdown formatting against `.markdownlint.json`
- **spell-check**: Validates spelling against `.cspell.json`
- **link-checker**: Detects broken links in markdown files
- **compile-pdf**: Builds LaTeX document

## Git Workflow

### Branch Naming Convention

Use prefixes matching the conventional commit type:

| Type | Branch Prefix | When to Use |
|------|---------------|-------------|
| `feat/` | `feat/description` | New content or features |
| `fix/` | `fix/description` | Corrections and bug fixes |
| `docs/` | `docs/description` | Documentation changes |
| `refactor/` | `refactor/description` | Restructuring |
| `chore/` | `chore/description` | Maintenance tasks |
| `ci/` | `ci/description` | CI/CD changes |

**Rules:** lowercase, hyphens between words, concise but descriptive

### Commit Message Convention

This project uses [Conventional Commits](https://www.conventionalcommits.org/):

```text
<type>: <description>
```

**Types:** `feat`, `fix`, `docs`, `style`, `refactor`, `chore`, `ci`

See [CONTRIBUTING.md](CONTRIBUTING.md) for full details.

### Pull Request Guidelines

- PRs require review before merging
- All CI checks must pass
- Branches are automatically deleted after merge
- Squash merge is preferred for clean history

## MCP Integrations

### Serena Code Intelligence

This project has Serena MCP configured with memories for editing the treatise.

| Memory | Purpose |
|--------|---------|
| `LATEX_EDITING_GUIDE` | Document structure map, line ranges, editing patterns, LaTeX conventions |
| `DCF_CONCEPTS` | 24 modes, Socratic toolkit, anti-patterns, terminology quick reference |
| `STYLE_GUIDE` | Writing conventions, tone, terminology preferences, formatting patterns |
| `CROSS_REFERENCES` | Concept dependencies, term definition locations, label/ref conventions |
| `BIBLIOGRAPHY_SOURCES` | Annotated sources by topic, citation guidance, reference relationships |
| `REVISION_DECISIONS` | Editorial decision log, style precedents, rejected alternatives |

**Before editing the LaTeX document**, read relevant memories:
- `LATEX_EDITING_GUIDE` - Where and how to edit
- `STYLE_GUIDE` - How to write consistently
- `CROSS_REFERENCES` - What depends on what
- `DCF_CONCEPTS` - Quick reference for framework terms

**When adding citations**: Consult `BIBLIOGRAPHY_SOURCES` for context on existing references.

**When making editorial decisions**: Log significant choices in `REVISION_DECISIONS`.

### Zotero Research Library

Use Zotero MCP for bibliography management when adding new references:

**Workflow for adding citations:**

1. Search Zotero: `mcp__zotero__zotero_semantic_search` or `mcp__zotero__zotero_search_items`
2. Get metadata with BibTeX: `mcp__zotero__zotero_get_item_metadata` with `format: "bibtex"`
3. Add to `references.bib` following existing entry patterns
4. Cite in LaTeX: `\cite{clark1998extended}`

**Bibliography sections in `references.bib`:** Extended Mind, Scaffolding/ZPD, Dialectical Thinking, Philosophy of Science, Organizational Learning, Hermeneutics, PKM, Human-AI Collaboration, Metacognition and Human-AI Collaboration Research, Socratic Method, Socratic Prompting/LLM, Agentic AI, Classic Philosophy.

When adding new references, place them in the appropriate section or create a new commented section header.

## For Claude: Working Style

1. **Follow conventions**: Use the branch naming and commit conventions above
2. **Apply DCF principles**: Surface assumptions, present trade-offs, use questioning to clarify
3. **Be direct and concise**: Practitioner-focused, not academic verbose
4. **Ground abstractions in examples**: New theoretical content needs concrete illustrations
5. **Maintain consistency**: New resources should follow `resources/` file format patterns
6. **Validate before committing**: Run spell-check and markdown-lint on changed `.md` files

## Quick Troubleshooting

| Issue | Solution |
|-------|----------|
| Spell check fails on valid word | Add to `.cspell.json` `words` array |
| LaTeX undefined reference | Run pdflatex 2-3 times after bibtex/makeindex |
| CI link-checker fails | Check for broken external URLs in markdown |
| Commitlint rejects message | Use format `type: description` (lowercase type, no period) |
