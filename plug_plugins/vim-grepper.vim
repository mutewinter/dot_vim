" TODO move these to mappings if we're moving entirely away from vim-grepper
set grepprg=rg\ --vimgrep\ --smart-case
set grepformat=%f:%l:%c:%m,%f:%l:%m

command! -nargs=+ QGrep execute 'silent grep! "<args>"' | copen

nnoremap <leader>rg :QGrep<Space>
nnoremap <leader>rw :silent grep <C-r><C-w><CR>:copen<CR>
xnoremap <leader>rw "sy:silent grep <C-r>s<CR>:copen<CR>
