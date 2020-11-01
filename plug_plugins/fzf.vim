if exists('g:plug_installing_plugins')
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'yuki-ycino/fzf-preview.vim', { 'tag': 'version_1' }
  Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
  finish
endif

" Base
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

" -----------
" FZF Preview
" -----------

let g:fzf_preview_use_dev_icons = 1
let g:fzf_preview_grep_cmd = 'rg --line-number --no-heading --color=always --smart-case'
let g:fzf_preview_floating_window_winblend = 0
let $BAT_THEME = 'Monokai Extended Origin'
let $FZF_PREVIEW_PREVIEW_BAT_THEME = 'Monokai Extended Origin'

" Base search commands I use a bunch
nnoremap <leader>. :FzfPreviewProjectFiles<CR>
nnoremap <leader>m :FzfPreviewProjectMruFiles<CR>
nnoremap <leader>fr :FzfPreviewProjectGrep<space>

" Find X commands
nnoremap <leader>fg :FzfPreviewGitStatus<CR>
nnoremap <leader>fb :FzfPreviewBuffers<CR>
nnoremap <leader>fl :FzfPreviewLocationList<CR>
nnoremap <leader>fq :FzfPreviewQuickFix<CR>
" These don't work, but they will soon I bet
" nnoremap <leader>fd :FzfPreviewCocCurrentDiagnostics<CR>
" nnoremap <leader>fD :FzfPreviewCocDiagnostics<CR>
" nnoremap <leader>fR :FzfPreviewCocReferences<CR>

let g:coc_fzf_preview = 'up:50%'
let g:coc_fzf_opts = []
nnoremap <leader>fd :CocFzfList diagnostics --current-buf<CR>
nnoremap <leader>fD :CocFzfList diagnostics<CR>
nnoremap <leader>fa :CocFzfList actions<CR>
nnoremap <leader>fo :CocFzfList outline<CR>
nnoremap <leader>fc :CocFzfList commands<CR>
