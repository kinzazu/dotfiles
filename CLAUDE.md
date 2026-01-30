# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a dotfiles repository using GNU Stow for symlink management. Each top-level directory (fish, nvim, hypr, lf, waybar) is a stow package that mirrors the target structure in `$HOME`.

## Commands

**Apply all dotfiles:**
```bash
./auto_apply.fish
```

**Apply a single package:**
```bash
stow <package-name>   # e.g., stow fish, stow nvim
```

**Remove a package:**
```bash
stow -D <package-name>
```

## Repository Structure

Each directory is a stow package. The internal structure mirrors where files should be symlinked relative to `$HOME`:

- `fish/.config/fish/` → `~/.config/fish/`
- `nvim/.config/nvim/` → `~/.config/nvim/`
- `lf/.config/lf/` → `~/.config/lf/`
- `waybar/.config/waybar/` → `~/.config/waybar/`
- `hypr/hyprland.conf` → `~/hyprland.conf`

## Key Configurations

**Fish shell:** Uses platform-specific configs loaded via `conf.d/macos.fish` or `conf.d/linux.fish` based on `uname`. Defines shell abbreviations (`gc`, `gcl`, `k`, `vim`→`nvim`, etc.).

**Neovim:** Uses lazy.nvim for plugin management. Plugins are defined in `nvim/.config/nvim/lua/plugins/`. Leader key is space.
