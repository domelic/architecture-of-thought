# Release Process

This document describes how to create a new release of "The Architecture of Thought."

## Prerequisites

- All changes merged to `main`
- PDF compiled and up to date
- CHANGELOG.md updated with release notes

## Release Checklist

### 1. Update CHANGELOG.md

Add a new section at the top of CHANGELOG.md:

```markdown
## [X.Y.Z] - YYYY-MM-DD

### Added
- New feature or content

### Changed
- Modified behavior or content

### Fixed
- Bug fixes or corrections
```

### 2. Commit the CHANGELOG

```bash
git add CHANGELOG.md
git commit -m "Prepare release vX.Y.Z"
git push origin main
```

### 3. Create and Push the Tag

```bash
git tag vX.Y.Z
git push origin vX.Y.Z
```

### 4. Automated Steps (GitHub Actions)

Once the tag is pushed, the release workflow automatically:

1. **Updates CITATION.cff** — Sets `version` and `date-released` to match the tag
2. **Extracts release notes** — Pulls the section from CHANGELOG.md
3. **Creates GitHub Release** — Includes the PDF as a downloadable asset
4. **Updates Zenodo** — If linked, creates a new DOI version

### 5. Verify the Release

- [ ] Check [Releases page](https://github.com/domelic/architecture-of-thought/releases) for new release
- [ ] Verify PDF is attached
- [ ] Verify release notes are correct
- [ ] Check CITATION.cff was updated on main
- [ ] Verify Zenodo DOI (if applicable)

## Version Numbering

This project follows [Semantic Versioning](https://semver.org/):

- **MAJOR** (X.0.0) — Significant restructuring or new parts added
- **MINOR** (0.X.0) — New chapters, sections, or resources
- **PATCH** (0.0.X) — Corrections, clarifications, typo fixes

## Hotfix Releases

For urgent corrections:

```bash
git checkout main
# Make the fix
git add .
git commit -m "Fix critical issue in section X"
git push origin main

# Wait for PDF to compile, then tag
git pull  # Get the auto-compiled PDF
git tag vX.Y.Z
git push origin vX.Y.Z
```

## Rolling Back a Release

If a release needs to be withdrawn:

```bash
# Delete the tag locally and remotely
git tag -d vX.Y.Z
git push origin :refs/tags/vX.Y.Z

# Delete the GitHub release via web UI or CLI
gh release delete vX.Y.Z --yes
```

Note: This does not affect already-minted Zenodo DOIs.
