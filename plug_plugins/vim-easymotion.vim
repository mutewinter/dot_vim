if exists('g:plug_installing_plugins')
  Plug 'easymotion/vim-easymotion'
  finish
endif

" Disable default mappings
let g:EasyMotion_do_mapping = 0
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
vmap s <Plug>(easymotion-s)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
