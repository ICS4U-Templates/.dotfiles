# .dotfiles

[![Mr Coxall's Super Linter](https://github.com/Mr-Coxall/.dotfiles/workflows/Mr%20Coxall's%20Super%20Linter/badge.svg)](https://github.com/Mr-Coxall/.dotfiles/actions/)

This repository contains the dotfiles and a setup script to setup a Pi Zero 2 W the way I like for development.
You will have to load git first, to be able to clone the repository. You will also have to login to GitHub using GH CLI.

## Terminal Setup Command

- `sudo raspi-config`
  - setup wireless
  - expand file system

- change instances in `/etc/apt/sources.list` to "bookworm" and then run:

- ```bash
  wget https://github.com/ICS4U-Templates/.dotfiles-Pi_02W/releases/download/V0.1.0/setup_script.sh
  chmod +x ./setup_script.sh
  ./setup_script.sh
  ```