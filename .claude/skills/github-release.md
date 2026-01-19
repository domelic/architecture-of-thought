# GitHub Release Skill

Create GitHub releases using Playwright browser automation.

## Usage

```text
/github-release <tag> [title]
```text

## Examples

```text
/github-release v3.0.0
/github-release v2.1.0 "Bug fixes and performance improvements"
```text

## Instructions

When this skill is invoked, use Playwright to create a GitHub release:

### 1. Navigate to Release Page

```text
mcp__plugin_playwright_playwright__browser_navigate
url: https://github.com/{owner}/{repo}/releases/new
```text

Get owner/repo from the current git remote:
```bash
git remote get-url origin
```text

### 2. Select the Tag

1. Click the tag selector button (look for "Tag: Select tag")
2. Click the tag from the dropdown list
3. If tag doesn't exist, type it in the search box and click "Create new tag"

### 3. Enter Release Title

Type in the release title textbox. If no title provided, use:
```text
{tag} - {first line of tag annotation message}
```text

Get tag message with:
```bash
git tag -l --format='%(contents:subject)' {tag}
```text

### 4. Enter Release Description

Generate release notes from CHANGELOG.md if available:
1. Read CHANGELOG.md
2. Find the section for this version
3. Format as markdown for GitHub

If no CHANGELOG, use the tag annotation message:
```bash
git tag -l --format='%(contents:body)' {tag}
```text

### 5. Publish

1. Ensure "Set as the latest release" is checked (default)
2. Click "Publish release" button
3. Verify the release page loads with the new release

### 6. Close Browser

```text
mcp__plugin_playwright_playwright__browser_close
```text

## Playwright Element References

Common elements on the GitHub release page:

| Element | Typical Action |
|---------|---------------|
| Tag selector button | Click to open dropdown |
| Tag option in list | Click to select (menuitemradio) |
| Title textbox | Type release title |
| Description textbox | Type release notes (markdown) |
| "Set as latest" checkbox | Usually pre-checked |
| "Publish release" button | Click to publish |

## Prerequisites

- Git tag must exist (create with `git tag -a {tag} -m "message"`)
- Tag must be pushed to remote (`git push origin {tag}`)
- User must be authenticated to GitHub in the browser
- Playwright MCP server must be available

## Post-Release

After publishing:
- GitHub Release badge in README auto-updates
- Zenodo archives automatically (if integration enabled)
- DOI resolves to new version

## Error Handling

If tag doesn't appear in dropdown:
1. Verify tag was pushed: `git ls-remote --tags origin`
2. Refresh the page and try again
3. Create tag directly in GitHub UI if needed

If publish fails:
1. Check for required fields (title is required)
2. Verify user has write access to repository
3. Check for rate limiting
