#!/bin/sh

mkdir -p ~/Work
sudo add-apt-repository universe
sudo apt -y install git golang gtk2-engines-murrine gtk2-engines-pixbuf libglib2.0-dev-bin inkscape optipng sassc gettext gnome-tweak-tool
cd ~/Work
git clone https://github.com/vinceliuice/Mojave-gtk-theme.git
cd Mojave-gtk-theme/
./install.sh
cd ~/Work
git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git
cd la-capitaine-icon-theme/
yes | ./configure
cd ~/Work
sudo cp -R la-capitaine-icon-theme /usr/share/icons/
git clone https://github.com/micheleg/dash-to-dock.git
cd dash-to-dock/
make && make install
killall -3 gnome-shell
wait 20
gnome-tweaks
