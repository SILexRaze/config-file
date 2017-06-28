#!/bin/zsh
apt-get install vim git
apt-get update
mkdir -p ~/.vim/colors
wget https://raw.githubusercontent.com/gkjgh/cobalt/master/colors/cobalt.vim -O ~/.vim/colors/cobalt.vim
cat vimrc > ~/.vimrc
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
