" Use Vim settings, rather than Vi settings.
set nocompatible

" Backspace behaves in a sane manner.
set backspace=indent,eol,start

" use Tim Pope's pathogen to manage plugins
execute pathogen#infect()

" Switch syntax highlighting on.
syntax on

" Set colorscheme to [jellybeans, sorcerer]
colorscheme sorcerer

" Enable filetype detection and do language-independent indenting.
filetype plugin indent on

" Show cursor position in lower right corner.
set ruler

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Set line numbers
set number
set relativenumber

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

set nofoldenable

" spell check and automatically wrap commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" open new buffer without creating swapfiles
set noswapfile

" functional writing environment from http://www.drbunsen.org/writing-in-vim/ 
func! WordProcessorMode()
  setlocal formatoptions=1
  setlocal noexpandtab
  map j gj
  map k gk
  setlocal spell spelllang=en_us
  set complete+=s
  set formatprg=par
  setlocal wrap
  setlocal linebreak
  set textwidth=80
endfu
com! WP call WordProcessorMode()
