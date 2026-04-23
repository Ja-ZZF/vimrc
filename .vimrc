" set cursor style
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" basic setting
set clipboard=unnamedplus
set tabstop=2           
set shiftwidth=2        
set softtabstop=2       
set expandtab           
set autoindent
set number
set cursorline 

" plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
call plug#end()

syntax enable
set background=dark
colorscheme gruvbox

set termguicolors

" key-binding
let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Right> <C-w>l
nnoremap <leader><Up> <C-w>k
nnoremap <leader><Down> <C-w>j

nnoremap vv v%
nnoremap vc viw
nnoremap vl V
nnoremap <C-a> gg0vG$

vnoremap <C-c> yy
