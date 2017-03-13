set nocompatible " vim > vi. Required for other stuff in here
filetype off

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

""""""""""""""""""""""""""""""""""
""" Vim-plug https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

" Basic functionality
Plug 'Raimondi/delimitMate'      "Auto delimeter closing
Plug 'ap/vim-css-color'          "Preview css colors in editor
Plug 'chip/vim-fat-finger'       "Common misspellings correction
Plug 'christoomey/vim-sort-motion'
Plug 'flazz/vim-colorschemes'    "Lots of color schemes
Plug 'tpope/vim-sensible'        "Sensible default settings
Plug 'wellle/targets.vim'        "Additional text objects
Plug 'ntpeters/vim-better-whitespace'

" Editor Tools
Plug 'godlygeek/tabular'         "Align things vertically in nice columns
Plug 'kien/ctrlp.vim'            "Fuzzy file finder
Plug 'rking/ag.vim'              "Silver Searcher plugin
Plug 'scrooloose/nerdcommenter'  "Easy commenting/uncommenting
Plug 'scrooloose/nerdtree'       "File tree browser plugin
Plug 'tpope/vim-surround'        "HTML Tag completion
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' "Powerline with color schemes
Plug 'schickling/vim-bufonly'
Plug 'vimwiki/vimwiki'
Plug 'vim-latex/vim-latex'
Plug 'xuhdev/vim-latex-live-preview'

" Languages and completion
Plug 'SirVer/ultisnips' | Plug 'natebosch/dartlang-snippets' "Snippets for dart/ng2
Plug 'dart-lang/dart-vim-plugin' "Dart
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"Version is frozen because it's a tar with working error highlights.
Plug 'Valloric/YouCompleteMe', { 'frozen': 1, 'do': function('BuildYCM') }

call plug#end()

"Make <SPACE> the leader key.
let g:mapleader=" "

"Colors
syntax on
colo bubblegum-256-dark
let g:airline_theme='bubblegum'

" Draw a line after 80th column, and highlight anything after 80 red.
set colorcolumn=81
match ErrorMsg '\%>80v.\+'

" Use C-b to jump to definition"
nmap <C-b> :YcmCompleter GoToDefinition<CR>
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_echo_current_diagnostic = 1
let g:ycm_always_populate_location_list = 1
" Aggressive completion
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_filetype_blacklist = {}
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_seed_identifiers_with_syntax = 1
""""""""""""""""""""""""""""
""" YouCompleteMe End
""""""""""""""""""""""""""""

" FZF
let g:fzf_commits_log_options = '--graph --color=always '
      \.'--pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) '
      \.'%C(bold blue)<%an>%Creset"'
let g:fzf_buffers_jump = 1 " jump to an open window if buffer already open
"
" FZF aliases for navigating buffers and files.
nnoremap <leader>lf :Files<cr>
nnoremap <leader>lr :History<cr>
nnoremap <leader>lb :Buffers<cr>
nnoremap <leader>ll :Lines<cr>

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
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard -co']
"Don't limit number of files indexed
"let g:ctrlp_max_files=0

" Markdown syntax for .md files
autocmd BufNewFile,BufRead *.md setfiletype markdown

" Git shortcuts
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>ga :Gcommit -a<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gl :Commits<cr>
nnoremap <leader>gp :MagitOnly<cr>

" faster window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"Easily alias any command
fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("W","w")
call SetupCommandAlias("df","DartFmt")

"Strip whitespace on save for all files
autocmd BufEnter * ToggleStripWhitespaceOnSave

" Use <C-n> to clear the highlighting of :set hlsearch.
"if maparg('<C-n>', 'n') ==# ''
"  nnoremap <silent> <C-n> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-n>
"endif

set autoindent            "always set autoindenting on
set backspace=2           "allow backspacing over everything in insert mode
set backupcopy=yes        "Write directly to file instead of overwriting the whole file.
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

"""""""""""""""""""""""""""""""""""""
""" Local customizations
if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif
"""""""""""""""""""""""""""""""""""""

" This goes last
filetype plugin indent on
