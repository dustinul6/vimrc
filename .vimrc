""" Vim Plug
call plug#begin('$HOME/vimfiles/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'tomasr/molokai'
Plug 'julialang/julia-vim'
Plug 'zyedidia/julialint.vim'
Plug 'shougo/neocomplete.vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
call plug#end()

colorscheme wombat
syntax enable           " enable syntax processing
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]
" Leader
let mapleader=","

" jk is escape
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" More natural moving around 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Adjust font based on system 
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Inconsolata\ for\ Powerline:h12
  endif
endif
" End fonts

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set ttimeoutlen=50
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
" unicode symbols

set encoding=utf-8

