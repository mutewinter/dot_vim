if exists('g:plug_installing_plugins')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'TimUntersberger/neogit'
  finish
endif

nnoremap <Leader>gt :Neogit<CR>
nnoremap <Leader>gc :Neogit commit -v<CR>
nnoremap <Leader>gca :Neogit commit -a -v<CR>
nnoremap <Leader>gcn :Neogit commit -v --no-verify<CR>


lua <<EOF
require('neogit').setup({
  disable_commit_confirmation = true,
  integrations = {
    diffview = true
  },
})
EOF
