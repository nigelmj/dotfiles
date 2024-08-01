# Dotfiles

This repository contains the configuration files for my development environment.

Contents:
- [.zshrc](config/zsh/.zshrc): Configuration for the Zsh shell.
- [Oh My Posh config](config/ohmyposh/posh-config.toml): Custom prompt settings for Oh My Posh.
- [Zed theme](config/zed/themes/OneDarkProFlat.json): Theme configuration for the Zed editor.

## Zsh
Credits: [dreamsofautonomy](https://github.com/dreamsofautonomy/zensh)  
This config is mostly based on the zensh config excluding the history file and aliases. Instead of the `ls --color` option, I use the `eza` command.

## Oh My Posh
Inspired by [M365Princess](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/M365Princess.omp.json)  
This prompt is similar to the original but is written in TOML format. It includes additional features such as exit code and execution time, along with some new colors and minor adjustments.

## Zed theme: One Dark Pro Flat
Inspired by [One Dark Pro](https://github.com/Binaryify/OneDark-Pro) theme for VSCode  
This is based on the Flat variation of the theme.

## Installation

1. Clone the repository and navigate to the directory:
```sh
git clone https://github.com/nigelmj/dotfiles
cd dotfiles
```

2. Use GNU Stow to symlink the configuration files to the home directory:
```sh
stow -t ~ .
```
