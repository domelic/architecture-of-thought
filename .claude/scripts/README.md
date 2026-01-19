# DCF Scripts

Command-line tools for DCF workflow automation.

> **Caution:** Workflows are scaffolding, not standard practice. Each transition should be a genuine checkpoint—"Is this the right next mode?"—not an automatic progression. The goal is to internalize when each mode fits, then choose deliberately. If you find yourself running workflows without pausing between modes, you've automated the thinking DCF is meant to develop.

## Installation

Add to your PATH:

```bash
export PATH="$PATH:/path/to/ai-research/.claude/scripts"
```

Or create a symlink:

```bash
ln -s /path/to/ai-research/.claude/scripts/dcf-workflow /usr/local/bin/dcf-workflow
```

## dcf-workflow

Chains DCF skill modes with checkpoints between steps.

### Usage

```bash
# Predefined workflows
dcf-workflow new-project
dcf-workflow debug "investigating auth timeout"
dcf-workflow decision "REST vs GraphQL"

# Custom workflows
dcf-workflow learn premortem review "new payment feature"
dcf-workflow debug simplify decide

# Options
dcf-workflow --list      # Show available workflows
dcf-workflow --help      # Show help
dcf-workflow --dry-run debug  # Show what would run
```

### Predefined Workflows

| Workflow | Sequence | When to Use |
|----------|----------|-------------|
| `new-project` | onboard → architect → premortem | Starting unfamiliar work |
| `debug` | debug → assumptions → simplify | Bug isn't where you think |
| `decision` | tradeoffs → challenge → decide | Choosing between options |
| `learning` | learn → explain → retro | Building deep understanding |
| `unstuck` | diagnose → unstick → simplify | Progress has stalled |
| `session-end` | context-health → compact → retro | Wrapping up a session |
| `code-review` | review → assumptions → challenge | Evaluating proposals |
| `pre-implementation` | architect → tradeoffs → premortem | Before building |

### How It Works

1. Shows the workflow sequence
2. **SETUP** — Contextual questions to frame your thinking before starting
3. For each mode:
   - Displays the `/dcf` command to run
   - Copies to clipboard (if available)
   - Waits for you to complete in Claude Code
4. **CHECKPOINT** — Contextual transition questions between modes
   - Questions specific to the workflow and transition
   - Opportunity to branch or stop

### Example Session

```text
$ dcf-workflow decision "monorepo vs polyrepo"

DCF Workflow
════════════

  Sequence: tradeoffs → challenge → decide
  Context:  monorepo vs polyrepo

This workflow has 3 steps with checkpoints between each.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
▋ SETUP

  Before starting 'tradeoffs':
  • What decision needs to be made?
  • What constraints are non-negotiable?
  • Who are the stakeholders and what do they care about?

  Press Enter to begin, or Ctrl+C to stop...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
▶ DCF Mode: tradeoffs
  Context: monorepo vs polyrepo
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Run in Claude Code:

  /dcf tradeoffs monorepo vs polyrepo

(Copied to clipboard)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
▋ CHECKPOINT

  Before proceeding to 'challenge':
  • Are all viable options on the table with clear tradeoffs?
  • What option are you leaning toward and why?
  • What's being overlooked or underweighted?

  Press Enter to continue, or Ctrl+C to stop...
```

## Creating Custom Scripts

You can create your own workflow scripts:

```bash
#!/bin/bash
# my-workflow.sh

dcf-workflow learn premortem review "$@"
```

Or call modes directly in your own automation.
