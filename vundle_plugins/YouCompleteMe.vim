if exists('g:vundle_installing_plugins')
  Plugin 'blueyed/YouCompleteMe'
  finish
endif

let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_use_ultisnips_completer = 0
let g:ycm_filetype_specific_completion_to_disable = {
    \ 'ruby' : 1,
    \ 'javascript' : 1,
    \ 'jsx' : 1,
    \}
