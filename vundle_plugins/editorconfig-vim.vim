if exists('g:vundle_installing_plugins')
  Plugin 'editorconfig/editorconfig-vim'
  finish
endif

let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" Keep Vim from automatically wrapping lines
let g:EditorConfig_preserve_formatoptions = 1
