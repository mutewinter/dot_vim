if exists('g:vundle_installing_plugins')
  Plugin 'nanotech/jellybeans.vim'
  finish
endif

" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant

" Make ES6 template variables visible.
hi! link jsTemplateVar PreProc
