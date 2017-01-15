if exists('g:vundle_installing_plugins')
  Plugin 'benekastah/neomake'
  finish
endif

autocmd! BufWritePost * Neomake

let g:neomake_list_height = 5

let g:neomake_javascript_enabled_makers = ['eslint']
