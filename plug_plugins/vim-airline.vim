if exists('g:plug_installing_plugins')
  Plug 'vim-airline/vim-airline'
  finish
endif

let g:airline_theme = 'jellybeans'
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline_mode_map = {
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'v'  : 'V',
      \ 'V'  : 'VL',
      \ 'c'  : 'CMD',
      \ '' : 'VB',
      \ }

let g:airline_skip_empty_sections = 1
let g:airline_section_b = ''
let g:airline_section_c = '%{expand("%:p:h:t")}/%t'
let g:airline_section_x = ''
" Bring this back if we ever want to see file encoding
" let g:airline_section_y = '%{WebDevIconsGetFileFormatSymbol()}'
let g:airline_section_y = ''
" Remove column position and simplify percentage display
let g:airline_section_z = '%4l%#__restore__#%#__accent_bold#/%L %3p%%%{g:airline_symbols.maxlinenr}%#__restore__#'
