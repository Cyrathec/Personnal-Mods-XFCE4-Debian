#!/bin/bash

apt-get -y install make gcc dkms linux-source linux-headers-$(uname -r) build-essential neofetch gparted breeze-cursor-theme arc-theme papirus-icon-theme open-vm-tools-desktop open-vm-tools git fonts-cantarell fonts-firacode xfce4-panel-profiles xfce4-*-plugins qterminal qt5ct
cp -r etc/* /etc/
cp -r share/* /usr/share/
cp -r /etc/skel/.* /root/
cp -r /etc/skel/.* `ls -d /home/*`

# This part was for the default terminal, I highly recommand to use the settings instead as this will make strange things while using any other user than root
#update-alternatives --remove x-terminal-emulator /usr/bin/mate-terminal
#update-alternatives --install  /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/mate-terminal 100