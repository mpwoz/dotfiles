" My vimrc for Windows, just to make gVim usable for simple text editing.
" I don't do anything serious in Windows, but it would be nice to eventually combine this with my Linux .vimrc

" TODO figure out how to source a common vimrc and have wrappers for different
" environments. Or better yet, a single vimrc with conditional rules.

" Set correct tempfile dir, otherwise errors writing swap on startup (windows gvim bug)
set directory=.,$TEMP

" Other settings, for both vim and gVim
colorscheme slate
set noswapfile

" Disable annoying bell sounds
" TODO investigate autocmd further
autocmd GUIEnter * set vb t_vb=
autocmd VimEnter * set vb t_vb=

" GUI options specifically for gVim
if has('gui_running')
	set guifont=Consolas:h11:cANSI
	set guioptions-=T  " no toolbar
end

