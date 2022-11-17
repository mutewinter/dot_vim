if exists('g:plug_installing_plugins')
  Plug 'ziontee113/color-picker.nvim'
  finish
endif

nnoremap <leader>cp <cmd>:PickColor<CR>

lua << EOF
  require('color-picker').setup()
EOF
