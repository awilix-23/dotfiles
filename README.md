# ⚙️ dotfiles 

An uninteresting laptop setup managed with GNU Stow 

## ✨ Overview

This repo contains my personal dotfiles — configs for shells, editors, and other
tools I touch too often. Everything is organized by directory and symlinked into
place using GNU Stow.

> If it works on my machine, it might work on yours; no promises, though.

## 📦 Requirements

Install `git` and `stow` using your package manager

```bash
$ sudo pacman -S --needed git stow
```

## 🚀 Installation

Clone the repository

```bash
$ git clone https://github.com/awilix-23/dotfiles.git
```

Use GNU `stow` to create symlinks

```bash
$ cd dotfiles
$ stow -t ~ .
```
