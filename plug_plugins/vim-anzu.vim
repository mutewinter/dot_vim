if exists('g:plug_installing_plugins')
  Plug 'osyo-manga/vim-anzu'
  finish
endif

nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
let g:airline#extensions#anzu#enabled = 1
