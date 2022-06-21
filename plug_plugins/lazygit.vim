if exists('g:plug_installing_plugins')
  Plug 'kdheepak/lazygit.nvim'
  finish
endif

nnoremap <silent> <leader>gg :LazyGit<CR>
