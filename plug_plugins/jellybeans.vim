if exists('g:plug_installing_plugins')
  Plug 'nanotech/jellybeans.vim'
  finish
endif

" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant

" Make ES6 template variables visible.
hi! link jsTemplateVar PreProc
