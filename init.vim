" =============================================================================
" Who: Jeremy Mack (@mutewinter)
" Description: The Vim Configuration of Champions
" Version: 3.0 - Now each plugin is included and managed in its own file!
" =============================================================================


if has('nvim')
  let g:vimdir = "~/.config/nvim"
else
  let g:vimdir = "~/.vim"
endif

" All of the plugins are installed with Vundle from this file.
exec "source " . g:vimdir . "/vundle.vim"

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" Platform (Windows, Mac, etc.) configuration.
exec "source " . g:vimdir . "/platforms.vim"
" All of the Vim configuration.
exec "source " . g:vimdir . "/config.vim"
" New commands
exec "source " . g:vimdir . "/commands.vim"
" All hotkeys, not dependant on plugins, are mapped here.
exec "source " . g:vimdir . "/mappings.vim"
" Load plugin-specific configuration.
exec "source " . g:vimdir . "/plugins.vim"
" Small custom functions.
exec "source " . g:vimdir . "/functions.vim"
" Auto commands.
exec "source " . g:vimdir . "/autocmds.vim"
