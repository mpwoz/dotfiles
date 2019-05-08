# TODO split this out into a 'bootstrap' and 'setup' script
# bootstrap: one liner to install git and clone this repo
# setup: create symlinks, assume git and repo already present

# Set ubuntu to write local time instead of the default UTC, to avoid messing up windows when dual booting
# https://askubuntu.com/questions/800914/clock-shows-wrong-time-after-switching-from-ubuntu-to-windows-10
timedatectl set-local-rtc 1

# Make sure we're up to date
apt-get -y update
apt-get -y dist-upgrade

# Some basic tools to get started
apt-get -y install vim-gtk build-essential

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install and setup Git
apt-get -y install git
git config --global user.name "Martin Wozniewicz"
git config --global user.email "martin.woz@gmail.com"
git config --global merge.tool "vimdiff"
git config --global color.ui true
git config --global credential.helper "cache --timeout=10000"
git config --global push.default simple
git config --global core.excludesfile ~/.gitignore_global

# Git aliases
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset' --abbrev-commit --date=short"
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'

# Make common directories
mkdir ~/src
mkdir ~/tmp

# install Chrome
wget -P ~/tmp/ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i ~/tmp/google-chrome-stable_current_amd64.deb
apt-get -y -f install

# TODO separate mac- and linux- specific configs
# Set up dotfile links
ln -s ~/src/dotfiles/.vimrc ~/.vimrc
ln -s ~/src/dotfiles/.vim ~/.vim
ln -s ~/src/dotfiles/.profile ~/.profile
ln -s ~/src/dotfiles/.bashrc ~/.bashrc
ln -s ~/src/dotfiles/.zshrc ~/.zshrc
ln -s ~/src/dotfiles/.aliases ~/.aliases
touch ~/.zshrc-local
ln -s ~/src/dotfiles/.i3 ~/.i3
ln -s ~/src/dotfiles/gitignore_global ~/.gitignore_global

# Set up scripts.
# TODO: make this better when more scripts appear.
ln -s ~/src/dotfiles/scripts/merge.sh ~/bin/merge.sh

# Install cron jobs
~/src/dotfiles/cron/setup.sh

# i3 tiling wm and some more utilities
apt-get -y install i3 i3status dmenu suckless-tools i3lock feh scrot

# Install useful desktop tools (i3 makes them obsolete)
# apt-get -y install gnome-do tilda

# Pip package manager
# apt-get -y install python-pip

# Node
# apt-get -y install g++ libssl-dev apache2-utils git-core curl
# cd ~/tmp/
# curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
# ./configure && make -j 6 && make install

# Misc.
# Set clock format string to %A %-m/%-d %t %-I:%M %P
