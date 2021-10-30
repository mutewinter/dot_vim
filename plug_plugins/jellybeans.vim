if exists('g:plug_installing_plugins')
  Plug 'nanotech/jellybeans.vim'
  finish
endif

" Fixes color schema for floating windows.
" Via https://git.io/Jfs2T
let g:jellybeans_overrides = {
\    'Pmenu':    {
\                    'guifg': 'D6D6D6',
\                    'guibg': '303030',
\                    'ctermfg': 'Black',
\                    'ctermbg': 'Yellow',
\                    'attr': ''
\                },
\    'PmenuSel': {
\                    'guifg': '2B2B2B',
\                    'guibg': 'D6D6D6',
\                    'ctermfg': 'Yellow',
\                    'ctermbg': 'Black',
\                    'attr': ''
\                }
\}

colorscheme jellybeans

" A nicer red, also from https://git.io/Jfs2T
hi! CocErrorSign guifg=#FF5656

" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant

hi! CocInfoSign guifg=LightBlue
