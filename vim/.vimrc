set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
 
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 
au BufNewFile,BufRead *.gen* set filetype=python
" Auto indentation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
colors jellybeans
syntax on
set backspace=indent,eol,start
set guifont=DejaVu\ Sans\ Mono\ 10

" Make background transparent
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none

" Enable indent guides
let g:indent_guides_enable_on_vim_startup = 1
 
" window movement
nnoremap <C-Down>  <C-W>j
nnoremap <C-Up>    <C-W>k
nnoremap <C-Left>  <C-W>h
nnoremap <C-Right> <C-W>l
 
set statusline=%f       "tail of the filename
set statusline+=%h      "help file flag
set statusline+=%#error# "switch to error highlight
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%*      "switch to normal highlight
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
 
set nowrap
set nu
 
