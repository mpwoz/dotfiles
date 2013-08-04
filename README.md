## Collection of my .files

### Deployment

Run 'make' to deploy dotfiles in home directory. 
This will create backups of existing files.

Running 'make revert' will undo deployment and restore your backups.


#### Vim

After deploying, run
    :BundleInstall
inside vim to install bundles. 

enable html tag-completion by doing 
    cp .vim/bundle/xmledit/ftplugin/xml.vim html.vim

