#!/bin/bash
#
# DCF Installation Script
# Installs the Dialectical Cognition Framework tools for Claude Code
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/scripts/install-dcf.sh | bash
#
# Or download and run:
#   chmod +x install-dcf.sh
#   ./install-dcf.sh
#
# Options:
#   --force    Overwrite existing files without prompting
#   --help     Show this help message
#

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Parse arguments
FORCE=false
for arg in "$@"; do
    case $arg in
        --force)
            FORCE=true
            ;;
        --help)
            echo "DCF Installation Script"
            echo ""
            echo "Usage:"
            echo "  curl -fsSL https://raw.githubusercontent.com/domelic/architecture-of-thought/main/.claude/scripts/install-dcf.sh | bash"
            echo ""
            echo "Options:"
            echo "  --force    Overwrite existing files without prompting"
            echo "  --help     Show this help message"
            exit 0
            ;;
    esac
done

# Base URL for raw files
BASE_URL="https://raw.githubusercontent.com/domelic/architecture-of-thought/main"

echo -e "${BLUE}"
echo "╔═══════════════════════════════════════════════════════════╗"
echo "║     Dialectical Cognition Framework (DCF) Installer       ║"
echo "║                                                           ║"
echo "║  Components:                                              ║"
echo "║    • /dcf skill      - Socratic dialogue modes            ║"
echo "║    • dcf-workflow    - Chain modes with checkpoints       ║"
echo "║    • hooks           - Auto-trigger DCF checkpoints       ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# Detect shell config file
detect_shell_config() {
    if [ -n "$ZSH_VERSION" ] || [ "$SHELL" = "/bin/zsh" ]; then
        echo "$HOME/.zshrc"
    elif [ -n "$BASH_VERSION" ] || [ "$SHELL" = "/bin/bash" ]; then
        if [ -f "$HOME/.bashrc" ]; then
            echo "$HOME/.bashrc"
        else
            echo "$HOME/.bash_profile"
        fi
    else
        echo "$HOME/.profile"
    fi
}

# Check if file exists and prompt for action
# Returns: 0 = proceed with install, 1 = skip
check_existing_file() {
    local file="$1"
    local name="$2"

    if [ -f "$file" ]; then
        if [ "$FORCE" = true ]; then
            echo -e "${YELLOW}  ⚠ Backing up existing $name${NC}"
            cp "$file" "$file.backup.$(date +%Y%m%d%H%M%S)"
            return 0
        fi

        echo -e "${YELLOW}  ⚠ $name already exists at $file${NC}"
        read -p "    Overwrite? (existing file will be backed up) [y/N] " -n 1 -r
        echo ""
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            cp "$file" "$file.backup.$(date +%Y%m%d%H%M%S)"
            echo -e "${GREEN}    Backed up to $file.backup.*${NC}"
            return 0
        else
            echo -e "${BLUE}    Skipping $name${NC}"
            return 1
        fi
    fi
    return 0
}

SHELL_CONFIG=$(detect_shell_config)

# Step 1: Install /dcf skill
echo -e "${YELLOW}[1/4] Installing /dcf skill...${NC}"
mkdir -p "$HOME/.claude/skills"
DCF_SKILL="$HOME/.claude/skills/dcf.md"

if check_existing_file "$DCF_SKILL" "/dcf skill"; then
    if curl -fsSL -o "$DCF_SKILL" "$BASE_URL/.claude/skills/dcf.md"; then
        echo -e "${GREEN}  ✓ Installed to $DCF_SKILL${NC}"
    else
        echo -e "${RED}  ✗ Failed to download dcf.md${NC}"
        exit 1
    fi
fi

# Step 2: Install dcf-workflow script
echo -e "${YELLOW}[2/4] Installing dcf-workflow script...${NC}"
mkdir -p "$HOME/bin"
DCF_WORKFLOW="$HOME/bin/dcf-workflow"

if check_existing_file "$DCF_WORKFLOW" "dcf-workflow"; then
    if curl -fsSL -o "$DCF_WORKFLOW" "$BASE_URL/.claude/scripts/dcf-workflow"; then
        chmod +x "$DCF_WORKFLOW"
        echo -e "${GREEN}  ✓ Installed to $DCF_WORKFLOW${NC}"
    else
        echo -e "${RED}  ✗ Failed to download dcf-workflow${NC}"
        exit 1
    fi
fi

# Step 3: Add ~/bin to PATH if not already there
echo -e "${YELLOW}[3/4] Configuring PATH...${NC}"

# Check various ways ~/bin might already be in PATH
path_already_configured() {
    # Check if currently in PATH
    if echo "$PATH" | tr ':' '\n' | grep -qE "^$HOME/bin$"; then
        return 0
    fi
    # Check common patterns in shell config
    if [ -f "$SHELL_CONFIG" ]; then
        if grep -qE '(export )?PATH=.*\$HOME/bin' "$SHELL_CONFIG" 2>/dev/null; then
            return 0
        fi
        if grep -qE '(export )?PATH=.*~/bin' "$SHELL_CONFIG" 2>/dev/null; then
            return 0
        fi
    fi
    return 1
}

if path_already_configured; then
    echo -e "${GREEN}  ✓ ~/bin already configured in PATH${NC}"
else
    echo '' >> "$SHELL_CONFIG"
    echo '# DCF tools (added by install-dcf.sh)' >> "$SHELL_CONFIG"
    echo 'export PATH="$HOME/bin:$PATH"' >> "$SHELL_CONFIG"
    echo -e "${GREEN}  ✓ Added ~/bin to PATH in $SHELL_CONFIG${NC}"
    echo -e "${YELLOW}    Run 'source $SHELL_CONFIG' or restart terminal to apply${NC}"
fi

# Step 4: Offer to install hooks
echo -e "${YELLOW}[4/4] Configure hooks?${NC}"
echo "    Hooks auto-trigger DCF checkpoints on edits and destructive commands."
echo ""

# Check if running interactively (not piped)
if [ -t 0 ]; then
    read -p "    Install example hooks to current project? [y/N] " -n 1 -r
    echo ""
else
    echo "    (Non-interactive mode - skipping hooks)"
    REPLY="n"
fi

if [[ $REPLY =~ ^[Yy]$ ]]; then
    SETTINGS_FILE=".claude/settings.local.json"

    if [ -f "$SETTINGS_FILE" ]; then
        echo -e "${YELLOW}    $SETTINGS_FILE already exists.${NC}"
        read -p "    Overwrite with example hooks? (existing file will be backed up) [y/N] " -n 1 -r
        echo ""
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            cp "$SETTINGS_FILE" "$SETTINGS_FILE.backup.$(date +%Y%m%d%H%M%S)"
            echo -e "${GREEN}    Backed up existing settings${NC}"
            if curl -fsSL -o "$SETTINGS_FILE" "$BASE_URL/.claude/settings.example.json"; then
                echo -e "${GREEN}  ✓ Installed hooks to $SETTINGS_FILE${NC}"
            else
                echo -e "${RED}  ✗ Failed to download settings.example.json${NC}"
            fi
        else
            echo -e "${BLUE}    Skipping hooks installation.${NC}"
            echo -e "${BLUE}    See: $BASE_URL/.claude/settings.example.json${NC}"
        fi
    else
        mkdir -p .claude
        if curl -fsSL -o "$SETTINGS_FILE" "$BASE_URL/.claude/settings.example.json"; then
            echo -e "${GREEN}  ✓ Installed hooks to $SETTINGS_FILE${NC}"
        else
            echo -e "${RED}  ✗ Failed to download settings.example.json${NC}"
        fi
    fi
else
    echo -e "${BLUE}    Skipping hooks. See .claude/settings.example.json for manual setup.${NC}"
fi

# Summary
echo ""
echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}  DCF Installation Complete!${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
echo ""
echo "  Installed:"
echo "    • ~/.claude/skills/dcf.md     (global /dcf skill)"
echo "    • ~/bin/dcf-workflow          (workflow automation)"
echo ""
echo "  Next steps:"
echo "    1. Restart terminal or run: source $SHELL_CONFIG"
echo "    2. Restart Claude Code session (for hooks)"
echo "    3. Try: /dcf or dcf-workflow --help"
echo ""
echo "  Documentation:"
echo "    https://github.com/domelic/architecture-of-thought"
echo ""
