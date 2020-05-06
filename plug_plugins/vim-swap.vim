if exists('g:plug_installing_plugins')
  Plug 'machakann/vim-swap'
  finish
endif

let g:swap_no_default_key_mappings = 1

nmap gw <Plug>(swap-interactive)
xmap gw <Plug>(swap-interactive)
nmap g< <Plug>(swap-prev)
nmap g> <Plug>(swap-next)
