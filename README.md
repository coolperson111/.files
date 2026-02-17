# Dotfiles

Personal configuration files for bash, zsh, neovim, kitty, and starship.

## Prerequisites

Install the required tools:
- GNU Stow
- git
- neovim, kitty, zsh, starship (install the tools you want to configure)

## Installation

Clone this repository:

```bash
git clone <repo-url> ~/dotfiles
cd ~/dotfiles
```

Install all configurations:

```bash
stow -t ~ */
```

Or install specific packages:

```bash
stow -t ~ nvim zsh kitty starship
```

## Uninstalling

```bash
cd ~/dotfiles
stow -D -t ~ <package-name>  # e.g., stow -D -t ~ nvim
```

## Available Packages

- `bash` - Bash shell configuration
- `kitty` - Kitty terminal emulator
- `nvim` - Neovim editor
- `starship` - Starship prompt
- `zsh` - Zsh shell configuration