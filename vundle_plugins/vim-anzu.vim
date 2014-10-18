if exists('g:vundle_installing_plugins')
  Plugin 'osyo-manga/vim-anzu'
  finish
endif

nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
nmap # <Plug>(anzu-sharp)
let g:airline#extensions#anzu#enabled = 1
