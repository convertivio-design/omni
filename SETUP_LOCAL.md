# Local Chrome Extension Setup Guide

## Quick Setup for Omni Extension

This guide will help you install the Omni extension locally in Chrome.

### Prerequisites
- Google Chrome browser
- This repository cloned/downloaded to your local machine

### Installation Steps

#### Step 1: Open Chrome Extensions Page
Navigate to `chrome://extensions/` in your Chrome browser.

#### Step 2: Enable Developer Mode
Toggle the "Developer mode" switch in the top-right corner of the extensions page.

#### Step 3: Load the Extension
Click "Load unpacked" button and select the `src` folder from this repository:
```
/workspace/src
```

#### Step 4: Verify Installation
You should now see "Omni - Bookmark, History, & Tab Manager" in your extensions list.

### Using Omni

- **Open Omni**: Press `Ctrl+Shift+K` (Windows/Linux) or `Cmd+Shift+K` (Mac)
- **Close Omni**: Press `Esc` or click outside the interface
- **Pin Extension**: Click the puzzle icon in Chrome toolbar and pin Omni for quick access

### Available Commands
- `/tabs` - Search your tabs
- `/bookmarks` - Search your bookmarks
- `/history` - Search your browser history
- `/actions` - Search all available actions
- `/remove` - Remove a bookmark or close a tab

### Troubleshooting

**Extension not loading?**
1. Make sure you selected the `src` folder (not the root folder or a ZIP file)
2. Check the Chrome extensions page for any error messages
3. Try reloading the extension by clicking the refresh icon

**Keyboard shortcut not working?**
1. Go to `chrome://extensions/shortcuts`
2. Find "Omni" and set your preferred shortcut

**Extension not appearing on some pages?**
Some Chrome system pages (chrome://, chrome-extension://) don't allow extensions to run.

### Development

If you make changes to the extension code, click the refresh button on the extension card in `chrome://extensions/` to reload it.
