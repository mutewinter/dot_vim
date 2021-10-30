if exists('g:plug_installing_plugins')
  Plug 'kevinhwang91/nvim-hlslens'
  finish
endif

" When cursor on the same line
hi HlSearchLensNear guifg=#aaaaaa guibg=#252525
" All others
hi HlSearchLens guifg=#aaaaaa guibg=#252525
" Keep search color pink when hovering
hi! link HlSearchNear Search

map *  <Plug>(asterisk-z*)<Cmd>lua require('hlslens').start()<CR>
map #  <Plug>(asterisk-z#)<Cmd>lua require('hlslens').start()<CR>
map g* <Plug>(asterisk-gz*)<Cmd>lua require('hlslens').start()<CR>
map g# <Plug>(asterisk-gz#)<Cmd>lua require('hlslens').start()<CR>
