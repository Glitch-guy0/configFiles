#/bin/bash

apt update -y;
apt upgrade -y;

# crul installation
apt install curl -y;

# starship installation 
curl -sS https://starship.rs/install.sh | sh;

# placing invoking script to .bashrc
cat initCommand.insert >> ~/.bashrc;
# placing my config file into config folder
mkdir ~/.config
touch ~/.config/starship.toml
cat configuration.insert > ~/.config/starship.toml


