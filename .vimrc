" Vim Plug {{{
set number
call plug#begin('$HOME/vimfiles/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'tomasr/molokai'
Plug 'julialang/julia-vim'
"Plug 'zyedidia/julialint.vim'
Plug 'shougo/neocomplete.vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
Plug 'benekastah/neomake'
Plug 'raimondi/delimitmate'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'valloric/youcompleteme'
call plug#end()
" }}}

colorscheme wombat
syntax enable           " enable syntax processing
"set tabstop=4       " number of visual spaces per TAB
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"set softtabstop=0   " number of spaces in tab when editing
"set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

runtime macros/matchit.vim
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]
" Leader
let mapleader="\\"

" jk is escape
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" More natural moving around 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Adjust font based on system {{{
set number
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Inconsolata\ for\ Powerline:h12
  endif
endif
" }}}

" CtrlP settings {{{
set number 
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_working_path_mode = 'r'
" }}}

" Airline {{{
set number
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set ttimeoutlen=50
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
" unicode symbols

set encoding=utf-8

" }}}

"" Window size {{{
set number
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif
" }}}

"" Fold {{{
set number
set modelines=1
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=marker   " fold based on indent level
" vim:foldmethod=marker:foldlevel=0

"}}}

