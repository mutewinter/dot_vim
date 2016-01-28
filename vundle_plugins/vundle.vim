if exists('g:vundle_installing_plugins')
  finish
endif

execute 'command! ReloadVundle source' expand('<sfile>:p:h:h') . '/vundle.vim'
function PluginReloadAndRun(command)
  :ReloadVundle
  execute a:command
endfunction

nnoremap <Leader>pi :call PluginReloadAndRun("PluginInstall")<CR>
nnoremap <Leader>pu :call PluginReloadAndRun("PluginInstall!")<CR>
nnoremap <Leader>pc :call PluginReloadAndRun("PluginClean")<CR>
