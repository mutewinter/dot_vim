" Special highlighting for props and state.
" Keywords for React to seed YouCompleteMe.

syn keyword jsxSpecial contained props state

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jsx_syn_inits")
  if version < 508
    let did_jsx_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink jsxSpecial Special
  delcommand HiLink
endif

syn cluster jsExpression add=jsxSpecial
syn cluster javascriptBlock add=jsxSpecial
syn cluster javascriptExpression add=jsxSpecial
