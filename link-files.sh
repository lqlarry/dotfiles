#!/usr/bin/env bash

ln -sf ~/.git/dotfiles/.dwm ~/.dwm
ln -sf ~/.git/dotfiles/.bashrc ~/.bashrc
ln -sf ~/.git/dotfiles/.zshrc ~/.zshrc
ln -sf ~/.git/dotfiles/.aliases ~/.aliases
mkdir -p ~/.local/bin && ln -sf ~/.git/dotfiles/.local/bin/* ~/.local/bin/
ln -sf ~/.git/dotfiles/.config/alacritty ~/.config/
ln -sf ~/.git/dotfiles/.config/bspwm ~/.config/
ln -sf ~/.git/dotfiles/.config/dunst ~/.config/
ln -sf ~/.git/dotfiles/.config/kitty ~/.config/
ln -sf ~/.git/dotfiles/.config/mpd ~/.config/
ln -sf ~/.git/dotfiles/.config/mpv ~/.config/
ln -sf ~/.git/dotfiles/.config/ncmpcpp ~/.config/
ln -sf ~/.git/dotfiles/.config/neofetch ~/.config/
ln -sf ~/.git/dotfiles/.config/nvim~/.config/
ln -sf ~/.git/dotfiles/.config/picom ~/.config/
ln -sf ~/.git/dotfiles/.config/polybar ~/.config/
ln -sf ~/.git/dotfiles/.config/qtile ~/.config/
ln -sf ~/.git/dotfiles/.config/rofi ~/.config/
ln -sf ~/.git/dotfiles/.config/suckless ~/.config/
ln -sf ~/.git/dotfiles/.config/sxhkd ~/.config/
ln -sf ~/.git/dotfiles/.config/transmission ~/.config/

systemctl enable ahavi-daemon
systemctl enable bluetooth.service
systemctl enable haveged.service
systemctl enable cups.service
systemctl enable firewalld
systemctl enable fstrim.timer
systemctl enable NetworkManager
systemctl enable reflector.timer
systemctl enable sshd
systemctl enable upower

gsettings set org.gnome.desktop.interface color-scheme prefer-dark &
xdg-user-dirs-update &
