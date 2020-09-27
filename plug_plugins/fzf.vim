if exists('g:plug_installing_plugins')
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
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
let g:fzf_preview_fzf_color_option = 'fg:188,bg:233,hl:103,fg+:222,bg+:234,hl+:104,info:183,prompt:110,spinner:107,pointer:167,marker:215'
let $BAT_THEME = 'Monokai Extended Origin'
let $FZF_PREVIEW_PREVIEW_BAT_THEME = 'Monokai Extended Origin'

" Base search commands I use a bunch
nnoremap <leader>. :CocCommand fzf-preview.ProjectFiles<CR>
nnoremap <leader>m :CocCommand fzf-preview.ProjectMruFiles<CR>
nnoremap <leader>fr :CocCommand fzf-preview.ProjectGrep<space>

" Find X commands
nnoremap <leader>fg :CocCommand fzf-preview.GitStatus<CR>
nnoremap <leader>fb :CocCommand fzf-preview.Buffers<CR>
nnoremap <leader>fl :CocCommand fzf-preview.LocationList<CR>
nnoremap <leader>fq :CocCommand fzf-preview.QuickFix<CR>
" These don't work, but they will soon I bet
" nnoremap <leader>fd :CocCommand fzf-preview.CocCurrentDiagnostics<CR>
" nnoremap <leader>fD :CocCommand fzf-preview.CocDiagnostics<CR>
nnoremap <leader>fR :CocCommand fzf-preview.CocReferences<CR>

let g:coc_fzf_preview = 'up:50%'
let g:coc_fzf_opts = []
nnoremap <leader>fd :CocFzfList diagnostics --current-buf<CR>
nnoremap <leader>fD :CocFzfList diagnostics<CR>
nnoremap <leader>fa :CocFzfList actions<CR>
nnoremap <leader>fo :CocFzfList outline<CR>
nnoremap <leader>fc :CocFzfList commands<CR>
