if exists('g:plug_installing_plugins')
  Plug 'galooshi/vim-import-js'
  finish
endif

nnoremap <unique> <silent> <Leader>iw :ImportJSWord<CR>
nnoremap <unique> <silent> <Leader>if :ImportJSFix<CR>
nnoremap <unique> <silent> <Leader>ig :ImportJSGoto<CR>
