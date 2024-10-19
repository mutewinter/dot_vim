" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" Quick spelling fix (first item in z= list)
" ---------------
function! QuickSpellingFix()
  if &spell
    normal 1z=
  else
    " Enable spelling mode and do the correction
    set spell
    normal 1z=
    set nospell
  endif
endfunction

command! QuickSpellingFix call QuickSpellingFix()
nnoremap <silent> <leader>z :QuickSpellingFix<CR>

" ---------------
" Convert Ruby 1.8 hash rockets to 1.9 JSON style hashes.
" From: http://git.io/cxmJDw
" Note: Defaults to the entire file unless in visual mode.
" ---------------
command! -bar -range=% NotRocket execute
  \'<line1>,<line2>s/:\(\w\+\)\s*=>/\1:/e' . (&gdefault ? '' : 'g')

" ------------------------------------
" Convert .should rspec syntax to expect.
" From: https://coderwall.com/p/o2oyrg
" ------------------------------------
command! -bar -range=% Expect execute
  \'<line1>,<line2>s/\(\S\+\).should\(\s\+\)==\s*\(.\+\)' .
  \'/expect(\1).to\2eq(\3)/e' .
  \(&gdefault ? '' : 'g')

" ---------------
" Strip Trailing White Space
" ---------------
" From http://vimbits.com/bits/377
" Preserves/Saves the state, executes a command, and returns to the saved state
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
function! StripTrailingWhiteSpaceAndSave()
  :call Preserve("%s/\\s\\+$//e")<CR>
  :write
endfunction
command! StripTrailingWhiteSpaceAndSave :call StripTrailingWhiteSpaceAndSave()<CR>
nnoremap <silent> <leader>stw :silent! StripTrailingWhiteSpaceAndSave<CR>

" ---------------
" Write Buffer if Necessary
"
" Writes the current buffer if it's needed, unless we're the in QuickFix mode.
" ---------------

function WriteBufferIfNecessary()
  if &modified && !&readonly
    :write
  endif
endfunction
command! WriteBufferIfNecessary call WriteBufferIfNecessary()

function CRWriteIfNecessary()
  if &filetype == "qf" || &filetype == "ctrlsf"
    " Execute a normal enter when in Quickfix or Ctrlsf plugin.
    execute "normal! \<enter>"
  else
    WriteBufferIfNecessary
  endif
endfunction

" Save the file if necessary when hitting enter
" Idea for MapCR from http://git.io/pt8kjA
function! MapCR()
  nnoremap <silent> <enter> :call CRWriteIfNecessary()<CR>
endfunction

if !exists('g:vscode')
  call MapCR()
endif

" ---------------
" Make a scratch buffer with all of the leader keybindings.
"
" Adapted from http://ctoomey.com/posts/an-incremental-approach-to-vim/
" ---------------
function! ListLeaders()
  silent! redir @b
  silent! nmap <LEADER>
  silent! redir END
  silent! new
  silent! set buftype=nofile
  silent! set bufhidden=hide
  silent! setlocal noswapfile
  silent! put! b
  silent! g/^s*$/d
  silent! %s/^.*,//
  silent! normal ggVg
  silent! sort
  silent! let lines = getline(1,"$")
  silent! normal <esc>
endfunction

command! ListLeaders :call ListLeaders()

function! CopyMatches(reg)
  let hits = []
  %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/ge
  let reg = empty(a:reg) ? '+' : a:reg
  execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)

function! YankLineWithoutNewline()
  let l = line(".")
  let c = col(".")
  normal ^y$
  " Clean up: restore previous search history, and cursor position
  call cursor(l, c)
endfunction

nnoremap <silent>yl :call YankLineWithoutNewline()<CR>

" Show the word frequency of the current buffer in a split.
" from: http://vim.wikia.com/wiki/Word_frequency_statistics_for_a_file
function! WordFrequency() range
  let all = split(join(getline(a:firstline, a:lastline)), '\A\+')
  let frequencies = {}
  for word in all
    let frequencies[word] = get(frequencies, word, 0) + 1
  endfor
  new
  setlocal buftype=nofile bufhidden=hide noswapfile tabstop=20
  for [key,value] in items(frequencies)
    call append('$', key."\t".value)
  endfor
  sort i
endfunction
command! -range=% WordFrequency <line1>,<line2>call WordFrequency()

" ---------------
" Sort attributes inside <> in html.
" E.g.
" <div
"   b="1"
"   a="1"
"   c="1"
" />
"
" becomes
"
" <div
"   a="1"
"   b="1"
"   c="1"
" />
" ---------------
function! SortAttributes()
  normal vi>kojV
  :'<,'>sort
endfunction

command! SortAttributes call SortAttributes()
nnoremap <silent> <leader>sa :SortAttributes<CR>

" ---------------
" Sort values inside a curl block
" ---------------
function! SortBlock()
  normal vi}
  :'<,'>sort
endfunction

command! SortBlock call SortBlock()
nnoremap <silent> <leader>sb :SortBlock<CR>


" -------
" Profile
" from https://github.com/vheon/dotvim/blob/fb2db22c552365389acd8962a71685f9eedf80e3/autoload/profile.vim#L18
" -------
function! ProfileSort()
  let timings = []
  g/^SCRIPT/call add(
        \   timings,
        \   [
        \    getline('.')[len('SCRIPT  '):],
        \    matchstr(getline(line('.')+1),
        \    '^Sourced \zs\d\+')
        \   ] + map(getline(line('.')+2, line('.')+3), 'matchstr(v:val, ''\d\+\.\d\+$'')')
        \ )
  enew
  setl ft=vim
  call setline('.',
        \      ['count total (s)   self (s)  script']+map(copy(timings), 'printf("%5u %9s   %8s  %s", v:val[1], v:val[2], v:val[3], v:val[0])'))
  2,$sort! /\d\s\+\zs\d\.\d\{6}/ r
endfunction

function! ProfileStop()
  profdel func *
  profdel file *
  qa!
endfunction

function! ProfileStart()
  profile start vim.profile
  profile func *
  profile file *
endfunction

" this is for stop profiling after starting vim with
" vi --cmd 'profile start vimrc.profile' --cmd 'profile func *' --cmd 'profile file *'
" I have a script in ~/bin which start vim like this
command! -nargs=0 StopProfiling call ProfileStop()
" If I want to profile something after that vim started
command! -nargs=0 StartProfiling call ProfileStart()

" Rewrite twind.dev classes to Typewind function style
function! TwindToTypewind()
  let line = getline('.')
  let tw_match = match(line, '\ctw`.*`\ze')
  if tw_match >= 0
    let tw_string = matchstr(line, '\ctw`.\{-}`\ze')
    let tw_string = substitute(tw_string, '`', '', 'g')
    let tw_string = substitute(tw_string, ' ', '.', 'g')
    let tw_string = substitute(tw_string, '-', '_', 'g')
    let tw_string = substitute(tw_string, '\v(\w+)\:(\w+)', '\1(tw.\2)', 'g')
    let tw_string = substitute(tw_string, '^tw', '', '')
    let line = substitute(line, '\ctw`.\{-}`\ze', 'tw.' . tw_string, '')
    call setline('.', line)
  else
    echo "No string inside backticks following 'tw' found."
  endif
endfunction

command! TwindToTypewind call TwindToTypewind()

" Rewrite Tailwind classes to Typewind function style
function! TailwindToTypewind()
  let line = getline('.')
  let has_class_name = match(line, 'className=')
  let double_quote_match = match(line, '\c".*"\ze')
  let single_quote_match = match(line, '\c''\zs.*\ze''')

  if double_quote_match >= 0 || single_quote_match >= 0
    if double_quote_match >= 0
      let quote_delimiter = '"'
    else
      let quote_delimiter = "'"
    endif

    let class_match_pattern = '\c' . quote_delimiter . '\zs.*\ze' . quote_delimiter
    let class_string = matchstr(line, class_match_pattern)
    let class_string = substitute(class_string, '\"', '', 'g')
    let class_string = substitute(class_string, "'", '', 'g')
    let class_string = substitute(class_string, ' ', '.', 'g')
    let class_string = substitute(class_string, '-', '_', 'g')
    let class_string = substitute(class_string, '\v(\w+)\:(\w+)', '\1(tw.\2)', 'g')
    let tw_string = 'tw.' . class_string

    " Wrap in { } if there is className=
    if has_class_name >= 0
      let tw_string = '{' . tw_string . '}'
    endif

    let line = substitute(line, class_match_pattern, tw_string, '')
    " Remove double and single quotes
    let line = substitute(line, quote_delimiter, '', 'g')
    call setline('.', line)
  else
    echo "No double or single quoted string found."
  endif
endfunction

command! TailwindToTypewind call TailwindToTypewind()
