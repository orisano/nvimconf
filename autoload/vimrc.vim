function! vimrc#on_filetype() abort "{{{
  if execute('filetype') =~# 'OFF'
    silent! filetype plugin indent on
    syntax enable
    filetype detect
  endif
endfunction "}}}

" vim: set et ts=2 sw=2 foldmethod=marker :
