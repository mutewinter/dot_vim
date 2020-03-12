# The Vim Configuration of Champions

[Jump to Plugin List](#plugin-list)

[![Screenshot][ss]][ss]

[ss]: https://github.com/mutewinter/dot_vim/raw/master/screenshots/screenshot_1.png

## Plugins and Configuration in their Own File

Each plugin is included and managed in its [own file](/plug_plugins).

## Installation

1. `git clone git@github.com:mutewinter/dot_vim.git ~/.config/nvim`.
1. `cd ~/.config/nvim`.

Now you have a choice. The automated script or the manual process.

1. Run `scripts/setup`.

**or**

1. `rake vim:link` to make the `.vimrc` and `.nvimrc` symbolic links.
3. `vim +PlugInstall +qall`

Enjoy enhanced productivity, increased levitation, reduced watermelon-related
accidents, and startling sex appeal.

## Vim Requirements

* I'm using [NeoVim](https://github.com/neovim/neovim)
  [via Homebrew](https://github.com/neovim/neovim/wiki/Installing-Neovim) on OS X.

## Plugin Requirements

Here's a list of plugins that require further installation or have
dependencies.

* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be
  installed.
* [Ale](https://github.com/w0rp/ale) Uses various linding and style
  checking tools that are sepately installed.
* [fzf.vim](https://github.com/junegunn/fzf.vim) Requires
  [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) to be
  installed.
* [Source Code Nerd Font Complete](https://git.io/vPBU6) The custom font I'm using
  for vim-airline and vim-devicons.
* [Editorconfig.vim](https://github.com/editorconfig/editorconfig-vim) Requires [editorconfig](http://editorconfig.org/) to be installed.

## Mappings

* Typing `jk` insert mode is equivalent to `Escape`.
* Pressing `enter` in normal mode saves the current buffer, if needed.

And many more. See [`mappings.vim`](mappings.vim) and
[`plug_plugins`](plug_plugins) for more.

## Installing Custom Plugins

Create a new `.vim` file with the same name as the plugin you'd like to install
in [`plug_plugins/custom`](plug_plugins/custom). Then add the installation
block. For example:

`plug_plugins/custom/vim-move.vim`

```viml
if exists('g:plug_installing_plugins')
  Plug 'matze/vim-move.vim'
  finish
endif

let g:move_key_modifier = 'C'
```

This example installs [`vim-move`](https://github.com/matze/vim-move).

## Plugin List

| Stars&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Plugin** | **Description** |
| :------- | :--------- | :-------------- |
| ★ 27,582 |[fzf](https://github.com/junegunn/fzf) [:page_facing_up:](plug_plugins/fzf.vim)|:cherry_blossom: A command-line fuzzy finder |
| ★ 13,401 |[vim-airline](https://github.com/vim-airline/vim-airline) [:page_facing_up:](plug_plugins/vim-airline.vim)|lean & mean status/tabline for vim that's light as air |
| ★ 13,066 |[nerdtree](https://github.com/scrooloose/nerdtree) [:page_facing_up:](plug_plugins/nerdtree.vim)|A tree explorer plugin for vim. |
| ★ 12,243 |[vim-fugitive](https://github.com/tpope/vim-fugitive) [:page_facing_up:](plug_plugins/vim-fugitive.vim)|fugitive.vim: A Git wrapper so awesome, it should be illegal |
| ★ 9,148 |[coc.nvim](https://github.com/neoclide/coc.nvim) [:page_facing_up:](plug_plugins/coc.nvim.vim)|Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode |
| ★ 9,101 |[ale](https://github.com/w0rp/ale) [:page_facing_up:](plug_plugins/ale.vim)|Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support |
| ★ 7,645 |[vim-surround](https://github.com/tpope/vim-surround) [:page_facing_up:](plug_plugins/vim-surround.vim)|surround.vim: quoting/parenthesizing made simple |
| ★ 5,169 |[ultisnips](https://github.com/SirVer/ultisnips) [:page_facing_up:](plug_plugins/ultisnips.vim)|UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips! |
| ★ 4,858 |[vim-easymotion](https://github.com/easymotion/vim-easymotion) [:page_facing_up:](plug_plugins/vim-easymotion.vim)|Vim motions on speed! |
| ★ 4,581 |[fzf.vim](https://github.com/junegunn/fzf.vim) [:page_facing_up:](plug_plugins/fzf.vim)|fzf :heart: vim |
| ★ 3,301 |[vim-polyglot](https://github.com/sheerun/vim-polyglot) [:page_facing_up:](plug_plugins/vim-polyglot.vim)|A solid language pack for Vim. |
| ★ 3,299 |[vim-javascript](https://github.com/pangloss/vim-javascript) [:page_facing_up:](plug_plugins/vim-javascript.vim)|Vastly improved Javascript indentation and syntax support in Vim. |
| ★ 3,245 |[vim-markdown](https://github.com/plasticboy/vim-markdown)|Markdown Vim Mode |
| ★ 3,138 |[vim-devicons](https://github.com/ryanoasis/vim-devicons) [:page_facing_up:](plug_plugins/vim-devicons.vim)|Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more |
| ★ 3,092 |[vim-startify](https://github.com/mhinz/vim-startify) [:page_facing_up:](plug_plugins/vim-startify.vim)|:link: The fancy start screen for Vim. |
| ★ 2,861 |[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) [:page_facing_up:](plug_plugins/vim-tmux-navigator.vim)|Seamless navigation between tmux panes and vim splits |
| ★ 2,516 |[auto-pairs](https://github.com/jiangmiao/auto-pairs)|Vim plugin, insert or delete brackets, parens, quotes in pair |
| ★ 2,259 |[editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) [:page_facing_up:](plug_plugins/editorconfig-vim.vim)|EditorConfig plugin for Vim |
| ★ 2,239 |[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) [:page_facing_up:](plug_plugins/vim-indent-guides.vim)|A Vim plugin for visually displaying indent levels in code |
| ★ 2,196 |[vim-unimpaired](https://github.com/tpope/vim-unimpaired)|unimpaired.vim: Pairs of handy bracket mappings |
| ★ 2,041 |[tabular](https://github.com/godlygeek/tabular) [:page_facing_up:](plug_plugins/tabular.vim)|Vim script for text filtering and alignment |
| ★ 1,665 |[vim-abolish](https://github.com/tpope/vim-abolish)|abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word |
| ★ 1,577 |[vim-repeat](https://github.com/tpope/vim-repeat)|repeat.vim: enable repeating supported plugin maps with "." |
| ★ 1,558 |[targets.vim](https://github.com/wellle/targets.vim)|Vim plugin that provides additional text objects |
| ★ 1,514 |[nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)|A plugin of NERDTree showing git status |
| ★ 1,404 |[jellybeans.vim](https://github.com/nanotech/jellybeans.vim) [:page_facing_up:](plug_plugins/jellybeans.vim)|A colorful, dark color scheme for Vim. |
| ★ 1,391 |[undotree](https://github.com/mbbill/undotree)|The undo history visualizer for VIM |
| ★ 1,243 |[vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)|A collection of themes for vim-airline |
| ★ 1,102 |[vim-eunuch](https://github.com/tpope/vim-eunuch)|eunuch.vim: Helpers for UNIX |
| ★ 1,095 |[splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim) [:page_facing_up:](plug_plugins/splitjoin.vim)|Switch between single-line and multiline forms of code |
| ★ 1,047 |[tcomment_vim](https://github.com/tomtom/tcomment_vim) [:page_facing_up:](plug_plugins/tcomment_vim.vim)|An extensible & universal comment vim-plugin that also handles embedded filetypes |
| ★ 995 |[vim-textobj-user](https://github.com/kana/vim-textobj-user)|Vim plugin: Create your own text objects |
| ★ 929 |[incsearch.vim](https://github.com/haya14busa/incsearch.vim) [:page_facing_up:](plug_plugins/incsearch.vim)|:flashlight: Improved incremental searching for Vim |
| ★ 925 |[vim-grepper](https://github.com/mhinz/vim-grepper) [:page_facing_up:](plug_plugins/vim-grepper.vim)|:space_invader: Helps you win at grep. |
| ★ 858 |[vim-session](https://github.com/xolox/vim-session) [:page_facing_up:](plug_plugins/vim-session.vim)|Extended session management for Vim (:mksession on steroids) |
| ★ 794 |[vim-node](https://github.com/moll/vim-node)|Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node. |
| ★ 783 |[neoformat](https://github.com/sbdchd/neoformat) [:page_facing_up:](plug_plugins/neoformat.vim)|:sparkles: A (Neo)vim plugin for formatting code. |
| ★ 725 |[vim-jsbeautify](https://github.com/maksimr/vim-jsbeautify) [:page_facing_up:](plug_plugins/vim-jsbeautify.vim)|vim plugin which formated javascript files by js-beautify |
| ★ 719 |[csv.vim](https://github.com/chrisbra/csv.vim)|A Filetype plugin for csv files |
| ★ 605 |[vim-peekaboo](https://github.com/junegunn/vim-peekaboo)|:eyes: " / @ / CTRL-R |
| ★ 551 |[clever-f.vim](https://github.com/rhysd/clever-f.vim)|Extended f, F, t and T key mappings for Vim. |
| ★ 488 |[vim-illuminate](https://github.com/RRethy/vim-illuminate) [:page_facing_up:](plug_plugins/vim-illuminate.vim)|illuminate.vim - Vim plugin for automatically highlighting other uses of the word under the cursor |
| ★ 487 |[MatchTagAlways](https://github.com/Valloric/MatchTagAlways) [:page_facing_up:](plug_plugins/MatchTagAlways.vim)|A Vim plugin that always highlights the enclosing html/xml tags |
| ★ 467 |[vim-highlightedyank](https://github.com/machakann/vim-highlightedyank)|Make the yanked region apparent! |
| ★ 466 |[vim-hardtime](https://github.com/takac/vim-hardtime) [:page_facing_up:](plug_plugins/vim-hardtime.vim)|Plugin to help you stop repeating the basic movement keys |
| ★ 465 |[vim-exchange](https://github.com/tommcdo/vim-exchange)|Easy text exchange operator for Vim |
| ★ 458 |[vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)|:flashlight: [Vim script] JSX and TSX syntax pretty highlighting for vim. |
| ★ 431 |[traces.vim](https://github.com/markonm/traces.vim)|Range, pattern and substitute preview for Vim |
| ★ 424 |[vim-rhubarb](https://github.com/tpope/vim-rhubarb)|rhubarb.vim: GitHub extension for fugitive.vim |
| ★ 419 |[switch.vim](https://github.com/AndrewRadev/switch.vim) [:page_facing_up:](plug_plugins/switch.vim)|A simple Vim plugin to switch segments of text with predefined replacements |
| ★ 414 |[vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight) [:page_facing_up:](plug_plugins/vim-nerdtree-syntax-highlight.vim)|Extra syntax and highlight for nerdtree files |
| ★ 410 |[vim-numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle)|Toggles between hybrid and absolute line numbers automatically |
| ★ 384 |[tmux-complete.vim](https://github.com/wellle/tmux-complete.vim)|Vim plugin for insert mode completion of words in adjacent tmux panes |
| ★ 306 |[vim-ragtag](https://github.com/tpope/vim-ragtag)|ragtag.vim: ghetto HTML/XML mappings (formerly allml.vim) |
| ★ 305 |[vim-misc](https://github.com/xolox/vim-misc)|Miscellaneous auto-load Vim scripts |
| ★ 297 |[open-browser.vim](https://github.com/tyru/open-browser.vim) [:page_facing_up:](plug_plugins/open-browser.vim)|Open URI with your favorite browser from your most favorite editor |
| ★ 264 |[vim-graphql](https://github.com/jparise/vim-graphql)|A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation. |
| ★ 249 |[vim-tmux](https://github.com/tmux-plugins/vim-tmux) [:page_facing_up:](plug_plugins/vim-tmux.vim)|vim plugin for tmux.conf |
| ★ 191 |[vim-anzu](https://github.com/osyo-manga/vim-anzu) [:page_facing_up:](plug_plugins/vim-anzu.vim)|Vim search status. |
| ★ 171 |[vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search)|Start a * or # search from a visual block |
| ★ 169 |[pgsql.vim](https://github.com/lifepillar/pgsql.vim) [:page_facing_up:](plug_plugins/pgsql.vim)|The best PostgreSQL plugin for Vim! |
| ★ 151 |[github-complete.vim](https://github.com/rhysd/github-complete.vim)|Vim input completion for GitHub |
| ★ 143 |[vim-swap](https://github.com/machakann/vim-swap)|Reorder delimited items. |
| ★ 123 |[QFEnter](https://github.com/yssl/QFEnter) [:page_facing_up:](plug_plugins/QFEnter.vim)|Open a Quickfix item in a window you choose. (Vim plugin) |
| ★ 118 |[ListToggle](https://github.com/Valloric/ListToggle) [:page_facing_up:](plug_plugins/ListToggle.vim)|A vim plugin for toggling the display of the quickfix list and the location-list. |
| ★ 101 |[vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor) [:page_facing_up:](plug_plugins/vim-togglecursor.vim)|Toggle the cursor shape in the terminal for Vim. |
| ★ 96 |[incsearch-fuzzy.vim](https://github.com/haya14busa/incsearch-fuzzy.vim) [:page_facing_up:](plug_plugins/incsearch-fuzzy.vim)| |
| ★ 95 |[vim-marked](https://github.com/itspriddle/vim-marked)|Open the current Markdown buffer in Marked.app |
| ★ 77 |[vim-handlebars](https://github.com/nono/vim-handlebars)|[deprecated] Vim plugin for Handlebars |
| ★ 76 |[tagalong.vim](https://github.com/AndrewRadev/tagalong.vim)|Change an HTML(ish) opening tag and take the closing one along as well |
| ★ 71 |[Join](https://github.com/sk1418/Join)|a better (hopefully) :Join command in vim |
| ★ 63 |[incsearch-easymotion.vim](https://github.com/haya14busa/incsearch-easymotion.vim) [:page_facing_up:](plug_plugins/incsearch-easymotion.vim)| |
| ★ 61 |[portkey](https://github.com/dsawardekar/portkey) [:page_facing_up:](plug_plugins/portkey.vim)|Navigate files at the speed of Vim. |
| ★ 49 |[fzf-mru.vim](https://github.com/pbogut/fzf-mru.vim) [:page_facing_up:](plug_plugins/fzf-mru.vim)|Vim plugin that allows using awesome CtrlP MRU plugin with even more amazing FZF |
| ★ 26 |[scratch.vim](https://github.com/vim-scripts/scratch.vim)|Plugin to create and use a scratch Vim buffer |
| ★ 25 |[vim-reveal-in-finder](https://github.com/henrik/vim-reveal-in-finder)|Reveal the current file in the OS X Finder. |
| ★ 14 |[vim-voogle](https://github.com/papanikge/vim-voogle) [:page_facing_up:](plug_plugins/vim-voogle.vim)|google for the word under the cursor to a browser because 2013 |
| ★ 3 |[vim-textobj-reactprop](https://github.com/justinj/vim-textobj-reactprop)|A vim text object for a React prop |
| ★ 2 |[HelpClose](https://github.com/vim-scripts/HelpClose)|Close all help windows |
| ★ 1 |[vim-autoreadwatch](https://github.com/mutewinter/vim-autoreadwatch)|A forked script for vim auto reloading of buffers when changed on disk. |

_That's 81 plugins, holy crap._

_Generated by `rake update_readme` on 2020/03/11._

