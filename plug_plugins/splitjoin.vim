if exists('g:plug_installing_plugins')
  Plug 'mutewinter/splitjoin.vim'
  finish
endif

let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
let g:splitjoin_trailing_comma = 1
let g:splitjoin_align = 0

nnoremap <leader>sj :SplitjoinSplit<cr>
nnoremap <leader>sk :SplitjoinJoin<cr>
