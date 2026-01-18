# /github-setup — Repository Best Practices Setup

Set up a GitHub repository with comprehensive best practices including documentation, branch protection, issue management, automation, and discovery features.

---

## Usage

```
/github-setup [scope]

/github-setup              # Full setup assessment and implementation
/github-setup docs         # Documentation files only
/github-setup protection   # Branch protection and CODEOWNERS
/github-setup issues       # Issue templates and labels
/github-setup automation   # GitHub Actions workflows
/github-setup discovery    # Topics, social preview, funding
```

---

## What This Skill Does

When invoked, Claude will:

1. **Assess** the current repository state
2. **Identify** missing best-practice components
3. **Recommend** what to add based on project type
4. **Implement** approved additions
5. **Verify** the setup is complete

---

## Components by Scope

### `docs` — Documentation Files

| File | Purpose | When Needed |
|------|---------|-------------|
| `README.md` | Project overview | Always |
| `LICENSE` | Legal terms | Always |
| `CONTRIBUTING.md` | Contribution guide | If accepting contributions |
| `CHANGELOG.md` | Version history | If versioning |
| `CODE_OF_CONDUCT.md` | Community guidelines | If community-facing |
| `CLAUDE.md` | AI assistant context | If using Claude Code |

### `protection` — Branch Protection

| Setting | Solo Maintainer | Team |
|---------|-----------------|------|
| PRs required | Yes | Yes |
| Approvals required | 0 | 1+ |
| CODEOWNERS | Optional | Required |
| Enforce for admins | Yes | Yes |
| Block force push | Yes | Yes |

### `issues` — Issue Management

**Templates:**
- Bug report
- Feature request
- Custom (project-specific)

**Labels:**
- Priority levels (high, low)
- Type (bug, enhancement, documentation)
- Status (good first issue, help wanted)

**Discussions:** Enable for Q&A separate from issues

### `automation` — GitHub Actions

| Workflow | Purpose | Trigger |
|----------|---------|---------|
| CI/Build | Compile, test, lint | Push to main |
| Release | Create releases with assets | Version tags |
| Pages | Deploy documentation | Push to main |

### `discovery` — Visibility

| Feature | Purpose |
|---------|---------|
| Topics | Search discoverability |
| Social preview | Link sharing appearance |
| FUNDING.yml | Sponsor button |
| Description | Repository subtitle |

---

## Implementation Commands

### Branch Protection
```bash
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

### CODEOWNERS
```bash
mkdir -p .github
echo "* @username" > .github/CODEOWNERS
```

### Issue Labels
```bash
gh label create "priority: high" --color "B60205"
gh label create "priority: low" --color "C5DEF5"
gh label create "good first issue" --color "7057FF"
```

### Enable Discussions
```bash
gh api repos/OWNER/REPO -X PATCH -f has_discussions=true
```

### Set Topics
```bash
gh api repos/OWNER/REPO/topics -X PUT -f names='["topic1","topic2"]'
```

### Enable GitHub Pages
```bash
gh api repos/OWNER/REPO/pages -X POST -f source='{"branch":"main","path":"/"}'
```

---

## Project Type Recommendations

### Open Source Library
- ✅ MIT/Apache LICENSE
- ✅ CONTRIBUTING.md with PR guidelines
- ✅ CI for tests and linting
- ✅ Release automation
- ✅ Good first issue labels

### Documentation/Treatise
- ✅ Appropriate LICENSE (CC or All Rights Reserved)
- ✅ PDF compilation CI
- ✅ GitHub Pages for hosting
- ✅ Case study issue template
- ⏭️ Skip: Security policy, Dependabot

### Internal/Private Project
- ✅ Branch protection
- ✅ CODEOWNERS for review routing
- ⏭️ Skip: FUNDING, social preview, topics

### Solo Project
- ✅ 0 required approvals (self-merge)
- ✅ Lighter issue templates
- ⏭️ Skip: Complex CODEOWNERS

---

## Checklist Output

After setup, Claude provides a verification checklist:

```
## Repository Setup Complete

### Documentation
- [x] README.md
- [x] LICENSE
- [x] CONTRIBUTING.md
- [x] CHANGELOG.md
- [x] CODE_OF_CONDUCT.md

### GitHub Configuration
- [x] Branch protection enabled
- [x] CODEOWNERS configured
- [x] Issue templates created
- [x] Labels configured (15)
- [x] Discussions enabled

### Automation
- [x] CI workflow
- [x] Release workflow
- [x] GitHub Pages

### Discovery
- [x] Topics set (10)
- [x] Social preview created
- [x] FUNDING.yml added

### Manual Steps Required
- [ ] Upload social preview in Settings
- [ ] Configure GitHub Sponsors (if using)
```

---

## Related Resources

- [GITHUB_REPOSITORY_SETUP.md](../resources/GITHUB_REPOSITORY_SETUP.md) — Detailed setup guide
- [CLAUDE_MD_TEMPLATE.md](../resources/CLAUDE_MD_TEMPLATE.md) — CLAUDE.md template
- [GitHub Docs](https://docs.github.com) — Official documentation

---

## Examples

**Full setup for new project:**
```
/github-setup
```
→ Assesses repo, recommends all components, implements with user approval

**Add only automation:**
```
/github-setup automation
```
→ Creates CI and release workflows

**Check what's missing:**
```
/github-setup
> Just assess, don't implement yet
```
→ Returns gap analysis without making changes

---

*Part of the DCF skill collection for Claude Code.*
