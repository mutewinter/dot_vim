" ----------------------------------------
" Plug
" ----------------------------------------

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Source all the plugins with a global variable set that ensures only the
" Plugin 'name' code will be called.
let g:plug_installing_plugins = 1
for file in split(glob(g:vimdir . '/plug_plugins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
for file in split(glob(g:vimdir . '/plug_plugins/custom/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
unlet g:plug_installing_plugins

" Initialize plugin system
call plug#end()
