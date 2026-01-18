# GitHub Repository Setup Guide

A comprehensive guide to setting up a well-maintained GitHub repository with all best practices, based on the configuration used for the Architecture of Thought project.

---

## Quick Reference

| Category | Components |
|----------|------------|
| **Documentation** | README, CONTRIBUTING, CHANGELOG, LICENSE, CODE_OF_CONDUCT, CLAUDE.md |
| **Branch Protection** | PR required, CODEOWNERS, admin enforcement |
| **Issue Management** | Templates (bug, feature, custom), labels, Discussions |
| **Automation** | GitHub Actions (CI, release), GitHub Pages |
| **Discovery** | Topics, social preview, FUNDING.yml |

---

## 1. Documentation Files

### Required Files

| File | Purpose | Template |
|------|---------|----------|
| `README.md` | Project overview, installation, usage | Project-specific |
| `LICENSE` | Legal terms for use and distribution | See below |
| `CONTRIBUTING.md` | How to contribute | See below |
| `CHANGELOG.md` | Version history | [Keep a Changelog](https://keepachangelog.com/) |

### Recommended Files

| File | Purpose |
|------|---------|
| `CODE_OF_CONDUCT.md` | Community behavior guidelines |
| `CLAUDE.md` | Instructions for Claude Code |
| `SECURITY.md` | Security vulnerability reporting (software projects only) |

### LICENSE Templates

**All Rights Reserved (proprietary):**
```
Copyright (c) [YEAR] [NAME]. All Rights Reserved.

[Permissions and restrictions...]
```

**Open Source options:**
- MIT — Permissive, minimal restrictions
- Apache 2.0 — Permissive with patent protection
- GPL 3.0 — Copyleft, derivatives must be open source
- CC BY 4.0 — For documentation/creative works

---

## 2. Branch Protection

### Configuration

```bash
# Via GitHub API
gh api repos/OWNER/REPO/branches/main/protection -X PUT --input - <<'EOF'
{
  "required_status_checks": null,
  "enforce_admins": true,
  "required_pull_request_reviews": {
    "required_approving_review_count": 0
  },
  "restrictions": null
}
EOF
```

### Settings Explained

| Setting | Recommended | Purpose |
|---------|-------------|---------|
| `required_pull_request_reviews` | Yes | Enforce PR workflow |
| `required_approving_review_count` | 0 (solo) / 1+ (team) | Approval requirements |
| `require_code_owner_reviews` | Yes (team) | Designated reviewers |
| `enforce_admins` | Yes | No bypass for anyone |
| `allow_force_pushes` | No | Protect history |
| `allow_deletions` | No | Prevent branch deletion |

### CODEOWNERS File

Location: `.github/CODEOWNERS`

```
# Default owner for all files
* @username

# Specific paths
/docs/ @docs-team
*.md @technical-writer
```

---

## 3. Issue Management

### Issue Templates

Location: `.github/ISSUE_TEMPLATE/`

**Bug Report (`bug_report.md`):**
```yaml
---
name: Bug Report
about: Report an error or issue
title: '[BUG] '
labels: bug
assignees: username
---

## Description
[Clear description]

## Steps to Reproduce
1. ...

## Expected vs Actual
- Expected: ...
- Actual: ...
```

**Feature Request (`feature_request.md`):**
```yaml
---
name: Feature Request
about: Suggest an enhancement
title: '[FEATURE] '
labels: enhancement
assignees: username
---

## Summary
[Brief description]

## Motivation
[Why is this needed?]

## Proposed Solution
[How might this work?]
```

**Template Config (`config.yml`):**
```yaml
blank_issues_enabled: false
contact_links:
  - name: Questions & Discussion
    url: https://github.com/OWNER/REPO/discussions
    about: Ask questions here
```

### Issue Labels

```bash
# Create labels via CLI
gh label create "priority: high" --color "B60205" --description "High priority"
gh label create "priority: low" --color "C5DEF5" --description "Low priority"
gh label create "good first issue" --color "7057FF" --description "Good for newcomers"
gh label create "help wanted" --color "008672" --description "Extra attention needed"
```

**Recommended Label Set:**
| Label | Color | Purpose |
|-------|-------|---------|
| `bug` | #d73a4a | Something isn't working |
| `enhancement` | #a2eeef | New feature request |
| `documentation` | #0075ca | Documentation updates |
| `question` | #d876e3 | Questions |
| `good first issue` | #7057ff | Newcomer-friendly |
| `help wanted` | #008672 | Needs attention |
| `priority: high` | #B60205 | High priority |
| `priority: low` | #C5DEF5 | Low priority |

### GitHub Discussions

```bash
# Enable via API
gh api repos/OWNER/REPO -X PATCH -f has_discussions=true
```

---

## 4. GitHub Actions

### CI Workflow (LaTeX Example)

Location: `.github/workflows/compile-pdf.yml`

```yaml
name: Compile PDF

on:
  push:
    branches: [main]
    paths: ['**.tex', '**.bib']
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Compile LaTeX
        uses: xu-cheng/latex-action@v3
        with:
          root_file: document.tex

      - name: Commit PDF
        run: |
          git config user.email "action@github.com"
          git config user.name "GitHub Action"
          git add *.pdf
          git diff --staged --quiet || git commit -m "Auto-compile PDF"
          git push
```

### Release Automation

Location: `.github/workflows/release.yml`

```yaml
name: Create Release

on:
  push:
    tags: ['v*']

jobs:
  release:
    runs-on: ubuntu-latest
    permissions:
      contents: write

    steps:
      - uses: actions/checkout@v4

      - name: Extract version
        id: version
        run: echo "VERSION=${GITHUB_REF#refs/tags/}" >> $GITHUB_OUTPUT

      - name: Create Release
        uses: softprops/action-gh-release@v1
        with:
          name: "Release ${{ steps.version.outputs.VERSION }}"
          files: |
            *.pdf
            *.zip
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

**Usage:**
```bash
git tag v1.0.0
git push origin v1.0.0
# Release created automatically
```

---

## 5. GitHub Pages

```bash
# Enable via API
gh api repos/OWNER/REPO/pages -X POST --input - <<'EOF'
{
  "source": {
    "branch": "main",
    "path": "/"
  }
}
EOF
```

Site URL: `https://OWNER.github.io/REPO/`

---

## 6. Discovery & Sponsorship

### Repository Topics

```bash
# Set topics via API
gh api repos/OWNER/REPO/topics -X PUT --input - <<'EOF'
{
  "names": ["topic1", "topic2", "topic3"]
}
EOF
```

**Good topics:** Technology names, domain keywords, project type

### Social Preview

1. Create image (1280×640 px recommended)
2. Save as `.github/social-preview.png` or `.svg`
3. Upload manually: **Settings > General > Social preview**

### FUNDING.yml

Location: `.github/FUNDING.yml`

```yaml
github: [username]
patreon: username
ko_fi: username
custom: ['https://example.com/donate']
```

---

## 7. Complete Setup Checklist

### Files
- [ ] README.md with badges, description, usage
- [ ] LICENSE appropriate for project type
- [ ] CONTRIBUTING.md with guidelines
- [ ] CHANGELOG.md following Keep a Changelog
- [ ] CODE_OF_CONDUCT.md (Contributor Covenant)
- [ ] CLAUDE.md for AI assistants

### GitHub Configuration
- [ ] Branch protection on main
- [ ] CODEOWNERS file
- [ ] Issue templates (bug, feature)
- [ ] Issue labels configured
- [ ] Discussions enabled
- [ ] Repository topics set

### Automation
- [ ] CI workflow for builds/tests
- [ ] Release automation workflow
- [ ] GitHub Pages (if applicable)

### Discovery
- [ ] Social preview image
- [ ] FUNDING.yml (if accepting sponsors)
- [ ] Repository description set
- [ ] Website URL set (if applicable)

---

## 8. Maintenance Commands

```bash
# Check branch protection
gh api repos/OWNER/REPO/branches/main/protection

# List labels
gh label list

# List open PRs
gh pr list

# Check workflows
gh run list

# View repository settings
gh repo view --json description,topics,visibility
```

---

## 9. Solo Maintainer vs Team

| Aspect | Solo | Team |
|--------|------|------|
| Required approvals | 0 | 1+ |
| CODEOWNERS | Optional | Recommended |
| Issue templates | Basic | Comprehensive |
| PR template | Optional | Recommended |
| Branch protection | Lighter | Stricter |

---

*This guide documents the GitHub setup used for [The Architecture of Thought](https://github.com/domelic/architecture-of-thought).*
