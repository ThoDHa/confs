#!/bin/bash

################################################################################
# set up VIM TMUX and Bash
################################################################################

sudo apt-get update && apt-get upgrade -y

sh min_setup.sh

rm -rf ~/.vim
mkdir ~/.vim

curl https://raw.githubusercontent.com/ThoDHa/confs/main/vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/ThoDHa/confs/main/ctags > ~/.ctags.d/default.ctags


# This sets up VIM
mkdir -p ~/.vim/pack/themes/start
git clone https://github.com/tomasiser/vim-code-dark ~/.vim/pack/themes/start/vim-code-dark 

mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
