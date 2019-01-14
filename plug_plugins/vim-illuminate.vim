if exists('g:plug_installing_plugins')
  Plug 'RRethy/vim-illuminate'
  finish
endif

let g:Illuminate_ftblacklist = ['nerdtree']

highlight illuminatedWord ctermbg=235
