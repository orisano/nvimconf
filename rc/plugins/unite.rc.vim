let g:unite_enable_auto_select = 0
let g:unite_restore_alternate_file = 1

let g:unite_source_alias_aliases = {}
let g:unite_source_alias_aliases.line_migemo = 'line'
let g:unite_source_alias_aliases.message = {
            \ 'source' : 'output',
            \ 'args'   : 'message',
            \ }
let g:unite_source_alias_aliases.scriptnames = {
            \ 'source' : 'output',
            \ 'args'   : 'scriptnames',
            \ }

autocmd MyAutoCmd FileType unite call s:unite_my_settings()

let g:unite_ignore_source_files = []

call unite#custom#profile('action', 'context', {
            \ 'start_insert' : 1
            \ })

call unite#custom#source(
            \ 'buffer,file_rec,file_rec/async,file_rec/git', 'matchers',
            \ ['matcher_project_files', 'matcher_fuzzy'])
call unite#custom#source(
            \ 'file_mru', 'matchers',
            \ ['matcher_project_files', 'matcher_fuzzy', 'matcher_hide_hidden_files', 'matcher_hide_current_file'])
call unite#custom#source(
            \ 'file_rec,file_rec/async,file_rec/git,file_mru', 'converters',
            \ ['converter_uniq_word'])
call unite#custom#source(
            \ 'buffer', 'converters',
            \ ['converter_uniq_word', 'converter_word_abbr'])
call unite#filters#sorter_default#use(['sorter_rank'])

let default_context = {
            \ 'vertical' : 0,
            \ 'short_source_name' : 1,
            \ }

call unite#custom#profile('default', 'context', default_context)

let g:unite_source_rec_max_cache_files = -1
