#!/bin/bash

# 1. 创建软连接
# 注意：这里使用绝对路径 $PWD 来获取当前目录的完整路径
# 如果 ~/.vimrc 已存在，先将其备份或移除
if [ -e ~/.vimrc ]; then
    echo ">>> Existing ~/.vimrc found. Moving to backup..."
    mv ~/.vimrc ~/.vimrc.bak
fi

echo ">>> Creating symbolic link for .vimrc..."
ln -s "$PWD/.vimrc" ~/.vimrc

# 2. 安装 vim-plug 插件管理器
echo ">>> Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# 3. 自动安装 .vimrc 中声明的所有插件
echo ">>> Installing plugins specified in .vimrc..."
vim -c 'PlugInstall' -c 'qa'

echo ">>> Setup complete!"
