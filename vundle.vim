" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

exe 'set runtimepath+=' . expand('<sfile>:p:h') . '/bundle/vundle'
" Here use '{__folder_scriptfile_located_in__}/bundle' as the bundles directory.
call vundle#begin(expand('<sfile>:p:h') . '/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Source all the plugins with a global variable set that ensures only the
" Plugin 'name' code will be called.
let g:vundle_installing_plugins = 1
for file in split(glob(expand('<sfile>:p:h') . '/vundle_plugins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
for file in split(glob(expand('<sfile>:p:h') . '/vundle_plugins/custom/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
unlet g:vundle_installing_plugins

call vundle#end()
