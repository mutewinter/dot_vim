if exists('g:plug_installing_plugins')
  Plug 'kyazdani42/nvim-tree.lua'
  finish
endif

lua require 'nvim-tree'.setup()

nnoremap <silent><leader>nn :NvimTreeToggle<CR>
nnoremap <silent><leader>nf :NvimTreeFindFile<CR>

let g:nvim_tree_auto_close = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_auto_open = 1
