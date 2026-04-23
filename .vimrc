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
set hlsearch
set incsearch

" plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
" Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
call plug#end()

syntax enable
" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic = 1
set background=dark
" colorscheme tokyonight
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

nnoremap <C-F> :<C-U>nohlsearch<CR>/\<<C-R>=expand('<cword>')<CR>\><CR>

vnoremap <C-c> yy
