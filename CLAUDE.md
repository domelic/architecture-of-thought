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

Requires TeX Live 2025 or MacTeX.

## Repository Structure

```
/
├── THE_ARCHITECTURE_OF_THOUGHT.tex   # Main LaTeX source (193 pages)
├── THE_ARCHITECTURE_OF_THOUGHT.pdf   # Compiled output
├── references.bib                    # BibTeX bibliography (25 sources)
├── DCF_ESSENTIALS.md                 # Condensed practitioner's guide
├── .claude/skills/dcf.md             # Claude Code /dcf skill
├── examples/                         # Completed DCF case studies
└── resources/                        # Practical tools and templates
```

### Key Files

- **THE_ARCHITECTURE_OF_THOUGHT.tex**: The primary content. A comprehensive LaTeX document covering DCF philosophy, methodology, and applications across 12 parts plus appendices.
- **DCF_ESSENTIALS.md**: Quick reference for practitioners — use this to understand DCF concepts without reading the full treatise.
- **.claude/skills/dcf.md**: Defines the `/dcf` skill for Claude Code. Copy to other projects to enable DCF-style Socratic dialogue.
- **resources/CLAUDE_MD_TEMPLATE.md**: Template for creating DCF-informed CLAUDE.md files in other projects.

## DCF Core Concepts

When working in this repository, understand these key terms:

- **Thinking Mirror**: LLMs reflect and transform thought; quality in → quality out
- **Socratic Dialogue**: Elenchus (cross-examination), Maieutics (drawing out), Dialectic (reasoned argument), Aporia (productive confusion)
- **Recursive Refinement**: Articulate → Generate → Evaluate → Refine cycle
- **Scaffolding**: AI helps you reach capabilities you couldn't alone, then fades as you internalize

## For Claude: Working Style

This repository documents a methodology for human-AI collaboration. When working here:

1. **Apply DCF principles**: Surface assumptions, present trade-offs, use questioning to clarify
2. **Be direct and concise**: The writing style is practitioner-focused, not academic verbose
3. **Ground abstractions in examples**: Any new theoretical content needs concrete illustrations
4. **Maintain consistency**: New resources should follow the established format of existing ones in `resources/`
