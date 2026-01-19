#!/bin/bash
#
# DCF Installation Script
# Installs the Dialectical Cognition Framework tools for Claude Code
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/domelic/architecture-of-thought/main/install-dcf.sh | bash
#
# Or download and run:
#   chmod +x install-dcf.sh
#   ./install-dcf.sh
#

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

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

SHELL_CONFIG=$(detect_shell_config)

# Step 1: Install /dcf skill
echo -e "${YELLOW}[1/4] Installing /dcf skill...${NC}"
mkdir -p "$HOME/.claude/skills"
if curl -fsSL -o "$HOME/.claude/skills/dcf.md" "$BASE_URL/.claude/skills/dcf.md"; then
    echo -e "${GREEN}  ✓ Installed to ~/.claude/skills/dcf.md${NC}"
else
    echo -e "${RED}  ✗ Failed to download dcf.md${NC}"
    exit 1
fi

# Step 2: Install dcf-workflow script
echo -e "${YELLOW}[2/4] Installing dcf-workflow script...${NC}"
mkdir -p "$HOME/bin"
if curl -fsSL -o "$HOME/bin/dcf-workflow" "$BASE_URL/.claude/scripts/dcf-workflow"; then
    chmod +x "$HOME/bin/dcf-workflow"
    echo -e "${GREEN}  ✓ Installed to ~/bin/dcf-workflow${NC}"
else
    echo -e "${RED}  ✗ Failed to download dcf-workflow${NC}"
    exit 1
fi

# Step 3: Add ~/bin to PATH if not already there
echo -e "${YELLOW}[3/4] Configuring PATH...${NC}"
if echo "$PATH" | grep -q "$HOME/bin"; then
    echo -e "${GREEN}  ✓ ~/bin already in PATH${NC}"
elif grep -q 'export PATH="$HOME/bin:$PATH"' "$SHELL_CONFIG" 2>/dev/null; then
    echo -e "${GREEN}  ✓ PATH export already in $SHELL_CONFIG${NC}"
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
read -p "    Install example hooks to current project? [y/N] " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    SETTINGS_FILE=".claude/settings.local.json"

    if [ -f "$SETTINGS_FILE" ]; then
        echo -e "${YELLOW}    $SETTINGS_FILE already exists.${NC}"
        read -p "    Overwrite hooks section? [y/N] " -n 1 -r
        echo ""
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo -e "${BLUE}    Skipping hooks installation.${NC}"
            echo -e "${BLUE}    See .claude/settings.example.json for manual configuration.${NC}"
        else
            # Create backup
            cp "$SETTINGS_FILE" "$SETTINGS_FILE.backup"
            echo -e "${GREEN}    Backed up to $SETTINGS_FILE.backup${NC}"

            # Download example and merge (simple approach: just inform user)
            echo -e "${YELLOW}    Please manually merge hooks from:${NC}"
            echo -e "${BLUE}    $BASE_URL/.claude/settings.example.json${NC}"
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
