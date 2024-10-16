#!/bin/bash

echo "Updating Packages!"
sudo pacman -Syu

echo "Updating Mirrors!"
sudo pacman -S reflector rsync
sudo reflector --country US --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
Sudo pacman -Syy

echo "Installing Packages for environment!"
sudo pacman -S stow alacritty brightnessctl fd firefox flatpak fzf htop iwd hyprpaper jdk21-openjdk
sudo pacman -S neovim git npm pipewire-alsa pipewire-jack pipewire-pulse rofi ranger tlp unzip waybar wayland
sudo pacman -S wlogout wireplumber

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

cd

paru -S wayclip-git zoxide zsh sof-firmware qt5-wayland qt6-wayland
sudo pacman -S hyprland dunst hyprutils xdg-desktop-portal-hyprland
sudo pacman -S ttf-nerd-fonts-symbols ttf-jetbrains-mono-nerd ttf-firacode-nerd

echo "Installing system info!"
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
nitch

echo "Setting up Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Getting Dotfiles"
git clone https://github.com/DarthMooMancer/dotfiles.git
stow .
