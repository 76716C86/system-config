call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'NLKNguyen/papercolor-theme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set t_Co=256

set clipboard+=unnamed
set background=dark
colorscheme PaperColor


let g:airline_theme='dark_minimal'
let g:airline#extensions#tabline#enabled=1
"let g:airline_powerline_fonts=1
" let g:airline_section_b='%{fugitive#statusline()}'
"let g:indentLine_setColors=1
set encoding=utf-8
"set statusline+=%{gutentags#statusline()}

autocmd FileType * set noexpandtab

set nu rnu

set shiftwidth=4
set tabstop=4

set list lcs=tab:\|\

nmap <F7> :bp <CR>
nmap <F8> :bn <CR>

"
" CoC
"
set hidden

set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" tab completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

