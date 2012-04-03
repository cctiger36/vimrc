" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'hallison/vim-markdown'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wincent/Command-T'
Bundle 'Align'
" Bundle 'L9'
" Bundle 'FuzzyFinder'

set guifont=monaco\ 11
set number
set incsearch
set hlsearch

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

filetype plugin indent on
autocmd FileType make       set noexpandtab
autocmd FileType python     set noexpandtab
autocmd FileType eruby      set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc  set tabstop=2 shiftwidth=2
autocmd FileType html       set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee     set tabstop=2 shiftwidth=2

" au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
syntax enable
let mapleader = "\\"
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>s :FufTag<CR>
map <Leader>n :NERDTreeToggle<CR>
