if exists('g:plug_installing_plugins')
  Plug 'sbdchd/neoformat'
  finish
endif

nnoremap <leader>gF :Neoformat<CR>
