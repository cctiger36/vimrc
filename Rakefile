desc "deploy vimrc"
task :deploy do
  system "rm -rf ~/.vim"
  system "git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
  system "cp .vimrc .gvimrc ~/"
  system "vim +BundleInstall +qall"
  # delete the default BufExplorer key mapping
  system "sed -i -e '/^[[:space:]]*nmap/d' ~/.vim/bundle/bufexplorer/plugin/bufexplorer.vim"
end
