if exists('g:vundle_installing_plugins')
  Plugin 'dsawardekar/ember.vim'
  finish
endif

nnoremap <leader>ert :Eapp router.coffee<CR>
