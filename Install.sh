#!/bin/bash
# Installateur theme xfce4
# Tofdz 2022
source ~/.config/user-dirs.dirs
WDIR=$(pwd)

function themedownloader(){
echo -e "==> [ 01 - 10 ]DL Qojir Theme"
# Qojir Theme
cd $HOME; git clone https://github.com/vinceliuice/Qogir-theme; cd Qojir-theme
./install.sh --tweaks round;
# Qojir Icon Theme
echo -e "==> [ 02 - 10 ]DL Qojir Icon Theme"
cd $HOME; git clone https://github.com/vinceliuice/Qogir-icon-theme; cd Qojir-icon-theme;
./install.sh 
}
function xbpsdep(){
# DEPENDANCES & PAQUETS
echo -e "==> VPM Install Apps"
sudo vpm i -y  mugshot menulibre gtk2-engines gtk-engine-murrine libsass sassc ulauncher xfce4-docklike-plugin glava;
}
function initapps(){
glava --copy-config;
ulauncher;
exit
}
function dotfiles(){
# POST INSTALL : DOT FILES !!!
cd $WDIR/dot/
pycp config/* $HOME/.config/
pycp fonts/* $HOME/.fonts/
exit
}

function main(){
themedownloader
xbpsdep
dotfiles
}

main
