## Collection of .files

### Installation (warning: installs chrome, git, and a bunch of other stuff)

    wget -P ~/tmp/ https://raw.githubusercontent.com/mpwoz/dotfiles/master/setup.sh \
      && sudo /tmp/setup.sh

#### Vim
After deploying, run `:PlugInstall` inside vim to install bundles. 

#### Misc
xorg.conf goes in /etc/X11/ to enable QNIX monitor working with nvidia drivers properly
