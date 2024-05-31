#!/bin/bash

xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "ePapirus-Dark"
xfconf-query -c xfwm4 -p /general/workspace_names -s 1 -s 2 -s 3 -s 4
xfce4-panel-profiles load /usr/share/xfce4-panel-profiles/layouts/CustomPanel.tar.bz2

echo "You may need to congigure some panels like the CPU, Network and Generic monitors"
echo "You'll need to reboot to finalize the installation"
