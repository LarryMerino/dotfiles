#!/bin/zsh

echo "👉 Making sure if brew is installed on the system"
if command -v brew &>/dev/null; then
  echo "🍺 Brew already instaled"
else
  echo "Brew was not found on the system"
  echo "🍺 Performing brew installation"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo
echo "👉 Making sure if Rust is installed on the system"
if command -v rustc &>/dev/null; then
  echo "🦀 Rust already instaled"
else
  echo "Rust was not found on the system"
  echo "🦀 Performing rust installation"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

echo
echo "🔧 Performing the installation of command line tools"

echo
echo "🔧 Installing neovim"
brew install neovim

echo
echo "🔧 Installing exa"
brew install exa

echo
echo "🔧 Installing bat"
brew install bat

# Installing esp-rs/esp-idf-template development dependencies
echo
echo "👉 Installing dependencies for esp-rs: std support"

echo
echo "💿 Installing libuv"
brew install libuv
