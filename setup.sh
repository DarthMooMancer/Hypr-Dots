#!/bin/bash 

git clone https://github.com/DarthMooMancer/dotfiles.git

sudo pacman -S stow

cd dotfiles 

stow . --adopt 

cd dwm

make && sudo make install

cd tools

cd dmenu

make && sudo make install

cd ../st

make && sudo make install

cd ../slstatus

make && sudo make install 
