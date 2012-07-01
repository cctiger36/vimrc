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
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'vim-indent-object'
Bundle 'mattn/zencoding-vim'
Bundle 'mileszs/ack.vim'
Bundle 'ack.vim'
Bundle 'ervandew/supertab'
Bundle 'minibufexpl.vim'
Bundle 'tsaleh/vim-matchit'
" Theme
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'

set encoding=utf-8
set guifont=monaco\ 11
set number
set incsearch                " incremental search
set hlsearch                 " search highlight
set ignorecase
set autoread                 " auto read when file is changed from outside
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set laststatus=2             " Always show the statusline
set splitright               " always open vertical split window in the right side
set splitbelow               " always open horizontal split window below
set nobackup                 " no backup files
set hidden                   "in order to switch between buffers with unsaved change 

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
set wildignore+=*.swp,*.zip,*.so
set wildignore+=log/**
set wildignore+=tmp/**

autocmd BufWritePre {*.rb,*.js,*.coffee,*.scss,*.haml} :%s/\s\+$//e

let mapleader=","
" select all
map <C-A> ggVG
map <TAB> :bn<CR>
map <S-TAB> :bp<CR>
map <Leader>d :bd<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-H> ^
nnoremap <C-L> $
" list buffers and switch to a buffer quickly
nmap <leader>b :ls<CR>:buffer<Space>
" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
noremap <Leader><Leader> <C-^>
noremap <silent> <Leader>n :NERDTreeToggle<CR>
" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$'
let g:miniBufExplSplitBelow=0
