# Release Process

This project uses [Release Please](https://github.com/google-github-actions/release-please-action) to automate releases. Simply use conventional commits, and releases happen automatically.

## How It Works

```text
Conventional Commit → Push to main → Release Please PR → Merge → Release Created
```text

1. **You commit** using conventional commit format
2. **Release Please** creates/updates a release PR with CHANGELOG entries
3. **You merge** the release PR when ready
4. **Automation handles** the rest (tag, release, CITATION.cff, PDF upload)

## Conventional Commits

Use this format for your commit messages:

```text
<type>: <description>

[optional body]

[optional footer]
```text

### Types

| Type | Description | Triggers Release? |
|------|-------------|-------------------|
| `feat` | New feature or content | ✅ Minor bump |
| `fix` | Bug fix or correction | ✅ Patch bump |
| `docs` | Documentation only | ✅ Patch bump |
| `perf` | Performance improvement | ✅ Patch bump |
| `chore` | Maintenance tasks | ❌ Hidden |
| `style` | Formatting, whitespace | ❌ Hidden |
| `refactor` | Code restructuring | ❌ Hidden |
| `test` | Adding tests | ❌ Hidden |
| `ci` | CI/CD changes | ❌ Hidden |

### Breaking Changes

For major version bumps, add `!` after the type or include `BREAKING CHANGE:` in the footer:

```bash
feat!: restructure Part III with new chapter organization

BREAKING CHANGE: Chapter numbering has changed significantly.
```text

### Examples

```bash
# New section (minor bump: 2.2.2 → 2.3.0)
git commit -m "feat: add section on multi-agent orchestration"

# Typo fix (patch bump: 2.2.2 → 2.2.3)
git commit -m "fix: correct citation in Chapter 4"

# Documentation update (patch bump)
git commit -m "docs: expand examples in DCF_PROMPT_LIBRARY"

# Maintenance (no release)
git commit -m "chore: update GitHub Actions versions"
```text

## Release Workflow

### Automatic (Recommended)

1. Make changes and commit with conventional format
2. Push to main
3. Release Please creates a PR titled "chore(main): release X.Y.Z"
4. Review the auto-generated CHANGELOG entries
5. Merge the release PR
6. Done! Release is created with:
   - Git tag (vX.Y.Z)
   - GitHub release with PDF attached
   - Updated CITATION.cff
   - Updated CHANGELOG.md

### Manual Override

If you need to release without waiting for conventional commits:

```bash
# Create an empty commit to trigger release-please
git commit --allow-empty -m "feat: trigger release"
git push origin main
```text

## Version Numbering

This project follows [Semantic Versioning](https://semver.org/):

- **MAJOR** (X.0.0) — Breaking changes, significant restructuring
- **MINOR** (0.X.0) — New features, sections, or resources (`feat:`)
- **PATCH** (0.0.X) — Bug fixes, corrections, documentation (`fix:`, `docs:`)

## Checking Release Status

View pending releases:
```bash
gh pr list --label "autorelease: pending"
```text

View release history:
```bash
gh release list
```text

## Troubleshooting

### Release PR not created?
- Ensure commits use conventional format
- Check that commits aren't all `chore:` type (hidden by default)
- View Actions tab for workflow errors

### Wrong version bump?
- Use `feat:` for minor bumps
- Use `fix:` or `docs:` for patch bumps
- Use `feat!:` or `BREAKING CHANGE:` for major bumps

### Need to edit CHANGELOG before release?
- Edit the release PR directly before merging
- Or edit CHANGELOG.md after release (next release will preserve your edits)

## Amazon KDP Publishing

When a release is published, an automated workflow builds the EPUB and creates a GitHub issue with upload instructions.

### Automatic Steps

1. **EPUB built** from LaTeX source using Pandoc
2. **EPUB attached** to the GitHub release
3. **Issue created** with upload checklist

### Manual Steps (After Release)

1. Download the EPUB from the release assets
2. Log in to [KDP](https://kdp.amazon.com)
3. Navigate to your book's Kindle eBook Content
4. Upload the new EPUB file
5. Review the preview in Kindle Previewer
6. Save and publish changes
7. Wait for Amazon review (24-72 hours)
8. Close the GitHub issue once live

### Why Manual Upload?

Amazon KDP has no public API for automated uploads. The workflow automates everything possible (EPUB build, release attachment, instructions) while the actual KDP upload requires manual action.

### Resources

- [KDP Dashboard](https://kdp.amazon.com)
- [Kindle Previewer](https://www.amazon.com/kindlepreviewer)
