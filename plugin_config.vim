" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Vundle
" ---------------
command! ReloadVundle source ~/.vim/vundle.vim
function BundleReloadAndRun(command)
  :ReloadVundle
  execute a:command
endfunction

nnoremap <Leader>bi :call BundleReloadAndRun("BundleInstall")<CR>
nnoremap <Leader>bu :call BundleReloadAndRun("BundleInstall!")<CR>
nnoremap <Leader>bc :call BundleReloadAndRun("BundleClean")<CR>

" ---------------
" space.vim
" ---------------
" Disables space mappings in select mode to fix snipMate.
let g:space_disable_select_mode = 1

" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': [] }

" Hat tip http://git.io/SPIBfg
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_full_redraws = 1

" ---------------
" NERDTree
" ---------------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeMinimalUI = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup = 1

" ---------------
" Session
" ---------------
let g:session_autosave = 0
let g:session_autoload = 0
nnoremap <leader>os :OpenSession<CR>

" ---------------
" Tabular
" ---------------
nnoremap <Leader>t= :Tabularize assignment<CR>
vnoremap <Leader>t= :Tabularize assignment<CR>
nnoremap <Leader>t: :Tabularize symbol<CR>
vnoremap <Leader>t: :Tabularize symbol<CR>
nnoremap <Leader>t, :Tabularize comma<CR>
vnoremap <Leader>t, :Tabularize comma<CR>

" ---------------
" Fugitive
" ---------------
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Git pull<CR>
nnoremap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>
" Start git command
nnoremap <leader>gi :Git<space>
" Undo the last commit
command! Gcundo :Git reset HEAD~1

" ---------------
" Zoomwin
" ---------------
" Zoom Window to Full Size
nnoremap <silent> <leader>wo :ZoomWin<CR>

" ---------------
" ctrlp.vim
" ---------------
" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''

" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" Leader Commands
nnoremap <leader>t :CtrlPRoot<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>

" ---------------
" airline
" ---------------
let g:airline_theme = 'jellybeans'
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline_mode_map = {
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'v'  : 'V',
      \ 'V'  : 'VL',
      \ 'c'  : 'CMD',
      \ '' : 'VB',
      \ }
" Show the current working directory folder name
let g:airline_section_b = '%{substitute(getcwd(), ".*\/", "", "g")} '
" Just show the file name
let g:airline_section_c = '%t'

" ---------------
" jellybeans.vim colorscheme tweaks
" ---------------
" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant

" ---------------
" Ag.vim
" ---------------
nnoremap <silent> <leader>as :AgFromSearch<CR>
nnoremap <leader>ag :Ag<space>

" ---------------
" surround.vim
" ---------------
" Use # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" Thanks to http://git.io/_XqKzQ
let g:surround_35  = "#{\r}"
" Expand {xyz} to { xyz }
" pneumonic: Change to Open Brace
nnoremap cob :normal cs{{<cr>

" ---------------
" Gifl - Google I'm Feeling Lucky URL Grabber
" ---------------
let g:LuckyOutputFormat='markdown'
" I sometimes run vim without ruby support.
let g:GIFLSuppressRubyWarning = 1

" ------------
" sideways.vim
" ------------
noremap gs :SidewaysRight<cr>
noremap gS :SidewaysLeft<cr>

" ---------------
" switch.vim
" ---------------
nnoremap - :Switch<cr>

" ---------------
" indenthtml
" ---------------
" Setup indenthtml to propertly indent html. Without this, formatting doesn't
" work on html.
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" ---------------
" vim-markdown
" ---------------
let g:vim_markdown_folding_disabled = 1

" ---------------
" Unconditional Paste
" ---------------
let g:UnconditionalPaste_NoDefaultMappings = 1
nnoremap gcP <Plug>UnconditionalPasteCharBefore
nnoremap gcp <Plug>UnconditionalPasteCharAfter

" ---------------
" Gist.vim
" ---------------
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1

" ---------------
" MatchTagAlways
" ---------------
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'handlebars' : 1,
    \ 'eruby' : 1,
    \}

" ---------------
" YouCompleteMe
" ---------------
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_filetype_specific_completion_to_disable = {
    \ 'ruby' : 1,
    \ 'javascript' : 1,
    \}

" ---------------
" vim-signify
" ---------------
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
let g:signify_mapping_toggle_highlight="<nop>"
let g:signify_mapping_toggle="<nop>"
" Makes switching buffers in large repos have no delay
let g:signify_update_on_bufenter = 0
let g:signify_sign_overwrite = 0

" ---------------
" vim-startify
" ---------------
let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions']
let g:startify_files_number = 5
let g:startify_session_dir = '~/.vim/sessions'

" ---------------
" vim-togglecursor
" ---------------
let g:togglecursor_leave='line'

" -----------------------
" rails.vim and ember.vim
" -----------------------
nnoremap <leader>e   :E
nnoremap <leader>emm :Emodel<space>
nnoremap <leader>evv :Eview<space>
nnoremap <leader>ecc :Econtroller<space>

" Rails Only
nnoremap <leader>eff :Efabricator<space>
nnoremap <leader>ell :Elayout<space>
nnoremap <leader>ela :Elayout<space>
nnoremap <leader>elo :Elocale<space>
nnoremap <leader>elb :Elib<space>
nnoremap <leader>eee :Eenvironment<space>
nnoremap <leader>ehh :Ehelper<space>
nnoremap <leader>eii :Einitializer<space>
nnoremap <leader>ejj :Ejavascript<space>
nnoremap <leader>ess :Espec<space>
nnoremap <leader>esm :Espec models/
nnoremap <leader>esc :Espec controllers/
nnoremap <leader>esv :Espec views/
nnoremap <leader>esl :Espec lib/

" Ember Only
nnoremap <leader>eaa :Easset<space>
nnoremap <leader>err :Eroute<space>
nnoremap <leader>ett :Etemplate<space>


" Add custom commands for Rails.vim
" Thanks to http://git.io/_cBVeA and http://git.io/xIKnCw
let g:rails_projections = {
      \ 'app/models/*.rb': {'keywords': 'validates_conditional'},
      \ 'db/seeds/*.rb': {'command': 'seeds'},
      \ 'app/concerns/*.rb': {'command': 'concern'},
      \ 'spec/support/*.rb': {'command': 'support'},
      \ 'db/seeds.rb': {'command': 'seeds'}}

let g:rails_gem_projections = {
      \ 'factory_girl_rails': {
      \   'spec/factories.rb': {'command': 'factory'},
      \   'spec/factories/*_factory.rb': {
      \     'command': 'factory',
      \     'affinity': 'model',
      \     'alternate': 'app/models/%s.rb',
      \     'related': 'db/schema.rb#%p',
      \     'test': 'spec/models/%s_spec.rb',
      \     'template': "FactoryGirl.define do\n  factory :%s do\n  end\nend",
      \     'keywords': 'factory sequence'
      \   },
      \   'spec/factories/*.rb': {
      \     'command': 'factory',
      \     'affinity': 'collection',
      \     'alternate': 'app/models/%o.rb',
      \     'related': 'db/schema.rb#%s',
      \     'test': 'spec/models/%o_spec.rb',
      \     'template': "FactoryGirl.define do\n  factory :%o do\n  end\nend",
      \     'keywords': 'factory sequence'
      \   },
      \  },
      \ 'fabrication': {
      \   'spec/fabricators/*_fabricator.rb': {
      \     'command': 'fabricator',
      \     'affinity': 'model',
      \     'alternate': 'app/models/%s.rb',
      \     'related': 'db/schema.rb#%p',
      \     'test': 'spec/models/%s_spec.rb',
      \     'template': "Fabricator(:%s) do\nend",
      \     'keywords': 'sequence initialize_with on_init transient after_build before_validation after_validation before_save before_create after_create after_save'
      \   },
      \ },
      \ 'draper': {
      \   'app/decorators/*_decorator.rb': {
      \     'command': 'decorator',
      \     'affinity': 'model',
      \     'test': 'spec/decorators/%s_spec.rb',
      \     'related': 'app/models/%s.rb',
      \     'template': "class %SDecorator < Draper::Decorator\nend"
      \   }
      \ },
      \ 'cucumber-rails': {
      \   'features/*.feature': {'command': 'feature'},
      \   'features/step_definitions/*_steps.rb': {'command': 'steps'},
      \   'features/support/*.rb': {'command': 'support'}
      \ }}

" ---------------
" UltiSnips
" ---------------
let g:UltiSnipsSnippetDirectories=["MyUltiSnips"]
function! g:UltiSnips_Complete()
  call UltiSnips_JumpForwards()
  if g:ulti_jump_forwards_res == 0
    call UltiSnips_ExpandSnippet()
    if g:ulti_expand_res == 0
      if pumvisible()
        return "\<C-n>"
      else
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"

" ---------------
" Voogle
" ---------------
let g:voogle_map="<leader>gg"

" ---------------
" Vimux
" ---------------
let g:VimuxUseNearestPane = 1
nnoremap <leader>j :silent! VimuxScrollDownInspect<CR>
nnoremap <leader>k :silent! VimuxScrollUpInspect<CR>
nnoremap <leader>a :call VimuxRunCommand("spring rspec --fail-fast")<CR>
nnoremap <leader>A :call VimuxRunCommand("spring rspec")<CR>
nnoremap <leader>cu :call VimuxRunCommand("spring cucumber")<CR>
nnoremap <leader>ca :call VimuxRunCommand("spring cucumber; spring rspec")<CR>
nnoremap <leader>cm :VimuxPromptCommand<CR>
function WriteAndVimuxRunLastCommand()
  :call WriteBufferIfNecessary()
  :call VimuxRunLastCommand()
endfunction
nnoremap <leader>w :call WriteAndVimuxRunLastCommand()<CR>
command! REmigrate :call VimuxRunCommand("rake db:drop db:create db:migrate test:prepare")
command! Migrate :call VimuxRunCommand("rake db:migrate test:prepare")
command! Rollback :call VimuxRunCommand("rake db:rollback")

" ---------------
" Turbux
" ---------------
let g:no_turbux_mappings = 1
map <leader>X <Plug>SendTestToTmux
map <leader>x <Plug>SendFocusedTestToTmux
let g:turbux_command_rspec = 'spring rspec'
let g:turbux_command_cucumber = 'spring cucumber'

" ---------------
" tcomment_vim
" ---------------
let g:tcommentMaps = 0
nnoremap <silent><leader>cc :TComment<CR>
vnoremap <silent><leader>cc :TComment<CR>
nnoremap <silent><leader>cb :TCommentBlock<CR>
vnoremap <silent><leader>cb :TCommentBlock<CR>

" --------------
" tmux navigator
" --------------
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-i> :TmuxNavigatePrevious<cr>

" ------
" ColorV
" ------
let g:colorv_preview_ftype = 'css,javascript,scss,stylus'
