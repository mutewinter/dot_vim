" Source all the plugin files again, this time loading their configuration.
for file in split(glob(g:vimdir . '/plug_plugins/*.vim'), '\n')
  exe 'source' file
endfor

for file in split(glob(g:vimdir . '/plug_plugins/custom/*.vim'), '\n')
  exe 'source' file
endfor
