# LaTeX Editing Guide: THE_ARCHITECTURE_OF_THOUGHT.tex

## Document Overview

The document is a ~5,400-line LaTeX treatise structured as a `report` class document with:
- **12 Parts** (major thematic divisions)
- **~60 Chapters** (main content units)
- **~150 Sections** (detailed topics)
- **7 Appendix Chapters**
- Front matter (Abstract, ToC, Lists) and back matter (Acknowledgments, Colophon, Index, Bibliography)

---

## Document Structure Map

```text
Lines 1-92:      Preamble (packages, configuration, custom environments)
Lines 93-167:    Title page and front matter setup
Lines 168-295:   PART I: Core Philosophy (Chapters 1-3)
Lines 296-436:   PART II: Socratic Method Reimagined
Lines 437-768:   PART III: Prompt Chaining as Cognitive Architecture
Lines 769-849:   PART IV: Documentation to Knowledge Engineering
Lines 850-1447:  PART V: Metacognition and Self-Directed Learning
Lines 1448-1756: PART VI: Philosophical and Cognitive Science Foundations
Lines 1757-1805: PART VII: Dialectical Thinking Tradition
Lines 1806-2573: PART VIII: Claude Code and Development Best Practices
Lines 2574-3428: PART IX: Practical Application Framework
Lines 3429-3628: PART X: The Emerging Discipline
Lines 3629-3989: PART XI: Positioning Within AI Methodology Landscape
Lines 3990-4287: PART XII: Agentic Era Adaptations
Lines 4288-4524: PART XIII: Critical Perspectives
Lines 4525-5293: APPENDICES (Chapters A-H)
Lines 5294-5357: Back matter (Acknowledgments, Bibliography, Colophon, Index)
```

---

## Editing by Task Type

### Adding a New Section

**Location**: Within an existing chapter

```latex
\section{Your Section Title}\label{sec:your-label}\index{Index Entry}

Content here...
```

**Conventions**:
- Use `\label{sec:kebab-case}` for cross-references
- Add `\index{Term}` for key concepts
- Follow the existing prose style: direct, practitioner-focused

### Adding a New Chapter

**Location**: After an existing chapter, before the next `\part` or `\chapter`

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

**Location**: At a major thematic boundary

```latex
% ============================================================================
% PART [NUMBER]: DESCRIPTIVE TITLE
% ============================================================================

\part{Full Part Title}
```

### Adding Content to an Existing Section

Find the section by searching for `\section{Section Name}` and add content after the existing paragraphs.

---

## Content Patterns

### Tables

```latex
\begin{table}[H]
\centering
\begin{tabular}{ll}  % or {lll}, {p{5cm}p{5cm}}, etc.
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

**Packages used**: `booktabs` (for `\toprule`, `\midrule`, `\bottomrule`), `float` (for `[H]` placement)

### Quote Boxes (Callouts)

```latex
\begin{quotebox}
\textbf{Title:} Content of the callout box...
\end{quotebox}
```

Use for:
- Agentic Era Updates
- Key insights
- Warnings
- DCF Principles

### Code Listings

```latex
\begin{lstlisting}
your code here
\end{lstlisting}
```

### Bulleted Lists

```latex
\begin{itemize}
    \item \textbf{Bold lead}: Explanation
    \item Another item
\end{itemize}
```

### Numbered Lists

```latex
\begin{enumerate}
    \item First step
    \item Second step
\end{enumerate}
```

---

## Cross-Referencing

### Referring to Other Parts of the Document

```latex
See Chapter~\ref{ch:failure-modes}
As discussed in Section~\ref{sec:session-lifecycle}
Table~\ref{tab:comparison-matrix} shows...
```

### Adding Index Entries

```latex
\index{Primary Term}                    % Simple entry
\index{Primary Term!Subterm}            % Subentry
\index{Term|textbf}                     % Bold page number (main discussion)
```

### Citations

```latex
As Vygotsky noted \cite{vygotsky1978mind}...
Multiple sources support this \cite{clark1998extended,hutchins1995cognition}
```

Add new bibliography entries to `references.bib` following existing format.

---

## Adding Bibliography Entries

Edit `references.bib` and add entries in the appropriate section:

```bibtex
@book{authorYYYYkeyword,
  author = {Last, First},
  title = {Book Title},
  publisher = {Publisher Name},
  year = {YYYY},
  address = {City}
}

@article{authorYYYYkeyword,
  author = {Last, First and Second, Author},
  title = {Article Title},
  journal = {Journal Name},
  volume = {X},
  number = {Y},
  pages = {1--10},
  year = {YYYY},
  doi = {10.xxxx/xxxxx}
}
```

---

## Common Edit Locations by Purpose

| Purpose | Where to Edit |
|---------|--------------|
| Core DCF philosophy | Part I (lines 193-295) |
| Socratic methodology | Part II (lines 296-436) |
| Prompt patterns | Part III (lines 437-768) |
| Claude Code integration | Part VIII (lines 1806-2573) |
| Anti-patterns/failures | Chapter in Part IX (lines 2711-3201) |
| Framework comparisons | Part XI (lines 3629-3989) |
| Practical prompts | Appendix B (lines 4568-4718) |
| Glossary terms | Appendix F (lines 4906-5059) |
| Exercises | Appendix H (lines 5060-5293) |

---

## Verification After Editing

### Build Sequence

```bash
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
bibtex THE_ARCHITECTURE_OF_THOUGHT      # Only if bibliography changed
makeindex THE_ARCHITECTURE_OF_THOUGHT   # Only if index entries changed
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex
pdflatex THE_ARCHITECTURE_OF_THOUGHT.tex  # Third pass for cross-refs
```

### Common Errors to Watch For

| Error | Cause | Fix |
|-------|-------|-----|
| Undefined reference | Missing `\label{}` | Add label to target |
| Missing `$` | Math mode not closed | Check `$...$` pairs |
| Runaway argument | Unclosed `{` | Find missing `}` |
| Citation undefined | Missing bib entry | Add to references.bib |
| Float specifier | Invalid placement | Use `[H]` or `[htbp]` |

---

## Style Guidelines

### Prose Style
- Direct and practitioner-focused (not academic verbose)
- Ground abstractions in concrete examples
- Use active voice
- Be concise but complete

### Formatting Conventions
- Bold for **key terms** on first use: `\textbf{term}`
- Italic for *emphasis* or *foreign terms*: `\emph{word}`
- Monospace for `code` or `commands`: `\texttt{code}`
- En-dash for ranges: `1--10` produces 1–10
- Em-dash for breaks: `---` produces —

### Chapter Opening Pattern

Each chapter typically follows:
1. Opening paragraph framing the chapter's purpose
2. Core content sections
3. Optional "Agentic Era Update" quotebox if relevant

---

## Quick Search Patterns

Find the right location using these grep patterns:

```bash
# Find a specific part
grep -n "\\\\part{" THE_ARCHITECTURE_OF_THOUGHT.tex

# Find a specific chapter
grep -n "\\\\chapter{.*Memory" THE_ARCHITECTURE_OF_THOUGHT.tex

# Find a section by keyword
grep -n "\\\\section{.*Checkpoint" THE_ARCHITECTURE_OF_THOUGHT.tex

# Find all index entries for a term
grep -n "\\\\index{Scaffold" THE_ARCHITECTURE_OF_THOUGHT.tex

# Find citations of a source
grep -n "\\\\cite{clark" THE_ARCHITECTURE_OF_THOUGHT.tex
```

---

## Appendix Chapters (Quick Reference)

| Appendix | Content | Lines |
|----------|---------|-------|
| A | DCF Principles Summary | 4527-4567 |
| B | Prompt Reference | 4568-4718 |
| C | Recommended Reading | 4719-4762 |
| D | Claude Code Resources | 4763-4789 |
| E | Research References | 4790-4816 |
| F | DCF in Practice (Meta-Example) | 4817-4905 |
| G | Glossary of Terms | 4906-5059 |
| H | Exercises and Worksheets | 5060-5293 |
