if exists('g:vundle_installing_plugins')
  Plugin 'AndrewRadev/splitjoin.vim'
  finish
endif

let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
let g:splitjoin_trailing_comma = 1
let g:splitjoin_align = 1

nnoremap <leader>sj :SplitjoinSplit<cr>
nnoremap <leader>sk :SplitjoinJoin<cr>
