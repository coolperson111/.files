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


