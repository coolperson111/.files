#!/bin/bash

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

# nvim config
ln ~/Projects/.files/.config/nvim/init.lua ~/.config/nvim/init.lua
ln ~/Projects/.files/.config/nvim/lua/malhar/*.lua ~/.config/nvim/lua/malhar/./
ln ~/Projects/.files/.config/nvim/lua/malhar/plugin_config/*.lua ~/.config/nvim/lua/malhar/plugin_config/./

# zsh config
ln ~/Projects/.files/.config/.profile ~/.config/.profile
ln ~/Projects/.files/.aliasrc ~/./
ln ~/Projects/.files/.zshrc ~/./
ln ~/Projects/.files/.zprofile ~/./

# kitty config
ln ~/Projects/.files/.config/kitty/* ~/.config/kitty/./




