"" vim-plug stuffs. Leave at the beginning of this conf file
" This will automatically install vim-plug if it's not installed yet.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
" --------
call plug#begin()
Plug 'itchyny/lightline.vim' " An alternative to vim-powerline
Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " For beautifying code. You know you hate ugly code :P
Plug 'editorconfig/editorconfig-vim' " EditorConfig plugin for standardizing code format among project teams
Plug 'scrooloose/nerdtree' " For sidebar and file browsing
Plug 'tpope/vim-surround' " To easily change the brackets quotes and tags
Plug 'tpope/vim-commentary' " To easily toggle comments
Plug 'joshdick/onedark.vim', { 'do': 'cp ~/.vim/plugged/onedark.vim/autoload/lightline/colorscheme/onedark.vim ~/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/' } " OneDark theme with auto installation of lightline colorscheme
Plug 'sheerun/vim-polyglot' " For more language highlighting support
call plug#end()

" Lightline plugin setup
" -----------------------
let g:lightline = {
\ 'colorscheme': 'onedark',
\ }

" NERDtree setup
" ---------------
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

" Vim Prettier plugin setup
let g:prettier#autoformat = 0 " Disable auto formatting of files that have "@format" tag
autocmd BufWritePre *.js,*.jsx,*.css,*.scss,*.less Prettier " Prettify before saving

"" General
" ---------
set number	"Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=80	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
" set visualbell	" Use visual bell (no beeping) Eew, I hate the visual bell
set laststatus=2 " Mainly so that Lightline plugin can show up on single screens

set hlsearch	" Highlight all search results
nnoremap <cr> :noh<cr> " Map Carriage Return to removing highlights in normal mode
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set noshowmode " Lightline plugin is already showing the mode we're in

set autoindent	" Auto-indent new lines
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab
set tabstop=2	" Number of spaces per Tab
set noexpandtab " Use tabs, not spaces
let mapleader="," " Use comma as the leader

let g:netrw_dirhistmax = 0 " I don't need any history or bookmark keeping

"" Advanced
" ----------
set ruler	" Show row and column ruler information
set showtabline=2	" Show tab bar

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" Makes copying and pasting between vim and
" other programs a breeze. Make sure to build
" vim with clipboard support for this to work
set clipboard=unnamedplus

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

" Map Escape to jj to easily switch between insert and normal mode
inoremap jj <ESC>

" Arrows are unvimlike
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

set colorcolumn=80	" Set a column at 80

" Aesthetics
" -----------

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
" set background=dark
colorscheme onedark
