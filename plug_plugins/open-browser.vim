if exists('g:plug_installing_plugins')
  Plug 'tyru/open-browser.vim'
  finish
endif

nmap <leader>oo <Plug>(openbrowser-smart-search)
vmap <leader>oo <Plug>(openbrowser-smart-search)
