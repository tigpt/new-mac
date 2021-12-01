echo "hide all icons on desktop"
defaults write com.apple.finder CreateDesktop false && killall Finder

xcode-select --install 

echo "Install Brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew bundle

# remove code sign so apps can use OBS virtual camera as webcam
sudo codesign --remove-signature "/Applications/Amazon Chime.app"
sudo codesign --remove-signature "/Applications/Microsoft Teams.app"
