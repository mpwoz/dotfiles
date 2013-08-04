
all: deploy

deploy: deployVim

deployVim:
	mv ~/.vim ~/.vim.bak
	mv ~/.vimrc ~/.vimrc.bak
	cp -r .vim ~/
	cp .vimrc ~/

finalize:
	cp ~/.vim/bundle/xmledit/ftplugin/xml.vim ~/.vim/bundle/xmledit/ftplugin/html.vim



revert: revertVim

revertVim:
	rm -r ~/.vim
	rm ~/.vimrc
	mv ~/.vim.bak ~/.vim
	mv ~/.vimrc.bak ~/.vimrc
