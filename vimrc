" =============================================================================
" Who: Jeremy Mack (@mutewinter)
" Description: The Vim Configuration of Champions
" Version: 3.0 - Now each plugin is included and managed in its own file!
" =============================================================================

" All of the plugins are installed with Vundle from this file.
source <sfile>:p:h/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" Platform (Windows, Mac, etc.) configuration.
source <sfile>:p:h/platforms.vim
" All of the Vim configuration.
source <sfile>:p:h/config.vim
" New commands
source <sfile>:p:h/commands.vim
" All hotkeys, not dependant on plugins, are mapped here.
source <sfile>:p:h/mappings.vim
" Load plugin-specific configuration.
source <sfile>:p:h/plugins.vim
" Small custom functions.
source <sfile>:p:h/functions.vim
" Auto commands.
source <sfile>:p:h/autocmds.vim
