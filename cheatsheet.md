# NvChad + Tmux Cheatsheet

---

## Basic Vim/Neovim Keybinds (Essentials)

### Modes

| Mode | Enter from Normal | Purpose |
|------|-------------------|---------|
| Normal | `<Esc>` | Navigation & commands |
| Insert | `i`, `a`, `o`, `I`, `A`, `O` | Text input |
| Visual | `v`, `V`, `<C-v>` | Selection |
| Command | `:` | Execute commands |

### Movement (Normal Mode)

| Key | Action |
|-----|--------|
| `h` `j` `k` `l` | Left / Down / Up / Right |
| `w` / `W` | Next word / WORD |
| `b` / `B` | Previous word / WORD |
| `e` / `E` | End of word / WORD |
| `0` | Start of line |
| `^` | First non-blank character |
| `$` | End of line |
| `gg` | Start of file |
| `G` | End of file |
| `123G` | Go to line 123 |
| `H` / `M` / `L` | Top / Middle / Bottom of screen |
| `<C-u>` / `<C-d>` | Scroll up/down half page |
| `<C-f>` / `<C-b>` | Scroll forward/backward one page |

### Editing (Normal Mode)

| Key | Action |
|-----|--------|
| `x` | Delete character under cursor |
| `dd` | Delete line |
| `D` | Delete to end of line |
| `dw` | Delete word |
| `yy` | Yank (copy) line |
| `yw` | Yank word |
| `p` / `P` | Paste after / before |
| `u` | Undo |
| `<C-r>` | Redo |
| `.` | Repeat last change |
| `>` / `<` | Indent / dedent (with motion, e.g. `>ip`) |
| `>>` / `<<` | Indent / dedent current line |
| `J` | Join lines |

### Visual Mode

| Key | Action |
|-----|--------|
| `v` | Character-wise visual |
| `V` | Line-wise visual |
| `<C-v>` | Block-wise visual |
| `o` | Jump to other end of selection |
| `d` / `x` | Delete selection |
| `y` | Yank selection |
| `>` / `<` | Indent / dedent selection |
| `~` | Toggle case |

### Searching & Replacing

| Key | Action |
|-----|--------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` / `N` | Next / previous match |
| `*` | Search word under cursor (forward) |
| `#` | Search word under cursor (backward) |
| `:%s/old/new/g` | Replace all in file |
| `:s/old/new/g` | Replace all in selection |

### Files & Splits

| Key | Action |
|-----|--------|
| `:e filename` | Open file |
| `:w` | Save |
| `:q` | Quit |
| `:wq` | Save & quit |
| `:q!` | Quit without saving |
| `ZZ` | Save & quit |
| `ZQ` | Quit without saving |
| `:sp filename` | Horizontal split |
| `:vsp filename` | Vertical split |
| `<C-w>s` | Split current window |
| `<C-w>v` | Vertical split current window |
| `<C-w>w` | Cycle windows |
| `<C-w>q` | Close window |

### Useful Commands

| Key | Action |
|-----|--------|
| `:` | Enter command mode |
| `<C-g>` | Show filename + status |
| `ga` | Show ASCII value of char under cursor |
| `g8` | Show hex value of UTF-8 bytes |
| `:noh` | Clear search highlights |
| `:u` | Undo (same as `u`) |
| `:earlier 5m` | Jump to state 5 minutes ago |
| `:later 5m` | Jump to state 5 minutes later |

---

## NvChad Options (defaults)

| Option | Value | Description |
|--------|-------|-------------|
| `clipboard` | `unnamedplus` | System clipboard integration |
| `number` | `true` | Show line numbers |
| `cursorline` | `true` | Highlight current line |
| `expandtab` | `true` | Spaces instead of tabs |
| `shiftwidth` | `2` | Indent width |
| `tabstop` | `2` | Tab width |
| `ignorecase` | `true` | Case-insensitive search |
| `smartcase` | `true` | Case-sensitive if uppercase used |
| `splitbelow` | `true` | Horizontal splits open below |
| `splitright` | `true` | Vertical splits open right |
| `undofile` | `true` | Persistent undo |
| `updatetime` | `250` | Faster swap write / gitsigns |
| `timeoutlen` | `400` | Key sequence timeout (ms) |
| `mouse` | `a` | Enable mouse in all modes |
| `showmode` | `false` | Hide -- INSERT -- etc. |
| `signcolumn` | `yes` | Always show sign column |

### Custom Options

| Option | Value |
|--------|-------|
| `lazygit_binary_path` | `~/.local/bin/lazygit` |

---

## LSP Servers

Configured in `configs/lspconfig.lua`:
- `html`, `cssls`
- `ts_ls` (TypeScript)
- `pyright` (Python)
- `rust_analyzer` (Rust)
- `gopls` (Go)

## Formatters (format-on-save enabled)

| Filetype | Formatter |
|----------|-----------|
| Lua | `stylua` |
| JS/TS/JSX/TSX | `prettier` |
| HTML/CSS/JSON/YAML/MD | `prettier` |
| Python | `black` |
| Go | `gofumpt` |
| Rust | `rustfmt` |

---

## Keybinds

### General

| Key | Mode | Action |
|-----|------|--------|
| `;` | Normal | Enter command mode (`:`) |
| `jk` | Insert | Escape to normal mode |
| `<Esc>` | Normal | Clear search highlights |
| `<C-s>` | Normal | Save file |
| `<C-c>` | Normal | Copy whole file to clipboard |
| `<leader>fm` | Normal/Visual | Format file |
| `<leader>n` | Normal | Toggle line numbers |
| `<leader>rn` | Normal | Toggle relative numbers |
| `<leader>ch` | Normal | Open NvCheatsheet |
| `<leader>/` | Normal | Toggle line comment |
| `<leader>/` | Visual | Toggle block comment |

### Window Navigation

| Key | Mode | Action |
|-----|------|--------|
| `<C-h>` | Normal | Switch to left window |
| `<C-l>` | Normal | Switch to right window |
| `<C-j>` | Normal | Switch to window below |
| `<C-k>` | Normal | Switch to window above |

### Insert Mode Movement

| Key | Mode | Action |
|-----|------|--------|
| `<C-b>` | Insert | Move to beginning of line |
| `<C-e>` | Insert | Move to end of line |
| `<C-h>` | Insert | Move left |
| `<C-l>` | Insert | Move right |
| `<C-j>` | Insert | Move down |
| `<C-k>` | Insert | Move up |

### Buffers (tabufline)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>b` | Normal | New buffer |
| `<tab>` | Normal | Next buffer |
| `<S-tab>` | Normal | Previous buffer |
| `<leader>x` | Normal | Close buffer |

### NvimTree (File Explorer)

| Key | Mode | Action |
|-----|------|--------|
| `<C-n>` | Normal | Toggle NvimTree |
| `<leader>e` | Normal | Focus NvimTree |

### Telescope (Fuzzy Finder)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find files |
| `<leader>fa` | Normal | Find all files (hidden + ignored) |
| `<leader>fw` | Normal | Live grep |
| `<leader>fb` | Normal | List open buffers |
| `<leader>fh` | Normal | Help tags |
| `<leader>fo` | Normal | Recent files (oldfiles) |
| `<leader>fz` | Normal | Fuzzy find in current buffer |
| `<leader>ma` | Normal | Find marks |
| `<leader>cm` | Normal | Git commits |
| `<leader>gt` | Normal | Git status |
| `<leader>pt` | Normal | Pick hidden terminal |
| `<leader>th` | Normal | NvChad themes picker |

### Terminal

| Key | Mode | Action |
|-----|------|--------|
| `<A-i>` | Normal/Terminal | Toggle floating terminal |
| `<A-h>` | Normal/Terminal | Toggle horizontal terminal |
| `<A-v>` | Normal/Terminal | Toggle vertical terminal |
| `<leader>h` | Normal | New horizontal terminal |
| `<leader>v` | Normal | New vertical terminal |
| `<C-x>` | Terminal | Escape terminal mode |

### LSP

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ds` | Normal | Diagnostic loclist |

### WhichKey

| Key | Mode | Action |
|-----|------|--------|
| `<leader>wK` | Normal | Show all keymaps |
| `<leader>wk` | Normal | Query specific keymap |

### LazyGit

| Key | Mode | Action |
|-----|------|--------|
| `<leader>lg` | Normal | Open LazyGit |

### Markdown

| Key | Mode | Action |
|-----|------|--------|
| `<leader>md` | Normal | Toggle rich markdown preview |

### Treesitter (installed parsers)

`vim`, `lua`, `vimdoc`, `html`, `css`, `javascript`, `typescript`, `tsx`, `python`, `rust`, `go`, `gomod`, `gosum`, `json`, `yaml`, `toml`, `markdown`, `markdown_inline`, `bash`, `dockerfile`, `gitignore`

### Plugins

| Plugin | Purpose |
|--------|---------|
| `conform.nvim` | Formatting (format-on-save) |
| `nvim-lspconfig` | LSP configuration |
| `nvim-treesitter` | Syntax highlighting / treesitter |
| `nvim-ts-autotag` | Auto close/rename HTML tags |
| `trouble.nvim` | Diagnostics list |
| `lazygit.nvim` | Git UI in terminal |
| `todo-comments.nvim` | Highlight TODO/FIXME/etc. |
| `nvim-tree.lua` | File explorer |
| `copilot.lua` | GitHub Copilot |
| `markview.nvim` | Rich markdown preview |

---

## Leader Key

The default leader key is **Space** (`<leader>` = `<Space>`).

---

## Tmux (oh-my-tmux — TokyoNight theme)

> **Prefix key:** `Ctrl-a` (secondary: `Ctrl-b`)

### Prefix + General

| Key | Action |
|-----|--------|
| `prefix + e` | Edit `.tmux.conf.local` |
| `prefix + r` | Reload tmux config |
| `prefix + m` | Toggle mouse mode on/off |
| `prefix + t` | Show clock |
| `C-l` | Clear screen + tmux history |
| `prefix + C-c` | Create new session |
| `prefix + C-f` | Switch to session by name |
| `prefix + Tab` | Last active window |

### Windows

| Key | Action |
|-----|--------|
| `prefix + c` | New window (retains current path) |
| `prefix + C-h` | Previous window |
| `prefix + C-l` | Next window |

### Panes

| Key | Action |
|-----|--------|
| `prefix + _` | Split vertically (retains path) |
| `prefix + -` | Split horizontally (retains path) |
| `prefix + h` | Move to left pane |
| `prefix + j` | Move to pane below |
| `prefix + k` | Move to pane above |
| `prefix + l` | Move to right pane |
| `prefix + H` | Resize pane left |
| `prefix + J` | Resize pane down |
| `prefix + K` | Resize pane up |
| `prefix + L` | Resize pane right |
| `prefix + <` | Swap pane left |
| `prefix + >` | Swap pane right |
| `prefix + +` | Maximize pane to new window |
| `prefix + q` | Show pane numbers (then press N) |

### Copy Mode (vi)

| Key | Action |
|-----|--------|
| `prefix + Enter` | Enter copy mode |
| `v` | Begin selection |
| `C-v` | Toggle blockwise visual mode |
| `H` | Jump to start of line |
| `L` | Jump to end of line |
| `y` | Copy selection to paste buffer |
| `Escape` | Cancel current operation |

### Paste

| Key | Action |
|-----|--------|
| `prefix + b` | List paste buffers |
| `prefix + p` | Paste from top buffer |
| `prefix + P` | Choose buffer to paste |

### TPM Plugins

| Key | Action |
|-----|--------|
| `prefix + I` | Install plugins |
| `prefix + u` | Update plugins |
| `prefix + Alt-u` | Uninstall plugins |

### Status Bar Indicators

| Symbol | Meaning |
|--------|---------|
| `⌨` | Prefix key pressed |
| `↗` | Mouse mode on |
| `⚇` | Paired session |
| `⚏` | Synchronized panes |
| `!` | Running as root |

---

## Quick Reference Card

```
SPACE = Leader

# Files & Search
<leader>ff    Find files
<leader>fw    Grep (live search)
<leader>fa    Find all files
<leader>fb    Switch buffer
<leader>fo    Recent files

# Navigation
<C-h/j/k/l>  Switch windows
<Tab>         Next buffer
<S-Tab>       Prev buffer

# Terminal
<A-i>         Floating terminal
<A-h>         Horizontal terminal
<A-v>         Vertical terminal

# Git
<leader>lg    LazyGit

# NvimTree
<C-n>         Toggle file tree

# Editing
<leader>/     Toggle comment
<leader>fm    Format file
<C-s>         Save
<C-c>         Copy whole file

# Markdown
:Markview Toggle   Toggle rich preview

# Tmux (prefix = Ctrl-a)
prefix + r     Reload config
prefix + e     Edit config
prefix + m     Toggle mouse
prefix + +     Maximize pane
prefix + I     Install TPM plugins
```
