#!/bin/bash

packages=(
  # Utilities/Coding
  git
  stow  
  neovim
  tmux
  code

  # Browser
  firefox

  # Terminal
  alacritty
  starship
  fzf

  # WM
  waybar
  dunst
  wofi
  swww

)

packages-yay=(
  ttf-jetbrains-mono-nerd
)

install_packages() {
    for package in "${packages[@]}"; do
	    if pacman -Qi $package &> /dev/null; then
		    echo "$package is already installed"
	    else
		    sudo pacman -S --noconfirm $package
		    if [ $? -eq 0 ]; then
			    echo "$package installed successfully"
		    else
			    echo "Failed to install $package"
	            fi
	    fi
    done
}

sudo pacman -Syu --noconfirm

install_packages
