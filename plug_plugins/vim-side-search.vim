if exists('g:plug_installing_plugins')
  Plug 'ddrscott/vim-side-search'
  finish
endif

nnoremap <leader>as :SideSearch<space>
let g:side_search_prg = 'ag --smart-case --heading --stats -C 2 --group'
