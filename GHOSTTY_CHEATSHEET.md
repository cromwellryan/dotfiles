# Ghostty Terminal Cheatsheet

Quick reference for Ghostty-specific commands and features while using tmux.

## Philosophy

**Ghostty = Fast Rendering Engine**  
**tmux = Session & Split Management**

Ghostty makes your terminal 100x faster. tmux manages your workflow.  
Use both together for the best experience.

---

## Essential Ghostty Keybindings

### Window & Tab Management
| Key | Action | Use Case |
|-----|--------|----------|
| `⌘N` | New Ghostty window | Start a new project/context |
| `⌘T` | New Ghostty tab | Different project in same window |
| `⌘W` | Close current tab | Done with this context |
| `⌘Shift+[` | Previous tab | Switch between projects |
| `⌘Shift+]` | Next tab | Switch between projects |

### Font & Display
| Key | Action | Notes |
|-----|--------|-------|
| `⌘+` | Increase font size | Great for presentations |
| `⌘-` | Decrease font size | |
| `⌘0` | Reset font size | Back to default (14pt) |

### Configuration
| Key | Action | Notes |
|-----|--------|-------|
| `⌘,` | Reload config | After editing `~/dotfiles/.config/ghostty/config` |
| `⌘Shift+I` | Toggle inspector | Debug rendering issues |

---

## CLI Commands

### Basic Usage

```bash
# Launch Ghostty from terminal (if already installed)
open -a Ghostty

# Launch with specific working directory
open -a Ghostty --args --working-directory=/path/to/project

# Launch with custom config
open -a Ghostty --args --config key=value
```

### Theme Management

```bash
# List all available themes
/Applications/Ghostty.app/Contents/MacOS/ghostty +list-themes

# List all keybindings (see what's available)
/Applications/Ghostty.app/Contents/MacOS/ghostty +list-keybinds --default

# Show current config values
/Applications/Ghostty.app/Contents/MacOS/ghostty +show-config
```

### Useful Inspection

```bash
# Check Ghostty version
/Applications/Ghostty.app/Contents/MacOS/ghostty --version

# See all CLI options
/Applications/Ghostty.app/Contents/MacOS/ghostty --help

# Get information about a config option
man ghostty
```

---

## Configuration File

**Location:** `~/dotfiles/.config/ghostty/config`  
**Symlinked to:** `~/Library/Application Support/com.mitchellh.ghostty/config`

### Quick Edits

```bash
# Edit config
vim ~/dotfiles/.config/ghostty/config

# Reload config in Ghostty
# Press ⌘, in any Ghostty window
```

### Common Tweaks

```bash
# Switch to dark theme
theme = tomorrow-night

# Adjust font size
font-size = 16

# Change font
font-family = "JetBrains Mono"

# Enable ligatures
font-feature = +liga

# Adjust window padding
window-padding-x = 8
window-padding-y = 8
```

---

## Integration with Your tmux Workflow

### Starting tmux in Ghostty

```bash
# Option 1: Just launch tmux
tmux

# Option 2: Use tmuxinator (your current workflow)
tmuxinator start project-name

# Option 3: Attach to existing session
tmux attach -t session-name
```

### Workflow Tips

**Use Ghostty tabs for:**
- Different projects (each with its own tmux session)
- Personal vs work contexts
- Different SSH destinations

**Use tmux inside each Ghostty tab for:**
- Splits and panes
- Session persistence (detach/reattach)
- Vim-aware navigation
- All your existing keybindings

**Example structure:**
```
Ghostty Window
├── Tab 1: "work-api" → tmux session with API server panes
├── Tab 2: "work-frontend" → tmux session with React dev
└── Tab 3: "personal" → tmux session with personal projects
```

---

## Shell Integration Features

Ghostty auto-detects zsh and enables these features:

### Auto-Enabled
- **Prompt detection** - Prevents closing with running processes
- **Directory tracking** - New terminals remember your location
- **Cursor styling** - Cursor changes at prompt vs in commands
- **Sudo wrapping** - Better sudo password prompts

### Usage
```bash
# Triple-click while holding Ctrl to select command output
# (Ctrl+triple-click selects between prompts)

# Alt+click to position cursor (works in zsh line editing)
```

---

## Performance Features (Automatic)

These are always enabled - you don't need to do anything:

- ✅ **GPU acceleration** (Metal on macOS)
- ✅ **Multi-threaded rendering**
- ✅ **SIMD optimizations**
- ✅ **Smart frame syncing** (no tearing)
- ✅ **Efficient scrollback** (10,000 lines configured)

You'll notice:
- Instant rendering of large outputs
- Smooth scrolling
- No dropped frames
- Fast regex search in scrollback

---

## Common Tasks

### Switch Between Ghostty and iTerm2

Both can be installed simultaneously:

```bash
# Launch Ghostty
open -a Ghostty

# Launch iTerm2
open -a iTerm2

# Set Ghostty as default terminal
# System Settings → Desktop & Dock → Default terminal: Ghostty
```

### Restore Previous Session

If you have `window-save-state = always` (you do):
- Ghostty automatically saves window positions and tabs
- Reopening Ghostty restores your last layout
- Each tab's working directory is preserved

### Copy Ghostty Config to Another Mac

```bash
# On current Mac (backup)
cd ~/dotfiles
git add .config/ghostty/config
git commit -m "Add Ghostty configuration"
git push

# On new Mac (restore)
cd ~/dotfiles
git pull
ln -s ~/dotfiles/.config/ghostty ~/Library/Application\ Support/com.mitchellh.ghostty
```

---

## Troubleshooting

### Config Not Loading
```bash
# Check config syntax
/Applications/Ghostty.app/Contents/MacOS/ghostty +show-config

# Reload config
# Press ⌘, in Ghostty
```

### Keybindings Not Working
```bash
# Check for conflicts
/Applications/Ghostty.app/Contents/MacOS/ghostty +list-keybinds

# Remember: C-d is your tmux prefix, Ghostty doesn't intercept it
```

### Colors Look Wrong
```bash
# Try different theme
theme = tomorrow-night  # dark
theme = tomorrow        # light
theme = github-light    # alternative light
theme = solarized-light # popular light theme
```

### Font Issues
```bash
# List installed fonts
fc-list : family | sort | uniq

# Test font rendering
font-family = "Menlo"
font-size = 14
```

### tmux Mouse Not Working
```bash
# In tmux, ensure mouse mode is on
tmux set -g mouse on

# Or add to ~/.tmux.conf
echo "set -g mouse on" >> ~/.tmux.conf
```

---

## Resources

- **Official Docs:** https://ghostty.org/docs
- **GitHub:** https://github.com/ghostty-org/ghostty
- **Man Page:** `man ghostty` or `man 5 ghostty` (config options)
- **Config Reference:** `man ghostty.5`
- **Your Config:** `~/dotfiles/.config/ghostty/config`
- **Your tmux Config:** `~/dotfiles/.tmux.conf`

---

## Quick Start Checklist

- [x] Ghostty installed via Homebrew
- [x] Config created at `~/dotfiles/.config/ghostty/config`
- [x] Config symlinked to proper location
- [ ] Launch Ghostty
- [ ] Start tmux session inside Ghostty
- [ ] Test your tmux keybindings (C-d prefix, splits, navigation)
- [ ] Test vim-aware C-h/j/k/l navigation
- [ ] Verify tmuxinator works
- [ ] Enjoy 100x faster rendering!

---

## Your tmux Keybindings (Still Work!)

These all work exactly as before - Ghostty doesn't interfere:

| Key | Action | Location |
|-----|--------|----------|
| `C-d` | tmux prefix | Your custom prefix |
| `C-d j` | Split horizontally | Custom binding |
| `C-d l` | Split vertically | Custom binding |
| `C-h/j/k/l` | Vim-aware navigation | Smart switching |
| `Alt+h/j/k/l` | Resize panes | Your binding |
| `C-1/2/3/4` | Jump to pane 1-4 | Direct selection |
| `C-d z` | Zoom pane | Toggle maximize |
| `C-d c` | New tmux window | Standard binding |
| `Shift+Left/Right` | Swap windows | Your binding |

**All of these continue to work exactly as configured in `~/.tmux.conf`**

---

*Last updated: April 8, 2026*
