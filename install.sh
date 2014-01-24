#!/usr/bin/env sh

rm -rf ~/.vim
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# delete the default BufExplorer key mapping
sed -i -e '/^[[:space:]]*nmap/d' ~/.vim/bundle/bufexplorer/plugin/bufexplorer.vim
