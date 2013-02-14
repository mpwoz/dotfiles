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
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'kchmck/vim-coffee-script'
Bundle 'sukima/xmledit'

filetype plugin indent on " Required for vundle

filetype plugin on " Required for xmledit
let xml_use_html=1 " Special html tag support




"Automatically run CoffeeMake on coffeescript files on save.
"Show errors as well
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow


"Color scheme
colo wombat 

"Tab width, newline tabs, replace with spaces
set tabstop=2 shiftwidth=2 expandtab

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


"Highlight lines over 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


"Syntastic
"if there are errors, mark them
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1

"default syntax checkers
let g:syntastic_javascript_checker="jshint"
