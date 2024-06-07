#!/usr/bin/env bash
# Created by: Mr Coxall
# Created on: Sept 2020
# Pi Zero 2 W .dotfiles and setup script

sudo apt update
sudo apt upgrade --without-new-pkgs
sudo apt full-upgrade
sudo apt update
sudo apt upgrade -y
sudo apt auto remove -y

# common programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y
sudo apt install neofetch -y

# install NeoVim, new version, now part of Rasbian :)

# install languages
curl -fsSL https://bun.sh/install | bash
sudo apt install -y default-jdk

# install Fish Shell
sudo apt install gpg -y
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
sudo apt update
sudo apt install fish -y

# install Starship for Fish
curl -sS https://starship.rs/install.sh | sh
