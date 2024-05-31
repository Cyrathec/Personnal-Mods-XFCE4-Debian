# Personnal-Mods-XFCE4-Debian
This is my personnal modifications for XFCE4 Desktop on Debian (12)\
You are free to use it as you want or fork it

Most ideas come from [Kali Linux's Theme](https://gitlab.com/kalilinux/packages/kali-themes)\
Some file are even copy/pasted from the repo

## Usage
For the installation, you'll need to do the following steps as root (sudo or su):
 - Clone the repo (not root specific, can be done as user)
 - Execute install.sh "bash install.sh"
 - Change permissions for any users in /home/ "chown -R username:username /home/username/"

For the configuration, you'll need to do the following steps for all users :
 - Clone the repo (or copy it but don't forget the rights)
 - Execute config.sh "bash config.sh"
 - In the settings, you'll need to change the following : default applications -> Utilities -> Terminal Emulator to "Qterminal"
 - (Optional) In the settings, you may want to change the following : Session and Startup -> Advanced -> Launch GNOME services on startup -> Ticked (On)\
   This option allows some features to run by default like the ssh-agent, it can be usefull if you use ssh keys to login
 - Go to ~/.config/xfce4/panel in a terminal (CLI)
 - You'll need to disactivate the xfce4-panel "xfce4-panel -q"
 - Now you can copy past cpugraph-21.rc, genmon-17.rc (and netload-6.rc if needed) to the other file
 - You should now restart the machine to restart xfce-panel as a service (restarting it in CLI will make it stop when CLI is left)
 - Change the network monitoring to the proper interface
 - You may want to backup the panel configuration

Still WIP, it might need some improvement feel free to open an issue if needed
