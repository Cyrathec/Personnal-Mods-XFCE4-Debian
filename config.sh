#!/bin/bash

xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
xfconf-query -c xfwm4 -p /general/workspace_names -s 1 -s 2 -s 3 -s 4
xfce4-panel-profiles load /usr/share/xfce4-panel-profiles/layouts/CustomPanel.tar.bz2
xfconf-query -c xfce4-panel -p /plugins/plugin-5/update-interval -n -t int -s 0
xfconf-query -c xfce4-panel -p /plugins/plugin-5/size -n -t int -s 128
xfconf-query -c xfce4-panel -p /plugins/plugin-5/border -n -t int -s 0
xfconf-query -c xfce4-panel -p /plugins/plugin-5/color-mode -n -t int -s 0
xfconf-query -c xfce4-panel -p /plugins/plugin-5/foreground-1 -n -a -t double -s 0.152941 -t double -s 0.466667 -t double -s 1.0 -t double -s 1.0
xfconf-query -c xfce4-panel -p /plugins/plugin-5/foreground-2 -n -a -t double -s 0.0 -t double -s 1.0 -t double -s 0.878431 -t double -s 1.0
xfconf-query -c xfce4-panel -p /plugins/plugin-5/bars-color -n -a -t double -s 0.0 -t double -s 1.0 -t double -s 0.878431 -t double -s 1.0
xfce4-panel -r


echo "You may need to congigure some panels like the CPU, Network and Generic monitors"
echo "You'll need to reboot to finalize the installation"
