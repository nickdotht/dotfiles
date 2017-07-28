filetype plugin indent on

" Theme configs
syntax on
colorscheme spacegray
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Makes copying and pasting between vim and
" other programs a breeze. Make sure to build
" vim with clipboard support for this to work
set clipboard=unnamedplus

set shell=/bin/zsh
set guifont=Menlo:h14
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set noundofile
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <cr> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set wrap
set linebreak
set nolist
set formatoptions=qrn1
set colorcolumn=80

" Aesthetics

set background=light

" Mappings and shortcuts

" Basics

inoremap jj <ESC>
let mapleader = "/<SPACE>"

" Arrows are unvimlike 

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Miscellaneous 

vnoremap . :norm.<CR>

" NERDtree setup
"Open the sidebar on enter
autocmd vimenter * NERDTree 
"Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Map Ctrl+B to toggle NERDTree
map <C-b> :NERDTreeToggle<CR>
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Set the active pane to the file instead of NERDtree on startup
autocmd VimEnter * wincmd p

" Making browsing split panes great again!
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new panes on the right (:vsp) and below (:sp) instead of the default left and top
set splitbelow
set splitright

" Show invisibles
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set list

" vim-javascript plugin setup
let g:javascript_plugin_jsdoc = 1

" vim-jsx plugin setup
let g:jsx_ext_required = 0
