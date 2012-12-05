"Command ':so %' to reload .vimrc

set nocompatible    "Vim settings, not VI
set nobackup        "No backup or swap files all over the place
set nowritebackup
set noswapfile
set showcmd         "Show incomplete commands

" Vundle package manager 
" https://github.com/gmarik/vundle
filetype off        "required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" Vundle bundles 
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'

filetype plugin indent on " Required for vundle


"Color scheme
colo wombat 

"Tab width, newline tabs, replace with spaces
set tabstop=4 shiftwidth=4 expandtab

"Turn off word wrapping
set wrap!

"Turn on smart indent (deprecated)
"set smartindent
"This doesn't annoyingly move '#' to the beginning of a line
"set cindent
set autoindent


"Enable line numbering
set number

"Turn on incremental search with ignore case (except explicit caps)
set incsearch
set ignorecase
set smartcase

"Enable indent folding
"set foldenable
"set fdm=indent

"Set space to toggle a fold
"nnoremap <space> za

"Have offset (or buffer) when scrolling
set scrolloff=3

"Available only on Vim v.7+
"Highlight current line
set cursorline

"syntax coloring
syntax on

"enable backspace in insert mode
set backspace=indent,eol,start


"ToggleNerdTree hotkey
map <F2> :NERDTreeToggle<CR>

