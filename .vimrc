" 进入插入模式时，光标变为竖线 (Bar)
let &t_SI = "\e[6 q"

" 退出插入模式（回到普通模式）时，光标变回方块 (Block)
let &t_EI = "\e[2 q"

set clipboard=unnamedplus

set tabstop=2           " 一个 Tab 字符占 2 个空格宽度
set shiftwidth=2        " 自动缩进宽度为 2
set softtabstop=2       " 编辑时 Tab 键模拟 2 个空格
set expandtab           " 将 Tab 展开为空格（这是关键！）
set autoindent          " 新行自动继承上一行的缩进
set number
set cursorline 

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()
set background=dark
colorscheme gruvbox
set termguicolors
