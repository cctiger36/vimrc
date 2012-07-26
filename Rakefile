desc "deploy vimrc"
task :deploy do
  system "rm -rf ~/.vim"
  system "git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
  system "cp .vimrc .gvimrc .ackrc ~/"
  system "vim +BundleInstall +qall"
  # delete the default BufExplorer key mapping
  system "sed -i -e '/^[[:space:]]*nmap/d' ~/.vim/bundle/bufexplorer/plugin/bufexplorer.vim"

  # snipmate-snippets
  system 'git submodule init; git submodule update'
  system 'cd snipmate-snippets/; rake deploy_local; cd -'
end
