if exists('g:vundle_installing_plugins')
  Plugin 'editorconfig/editorconfig-vim'
  finish
endif

let g:EditorConfig_exclude_patterns = ['fugitive://.*']
