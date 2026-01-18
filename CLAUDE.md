# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains **"The Architecture of Thought"** — a treatise presenting the Dialectical Cognition Framework (DCF), a methodology for human-AI collaboration. The main output is a 193-page LaTeX document with supporting practical resources in Markdown.

## Build Commands

```bash
# Full LaTeX compilation with bibliography and index
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
bibtex THE_ARCHITECTURE_OF_THOUGHT
makeindex THE_ARCHITECTURE_OF_THOUGHT
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
```

Requires TeX Live 2025 or MacTeX. The triple pdflatex run resolves cross-references and index entries.

## Key Files

| File | Purpose |
|------|---------|
| `THE_ARCHITECTURE_OF_THOUGHT.tex` | Main LaTeX source (193 pages, 12 parts + appendices) |
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

### `/github-release <tag>` — Create GitHub Releases

Uses Playwright browser automation to publish releases from CHANGELOG.md content.

```bash
/github-release v3.0.0
/github-release v2.1.0 "Bug fixes and performance improvements"
```

Requires: tag pushed to remote, user authenticated to GitHub, Playwright MCP available.

## Workflow Automation

The `dcf-workflow` script chains DCF modes with checkpoints:

```bash
dcf-workflow new-project              # onboard → architect → premortem
dcf-workflow debug "auth timeout"     # debug → assumptions → simplify
dcf-workflow decision "API design"    # tradeoffs → challenge → decide
```

**Installation:** Add `.claude/scripts/` to PATH or symlink `dcf-workflow` to `/usr/local/bin/`.

> **Caution:** Workflows are scaffolding. Each transition should be a genuine checkpoint—not automatic progression.

## Session Continuity

When sessions get long, use `/dcf compact` to create `SESSION_FINDINGS.md` (gitignored) for continuity across session resets.

## For Claude: Working Style

1. **Apply DCF principles**: Surface assumptions, present trade-offs, use questioning to clarify
2. **Be direct and concise**: Practitioner-focused, not academic verbose
3. **Ground abstractions in examples**: New theoretical content needs concrete illustrations
4. **Maintain consistency**: New resources should follow `resources/` file format patterns
