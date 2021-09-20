if exists('g:plug_installing_plugins')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'fannheyward/telescope-coc.nvim'
  finish
endif

nnoremap <leader>. <cmd>Telescope find_files<cr>
nnoremap <leader>m <cmd>Telescope oldfiles<cr>
nnoremap <leader>fr <cmd>Telescope live_grep<cr>

nnoremap <Leader>fg :lua require'telescope.builtin'.git_status{}<cr>
nnoremap <Leader>fG :lua require'telescope.builtin'.git_commits{}<cr>

" Coc commands
nnoremap <leader>fb <cmd>Telescope coc buffers<cr>
nnoremap <leader>fc <cmd>Telescope coc commands<cr>
nnoremap <leader>fd <cmd>Telescope coc diagnostics<cr>
nnoremap <leader>fR <cmd>Telescope coc references<cr>
