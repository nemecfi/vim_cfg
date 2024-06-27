" ===========================
" General Settings
" ===========================

" Disable vi compatibility mode
set nocompatible
" Enable plugins
filetype plugin on
" Load indentation settings based on file type
filetype indent on
" Inc hist from 20 to 2000
set history=2000
" Enable hidden buffers
set hidden

" ===========================
" File Type and Syntax
" ===========================

" Enable file type detection
filetype on
" Syntax highlighting
syntax on
" Set folding method based on indentation
set foldmethod=indent

" ===========================
" Interface and Design
" ===========================

" Show line numbers
set number
" Highlight the current line
set cursorline
" Cobalt scheme -> imported from git
colorscheme cobalt
" Font
set guifont=dejavu\ sans:s12
" Better status line
set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
" Enable mouse
set mouse=a
" Show hidden characters
set list
set listchars=tab:>-,trail:·,eol:¬
" Highlight matching parentheses
set showmatch

" ===========================
" Search Settings
" ===========================

" Highlight search results
set hlsearch
" Ignore case when searching
set ignorecase

" ===========================
" Completion Settings
" ===========================

" Enable tab completion menu
set wildmenu
" Set completion mode to list longest match
set wildmode=list:longest
" Ignore certain file types during completion
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" ===========================
" Miscellaneous Settings
" ===========================

" Customize backspace behavior
set backspace=indent,eol,start
" Disable all bell sounds
set belloff=all
" Save cursor location
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
" Enable incremental search during typing
set incsearch
" Automatically pair brackets and quotes
inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
