## Collection of my .files

### Deployment

Run 'make' to deploy dotfiles in home directory. 
This will create backups of existing files.

Running 'make revert' will undo deployment and restore your backups.


xorg.conf goes in /etc/X11/ to enable QNIX monitor working with nvidia drivers properly

#### Vim

After deploying, run
    :BundleInstall
inside vim to install bundles. 

enable html tag-completion by doing 
    cp .vim/bundle/xmledit/ftplugin/xml.vim html.vim

