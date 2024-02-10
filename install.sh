#!/bin/bash

# This part is root part
apt-get -y install make gcc dkms linux-source linux-headers-$(uname -r) build-essential neofetch gparted breeze-cursor-theme arc-theme papirus-icon-theme open-vm-tools-desktop open-vm-tools git fonts-cantarell fonts-firacode xfce4-panel-profiles xfce4-*-plugins qterminal qt5ct
cp -r etc/* /etc/
cp -r share/* /usr/share/
cp -r /etc/skel/.* /root/
cp -r /etc/skel/.* `ls -d /home/*`
#update-alternatives --remove x-terminal-emulator /usr/bin/mate-terminal
#update-alternatives --install  /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/mate-terminal 100

# This part is on the user part
#xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
#xfconf-query -c xsettings -p /Net/IconThemeName -s "ePapirus-Dark"
#xfconf-query -c xfwm4 -p /general/workspace_names -s 1 -s 2 -s 3 -s 4
#xfce4-panel-profiles load CustomPanel.tar.bz2

echo "You may need to congigure some panels like the CPU, Network and Generic monitors"
echo "You may want to reboot to finalize the installation"
