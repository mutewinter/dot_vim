if exists('g:plug_installing_plugins')
  " Requires tree-sitter
  Plug 'mizlan/iswap.nvim'
  finish
endif

nnoremap <leader>is :ISwap<CR>
nnoremap <leader>iw :ISwapWith<CR>
