if exists('g:vundle_installing_plugins')
  Plugin 'troydm/zoomwintab.vim'
  finish
endif

" Zoom Window to Full Size
nnoremap <silent> <leader>wo :ZoomWinTabToggle<CR>
