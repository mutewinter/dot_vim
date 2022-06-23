if exists('g:plug_installing_plugins')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'fannheyward/telescope-coc.nvim'
  finish
endif

lua << EOF
  require('telescope').setup({
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = require('telescope.actions').cycle_history_next,
          ["<C-k>"] = require('telescope.actions').cycle_history_prev,
        },
      },
    },
  })
EOF

nnoremap <s-enter> <cmd>Telescope find_files<cr>
nnoremap <leader>m <cmd>Telescope oldfiles<cr>
nnoremap <leader>fr <cmd>Telescope live_grep<cr>

nnoremap <Leader>fg :lua require'telescope.builtin'.git_status{}<cr>
nnoremap <Leader>fG :lua require'telescope.builtin'.git_commits{}<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <Leader>fs :lua require'telescope.builtin'.search_history{}<cr>

" Coc commands
nnoremap <leader>fc <cmd>Telescope coc commands<cr>
nnoremap <leader>fd <cmd>Telescope coc diagnostics<cr>
nnoremap <leader>fR <cmd>Telescope coc references<cr>
