set autoindent            "always set autoindenting on
set backspace=2           "allow backspacing over everything in insert mode
set nobackup              "Don't keep a backup file
set cindent               "c code indenting
set nocompatible          "Use Vim defaults (much better!)
set cursorcolumn
set cursorline
set diffopt=filler,iwhite "keep files synced and ignore whitespace
set encoding=utf-8        "Prevent weird characters
set expandtab             "Get rid of tabs altogether and replace with spaces
set nofen                 "disable folds
set foldcolumn=2          "set a column incase we need it
set foldlevel=0           "show contents of all folds
set foldmethod=syntax     "use syntax unless overridden
set guioptions-=T         "Remove toolbar
set guioptions-=m         "Remove menu from the gui
set hidden                "hide buffers instead of closing
set history=50            "keep 50 lines of command line history
set hlsearch              "Highlight search results
set ignorecase            "Do case insensitive matching
set incsearch             "Incremental search
set laststatus=2          "always have status bar
set linebreak             "This displays long lines as wrapped at word boundries
set matchtime=10          "Time to flash the brack with showmatch
set number                "Line numbers
set ruler                 "the ruler on the bottom is useful
set scrolloff=1           "dont let the curser get too close to the edge
set shiftwidth=2          "Set indention level to be the same as softtabstop
set showcmd               "Show (partial) command in status line.
set showmatch             "Show matching brackets.
set smartcase             "Explicit caps will make search case sensitive
set softtabstop=2         "Why are tabs so big?  This fixes it
set noswapfile
set textwidth=0           "Don't wrap words by default
set notimeout             "i like to be pokey
set t_Co=256              "256 terminal colors 
set t_md=                 "Disable bold font
set t_ut=                 "Fix background when in screen/tmux
set ttimeout              "timeout on key-codes
set ttimeoutlen=100       "timeout on key-codes after 100ms
set virtualedit=block     "let blocks be in virutal edit mode
set wildmenu              "This is used with wildmode(full) to cycle options
set nowrap                "Don't wrap lines
set nowritebackup

autocmd BufNewFile,BufRead *.md setfiletype markdown

"Turn on syntax highlighting
syntax on

""""""""""""""""""""""""""""
""" Vundle Start
""""""""""""""""""""""""""""
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'         "The vundle plugin manager
Plugin 'dart-lang/dart-vim-plugin' "Dart
Plugin 'derekwyatt/vim-scala'      "Scala syntax highlighting
Plugin 'digitaltoad/vim-jade'      "Jade templating syntax
Plugin 'ervandew/supertab'         "Tab completion of words
Plugin 'flazz/vim-colorschemes'    "Lots of color schemes
Plugin 'godlygeek/tabular'         "Align things vertically in nice columns
Plugin 'kana/vim-filetype-haskell' "Haskell
Plugin 'kien/ctrlp.vim'            "Fuzzy file finder
Plugin 'rking/ag.vim'              "Silver Searcher plugin
Plugin 'scrooloose/nerdcommenter'  "Easy commenting/uncommenting
Plugin 'scrooloose/nerdtree'       "File tree browser plugin
Plugin 'scrooloose/syntastic'      "Better syntax highlighting/checking
Plugin 'tpope/vim-surround'        "HTML Tag completion
Plugin 'vim-scripts/haskell.vim'   "Haskell syntax highlighting

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""
""" Vundle end
""""""""""""""""""""""""""""

"Color scheme
colo molokai

""" NERDTree settings
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.cmo$','\.cmi$','\.mli$','\.mll$','\.mly$','\.pyc$']
let g:NERDTreeDirArrows=0 "arrows are simple +/-, this prevents glitches with utf encoding
let NERDTreeShowHidden=1 "show hidden files

"Filetype specific commands
autocmd FileType java setlocal shiftwidth=4 tabstop=4 "Wide tabs for java
autocmd BufNewFile,BufReadPost *.md set filetype=markdown wrap textwidth=0 "Markdown, not modula

"Use git to search for files when ctrl p is invoked (faster).
"the --exclude-standard -co lets you open not-yet-checked-in files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard -co']
"Don't limit number of files indexed
let g:ctrlp_max_files=0

