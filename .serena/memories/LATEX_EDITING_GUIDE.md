# LaTeX Editing Guide: THE_ARCHITECTURE_OF_THOUGHT

## Document Overview

The document is a ~267-page LaTeX treatise structured as a `book` class document with:
- **12 Parts** (major thematic divisions)
- **53 Chapters** (main content units)
- **8 Appendices** (A-H)
- Front matter (Abstract, ToC, Lists) and back matter (Acknowledgments, Colophon, Index, Bibliography)

The document is split into **76 chapter files** under `parts/`.

---

## Document Structure Map

```text
THE_ARCHITECTURE_OF_THOUGHT.tex   # Main file with \include directives
preamble.tex                       # Packages, configuration, custom environments
references.bib                     # Bibliography

parts/
├── frontmatter.tex               # Abstract
├── preface.tex                   # Preface
├── part01-core-philosophy/
│   ├── _part.tex                 # \part{} declaration
│   ├── ch01-beyond-prompting.tex
│   ├── ch02-thinking-mirror.tex
│   └── ch03-language-infrastructure.tex
├── part02-socratic-method/
│   ├── _part.tex
│   ├── ch04-socratic-dialogue.tex
│   └── ch05-five-phases.tex
├── part03-prompt-chaining/
│   ├── _part.tex
│   ├── ch06-why-single-prompts-fail.tex
│   ├── ch07-designing-prompt-chains.tex
│   └── ch08-recursive-refinement.tex
├── part04-knowledge-engineering/
│   ├── _part.tex
│   ├── ch09-minimal-viable-document.tex
│   ├── ch10-documentation-as-system-design.tex
│   └── ch11-knowledge-architecture.tex
├── part05-metacognition/
│   ├── _part.tex
│   ├── ch12-thinking-about-thinking.tex
│   ├── ch13-learning-stance.tex
│   └── ch14-personal-knowledge-systems.tex
├── part06-philosophical-foundations/
│   ├── _part.tex
│   ├── ch15-extended-mind.tex
│   ├── ch16-distributed-cognition.tex
│   ├── ch17-scaffolding-theory.tex
│   └── ch18-dialectical-thinking.tex
├── part07-claude-code/
│   ├── _part.tex
│   ├── ch19-architecture.tex
│   ├── ch20-dcf-interaction-levels.tex
│   ├── ch21-agent-ecosystem.tex
│   ├── ch22-memory-systems.tex
│   ├── ch23-co-developer-pattern.tex
│   ├── ch24-team-scale-dcf.tex
│   ├── ch25-skill-composition.tex
│   ├── ch26-mcp-orchestration.tex
│   ├── ch27-community-patterns.tex
│   └── ch28-configuration-philosophy.tex
├── part08-practical-application/
│   ├── _part.tex
│   ├── ch29-practitioners-toolkit.tex
│   ├── ch30-failure-modes.tex
│   ├── ch31-measuring-improvement.tex
│   └── ch32-case-studies.tex
├── part09-emerging-discipline/
│   ├── _part.tex
│   ├── ch33-naming-the-field.tex
│   ├── ch34-future-of-thought-work.tex
│   └── ch35-your-role.tex
├── part10-methodology-landscape/
│   ├── _part.tex
│   ├── ch36-ecosystem-frameworks.tex
│   ├── ch37-comparison-frameworks.tex
│   ├── ch38-stack-view.tex
│   ├── ch39-synthesis.tex
│   ├── ch40-practical-integration.tex
│   ├── ch41-naming-approach.tex
│   ├── ch42-framework-landscape.tex
│   └── ch43-ralph-tension.tex
├── part11-agentic-era/
│   ├── _part.tex
│   ├── ch44-shift-to-autonomous.tex
│   ├── ch45-dcf-agentic-context.tex
│   ├── ch46-claude-code-architecture-dcf.tex
│   ├── ch47-memory-cognitive-infra.tex
│   ├── ch48-when-to-engage.tex
│   ├── ch49-extended-thinking.tex
│   ├── ch50-tool-ecosystems.tex
│   └── ch51-future-dcf-agentic.tex
├── part12-critical-perspectives/
│   ├── _part.tex
│   ├── ch52-limitations.tex
│   └── ch53-ethical-considerations.tex
├── appendices/
│   ├── app-a-principles-summary.tex
│   ├── app-b-prompt-reference.tex
│   ├── app-c-recommended-reading.tex
│   ├── app-d-claude-code-resources.tex
│   ├── app-e-research-references.tex
│   ├── app-f-meta-example.tex
│   ├── app-g-glossary.tex
│   └── app-h-exercises.tex
└── backmatter.tex                # Acknowledgments, Colophon
```

---

## Editing by Task Type

### Adding a New Section

**Location**: Within an existing chapter file

```latex
\section{Your Section Title}\label{sec:your-label}\index{Index Entry}

Content here...
```

**Conventions**:
- Use `\label{sec:kebab-case}` for cross-references
- Add `\index{Term}` for key concepts
- Follow the existing prose style: direct, practitioner-focused

### Adding a New Chapter

1. Create a new file in the appropriate part directory: `parts/partNN-name/chNN-slug.tex`
2. Add `\include{parts/partNN-name/chNN-slug}` to `THE_ARCHITECTURE_OF_THOUGHT.tex`

```latex
\chapter{Chapter Title}\label{ch:your-label}\index{Main Index Entry}

Opening paragraph that frames the chapter's purpose...

\section{First Section}
```

**Conventions**:
- Chapters typically start with a framing paragraph
- Use `\label{ch:kebab-case}` for chapter labels
- Index the main concept with `\index{}`

### Adding a New Part

1. Create directory: `parts/partNN-name/`
2. Create `_part.tex` with the `\part{}` declaration
3. Add chapter files
4. Update `THE_ARCHITECTURE_OF_THOUGHT.tex` with `\include` directives

```latex
% In _part.tex:
\part{Full Part Title}
```

### Fast Single-Chapter Compilation

Add to main .tex file after `\input{preamble}`:
```latex
\includeonly{parts/part07-claude-code/ch22-memory-systems}
```

Then run `pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex` for fast iteration on that chapter only.

---

## Content Patterns

### Tables

```latex
\begin{table}[H]
\centering
\begin{tabular}{ll}
\toprule
\textbf{Column 1} & \textbf{Column 2} \\
\midrule
Item 1 & Description 1 \\
Item 2 & Description 2 \\
\bottomrule
\end{tabular}
\caption{Descriptive caption}
\label{tab:your-label}
\end{table}
```

### Quote Boxes (Callouts)

```latex
\begin{quotebox}
\textbf{Title:} Content of the callout box...
\end{quotebox}
```

### Code Listings

```latex
\begin{lstlisting}
your code here
\end{lstlisting}
```

### Lists

```latex
\begin{itemize}
    \item \textbf{Bold lead}: Explanation
\end{itemize}

\begin{enumerate}
    \item First step
    \item Second step
\end{enumerate}
```

---

## Cross-Referencing

```latex
See Chapter~\ref{ch:failure-modes}
As discussed in Section~\ref{sec:session-lifecycle}
Table~\ref{tab:comparison-matrix} shows...
```

### Index Entries

```latex
\index{Primary Term}
\index{Primary Term!Subterm}
\index{Term|textbf}  % Bold page number (main discussion)
```

### Citations

```latex
As Vygotsky noted \cite{vygotsky1978mind}...
Multiple sources \cite{clark1998extended,hutchins1995cognition}
```

---

## Common Edit Locations by Purpose

| Purpose | File Path |
|---------|-----------|
| Core DCF philosophy | `parts/part01-core-philosophy/ch01-03` |
| Socratic methodology | `parts/part02-socratic-method/ch04-05` |
| Prompt patterns | `parts/part03-prompt-chaining/ch06-08` |
| Claude Code integration | `parts/part07-claude-code/ch19-28` |
| Anti-patterns/failures | `parts/part08-practical-application/ch30-failure-modes.tex` |
| Framework comparisons | `parts/part10-methodology-landscape/ch36-43` |
| Practical prompts | `parts/appendices/app-b-prompt-reference.tex` |
| Glossary terms | `parts/appendices/app-g-glossary.tex` |
| Exercises | `parts/appendices/app-h-exercises.tex` |

---

## Verification After Editing

### Build Sequence

```bash
# Quick compile (iterative editing)
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex

# Full compilation with bibliography and index
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
bibtex THE_ARCHITECTURE_OF_THOUGHT
makeindex THE_ARCHITECTURE_OF_THOUGHT
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
```

### Common Errors

| Error | Cause | Fix |
|-------|-------|-----|
| Undefined reference | Missing `\label{}` | Add label to target |
| Missing `$` | Math mode not closed | Check `$...$` pairs |
| Runaway argument | Unclosed `{` | Find missing `}` |
| Citation undefined | Missing bib entry | Add to references.bib |

---

## Style Guidelines

### Prose Style
- Direct and practitioner-focused (not academic verbose)
- Ground abstractions in concrete examples
- Use active voice
- Be concise but complete

### Formatting Conventions
- Bold for **key terms** on first use: `\textbf{term}`
- Italic for *emphasis*: `\emph{word}`
- Monospace for `code`: `\texttt{code}`
- En-dash for ranges: `1--10`
- Em-dash for breaks: `---`

---

## Quick Search Patterns

```bash
# Find all chapters in a part
ls parts/part07-claude-code/

# Find a section by keyword across all files
grep -r "\\\\section{.*Memory" parts/

# Find all index entries for a term
grep -r "\\\\index{Scaffold" parts/

# Find citations of a source
grep -r "\\\\cite{clark" parts/
```
