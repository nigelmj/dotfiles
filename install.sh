#!/bin/zsh

# Install xCode cli tools
echo "Installing commandline tools..."
xcode-select --install

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

# Taps
echo "Tapping Brew..."
brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae
brew tap koekeishiya/formulae

# Cli tools
echo "Installing CLI tools..."
brew install fortune
brew install cowsay
brew install lolcat
brew install zoxide
brew install fzf
brew install eza
brew install bat
brew install oh-my-posh
brew install stow

# System customisations
echo "Adding customisations..."
brew install sketchybar
brew install skhd
brew install yabai

# Font
brew install --cask font-jetbrains-mono-nerd-font

# Nice to have apps
echo "Installing apps..."
brew install --cask bitwarden
brew install --cask arc
brew install --cask zed
brew install --cask raycast
brew install --cask spotify

# macOS settings
echo "Setting macOS defaults..."
osascript -e 'tell application "System Preferences" to quit'
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "mru-spaces" -bool "false"
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "magnification" -bool "false"
defaults write com.apple.screencapture "location" -string "$HOME/Pictures/Screenshots"
defaults write com.apple.screencapture "disable-shadow" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "true"
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write NSGlobalDomain "_HIHideMenuBar" -bool "true"
defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate"
defaults write com.apple.LaunchServices "LSQuarantine" -bool "false"

source $HOME/.zshrc

# Start services
echo "Starting services (grant permissions)..."
brew services start sketchybar
yabai --start-service
skhd --start-service
