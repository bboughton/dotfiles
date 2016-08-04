if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" vi compatibility sucks
set nocompatible

" Leader
let mapleader = " "

" also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" use syntax highlighting
syntax on
colorscheme dark

map <C-h> :noh<cr>
map <Leader>a :A<cr>

" Disable K looking stuff up
map K <Nop>

" keep 10 lines visible at end of file
set scrolloff=10

" show relative line numbers
set relativenumber

" Highlight colom at 80 chars
set colorcolumn=80

" always display status line
set laststatus=2

" customize status line
set statusline=
set statusline+=%F\   "full filename
set statusline+=%y\   "file type
set statusline+=%m    "modified flag

set title
set titlestring=
set titlestring+=%t   "file name
set titlestring+=%m   "modified flag

" highlight trailing whitespaces
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/

" Turn Incremental Search on
set incsearch

" Highlight Search Results
set hlsearch

set cursorline
set cursorcolumn

set backspace=indent,eol,start " allow backspacing over everything in insert mode

let g:neocomplete#enable_at_startup = 1
