call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

set t_Co=256

set clipboard+=unnamed
set background=dark
colorscheme PaperColor


let g:airline_theme='one'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
" let g:airline_section_b='%{fugitive#statusline()}'
let g:indentLine_setColors=1
set encoding=utf-8
set statusline+=%{gutentags#statusline()}

autocmd FileType * set noexpandtab

set nu

set shiftwidth=4
set tabstop=4

set list lcs=tab:\|\

nmap <F7> :bp <CR>
nmap <F8> :bn <CR>
