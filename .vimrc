" Standard vim options
  set cursorline
  set cursorcolumn
  set autoindent            " always set autoindenting on
  set backspace=2           " allow backspacing over everything in insert mode
  set cindent               " c code indenting
  set diffopt=filler,iwhite " keep files synced and ignore whitespace
  set expandtab             " Get rid of tabs altogether and replace with spaces
  set foldcolumn=2          " set a column incase we need it
  set foldlevel=0           " show contents of all folds
  set foldmethod=syntax     " use syntax unless overridden
  set guioptions-=m         " Remove menu from the gui
  set guioptions-=T         " Remove toolbar
  set hidden                " hide buffers instead of closing
  set history=50            " keep 50 lines of command line history
  set ignorecase            " Do case insensitive matching
  set incsearch             " Incremental search
  set laststatus=2          " always have status bar
  set linebreak             " This displays long lines as wrapped at word boundries
  set matchtime=10          " Time to flash the brack with showmatch
  set nobackup              " Don't keep a backup file
  set nocompatible          " Use Vim defaults (much better!)
  set nofen                 " disable folds
  set notimeout             " i like to be pokey
  set nowrap                " Don't wrap lines
  set number                " Line numbers
  set ttimeout              " timeout on key-codes
  set ttimeoutlen=100       " timeout on key-codes after 100ms
  set ruler                 " the ruler on the bottom is useful
  set scrolloff=1           " dont let the curser get too close to the edge
  set shiftwidth=4          " Set indention level to be the same as softtabstop
  set showcmd               " Show (partial) command in status line.
  set showmatch             " Show matching brackets.
  set softtabstop=4         " Why are tabs so big?  This fixes it
  set textwidth=0           " Don't wrap words by default
  set virtualedit=block     " let blocks be in virutal edit mode
  set wildmenu              " This is used with wildmode(full) to cycle options
  set encoding=utf-8        " Prevent weird characters

"Turn on syntax highlighting
syntax on

"Tags file when using ctags, CTRL + ] to jump to symbol def
set tags=~/.tags

""""""""""""""""""""""""""""
""" Vundle Start
"""  download from github and put in .vim/bundle/Vundle.vim
""""""""""""""""""""""""""""

set nocompatible
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'         "The vundle plugin manager
Plugin 'scrooloose/nerdtree'       "File tree browser plugin
Plugin 'scrooloose/nerdcommenter'  "Easy commenting/uncommenting
Plugin 'scrooloose/syntastic'      "Better syntax highlighting/checking
Plugin 'ervandew/supertab'         "Tab completion of words
Plugin 'tpope/vim-surround'        "HTML Tag completion
Plugin 'vim-scripts/haskell.vim'   "Haskell syntax highlighting
Plugin 'flazz/vim-colorschemes'    "Lots of color schemes
Plugin 'kien/ctrlp.vim'            "Fuzzy file finder
Plugin 'derekwyatt/vim-scala'      "Scala syntax highlighting
Plugin 'godlygeek/tabular'         "Align things vertically in nice columns

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""
""" Vundle end
""""""""""""""""""""""""""""

"256 terminal colors
set t_Co=256

"Color scheme
colo molokai

set nobackup        "No backup or swap files all over the place
set nowritebackup
set noswapfile
set showcmd         "Show incomplete commands

"F2 Toggles NERDTree
map <F2> :NERDTreeToggle<CR>

"NerdTree ignored files
let NERDTreeIgnore = ['\.cmo$','\.cmi$','\.mli$','\.mll$','\.mly$','\.pyc$']

"NERDTree arrows are simple +/-, this prevents glitches with utf encoding
let g:NERDTreeDirArrows=0

"Turn on incremental search with ignore case (except explicit caps)
set incsearch
set ignorecase
set smartcase

"Highlight search results, use F3 to clear
set hlsearch
nnoremap <F3> :noh<CR>

