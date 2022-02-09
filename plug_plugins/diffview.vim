if exists('g:plug_installing_plugins')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'sindrets/diffview.nvim'
  finish
endif


nnoremap <Leader>gd :DiffviewOpen<CR>
nnoremap <Leader>gx :DiffviewClose<CR>
nnoremap <Leader>gh :DiffviewFileHistory<CR>
