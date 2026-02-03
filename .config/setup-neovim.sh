#!/bin/bash

# Neovim Setup Script for Dotfiles
# Run this after cloning your dotfiles repo to a new system

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NVIM_CONFIG="$HOME/.config/nvim"
DOTFILES_NVIM="$SCRIPT_DIR/nvim"

echo "=== Neovim Dotfiles Setup ==="
echo ""

# Check if Neovim is installed
if ! command -v nvim &> /dev/null; then
    echo "❌ Neovim is not installed!"
    echo "Install it first with: sudo pacman -S neovim"
    exit 1
fi

echo "✓ Neovim is installed: $(nvim --version | head -n1)"
echo ""

# Backup existing config if it exists
if [ -e "$NVIM_CONFIG" ]; then
    BACKUP="$NVIM_CONFIG.backup.$(date +%Y%m%d_%H%M%S)"
    echo "⚠️  Existing Neovim config found at $NVIM_CONFIG"
    echo "   Backing up to: $BACKUP"
    mv "$NVIM_CONFIG" "$BACKUP"
    echo ""
fi

# Check if dotfiles nvim directory exists
if [ ! -d "$DOTFILES_NVIM" ]; then
    echo "❌ Could not find nvim directory in dotfiles!"
    echo "Expected: $DOTFILES_NVIM"
    echo ""
    echo "Make sure you have the nvim/ directory in your dotfiles repo."
    exit 1
fi

# Create .config directory if it doesn't exist
mkdir -p "$HOME/.config"

# Create symlink
echo "Creating symlink:"
echo "  $NVIM_CONFIG -> $DOTFILES_NVIM"
ln -s "$DOTFILES_NVIM" "$NVIM_CONFIG"
echo "✓ Symlink created"
echo ""

# Verify symlink
if [ -L "$NVIM_CONFIG" ] && [ -d "$NVIM_CONFIG" ]; then
    echo "✓ Symlink verified successfully"
else
    echo "❌ Symlink creation failed!"
    exit 1
fi

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Next steps:"
echo "  1. Run: nvim"
echo "  2. Lazy.nvim will automatically install all plugins"
echo "  3. Wait for installation to complete"
echo "  4. Restart Neovim"
echo ""
echo "Plugin installation will happen automatically on first launch!"
echo ""

# Ask if user wants to launch nvim now
read -p "Launch Neovim now? (y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Launching Neovim..."
    nvim
fi
