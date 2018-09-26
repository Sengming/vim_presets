execute pathogen#infect()
autocmd vimenter * NERDTree
"function! LoadCCTree()
"    if filereadable('cscope.out')
"        CCTreeLoadDB cscope.out
"    endif
"endfunc
"autocmd VimEnter * call LoadCCTree()
"function! LoadXRef()
"    if filereadable('xref.out')
"       CCTreeLoadXRefDB xref.out
"    endif
"endfunc
"autocmd VimEnter * call LoadXRef()
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
set number
set tags=./tags;/
set clipboard=unnamed
:let g:Tlist_WinWidth=25
:set cursorline
:hi clear CursorLine
:hi CursorLine gui=underline cterm=underline
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" Add CScope support and shortcuts:
if has('cscope')
"      set cscopetag cscopeverbose
"        if has('quickfix')
"           set cscopequickfix=s-,c-,d-,i-,t-,e-
"        endif
"        cnoreabbrev csa cs add
"        cnoreabbrev csf cs find
"        cnoreabbrev csk cs kill
"        cnoreabbrev csr cs reset
"        cnoreabbrev css cs show
"        cnoreabbrev csh cs help

        command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

