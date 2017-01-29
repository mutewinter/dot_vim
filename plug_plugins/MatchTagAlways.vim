if exists('g:plug_installing_plugins')
  Plug 'Valloric/MatchTagAlways'
  finish
endif

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'handlebars' : 1,
    \ 'eruby' : 1,
    \}
