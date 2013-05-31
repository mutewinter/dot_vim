if !exists(':Tabularize')
  finish " Give up here; the Tabular plugin musn't have been loaded
endif

" Make line wrapping possible by resetting the 'cpo' option, first saving it
let s:save_cpo = &cpo
set cpo&vim

" Patterns from
" http://git.io/tCXofg
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
AddTabularPattern hash /:\zs
AddTabularPattern hash_rocket /=>
AddTabularPattern json /:
AddTabularPattern symbol /:/l1c0
AddTabularPattern equals /=
AddTabularPattern comma /,\zs

" Restore the saved value of 'cpo'
let &cpo = s:save_cpo
unlet s:save_cpo
