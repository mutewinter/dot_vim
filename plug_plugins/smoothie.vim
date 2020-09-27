if exists('g:plug_installing_plugins')
  Plug 'psliwka/vim-smoothie'
  finish
endif

let g:smoothie_no_default_mappings = 1

" Scroll partial screens
nmap <silent> <down> <Plug>(SmoothieDownwards)
nmap <silent> <up> <Plug>(SmoothieUpwards)
vmap <silent> <down> <Plug>(SmoothieDownwards)
vmap <silent> <up> <Plug>(SmoothieUpwards)

" Scroll full screens
nmap <silent> <s-down> <Plug>(SmoothieForwards)
nmap <silent> <s-up> <Plug>(SmoothieBackwards)
vmap <silent> <s-down> <Plug>(SmoothieForwards)
vmap <silent> <s-up> <Plug>(SmoothieBackwards)
