" Enable pathogen "
execute pathogen#infect()

" Enable Nord colorscheme "
" colorscheme dracula

" vim-go settings "
let g:go_fmt_command = "goimports"

" syntastic settings "
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Standard Vim settings "
syntax on 
set number
set tabstop=4
set shiftwidth=4
set expandtab
set modeline
set hlsearch
set showmode
set showcmd
set ruler
set wildmenu
set spelllang=en_us
set showmatch
filetype indent on

