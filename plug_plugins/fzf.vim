if exists('g:plug_installing_plugins')
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'yuki-ycino/fzf-preview.vim'
  Plug 'antoinemadec/coc-fzf'
  finish
endif

" Base
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

" FZF Preview
let g:fzf_preview_use_dev_icons = 1
let g:fzf_preview_grep_cmd = 'rg --line-number --no-heading --color=always --smart-case'
let g:fzf_preview_floating_window_winblend = 0

" Coc Fzf
let g:coc_fzf_preview = 'up:50%'

" Base search commands I use a bunch
nnoremap <leader>. :FzfPreviewProjectFiles<CR>
nnoremap <leader>m :FzfPreviewProjectMruFiles<CR>
nnoremap <leader>fr :FzfPreviewProjectGrep<space>

" Find X commands
nnoremap <leader>fg :FzfPreviewGitStatus<CR>
nnoremap <leader>fw :FzfPreviewProjectMrwFiles<CR>
nnoremap <leader>fb :FzfPreviewAllBuffers<CR>
nnoremap <leader>fl :FzfPreviewLocationList<CR>
nnoremap <leader>fq :FzfPreviewQuickFix<CR>

nnoremap <leader>fd :CocFzfList diagnostics --current-buf<CR>
nnoremap <leader>fD :CocFzfList diagnostics<CR>
nnoremap <leader>fa :CocFzfList actions<CR>
