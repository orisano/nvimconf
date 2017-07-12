set smarttab

set expandtab
set shiftwidth=4
set shiftround

set autoindent smartindent

set modeline

set backspace=indent,eol,start

set matchpairs+=<:>

set hidden

set foldenable
set foldmethod=marker

set undofile
let &g:undodir = &directory

autocmd MyAutoCmd WinEnter * checktime

set number
set list

set t_vb=
set novisualbell
set belloff=all

set nowildmenu
set wildmode=list:longest,full

set shada=!,'300,<50,s10,h

set completeopt=menuone,noinsert
set complete=.
set pumheight=20

