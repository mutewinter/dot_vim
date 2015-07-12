if exists('g:vundle_installing_plugins')
  Plugin 'mxw/vim-jsx'
  finish
endif

autocmd FileType javascript let g:jsx_ext_required = findfile('.eslintrc', '.;') != '' ? 0 : 1
