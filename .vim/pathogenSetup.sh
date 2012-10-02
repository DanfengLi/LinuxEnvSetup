#!/bin/sh

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
cd ~/.vim/bundle
git clone git://github.com/Lokaltog/vim-powerline.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/klen/python-mode
