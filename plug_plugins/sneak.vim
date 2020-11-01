if exists('g:plug_installing_plugins')
  Plug 'justinmk/vim-sneak'
  finish
endif

let g:sneak#label = 1
let g:sneak#use_ic_scs = 1

highlight Sneak guifg=white guibg=#8d0085 ctermfg=white ctermbg=magenta
highlight SneakScope guifg=#8d0085 guibg=white ctermfg=magenta ctermbg=white
