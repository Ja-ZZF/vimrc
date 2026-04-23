#!/bin/bash

if [ -e ~/.vimrc ]; then
    echo ">>> Existing ~/.vimrc found. Moving to backup..."
    mv ~/.vimrc ~/.vimrc.bak
fi

echo ">>> Creating symbolic link for .vimrc..."
ln -s "$PWD/.vimrc" ~/.vimrc

echo ">>> Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ -f "gruvbox.vim" ]; then
    echo ">>> Installing colorscheme gruvbox..."
    mkdir -p ~/.vim/colors
    cp gruvbox.vim ~/.vim/colors/
else
    echo ">>> Warning: gruvbox.vim not found in current directory, skipping colorscheme installation."
fi

echo ">>> Installing plugins specified in .vimrc..."
vim -c 'PlugInstall' -c 'qa'

echo ">>> Setup complete!"
