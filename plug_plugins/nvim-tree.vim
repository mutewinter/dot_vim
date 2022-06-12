if exists('g:plug_installing_plugins')
  Plug 'kyazdani42/nvim-tree.lua'
  finish
endif


lua << EOF
require 'nvim-tree'.setup({
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  }
})
EOF

nnoremap <silent><leader>nn :NvimTreeToggle<CR>
nnoremap <silent><leader>nf :NvimTreeFindFile<CR>

let g:nvim_tree_indent_markers = 1
