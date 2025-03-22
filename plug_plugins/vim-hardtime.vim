if exists('g:plug_installing_plugins')
  Plug 'takac/vim-hardtime'
  finish
endif

let g:hardtime_default_on = 1
let g:hardtime_ignore_buffer_patterns = ["NvimTree", "Help", "NeogitStatus", "dbui"]
let g:hardtime_allow_different_key = 1
let g:hardtime_ignore_quickfix = 1
" Hard, but not that hard
let g:hardtime_maxcount = 50

let g:list_of_normal_keys = ["h", "j", "k", "l"]
let g:list_of_visual_keys = ["h", "j", "k", "l"]
let g:list_of_insert_keys = []
