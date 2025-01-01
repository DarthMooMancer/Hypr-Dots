# Hyprland Dotfiles

# Installation

Packages Needed for System
--------------------------
- Make sure you have a aur installer or you can manually install them. Mine is yay so that is what is in this example, but feel free to use whatever.

```
yay -S waybar wofi wlogout hyprland hyprpaper foot neovim brightnessctl wl-clipboard xorg-server feh zsh thorium-browser-bin libxdamage jdtls jdk21-openjdk python unzip tmux usbutils 
```

- Some optional but recommended packages:
```
sudo pacman -S thunar tlp blueman bluez bluez-utils pulseaudio pulseaudio-jack pulseaudio-alsa gvfs sof-firmware
```
- Also, I use the JetBrainsMono Nerd Font for everything. You can change the font or copy the files from .local/share/fonts to your local dir and then run "fc-cache -fv"

Cloning and Copying
-------------------

- Clone the repo with:
```
git clone https://github.com/DarthMooMancer/Hypr-Dots.git
```
Automatically moving:
_____________________

- install stow with yay/pacman 
- cd into the dotfiles folder
- stow . ( if needed --adopt ) 

Manually:
_________

- cp -r .config/* ~/.config
- And so on and so forth for each thing

Enabling Services
-----------------

- Bluetooth
```
sudo systemctl enable bluetooth.service
```

- TLP
```
sudo systemctl enable tlp.service 
