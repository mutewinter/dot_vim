if exists('g:plug_installing_plugins')
  Plug 'github/copilot.vim'
  finish
endif

" Ensures we use a compatible version of node
let g:copilot_node_command = "`fnm exec --using=20 which node`"
