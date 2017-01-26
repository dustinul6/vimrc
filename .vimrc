"<<<<<<< HEAD
"set number
"set incsearch
"set hlsearch
"set t_Co=256

"set tabstop=2       " The width of a TAB is set to 4.
                    "" Still it is a \t. It is just that
                    "" Vim will interpret it to be having
                    "" a width of 4.

"set shiftwidth=2    " Indents will have a width of 4
"set softtabstop=2   " Sets the number of columns for a TAB

"set expandtab       " Expand TABs to spaces

"set splitright      " Split to the right in defualt. 

"" indentLine
""GVim
""let g:indentLine_color_gui =  '#232c31'
""let g:indentLine_char = 'c'
""let g:indentLine_setColors = 0 "'#d0d0d0'

""Split Naviation made simpler =========
""
"set fileencoding=taiwan
"syntax enable
"=======
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
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
" }}}

colorscheme wombat256mod " 256mod work with terminal
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
">>>>>>> db9fc1e81eb351b3030a72b91a3fc004c047238f
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"<<<<<<< HEAD
"nnoremap <D-U> <C-U>

"inoremap {<cr> {<cr>}<c-o>O<tab>
"inoremap [<cr> [<cr>]<c-o>O<tab>
"inoremap (<cr> (<cr>)<c-o>O<tab>

"set nocompatible              " be iMproved, required
"filetype off                  " required

"map <D-T> :NERDTreeToggle<CR>
"imap <D-j> <C-j>
"imap <D-k> <ESC>
""Begin Vundle=====================
"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')

"" let Vundle manage Vundle, required
"Plugin 'bcicen/vim-vice'
"Plugin 'gmarik/Vundle.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'altercation/vim-colors-solarized'
""Plugin 'Shougo/neocompecache'
"Plugin 'shougo/neocomplete.vim'
"Plugin 'tpope/vim-surround'
"Plugin 'moll/vim-node'
"Plugin 'JuliaLang/julia-vim'
"Plugin 'PreciseJump'
"Plugin 'tomasr/molokai'
"Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'gkz/vim-ls'
"Plugin 'othree/html5.vim'
"Plugin 'terryma/vim-multiple-cursors'
""Plugin 'Valloric/YouCompleteMe'
"Plugin 'svg.vim' 
"Plugin 'omnisharp/omnisharp-vim'
"Plugin 'benekastah/neomake'
"Plugin 'zyedidia/julialint.vim'   
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'tpope/vim-fugitive'
"Plugin 'Yggdroot/indentLine'
""Plugin 'gregsexton/matchtag'
""Plugin 'tmhedberg/matchit'
""Plugin 'townk/vim-autoclose'
"Plugin 'pangloss/vim-javascript'
"Plugin 'elzr/vim-json'
"Plugin 'mxw/vim-jsx'

"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"" Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
""Plugin 'L9'
"" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
""Plugin 'user/L9', {'name': 'newL9'}

"" All of your Plugins must be added before the following line
"call vundle#end()            " required
""" Solarized color
"set background=dark
"colorscheme hybrid

"filetype plugin indent on    " required

"" To ignore plugin indent changes, instead use:
""filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line

""Vim Latex-suite codes ============
"" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
"filetype plugin on

"" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
"" can be called correctly.
"set shellslash

"" IMPORTANT: grep will sometimes skip displaying the file name if you
"" search in a singe file. This will confuse Latex-Suite. Set your grep
"" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*

"" OPTIONAL: This enables automatic indentation as you type.
""filetype indent on

"" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
""End Latex suite ==============
"""""""""""""""""""""""""""""""
"" airline
"""""""""""""""""""""""""""""""
"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif
"set laststatus=2
"let g:airline_powerline_fonts = 1
"let g:airline_theme='wombat'
  "" unicode symbols

 "" powerline symbols
""  let g:airline_left_sep = ''
"" let g:airline_left_alt_sep = ''
"" let g:airline_right_sep = ''
""let g:airline_right_alt_sep = ''
"" let g:airline_symbols.branch = ''
"" let g:airline_symbols.readonly = ''
"" let g:airline_symbols.linenr = ''

""let g:airline_symbols.space = \ua0"
"set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline:h13

"let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
"let s:minfontsize = 6
"let s:maxfontsize = 16
""function! AdjustFontSize(amount)
""  if has("gui_gtk2") && has("gui_running")
""    let fontname = substitute(&guifont, s:pattern, '\1', '')
""    let cursize = substitute(&guifont, s:pattern, '\2', '')
""    let newsize = cursize + a:amount
""    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
""      let newfont = fontname . newsize
""      let &guifont = newfont
""    endif
""  else
""    echoerr You need to run the GTK2 version of Vim to use this function."
""  endif
""endfunction
""
""function! LargerFont()
""  call AdjustFontSize(1)
""endfunction
""command! LargerFont call LargerFont()
""
""function! SmallerFont()
""  call AdjustFontSize(-1)
""endfunction
""command! SmallerFont call SmallerFont()
""

"let g:latex_to_unicode_tab= 0

""call LaTeXtoUnicode#Init()

"set encoding=utf-8
"set fileencoding=utf8

"set fileencodings=ucs-bom,gb18030,utf-8,default

""No error with ng- 
""http://stackoverflow.com/questions/18270355/how-can-i-ignore-angular-directive-lint-errors-with-vim-and-syntastic
"let g:syntastic_html_tidy_ignore_errors=['proprietary attribute "ng-']
"=======

" Adjust font based on system {{{
set number
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Inconsolata\ for\ Powerline:h16
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

">>>>>>> db9fc1e81eb351b3030a72b91a3fc004c047238f


if &term == 'xterm-256color' || &term == 'screen-256color'
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
    
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif
