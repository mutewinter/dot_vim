if exists('g:plug_installing_plugins')
  Plug 'mileszs/ack.vim'
  finish
endif
let g:ackprg = 'ag --vimgrep --smart-case'

nnoremap <silent> <leader>a/ :AckFromSearch<CR>
nnoremap <leader>ag :Ack<space>
