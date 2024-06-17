# Setup brew
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/christophermacrae/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file ~/.Brewfile

# Install Google Chrome for Testing
LATEST_CHROME_TESTING_VERSION=$(curl https://googlechromelabs.github.io/chrome-for-testing/LATEST_RELEASE_STABLE)
echo $LATEST_CHROME_TESTING_VERSION
curl -O https://storage.googleapis.com/chrome-for-testing-public/$LATEST_CHROME_TESTING_VERSION/mac-arm64/chrome-mac-arm64.zip
unzip chrome-mac-arm64
mv ~/chrome-mac-arm64/Google\ Chrome\ for\ Testing.app /Applications
rm -rf ~/chrome-mac-arm64
rm ~/chrome-mac-arm64.zip

# Setup Programming Libs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install lts
goenv install latest
rbenv install 2.6.10
# TODO: pyenv latest

# Setup & Launch OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
