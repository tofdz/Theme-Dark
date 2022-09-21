#!/bin/bash
# Installateur theme xfce4
# Tofdz 2022
REP="XFCE-MOD"
source ~/.config/user-dirs.dirs
WDIR=$(pwd)
cd $XDG_DOWNLOAD_DIR
mkdir $REP
cd $REP
# Qojir Theme
echo -e "==> [ 01 - 10 ]DL Qojir Theme"
#wget https://codeload.github.com/vinceliuice/Qogir-theme/zip/refs/heads/master;
git clone https://github.com/vinceliuice/Qogir-theme
cd Qojir-theme
./install.sh --tweaks round
cd ..
# Qojir Icon Theme
echo -e "==> [ 02 - 10 ]DL Qojir Icon Theme"
#wget https://codeload.github.com/vinceliuice/Qogir-icon-theme/zip/refs/heads/master;
git clone https://github.com/vinceliuice/Qogir-icon-theme
cd Qojir-icon-theme
./install.sh 
cd ..

# DEPENDANCES & PAQUETS
echo -e "==> VPM Install Apps"
sudo vpm i -y  mugshot menulibre gtk2-engines gtk-engine-murrine libsass sassc ulauncher xfce4-docklike-plugin glava;
# COPIER LE FICHIER dans xfce4 vers .config/xfce/xfce-panel/
glava --copy-config
ulauncher
