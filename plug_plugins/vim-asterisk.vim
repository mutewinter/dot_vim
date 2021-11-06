if exists('g:plug_installing_plugins')
  Plug 'haya14busa/vim-asterisk'
  finish
endif

map *   <Plug>(asterisk-z*)
map #   <Plug>(asterisk-z#)
