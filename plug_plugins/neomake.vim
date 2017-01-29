if exists('g:plug_installing_plugins')
  Plug 'benekastah/neomake'
  finish
endif

autocmd! BufWritePost * Neomake

let g:neomake_list_height = 5

let g:neomake_javascript_enabled_makers = ['eslint']
