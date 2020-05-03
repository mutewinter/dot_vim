if exists('g:plug_installing_plugins')
  Plug 'nanotech/jellybeans.vim'
  finish
endif

" Fixes color schema for floating windows.
" Via https://git.io/Jfs2T
let g:jellybeans_overrides = {
\    'Pmenu':    {
\                    'guifg': 'D6D6D6',
\                    'guibg': '232323',
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
\                },
\    'Search':   {
\                    'guifg': '2A0014',
\                    'guibg': 'FFABD0',
\                    'ctermfg': 'Magenta',
\                    'ctermbg': '',
\                    'attr': ''
\                },
\    'Comment':  {
\                    'guifg': '888888',
\                    'guibg': '',
\                    'ctermfg': 'Grey',
\                    'ctermbg': '',
\                    'attr': ''
\                }
\}

colorscheme jellybeans

" A nicer red, also from https://git.io/Jfs2T
hi! CocErrorSign guifg=#FF5656

" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant
