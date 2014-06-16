if exists('g:vundle_installing_plugins')
  Plugin 'Valloric/MatchTagAlways'
  finish
endif

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'handlebars' : 1,
    \ 'eruby' : 1,
    \}
