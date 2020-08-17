#!/bin/bash

# symlink to expected vimrc location
ln -s ~/vimrc/vimrc ~/.vimrc

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
cd ~/.vim/bundle && git clone git@github.com:junegunn/fzf.vim.git
# install lightline
cd ~/.vim/bundle && git clone git@github.com:itchyny/lightline.vim.git
# install papercolor
cd ~/.vim/bundle && git clone git@github.com:NLKNguyen/papercolor-theme.git
cd papercolor-theme && mv colors/ ~/.vim/colors
cd .. && rm -rf papercolor-theme
# install syntastic
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
# install nerdtree
cd ~/.vim/bundle && git clone git@github.com:preservim/nerdtree.git 
# install commentary
cd ~/.vim/bundle && git clone git@github.com:tpope/vim-commentary.git 
