# Style Guide for THE_ARCHITECTURE_OF_THOUGHT

Writing conventions, terminology, and formatting patterns for maintaining consistency.

## Voice and Tone

### Overall Character
- **Practitioner-focused**: Written for engineers, technical writers, knowledge workers
- **Direct but not terse**: Explains concepts fully without academic verbosity  
- **Authoritative yet accessible**: States positions confidently while remaining approachable
- **Grounded in examples**: Abstractions always illustrated with concrete applications

### Person and Tense
- **Second person** for instructional content: "When you articulate an idea..."
- **First person plural** sparingly for shared observations: "This reframes technical writing..."
- **Present tense** for principles and facts
- **Past tense** for historical context and evolution

## Terminology Preferences

### Preferred Terms → Avoid
| Use | Instead of |
|-----|-----------|
| human-AI collaboration | AI-assisted work, AI tools |
| thinking mirror | answer machine, oracle |
| LLM / large language model | AI (when being specific) |
| agentic AI / agentic systems | autonomous AI, AI agents (generic) |
| scaffolding | support, help (in ZPD context) |
| extraction-based thinking | basic prompting |
| recursive refinement | iterative improvement (in DCF context) |
| cognitive infrastructure | documentation (when emphasizing role) |
| checkpoint | breakpoint, pause point |
| dialectical | argumentative, oppositional |

### Key Phrases (use consistently)
- "thinking WITH AI, not just using it"
- "quality in → quality out"
- "the architecture of thought"
- "What question should I be asking?"
- "collaborate over extract"

### Capitalization
- **DCF** (always caps)
- **Thinking Mirror** (caps when referring to the hypothesis)
- **Zone of Proximal Development** (caps, abbreviated ZPD after first use)
- **CLAUDE.md** (all caps for the filename)
- Mode names lowercase: `review`, `checkpoint`, `architect`
- Anti-pattern names capitalized: Socratic Theater, Mirror Narcissism

## LaTeX Formatting Patterns

### Principles
Introduce principles with consistent format:
```latex
\textbf{DCF Principle \#N: Title}
```

### Key Terms
- **First introduction**: `\textbf{term}\index{Term}`
- **Emphasis**: `\emph{italics}` for concepts being highlighted
- **Technical terms**: `\texttt{monospace}` for code, filenames, commands

### Quotebox (for updates and callouts)
```latex
\begin{quotebox}
\textbf{Agentic Era Update:} Content here...
\end{quotebox}
```

### Tables
```latex
\begin{table}[H]
\centering
\begin{tabular}{ll}  % or {lp{8cm}} for wrapped text
\toprule
\textbf{Column 1} & \textbf{Column 2} \\
\midrule
Content & Content \\
\bottomrule
\end{tabular}
\caption{Descriptive caption}
\end{table}
```

### Code/Prompt Examples
```latex
\begin{lstlisting}[style=prompt]
/dcf review
What assumptions are built into that plan?
\end{lstlisting}
```

### Lists
- Use `itemize` for unordered lists
- Use `enumerate` for ordered/sequential steps
- Use `description` for term definitions

## Index Conventions

### When to Index
- First significant use of a term
- Key concepts (not every mention)
- Named patterns, methods, frameworks
- People's names on first mention

### Index Entry Patterns
```latex
\index{Main Entry}
\index{Main Entry!Sub-entry}
\index{Acronym|see{Full Name}}
```

### Common Entries
- `\index{Dialectical Cognition Framework (DCF)}`
- `\index{Thinking Mirror}`
- `\index{Socratic Method}`
- `\index{Zone of Proximal Development (ZPD)}`
- Anti-patterns: `\index{Socratic Theater}`, `\index{Mirror Narcissism}`, etc.

## Citation Style

### In-text Citations
```latex
\cite{author1998work}
```

### Multiple Citations
```latex
\cite{author1998work, author2020other}
```

### Citation Keys Convention
Format: `authorYYYYkeyword`
- `clark1998extended`
- `vygotsky1978mind`
- `popper1963conjectures`

## Section Headings

### Hierarchy
- `\part{}` - Major divisions (12 total)
- `\chapter{}` - Main topics within parts
- `\section{}` - Subtopics
- `\subsection{}` - Details (use sparingly)

### Naming Style
- **Parts**: Noun phrases ("The Core Philosophy of DCF")
- **Chapters**: Descriptive titles ("Beyond Prompting: The Shift from Extraction to Collaboration")
- **Sections**: Action or concept focused ("The Fundamental Shift", "Preventing Socratic Fatigue")

## Cross-References

### Label Convention
```latex
\label{sec:section-name}
\label{ch:chapter-name}
\label{fig:figure-name}
\label{tab:table-name}
```

### Reference Format
```latex
Section~\ref{sec:anticipatory-calibration}
Chapter~\ref{ch:failure-modes}
```

Use `~` (non-breaking space) between "Section/Chapter/Figure" and `\ref{}`.

## Agentic Era Updates

When content needs updating for the agentic era:
1. Keep original content intact when still relevant
2. Add `\begin{quotebox}` with "Agentic Era Update:" prefix
3. Explain how the principle applies differently now
4. Note what's automated vs. what still requires human judgment

## Consistency Checks Before Committing

1. **Terminology**: Are key terms used consistently?
2. **Index entries**: Are new terms indexed on first use?
3. **Cross-references**: Do all `\ref{}` have corresponding `\label{}`?
4. **Citations**: Are all `\cite{}` in `references.bib`?
5. **Formatting**: Do tables use `\toprule/\midrule/\bottomrule`?
6. **Quoteboxes**: Are updates clearly marked?

## Common Errors to Avoid

- Don't use "AI" generically when "LLM" or "agentic AI" is more precise
- Don't introduce concepts without indexing them
- Don't use `\ref{}` without `~` (use `Section~\ref{...}`)
- Don't capitalize mode names (use `review` not `Review`)
- Don't use "best practices" (too generic—be specific about what and why)
