" ----------------------------------------
" Commands
" ----------------------------------------

" Silently execute an external command
" No 'Press Any Key to Contiue BS'
" from: http://vim.wikia.com/wiki/Avoiding_the_%22Hit_ENTER_to_continue%22_prompts
command! -nargs=1 SilentCmd
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'

" Fixes common typos
command! W w
command! Q q
" Restart Pow.cx for the Current App
command! PowRestart :SilentCmd touch tmp/restart.txt; touch tmp/.livereload.rb
command! Deploy :call VimuxRunCommand("mina deploy")
