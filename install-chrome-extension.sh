#!/bin/bash

# Omni Chrome Extension Local Installer
# This script helps you install the Omni extension in Chrome

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║           Omni Chrome Extension - Local Installation           ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$SCRIPT_DIR/src"

echo "📁 Extension source directory: $SRC_DIR"
echo ""

# Check if src directory exists
if [ ! -d "$SRC_DIR" ]; then
    echo "❌ Error: src directory not found at $SRC_DIR"
    exit 1
fi

# Check if manifest.json exists
if [ ! -f "$SRC_DIR/manifest.json" ]; then
    echo "❌ Error: manifest.json not found in src directory"
    exit 1
fi

echo "✅ Extension files verified!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📋 INSTALLATION STEPS:"
echo ""
echo "1. Open Chrome and navigate to: chrome://extensions/"
echo ""
echo "2. Enable 'Developer mode' (toggle in top-right corner)"
echo ""
echo "3. Click 'Load unpacked' button"
echo ""
echo "4. Select this folder:"
echo "   $SRC_DIR"
echo ""
echo "5. Done! Press Ctrl+Shift+K (or Cmd+Shift+K on Mac) to open Omni"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Try to open Chrome extensions page
echo "🚀 Attempting to open Chrome extensions page..."

# Detect OS and open Chrome
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    open -a "Google Chrome" "chrome://extensions/"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    if command -v google-chrome &> /dev/null; then
        google-chrome "chrome://extensions/" &
    elif command -v google-chrome-stable &> /dev/null; then
        google-chrome-stable "chrome://extensions/" &
    elif command -v chromium-browser &> /dev/null; then
        chromium-browser "chrome://extensions/" &
    else
        echo "⚠️  Could not find Chrome. Please open chrome://extensions/ manually."
    fi
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "win32" ]]; then
    # Windows
    start chrome "chrome://extensions/"
else
    echo "⚠️  Unknown OS. Please open chrome://extensions/ manually."
fi

echo ""
echo "💡 Tip: After installing, pin the extension for quick access!"
echo "   Click the puzzle icon 🧩 in Chrome toolbar and pin Omni."
echo ""
