#!/bin/zsh

echo "👉 Verifying if Brew is available on the system"
if command -v brew &>/dev/null; then
  echo "🍺 Brew already instaled"
else
  echo "Brew was not found on the system"
  echo "🍺 Performing brew installation"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo
echo " Installing Startship prompt"
brew install starship
# we need to add the following line to the .zshrc file
# in order to start the starship prompt
# eval "$(starship init zsh)"
# official doc: https://starship.rs
if ! grep -Fxq 'eval "$(starship init zsh)"' ~/.zshrc; then
  echo 'eval "$(starship init zsh)"' >> ~/.zshrc
fi

echo
echo "👉 Verifying if Alacritty is available on the system"
if command -v alacritty &>/dev/null; then
  echo "🚀 Alacritty already instaled"
else
  echo "Alacritty was not found on the system"
  echo "🚀 Performing Alacritty installation"
  brew install alacritty
fi

echo
echo "👉 Verifying if Rust is available on the system"
if command -v rustc &>/dev/null; then
  echo "🦀 Rust already instaled"
else
  echo "Rust was not found on the system"
  echo "🦀 Performing rust installation"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

echo
echo "🔧 Performing the installation of all NerdFonts"
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true

echo
echo "🔧 Performing the installation of IDE's"

echo
echo "🔧 Installing neovim"
brew install neovim

echo
echo "🔧 Installing Visual Studio Code"
brew install --cask visual-studio-code


echo
echo "🔧 Performing the installation of command line tools"

echo
echo "🔧 Installing eza"
brew install eza

echo
echo "🔧 Installing bat"
brew install bat

# Installing esp-rs/esp-idf-template development dependencies
echo
echo "👉 Installing dependencies for esp-rs: std support"

echo
echo "💿 Installing libuv"
brew install libuv
