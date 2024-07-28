#!/bin/bash

# THINGS NEEDED TO INSTALL
# starship ^^
# zoxide ^^
# GitHub CLI (gh) ^^
# fzf ^^
# Nerd Font ^^
# Kitty ^^
# dotfiles ^^
# NPM and node (for installing other things in neovim) ^^
# GO ^^
# GNU Stow ^^
# Flutter (dartls, android sdk, eveything)
# JAVA (21, 17, etc) - Mvn, IntelliJ, everything
# Whatever other languages i might be working in
# MySQL
# ROFI
# eza and bat
# yazi - Terminal file browser
# rofi - Dmenu replacement run things

sudo apt update
sudo apt upgrade
sudo apt clean
sudo apt autoclean
sudo apt autoremove

sudo apt install zsh
sudo chsh -s $(which zsh)

sudo apt install gcc g++ python3 python3-pip default-jdk default-jre
sudo apt install neovim
sudo apt install ripgrep fd-find openssh
sudo apt install neofetch htop

if [ -d ~/.config/nvim ]; then
  echo "nvim config already exists, renaming to nvim_old"
  mv ~/.config/nvim ~/.config/nvim_old
fi
cp -r ~/Projects/.files/.config/nvim/ ~/.config/nvim/

if [ -f ~/.config/.profile ]; then
  echo ".profile already exists, renaming to .profile_old"
  mv ~/.config/.profile ~/.config/.profile_old
fi
ln ~/Projects/.files/.config/.profile ~/.config/.profile

if [ -f ~/.aliasrc ]; then
  echo ".aliasrc already exists, renaming to .aliasrc_old"
  mv ~/.aliasrc ~/.aliasrc_old
fi
ln ~/Projects/.files/.aliasrc ~/./

if [ -f ~/.zshrc ]; then
  echo ".zshrc already exists, renaming to .zshrc_old"
  mv ~/.zshrc ~/.zshrc_old
fi
ln ~/Projects/.files/.zshrc ~/./

if [ -f ~/.zprofile ]; then
  echo ".zprofile already exists, renaming to .zprofile_old"
  mv ~/.zprofile ~/.zprofile_old
fi
ln ~/Projects/.files/.zprofile ~/./

# kitty config
ln ~/Projects/.files/.config/kitty/* ~/.config/kitty/./




