# Dotfiles Guide

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Quick Start

### First Time Setup
```bash
# Clone the repo anywhere you like
git clone <this-repo-url> ~/dotfiles

# Install all configs
cd ~/dotfiles
stow -t ~ shell nvim
```

### Adding New Configs
```bash
# 1. Create package directory
mkdir -p ~/dotfiles/newapp/.config/newapp

# 2. Move your config there
mv ~/.config/newapp/config ~/dotfiles/newapp/.config/newapp/

# 3. Install with stow
cd ~/dotfiles
stow -t ~ newapp

# 4. Commit
git add -A && git commit -m "Add newapp config"
```

### Editing Configs
Edit files directly in the repo — they're symlinked to your home directory:
```bash
nvim ~/dotfiles/shell/.zshrc
```

Or edit the symlinks in `~`:
```bash
nvim ~/.zshrc
```

Both approaches work because they're the same file.

### Removing Configs
```bash
# 1. Unstow (removes symlinks)
cd ~/dotfiles
stow -D -t ~ newapp

# 2. Remove from repo
rm -rf newapp/

# 3. Commit
git add -A && git commit -m "Remove newapp config"
```

## Installed Packages

### Shell
- `.zshrc` - Zsh configuration (Oh My Zsh, plugins, aliases)
- `.bashrc` - Bash configuration
- `.profile` - Login shell config
- `.config/starship.toml` - Starship prompt theme

### Neovim
- `.config/nvim/` - NvChad-based Neovim config
  - LSP support
  - Telescope
  - Treesitter
  - Custom keybindings

### Git
- `.gitconfig` - Git global config (user info, credential helper)

### Tmux
- `.tmux.conf` - oh-my-tmux base config
- `.tmux.conf.local` - TokyoNight theme customization

## Common Commands

```bash
# List all installed stow packages
stow -t ~ -p

# Check what symlinks exist
ls -la ~/.zshrc ~/.bashrc ~/.profile ~/.config/*

# Reinstall all configs
cd ~/dotfiles
stow -D -t ~ shell nvim && stow -t ~ shell nvim

# Dry run (see what would be linked)
stow -n -t ~ shell
```

## Troubleshooting

### "Target directory does not exist"
Stow needs the parent directory to exist. For `.config/nvim`, ensure `~/.config/` exists.

### "Link already exists"
Remove the existing file first:
```bash
rm ~/.config/somefile
stow -t ~ package
```

### "Conflicts with existing file"
Check what's already there:
```bash
ls -la ~/dotfiles/package/.config/
```

## Backup

To backup your configs:
```bash
cd ~/dotfiles
git add -A
git commit -m "Backup configs"
git push
```

To restore on a new machine:
```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
stow -t ~ shell nvim
```
