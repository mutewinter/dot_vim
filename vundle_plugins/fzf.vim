if exists('g:vundle_installing_plugins')
  Plugin 'junegunn/fzf'
  Plugin 'junegunn/fzf.vim'
  finish
endif

nnoremap <leader>ag :Ag<space>

" Leader Commands
nnoremap <leader>. :Files<CR>
nnoremap <leader>gf :GFiles<CR>
nnoremap <leader>gm :GFiles?<CR>
nnoremap <leader>m :History<CR>
nnoremap <leader>bl :BLines<CR>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
