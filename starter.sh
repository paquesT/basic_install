#!/bin/sh

# system update
sudo apt update && sudo apt upgrade -y

# generate ssh key
ssh-keygen -t rsa

# ------------------------ LIBRAIRIES ------------------------ #
# zsh
sudo apt -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# nodejs
sudo apt -y install nodejs

# npm
sudo apt -y install npm

# svn
sudo apt -y install subversion

# git
# sudo apt -y install git

# open-jdk
sudo apt -y install default-jdk
java -version

# ------------------------ TOOLS ------------------------ #
# xClip
sudo apt -y install xclip

# google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# visual studio code
sudo apt -y install code

# terminator
sudo apt -y install terminator

# mongodb compass
wget https://downloads.mongodb.com/compass/mongodb-compass_1.32.2_amd64.deb
sudo apt -y install ./mongodb-compass_1.32.2_amd64.deb
rm ./mongodb-compass_1.32.2_amd64.deb

# postman
wget https://dl.pstmn.io/download/latest/linux64
sudo tar -xvf linux64 -C /usr/bin
rm -f linux64
echo 'export PATH="$PATH:/usr/bin/Postman"' >> ~/.zshrc
echo -e '[Desktop Entry]\nName=Postman\nGenericName=Postman\nComment=Testing API\nExec=/usr/bin/Postman/Postman\nTerminal=false\nX-MultipleArgs=false\nType=Application\nIcon=/usr/bin/Postman/app/resources/app/assets/icon.png\nStartupWMClass=Postman\nStartupNotify=true' | sudo tee /usr/share/applications/Postman.desktop

# discord
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo apt -y install ~/discord.deb
rm ~/discord.deb

##### Clean
sudo apt --purge -y autoremove
