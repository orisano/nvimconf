language message C

let g:mapleader = ','
let g:maplocalleader = 'm'

nnoremap ; <Nop>
nnoremap m <Nop>
nnoremap , <Nop>

let $CACHE = expand('~/.cache')

if !isdirectory($CACHE)
  call mkdir($CACHE, 'p')
endif

if filereadable(expand('~/.local_vimrc'))
  execute 'source' expand('~/.local_vimrc')
endif

let s:dein_dir = finddir('dein.vim', '.;')
if s:dein_dir != '' || &runtimepath !~ '/dein.vim'
  if s:dein_dir == '' && &runtimepath !~ '/dein.vim'
    let s:dein_dir = expand('$CACHE/dein') . '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute 'set runtimepath^=' . substitute(fnamemodify(s:dein_dir, ':p'), '/$', '', '')
endif

set packpath=
