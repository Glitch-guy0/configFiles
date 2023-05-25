#/bin/bash

apt update -y;
apt upgrade -y;

# crul installation
apt install curl -y;
apt install zip -y;

# starship installation 
curl -sS https://starship.rs/install.sh | sh -y;

# placing invoking script to .bashrc
cat initCommand.insert >> ~/.bashrc;

mkdir ~/.fonts
cp JetBrainsMono.zip ~/.fonts
unzip JetBrainsMono.zip
fc-cache -fv

# placing my config file into config folder
mkdir ~/.config 2> /dev/NULL
touch ~/.config/starship.toml
cat configuration.insert > ~/.config/starship.toml


