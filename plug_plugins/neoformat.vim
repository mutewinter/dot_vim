if exists('g:plug_installing_plugins')
  Plug 'sbdchd/neoformat'
  finish
endif

nnoremap gF :Neoformat<CR>
