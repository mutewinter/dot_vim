if exists('g:plug_installing_plugins')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  finish
endif

lua << EOF
require('gitsigns').setup({
  keymaps = {
    ['n <leader>gn'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
    ['n <leader>gN'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},
  }
})
EOF
