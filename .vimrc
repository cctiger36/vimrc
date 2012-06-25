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
Bundle 'mileszs/ack.vim'
Bundle 'ack.vim'
Bundle 'ervandew/supertab'

set guifont=monaco\ 11
set number
set incsearch                " incremental search
set hlsearch                 " search highlight
set autoread                 " auto read when file is changed from outside
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set nocompatible             " Disable vi-compatibility
set laststatus=2             " Always show the statusline
set splitright               " always open vertical split window in the right side
set splitbelow               " always open horizontal split window below
set nobackup                 " no backup files

syntax enable

filetype plugin indent on
autocmd FileType make       set noexpandtab
autocmd FileType python     set noexpandtab
autocmd FileType eruby      set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc  set tabstop=2 shiftwidth=2
autocmd FileType html       set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee     set tabstop=2 shiftwidth=2

set wildignore+=*.png,*.jpg,*.gif,*.ico
set wildignore+=*.swf,*.fla
set wildignore+=*.git*,*.hg*,*.svn*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

let mapleader=","
" select all
map <C-A> ggVG
" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
noremap <silent> <Leader>n :NERDTreeToggle<CR>

let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$'
