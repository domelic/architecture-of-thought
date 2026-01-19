# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains **"The Architecture of Thought"** — a treatise presenting the Dialectical Cognition Framework (DCF), a methodology for human-AI collaboration. The main output is a 198-page LaTeX document with supporting practical resources in Markdown.

## Build Commands

```bash
# Full LaTeX compilation with bibliography and index
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
bibtex THE_ARCHITECTURE_OF_THOUGHT
makeindex THE_ARCHITECTURE_OF_THOUGHT
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
```text

Requires TeX Live 2025 or MacTeX. The triple pdflatex run resolves cross-references and index entries.

## Key Files

| File | Purpose |
|------|---------|
| `THE_ARCHITECTURE_OF_THOUGHT.tex` | Main LaTeX source (198 pages, 12 parts + appendices) |
| `DCF_ESSENTIALS.md` | Condensed practitioner's guide — read this to understand DCF concepts |
| `.claude/skills/dcf.md` | The `/dcf` skill definition (21 modes in 5 categories) |
| `resources/CLAUDE_MD_TEMPLATE.md` | Template for DCF-informed CLAUDE.md files |
| `references.bib` | BibTeX bibliography (31 sources) |

## Available Skills

### `/dcf [mode] [context]` — Socratic Dialogue

Applies Socratic questioning contextually. See `.claude/skills/dcf.md` for full details.

| Category | Modes |
|----------|-------|
| Evaluation & Review | `review`, `checkpoint`, `self-review`, `refine` |
| Problem Solving | `debug`, `unstick`, `simplify`, `diagnose` |
| Design & Analysis | `architect`, `tradeoffs`, `assumptions`, `premortem`, `challenge`, `decide` |
| Learning & Exploration | `learn`, `onboard`, `explain` |
| Session Management | `compact`, `context-health`, `retro`, `skill` |

## Workflow Automation

The `dcf-workflow` script chains DCF modes with checkpoints:

```bash
dcf-workflow new-project              # onboard → architect → premortem
dcf-workflow debug "auth timeout"     # debug → assumptions → simplify
dcf-workflow decision "API design"    # tradeoffs → challenge → decide
```text

**Installation:** Add `.claude/scripts/` to PATH or symlink `dcf-workflow` to `/usr/local/bin/`.

> **Caution:** Workflows are scaffolding. Each transition should be a genuine checkpoint—not automatic progression.

## Session Continuity

When sessions get long, use `/dcf compact` to create `SESSION_FINDINGS.md` (gitignored) for continuity across session resets.

## Git Workflow

### Branch Naming Convention

When creating branches, use prefixes that match the conventional commit type:

| Type | Branch Prefix | When to Use |
|------|---------------|-------------|
| `feat/` | `feat/description` | New content or features |
| `fix/` | `fix/description` | Corrections and bug fixes |
| `docs/` | `docs/description` | Documentation changes |
| `refactor/` | `refactor/description` | Restructuring |
| `chore/` | `chore/description` | Maintenance tasks |
| `ci/` | `ci/description` | CI/CD changes |

**Rules:**
- Use lowercase
- Use hyphens to separate words (e.g., `feat/multi-agent-patterns`)
- Keep names concise but descriptive

### Commit Message Convention

This project uses [Conventional Commits](https://www.conventionalcommits.org/):

```text
<type>: <description>
```text

**Types:** `feat`, `fix`, `docs`, `style`, `refactor`, `chore`, `ci`

See [CONTRIBUTING.md](CONTRIBUTING.md) for full details.

### Pull Request Guidelines

- PRs require review before merging
- All status checks must pass
- Branches are automatically deleted after merge
- Squash merge is preferred for clean history

## For Claude: Working Style

1. **Follow conventions**: Use the branch naming and commit conventions above
2. **Apply DCF principles**: Surface assumptions, present trade-offs, use questioning to clarify
3. **Be direct and concise**: Practitioner-focused, not academic verbose
4. **Ground abstractions in examples**: New theoretical content needs concrete illustrations
5. **Maintain consistency**: New resources should follow `resources/` file format patterns
