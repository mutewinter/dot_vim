if exists('g:plug_installing_plugins')
  Plug 'github/copilot.vim'
  finish
endif

let g:copilot_node_command = "`fnm exec --using=16 which node`"
