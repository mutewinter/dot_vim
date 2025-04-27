" =============================================================================
" Who: Jeremy Mack (@mutewinter)
" Description: My 12 Year-Old (Neo)Vim Configuration
" Version: Ever-evolving.
" =============================================================================

" For testing VSCode environment.
" let g:vscode = 1


if has('nvim')
  let g:vimdir = "~/.config/nvim"
else
  let g:vimdir = "~/.vim"
endif

" All of the plugins are installed with Plug from this file.
exec "source " . g:vimdir . "/plug.vim"

" Platform (Windows, Mac, etc.) configuration.
exec "source " . g:vimdir . "/platforms.vim"
" All of the Vim configuration.
exec "source " . g:vimdir . "/config.vim"
" New commands
exec "source " . g:vimdir . "/commands.vim"
" All hotkeys, not dependant on plugins, are mapped here.
exec "source " . g:vimdir . "/mappings.vim"
" VSCode / Cursor Mappings
if exists('g:vscode')
  exec "source " . g:vimdir . "/vscode.vim"
endif
" Load plugin-specific configuration.
exec "source " . g:vimdir . "/plugin_config.vim"
" Small custom functions.
exec "source " . g:vimdir . "/functions.vim"
" Auto commands.
exec "source " . g:vimdir . "/autocmds.vim"
