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

set -euo pipefail

# =============================================================================
# Configuration
# =============================================================================

readonly BASE_URL="https://raw.githubusercontent.com/domelic/architecture-of-thought/main"
readonly VERSION="1.0.0"

# Installation paths
readonly SKILL_DIR="$HOME/.claude/commands"
readonly BIN_DIR="$HOME/bin"
readonly DCF_SKILL="$SKILL_DIR/dcf.md"
readonly DCF_WORKFLOW="$BIN_DIR/dcf-workflow"

# Track installation results
INSTALLED_SKILL=false
INSTALLED_WORKFLOW=false
INSTALLED_PATH=false
INSTALLED_HOOKS=false

# =============================================================================
# Color Output
# =============================================================================

# Check if stdout is a terminal for color support
if [[ -t 1 ]]; then
    readonly RED='\033[0;31m'
    readonly GREEN='\033[0;32m'
    readonly YELLOW='\033[1;33m'
    readonly BLUE='\033[0;34m'
    readonly NC='\033[0m'
else
    readonly RED=''
    readonly GREEN=''
    readonly YELLOW=''
    readonly BLUE=''
    readonly NC=''
fi

# =============================================================================
# Utility Functions
# =============================================================================

print_info() {
    printf "${BLUE}%s${NC}\n" "$1"
}

print_success() {
    printf "${GREEN}%s${NC}\n" "$1"
}

print_warning() {
    printf "${YELLOW}%s${NC}\n" "$1"
}

print_error() {
    printf "${RED}%s${NC}\n" "$1" >&2
}

print_step() {
    printf "${YELLOW}[%s] %s${NC}\n" "$1" "$2"
}

# =============================================================================
# Core Functions
# =============================================================================

show_banner() {
    print_info "
╔═══════════════════════════════════════════════════════════╗
║     Dialectical Cognition Framework (DCF) Installer       ║
║                                         v${VERSION}        ║
║  Components:                                              ║
║    • /dcf skill      - Socratic dialogue modes            ║
║    • dcf-workflow    - Chain modes with checkpoints       ║
║    • hooks           - Auto-trigger DCF checkpoints       ║
╚═══════════════════════════════════════════════════════════╝"
}

show_help() {
    cat << EOF
DCF Installation Script v${VERSION}

Usage:
  curl -fsSL ${BASE_URL}/.claude/scripts/install-dcf.sh | bash
  ./install-dcf.sh [OPTIONS]

Options:
  --force    Overwrite existing files without prompting
  --help     Show this help message

Components installed:
  ~/.claude/commands/dcf.md  Global /dcf skill for Claude Code
  ~/bin/dcf-workflow         Workflow automation script

Documentation:
  https://github.com/domelic/architecture-of-thought
EOF
}

detect_shell_config() {
    if [[ -n "${ZSH_VERSION:-}" ]] || [[ "$SHELL" == */zsh ]]; then
        echo "$HOME/.zshrc"
    elif [[ -n "${BASH_VERSION:-}" ]] || [[ "$SHELL" == */bash ]]; then
        if [[ -f "$HOME/.bashrc" ]]; then
            echo "$HOME/.bashrc"
        else
            echo "$HOME/.bash_profile"
        fi
    else
        echo "$HOME/.profile"
    fi
}

is_interactive() {
    [[ -t 0 ]]
}

confirm() {
    local prompt="$1"
    local default="${2:-n}"

    if ! is_interactive; then
        [[ "$default" == "y" ]]
        return
    fi

    local yn_prompt
    if [[ "$default" == "y" ]]; then
        yn_prompt="[Y/n]"
    else
        yn_prompt="[y/N]"
    fi

    read -p "$prompt $yn_prompt " -n 1 -r
    echo

    if [[ -z "$REPLY" ]]; then
        [[ "$default" == "y" ]]
    else
        [[ "$REPLY" =~ ^[Yy]$ ]]
    fi
}

backup_file() {
    local file="$1"
    local backup="${file}.backup.$(date +%Y%m%d%H%M%S)"
    cp "$file" "$backup"
    echo "$backup"
}

# Check if file exists and handle overwrite logic
# Returns: 0 = proceed with install, 1 = skip
check_existing_file() {
    local file="$1"
    local name="$2"
    local force="$3"

    if [[ ! -f "$file" ]]; then
        return 0
    fi

    if [[ "$force" == "true" ]]; then
        print_warning "  Backing up existing $name"
        backup_file "$file" > /dev/null
        return 0
    fi

    print_warning "  $name already exists at $file"

    if confirm "    Overwrite? (existing file will be backed up)"; then
        local backup
        backup=$(backup_file "$file")
        print_success "    Backed up to $backup"
        return 0
    else
        print_info "    Skipping $name"
        return 1
    fi
}

download_file() {
    local url="$1"
    local dest="$2"

    if ! curl -fsSL -o "$dest" "$url"; then
        print_error "  Failed to download from $url"
        return 1
    fi
    return 0
}

path_already_configured() {
    local shell_config="$1"

    # Check if currently in PATH
    if echo "$PATH" | tr ':' '\n' | grep -qE "^$HOME/bin$"; then
        return 0
    fi

    # Check common patterns in shell config
    if [[ -f "$shell_config" ]]; then
        if grep -qE '(export )?PATH=.*\$HOME/bin' "$shell_config" 2>/dev/null; then
            return 0
        fi
        if grep -qE '(export )?PATH=.*~/bin' "$shell_config" 2>/dev/null; then
            return 0
        fi
    fi

    return 1
}

# =============================================================================
# Installation Steps
# =============================================================================

install_dcf_skill() {
    local force="$1"

    print_step "1/4" "Installing /dcf skill..."
    mkdir -p "$SKILL_DIR"

    if check_existing_file "$DCF_SKILL" "/dcf skill" "$force"; then
        if download_file "$BASE_URL/.claude/commands/dcf.md" "$DCF_SKILL"; then
            print_success "  Installed to $DCF_SKILL"
            INSTALLED_SKILL=true
            return 0
        fi
        return 1
    fi
    return 0
}

install_dcf_workflow() {
    local force="$1"

    print_step "2/4" "Installing dcf-workflow script..."
    mkdir -p "$BIN_DIR"

    if check_existing_file "$DCF_WORKFLOW" "dcf-workflow" "$force"; then
        if download_file "$BASE_URL/.claude/scripts/dcf-workflow" "$DCF_WORKFLOW"; then
            chmod +x "$DCF_WORKFLOW"
            print_success "  Installed to $DCF_WORKFLOW"
            INSTALLED_WORKFLOW=true
            return 0
        fi
        return 1
    fi
    return 0
}

configure_path() {
    local shell_config="$1"

    print_step "3/4" "Configuring PATH..."

    if path_already_configured "$shell_config"; then
        print_success "  ~/bin already configured in PATH"
        return 0
    fi

    {
        echo ''
        echo '# DCF tools (added by install-dcf.sh)'
        echo 'export PATH="$HOME/bin:$PATH"'
    } >> "$shell_config"

    print_success "  Added ~/bin to PATH in $shell_config"
    print_warning "    Run 'source $shell_config' or restart terminal to apply"
    INSTALLED_PATH=true
}

install_hooks() {
    local settings_file=".claude/settings.local.json"

    print_step "4/4" "Configure hooks?"
    echo "    Hooks auto-trigger DCF checkpoints on edits and destructive commands."
    echo ""

    if ! is_interactive; then
        echo "    (Non-interactive mode - skipping hooks)"
        return 0
    fi

    if ! confirm "    Install example hooks to current project?"; then
        print_info "    Skipping hooks. See .claude/settings.example.json for manual setup."
        return 0
    fi

    if [[ -f "$settings_file" ]]; then
        print_warning "    $settings_file already exists."

        if confirm "    Overwrite with example hooks? (existing file will be backed up)"; then
            backup_file "$settings_file" > /dev/null
            print_success "    Backed up existing settings"

            if download_file "$BASE_URL/.claude/settings.example.json" "$settings_file"; then
                print_success "  Installed hooks to $settings_file"
                INSTALLED_HOOKS=true
            fi
        else
            print_info "    Skipping hooks installation."
            print_info "    See: $BASE_URL/.claude/settings.example.json"
        fi
    else
        mkdir -p .claude
        if download_file "$BASE_URL/.claude/settings.example.json" "$settings_file"; then
            print_success "  Installed hooks to $settings_file"
            INSTALLED_HOOKS=true
        fi
    fi
}

show_summary() {
    local shell_config="$1"

    echo ""

    # Check if anything was installed
    if [[ "$INSTALLED_SKILL" == "false" ]] && \
       [[ "$INSTALLED_WORKFLOW" == "false" ]] && \
       [[ "$INSTALLED_PATH" == "false" ]] && \
       [[ "$INSTALLED_HOOKS" == "false" ]]; then
        print_info "═══════════════════════════════════════════════════════════"
        print_info "  No changes made - all components already exist or skipped"
        print_info "═══════════════════════════════════════════════════════════"
        echo ""
        echo "  Existing installation:"
        echo "    • ~/.claude/commands/dcf.md   (global /dcf skill)"
        echo "    • ~/bin/dcf-workflow          (workflow automation)"
        echo ""
        echo "  To reinstall, run with --force flag"
        echo ""
        return
    fi

    print_success "═══════════════════════════════════════════════════════════"
    print_success "  DCF Installation Complete!"
    print_success "═══════════════════════════════════════════════════════════"
    echo ""

    # Show what was installed
    if [[ "$INSTALLED_SKILL" == "true" ]] || \
       [[ "$INSTALLED_WORKFLOW" == "true" ]] || \
       [[ "$INSTALLED_PATH" == "true" ]] || \
       [[ "$INSTALLED_HOOKS" == "true" ]]; then
        echo "  Installed:"
        [[ "$INSTALLED_SKILL" == "true" ]] && echo "    • ~/.claude/commands/dcf.md   (global /dcf skill)"
        [[ "$INSTALLED_WORKFLOW" == "true" ]] && echo "    • ~/bin/dcf-workflow          (workflow automation)"
        [[ "$INSTALLED_PATH" == "true" ]] && echo "    • PATH updated in $shell_config"
        [[ "$INSTALLED_HOOKS" == "true" ]] && echo "    • .claude/settings.local.json (hooks)"
        echo ""
    fi

    # Show what was skipped
    local skipped=false
    if [[ "$INSTALLED_SKILL" == "false" ]] || \
       [[ "$INSTALLED_WORKFLOW" == "false" ]]; then
        skipped=true
    fi

    if [[ "$skipped" == "true" ]]; then
        echo "  Skipped (already exists):"
        [[ "$INSTALLED_SKILL" == "false" ]] && echo "    • ~/.claude/commands/dcf.md"
        [[ "$INSTALLED_WORKFLOW" == "false" ]] && echo "    • ~/bin/dcf-workflow"
        echo ""
    fi

    echo "  Next steps:"
    if [[ "$INSTALLED_PATH" == "true" ]]; then
        echo "    1. Restart terminal or run: source $shell_config"
        echo "    2. Restart Claude Code session (for hooks)"
        echo "    3. Try: /dcf or dcf-workflow --help"
    else
        echo "    1. Restart Claude Code session (for hooks)"
        echo "    2. Try: /dcf or dcf-workflow --help"
    fi
    echo ""
    echo "  Documentation:"
    echo "    https://github.com/domelic/architecture-of-thought"
    echo ""
}

# =============================================================================
# Main
# =============================================================================

main() {
    local force=false

    # Parse arguments
    for arg in "$@"; do
        case "$arg" in
            --force)
                force=true
                ;;
            --help|-h)
                show_help
                exit 0
                ;;
            *)
                print_error "Unknown option: $arg"
                show_help
                exit 1
                ;;
        esac
    done

    local shell_config
    shell_config=$(detect_shell_config)

    show_banner

    # Run installation steps
    install_dcf_skill "$force" || exit 1
    install_dcf_workflow "$force" || exit 1
    configure_path "$shell_config"
    install_hooks

    show_summary "$shell_config"
}

main "$@"
