if exists('g:plug_installing_plugins')
  Plug 'tpope/vim-fugitive'
  finish
endif

nnoremap <Leader>gc :Git commit -v<CR>
nnoremap <Leader>gca :Git commit -a -v<CR>
nnoremap <Leader>gcn :Git commit -v --no-verify<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gs :Git<CR>
nnoremap <Leader>gd :Gvdiffsplit<CR>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>
