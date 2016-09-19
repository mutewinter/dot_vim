if exists('g:vundle_installing_plugins')
  Plugin 'ddrscott/vim-side-search'
  finish
endif

nnoremap <leader>as :SideSearch<space>
let g:side_search_prg = 'ag --smart-case --heading --stats -C 2 --group'
