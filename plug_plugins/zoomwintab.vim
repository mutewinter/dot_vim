if exists('g:plug_installing_plugins')
  Plug 'troydm/zoomwintab.vim'
  finish
endif

" Zoom Window to Full Size
nnoremap <silent> <leader>wo :ZoomWinTabToggle<CR>
