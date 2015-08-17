if exists('g:vundle_installing_plugins')
  Plugin 'tyru/open-browser.vim'
  finish
endif

nmap <leader>o <Plug>(openbrowser-smart-search)
vmap <leader>o <Plug>(openbrowser-smart-search)
