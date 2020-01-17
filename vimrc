set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir
au BufRead * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

map tu :tabe<CR>
map tn  :-tabnext<CR>
map ti  :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :res vertical resize-5<CR>
map <right> :res vertical resize+5<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" File navigation

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'Xuyuanp/nerdtree-git-plugin'



" Taglist

Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }



" Error checking

Plug 'w0rp/ale'



" Auto Complete

Plug 'Valloric/YouCompleteMe'



" Undo Tree

Plug 'mbbill/undotree/'

" Other visual enhancement Plug 'nathanaelkane/vim-indent-guides' Plug 'itchyny/vim-cursorword'



" Git

Plug 'rhysd/conflict-marker.vim'

Plug 'tpope/vim-fugitive'

Plug 'mhinz/vim-signify'

Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }



" HTML, CSS, JavaScript, PHP, JSON, etc.

Plug 'elzr/vim-json'

Plug 'hail2u/vim-css3-syntax'

Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }

Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }

Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }

Plug 'mattn/emmet-vim'



" Python

Plug 'vim-scripts/indentpython.vim'
Plug 'mhinz/vim-startify'
Plug 'yggdroot/indentline'


" Markdown

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }

Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

Plug 'vimwiki/vimwiki'



" Bookmarks

Plug 'kshenoy/vim-signature'



" Other useful utilities

Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/goyo.vim' " distraction free writing mode

Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`

Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =

Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip

Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" theme
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

" Dependencies

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'kana/vim-textobj-user'

Plug 'fadein/vim-FIGlet'


call plug#end()

let g:SnazzyTransparent = 1
color snazzy


map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTap = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" you complete me

nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>

let g:ycm_autoclose_preview_window_after_completion=0
let g:ycn_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3/"
let g:ycm_python_binary_path = "/bin/python3"

" ale: check you code issue
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']

" taglist : show the function list
map <silent> T :TagbarOpenAutoClose<CR>


" MarkdownPrevew

let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0


" python syntax

let g:python_highlight_all = 1

" Goyo just write

map <LEADER>gy :Goyo<CR>

" vim-signiture taged you file 



" Undotree 

let g:undotree_DiffAutoOpen = 0
map L :UndotreeToggle<CR>

colorscheme solarized
