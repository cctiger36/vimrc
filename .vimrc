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
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'vim-indent-object'
Bundle 'mattn/zencoding-vim'

set guifont=monaco\ 11
set number
set incsearch
set hlsearch

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
" Disable vi-compatibility
set nocompatible
" Always show the statusline
set laststatus=2

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

map ¥ \

" select all
map <C-A> ggVG

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

noremap <silent> <Leader>n :NERDTreeToggle<CR>

let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$'
