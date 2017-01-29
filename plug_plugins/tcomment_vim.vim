if exists('g:plug_installing_plugins')
  Plug 'tomtom/tcomment_vim'
  finish
endif

let g:tcommentMapLeader1 = ''
let g:tcommentMapLeader2 = ''
let g:tcommentMapLeaderOp1 = 'tc'
nnoremap <silent><leader>cc :TComment<CR>
vnoremap <silent><leader>cc :TComment<CR>
nnoremap <silent><leader>cb :TCommentBlock<CR>
vnoremap <silent><leader>cb :TCommentBlock<CR>
