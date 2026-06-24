# Dotfiles Management Skill

## Overview
This repository manages personal dotfiles using GNU Stow for symlink management. Each subdirectory represents a "stow package" containing config files that mirror the home directory structure.

## Repository Structure
```
dotfiles/
├── shell/          # Shell configs (.zshrc, .bashrc, .profile)
│   ├── .zshrc
│   ├── .bashrc
│   ├── .profile
│   └── .config/
│       └── starship.toml
├── nvim/           # Neovim config
│   └── .config/
│       └── nvim/
│           ├── init.lua
│           ├── lazy-lock.json
│           └── lua/
│               ├── autocmds.lua
│               ├── chadrc.lua
│               ├── mappings.lua
│               ├── options.lua
│               ├── configs/
│               └── plugins/
├── AGENTS.md       # This file
└── GUIDE.md        # Human-readable guide
```

## Workflow

### Adding New Configs
1. Create a new directory in the repo root (e.g., `git/`, `tmux/`)
2. Mirror the home directory structure inside it:
   ```
   git/
   └── .config/
       └── git/
           └── config
   ```
3. Remove the original config: `rm -rf ~/.config/git`
4. Run stow from the repo root: `stow -t ~ <package-name>`
5. Commit changes

### Editing Existing Configs
1. Edit files directly in the repo (they're symlinked)
2. Or edit the symlinks in `~` - changes reflect in the repo
3. Commit changes

### Removing a Package
1. Unstow first: `stow -D -t ~ <package-name>`
2. Remove the package directory from the repo
3. Commit changes

### Cloning on New Machine
1. Clone the repo to `~/development/dotfiles/`
2. Run stow for each package: `stow -t ~ shell nvim`
3. Or install all: `stow -t ~ */`

## Important Notes
- Always run stow from the repo root: `cd ~/development/dotfiles && stow -t ~ <package>`
- Each package directory mirrors the home directory structure
- Stow creates relative symlinks by default
- The `.gitignore` excludes common editor temp files
- Never commit secrets or API keys
