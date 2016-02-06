" Source all the plugin files again, this time loading their configuration.
for file in split(glob(expand('<sfile>:p:h') . '/vundle_plugins/*.vim'), '\n')
  exe 'source' file
endfor
