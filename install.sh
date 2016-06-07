#!/usr/bin/env sh

rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc .gvimrc ~/
vim +PluginInstall +qall

# delete the default BufExplorer key mapping
sed -i -e '/^[[:space:]]*nmap/d' ~/.vim/bundle/bufexplorer/plugin/bufexplorer.vim
