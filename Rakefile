desc "deploy vimrc"
task :deploy do
  system 'rm -rf ~/.vim'
  system 'git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle'
  system 'cp .vimrc .gvimrc ~/'
  system 'vim +BundleInstall +qall'
end
