echo "hide all icons on desktop"
defaults write com.apple.finder CreateDesktop false && killall Finder

xcode-select --install 

echo "Install Brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew bundle

echo "gen ssh key"
github-keygen tigpt

echo "config ssh key in github"
gh auth login
