set nocompatible               " be iMproved

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-rails'
Plug 'scrooloose/nerdtree'
Plug 'hallison/vim-markdown'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'michaeljsmith/vim-indent-object'
Plug 'ervandew/supertab'
Plug 'corntrace/bufexplorer'
Plug 'slim-template/vim-slim'
Plug 'bling/vim-airline'
Plug 'rking/ag.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mustache/vim-mustache-handlebars'
Plug 'rizzatti/dash.vim'
Plug 'derekwyatt/vim-scala'
Plug 'elixir-lang/vim-elixir'
Plug 'tomlion/vim-solidity'

" Theme
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

call plug#end()

set encoding=utf-8
set guifont=Menlo:h13
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
set hidden                   " in order to switch between buffers with unsaved change 
set cul
set backspace=indent,eol,start

syntax enable

filetype plugin indent on
autocmd FileType make       set noexpandtab
autocmd FileType python     set tabstop=4 shiftwidth=4
autocmd FileType eruby      set tabstop=2 shiftwidth=2
autocmd FileType slim       set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc  set tabstop=2 shiftwidth=2
autocmd FileType html       set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2

autocmd BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

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
map <C-A> ggVG
map <Leader>d :bd<CR>
map <F1> <ESC>
nmap <silent> <TAB> :wincmd w<CR>
nmap <silent> <S-TAB> :wincmd W<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-H> ^
nnoremap <C-L> $
nmap <Leader>s :ls<CR>:buffer<Space>
nmap <Space> :BufExplorer<CR>
noremap <CR> :nohlsearch<CR>
noremap <Leader><Leader> <C-^>
noremap <silent> <F2> :NERDTreeToggle<CR>
noremap <silent> <F3> :TagbarToggle<CR>
" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

nmap <Leader>v :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <Leader>v <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <Leader>c :.w !pbcopy<CR><CR>
vmap <Leader>c :w !pbcopy<CR><CR>

nmap <silent> K <Plug>DashSearch

let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$\|\.rsync_cache$'
let g:EasyMotion_leader_key='<Leader>'
let g:bufExplorerDefaultHelp=0
let g:rails_ctags_arguments='--exclude=.git --exclude=.svn --exclude=.rsync_cache'
let g:airline_left_sep=''
let g:airline_right_sep=''
