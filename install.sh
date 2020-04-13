#!/usr/bin/env sh

rm -rf ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc .gvimrc ~/
vim +PlugInstall

# delete the default BufExplorer key mapping
sed -i -e '/^[[:space:]]*nmap/d' ~/.vim/plugged/bufexplorer/plugin/bufexplorer.vim
