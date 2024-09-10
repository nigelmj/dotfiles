# Dotfiles

This repository contains the configuration files for my development environment.

Contents:
- .zshrc: Configuration for the Zsh shell.
- [Zed](https://github.com/zed-industries/zed): Code editor built in Rust.
- [Oh My Posh](https://github.com/JanDeDobbeleer/oh-my-posh): Custom shell prompt.
- [Yabai](https://github.com/koekeishiya/yabai): Tiling window manager.
- [Skhd](https://github.com/koekeishiya/skhd): Hotkey daemon.
- [SketchyBar](https://github.com/FelixKratz/SketchyBar): Custom menu bar.

## Installation

1. Clone the repository and navigate to the directory:
```sh
git clone https://github.com/nigelmj/dotfiles
cd dotfiles
```

2. Run the installation script:
```sh
./install.sh
```

3. Use GNU Stow to symlink the configuration files to the home directory:
```sh
stow -t ~ .
```
