execute pathogen#infect()
autocmd vimenter * NERDTree
filetype on
syntax on
colorscheme Tomorrow-Night
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent
set expandtab
set hlsearch
set tags=./tags;/
set tags+=/home/sengming/Documents/kernel-build/linux/tags
set clipboard=unnamed
:let g:Tlist_WinWidth=40
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
