if exists('g:plug_installing_plugins')
  Plug 'mizlan/iswap.nvim'
  finish
endif

nnoremap <leader>is :ISwap<CR>
nnoremap <leader>iw :ISwapWith<CR>
