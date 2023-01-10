#!/bin/sh
#This is my custom script to install my window manager(s), configs, and apps. Feel free to use it!

#System update
sudo pacman -Syy
sudo pacman -Syu #to update all packages

#Required packages
sudo pacman -S git base-devel #(even though git would already be installed technically)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

#Window manager install/config
sudo pacman -S awesome
git clone https://github.com/DrZhawitche/awesomewm-config.git
cd awesomewm-config
mkdir ~/.config/awesome/
cp rc.lua ~/.config/awesome/
#Installing the required apps
sudo pacman -S feh picom dmenu polkit-gnome volumeicon
#Copying the wallpapers 
mkdir ~/wallpapers
cp awesomewm-config/wallpapers/ ~/wallpapers/ -r

# (free) Apps
sudo pacman -S brave-bin vim nvim alacritty libreoffice vlc zsh oh-my-zsh-git zsh-completions zsh-synthax-highlighting flameshot linux-headers virtualbox
yay -S librewolf-bin archtweak-tool-gi#i#t 
#Fun apps
sudo pacman -S cowsay fortune lolcat neofetch pfetch cmatrix

# (non-free) Apps
sudo pacman -S discord steam

#Vim/Nvim configuration
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/DrZhawitche/vim-config.git
cd vim-config
cp .vimrc ~/
mkdir ~/.config/nvim/
cp .vimrc ~/.config/nvim/ && mv ~/.config/neovim/.vimrc ~/.config/nvim/init.vim
vim -c :PlugInstall && nvim -c :PlugInstall

#Alacritty config

#Zsh config

#