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
" Bundle 'minibufexpl.vim'
Bundle 'corntrace/bufexplorer'
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

" Theme
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'

set encoding=utf-8
set guifont=monaco:h12
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
set wildignore+=*.rsync_cache*
set wildignore+=*.DS_Store
set wildignore+=*.swp,*.zip,*.so
set wildignore+=log/**
set wildignore+=tmp/**

silent! colorscheme Tomorrow-Night-Eighties

" autocmd BufWritePre {*.rb,*.js,*.coffee,*.scss,*.haml} :%s/\s\+$//e

let mapleader=","
" select all
map <C-A> ggVG
map <Leader>d :bd<CR>
map <F1> <ESC>
nmap <silent> <TAB> :wincmd w<CR>
nmap <silent> <S-TAB> :wincmd W<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-H> ^
nnoremap <C-L> $
" list buffers and switch to a buffer quickly
nmap <Leader>s :ls<CR>:buffer<Space>
nmap <Space> :BufExplorer<CR>
" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
noremap <Leader><Leader> <C-^>
noremap <silent> <F2> :NERDTreeToggle<CR>
" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$\|\.rsync_cache$'
let g:miniBufExplSplitBelow=0
let g:EasyMotion_leader_key='<Leader>'
let g:bufExplorerDefaultHelp=0
let g:rails_ctags_arguments='--exclude=.git --exclude=.svn --exclude=.rsync_cache'
let g:user_zen_expandabbr_key='<C-Z>'
