
execute pathogen#infect()
syntax on
filetype plugin indent on
set laststatus=2

set number
set scrolloff=20

" airline settings
let g:airline_powerline_fonts = 1
" switch insert to normal


" erc lrc
"
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

map <space> <leader>
map <space><space> <leader><leader>

set guifont=Monospace\ 8
set go-=m "hide menu
set go-=T "hide toolbar
set go-=r "hide right scrollbar
set go-=L "hide left scrollbar

