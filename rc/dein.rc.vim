let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1
let g:dein#install_log_filename = '~/dein.log'

let s:path = expand('$CACHE/dein')
if !dein#load_state(s:path)
  finish
endif

call dein#begin(s:path, expand('<sfile>'))

call dein#load_toml('~/.config/nvim/rc/dein.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/rc/deinlazy.toml', {'lazy': 1})
call dein#load_toml('~/.config/nvim/rc/deineo.toml', {})

call dein#end()
call dein#save_state()

if !has('vim_starting') && dein#check_install()
  call dein#install()
endif
