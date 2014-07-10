" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

function InstallPlugin(name)
  if exists('g:vundle_installing_plugins')
    Plugin a:name
  endif
endfunction
" Source all the plugins with a global variable set that ensures only the
" Plugin 'name' code will be called.
let g:vundle_installing_plugins = 1
for file in split(glob('~/.vim/vundle_plugins/**/*.vim'), '\n')
  exe 'source' file
endfor
unlet g:vundle_installing_plugins

call vundle#end()
