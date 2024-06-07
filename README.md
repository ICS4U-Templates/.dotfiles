# .dotfiles

[![Mr Coxall's Super Linter](https://github.com/Mr-Coxall/.dotfiles/workflows/Mr%20Coxall's%20Super%20Linter/badge.svg)](https://github.com/Mr-Coxall/.dotfiles/actions/)

This repository contains the dotfiles and a setup script to setup a Pi Zero 2 W the way I like for development.
You will have to load git first, to be able to clone the repository. You will also have to login to GitHub using GH CLI.

## Terminal Setup Command

Change `/etc/apt/sources.list` to "bookworm" and then run:

```bash
curl -s -L https://github.com/ICS4U-Templates/.dotfiles-Pi_02W/releases/download/V0.0.1/setup_script.sh| bash
```