" Vim Plug {{{
set number
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs 
            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'poppyschmo/deoplete-latex'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
"Plug 'tomasr/molokai'
Plug 'julialang/julia-vim'
"Plug 'zyedidia/julialint.vim'
"Plug 'shougo/neocomplete.vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
Plug 'benekastah/neomake'
Plug 'raimondi/delimitmate'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'valloric/youcompleteme'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'baruchel/vim-notebook'
"Plug 'tpope/vim-markdown'
Plug 'lervag/vimtex'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'ervandew/supertab'
Plug 'NLKNguyen/papercolor-theme'
Plug 'zchee/deoplete-jedi'
Plug 'klen/python-mode'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'elixir-lang/vim-elixir'
Plug 'yggdroot/indentline'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'elmcast/elm-vim'
"Plug 'jpalardy/vim-slime'
Plug 'jalvesaq/vimcmdline'
Plug 'kassio/neoterm'
Plug 'hkupty/iron.nvim'
Plug 'majutsushi/tagbar'
Plug 'yuttie/comfortable-motion.vim'

" insert here
call plug#end()
" }}}

set background=dark
colorscheme PaperColor
"wombat256mod " 256mod work with terminal
"set tabstop=4       " number of visual spaces per TAB
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" set cursor shape
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
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
set linebreak
set breakindent
set breakindentopt=shift:4

"runtime macros/matchit.vim
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" move vertically by visual line
nnoremap j gj
nnoremap k gk
nnoremap gj <Down>
nnoremap gk <Up>
" highlight last inserted text
nnoremap gV `[v`]
" Leader
let mapleader="\\"

nnoremap <leader>rc :tabe $MYVIMRC<CR>
nnoremap <leader>p8 :PymodeLintAuto<CR>
nnoremap <leader>lt :PymodeLint<CR>
nnoremap <leader>N :NERDTree<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bf :bf<CR>

" jk is escape
inoremap jk <esc>

" toggle gundo
"nnoremap <leader>u :GundoToggle<CR>

" More natural moving around
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" deopelte settings {{{
let g:deoplete#enable_at_startup=1
" }}}

" Adjust font based on system {{{
set number
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Inconsolata\ for\ Powerline:h16
        "set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Inconsolata\ for\ Powerline:h12
    endif
endif
" }}}

" CtrlP settings {{{
set number
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'r'
"make CtrlP default mixed search
nnoremap <C-P> :CtrlPMixed<CR>
" }}}

"" Airline {{{
"set number
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
set laststatus=2
set ttimeoutlen=50
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
" unicode symbols

set encoding=utf-8

"" }}}

" Window size {{{
set number
if has("gui_running")
    " GUI is running or is about to start.
    " Maximize gvim window (for an alternative on Windows, see simalt below).
    set lines=999 columns=999
else
    " This is console Vim.
    "if exists("+lines")
    "set lines=50
    "endif
    "if exists("+columns")
    "set columns=100
    "endif
endif
" }}}

" Fold {{{
set number
set modelines=1
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=marker   " fold based on indent level
set foldlevel=0

"}}}


" Notebook Setting (Julia) {{{
set number
nnoremap <leader>jj ::NotebookEvaluate<CR>
let g:notebook_cmd='~/julia/bin/julia'
let g:notebook_stop='exit()'
let g:notebook_send0=""
let g:notebook_send='println(); println(\"VIMJULIANOTEBOOK\")'
let g:notebook_detect='VIMJULIANOTEBOOK'
"}}}

" syntax highlighting for Markdown files {{{
set number
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'julia']
"}}}

" deoplete moving and selecting {{{
set number
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" }}}

" UltiSnips {{{
set number
let g:UltiSnipsExpandTrigger = "<C-Y>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>""
let g:UltiSnipsEditSplit = "horizontal"
let g:UltiSnipsSnippetsDir = "~/.vim/mySnippets"
"}}}

"autocmd BufNewFile,BufRead *.tex :VimtexTocOpen
autocmd Filetype tex :VimtexTocOpen
"""" The following line MUST be at the last line for the folding to work.

"" Faster saving and add to git {{{
nnoremap gw :Gw<CR>
nnoremap gc :Gcommit<CR>
nnoremap gp :Gpush<CR>
"}}}

"" Removing Trailing white spaces
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
" DelimitMate {{{
let delimitMate_expand_space=1
let delimitMate_expand_cr=1
let delimitMate_jump_expansion = 1
let backspace=2
let delimitMate_expand_inside_quotes=1
let b:delimitMate_quotes = "$" "\" ' `"
imap <C-L> <Plug>delimitMateS-Tab
"imap <Space><Space> <Space><Left>
" vim:foldmethod=marker:foldlevel=0
set omnifunc=syntaxcomplete#Complete
"}}}

" moving left in insert mode
imap <C-H> <Left>

" Vimtex + deoplete {{{
set number
if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.tex = '\\(?:'
            \ .  '\w*cite\w*(?:\s*\[[^]]*\]){0,2}\s*{[^}]*'
            \ . '|\w*ref(?:\s*\{[^}]*|range\s*\{[^,}]*(?:}{)?)'
            \ . '|hyperref\s*\[[^]]*'
            \ . '|includegraphics\*?(?:\s*\[[^]]*\]){0,2}\s*\{[^}]*'
            \ . '|(?:include(?:only)?|input)\s*\{[^}]*'
            \ . '|\w*(gls|Gls|GLS)(pl)?\w*(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
            \ . '|includepdf(\s*\[[^]]*\])?\s*\{[^}]*'
            \ . '|includestandalone(\s*\[[^]]*\])?\s*\{[^}]*'
            \ . '|usepackage(\s*\[[^]]*\])?\s*\{[^}]*'
            \ . '|documentclass(\s*\[[^]]*\])?\s*\{[^}]*'
            \ .')'
"}}}

"Vimtex + neocomplete (inactive) {{{
set number
"if !exists('g:neocomplete#sources#omni#input_patterns')
"let g:neocomplete#sources#omni#input_patterns = {}
"endif
"let g:neocomplete#sources#omni#input_patterns.tex =
"\ '\v\\%('
"\ . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"\ . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
"\ . '|hyperref\s*\[[^]]*'
"\ . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"\ . '|%(include%(only)?|input)\s*\{[^}]*'
"\ . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"\ . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
"\ . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
"\ . '|usepackage%(\s*\[[^]]*\])?\s*\{[^}]*'
"\ . '|documentclass%(\s*\[[^]]*\])?\s*\{[^}]*'
"\ . ')'
"}}}

" Pymode {{{
set number
if has('macunix')
    let g:python_host_prog = '/usr/bin/python'
    let g:python3_host_prog = '/usr/local/bin/python3'
else
    let g:python_host_prog = '/usr/bin/python2'
    let g:python3_host_prog = '/usr/bin/python3.6'
endif

let python_space_error_highlight = 1
let g:pymode_python = 'python3'
let g:syntastic_ignore_files = ['\.py$']
let g:pymode_lint = 1
let g:pymode_lint_on_write = 0
let g:pymode_lint_message = 1
let g:pymode_run = 0
"let g:pymode_run_bind = '<leader>r'
let g:pymode_rope_complete_on_dot = 0
let g:pymode_lint_checkers = ['pylint', 'pep8']
"}}}
"augroup AutoPep8
"autocmd FileType python
"\ autocmd! AutoPep8 BufWritePost <buffer> call ()
"augroup END

" Neosnippet {{{
set number
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
" }}}


let g:indentLine_fileType = ['python', 'ex']



" Vimtex {{{
" Ubunutu
let g:vimtex_view_general_options
            \ = '--unique @pdf\#src:@tex:@line:@col'
let g:vimtex_view_general_options_latexmk = '--unique'

if has('macunix')
    "let g:vimtex_view_general_viewer = 'skim'
    let g:vimtex_view_general_viewer
                \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
    "let g:vimtex_view_general_options = '-r @line @pdf @tex'

    "" This adds a callback hook that updates Skim after compilation
    "let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']
else
    let g:vimtex_view_general_viewer = 'qpdfview'
endif
"function! UpdateSkim(status)
    "if !a:status | return | endif

    "let l:out = b:vimtex.out()
    "let l:tex = expand('%:p')
    "let l:cmd = [g:vimtex_view_general_viewer, '-r']
    "if !empty(system('pgrep Skim'))
        "call extend(l:cmd, ['-g'])
    "endif
    "if has('nvim')
        "call jobstart(l:cmd + [line('.'), l:out, l:tex])
    "elseif has('job')
        "call job_start(l:cmd + [line('.'), l:out, l:tex])
    "else
        "call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
    "endif
"endfunction
let g:tex_conceal = ""
"}}}


" Neoterm {{{
set number
let g:neoterm_position = 'horizontal'

let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSendLine<cr>
vnoremap <silent> <f9> :TREPLSendSelection<cr>

" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate

" Git commands
command! -nargs=+ Tg :T git <args>
tnoremap <Esc> <C-\><C-n>
"}}}

" Vimslime {{{
set number
let g:slime_target = "tmux"
"}}}

let cmdline_app           = {}
let cmdline_app["python"] = "python"

nmap <leader>tb :TagbarToggle<CR>
