#!/usr/bin/env bash
# Created by: Mr Coxall
# Created on: Sept 2020
# AWS Debian Linux .dotfiles and setup script

sudo apt update
sudo apt upgrade -y

# common programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y

# install NeoVim from source
mkdir temp
cd temp || exit
sudo apt-get install ninja-build gettext cmake unzip curl -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd .. || exit
cd .. || exit
sudo rm -r ./temp

# install languages
curl -fsSL https://bun.sh/install | bash
# shellcheck source=/dev/null
source ~/.bashrc
sudo apt install -y default-jdk

# install Fish Shell
sudo apt install gpg -y
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
sudo apt update
sudo apt install fish -y

# install Starship for Fish
curl -sS https://starship.rs/install.sh | sh

# install Charm VHS
sudo apt install ffmpeg -y
mkdir temp
cd temp || exit
sudo apt-get install -y build-essential cmake git libjson-c-dev libwebsockets-dev
git clone https://github.com/tsl0922/ttyd.git
cd ttyd || exit
mkdir build
cd build || exit
cmake ..
make && sudo make install
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
sudo apt update && sudo apt install vhs -y
cd ../../.. || exit
sudo rm -r temp
cd ~ || exit
