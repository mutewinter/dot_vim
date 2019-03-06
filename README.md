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
| ★ 19,967 |[fzf](https://github.com/junegunn/fzf) [:page_facing_up:](plug_plugins/fzf.vim)|:cherry_blossom: A command-line fuzzy finder |
| ★ 11,871 |[vim-airline](https://github.com/vim-airline/vim-airline) [:page_facing_up:](plug_plugins/vim-airline.vim)|lean & mean status/tabline for vim that's light as air |
| ★ 11,251 |[nerdtree](https://github.com/scrooloose/nerdtree) [:page_facing_up:](plug_plugins/nerdtree.vim)|A tree explorer plugin for vim. |
| ★ 10,560 |[vim-fugitive](https://github.com/tpope/vim-fugitive) [:page_facing_up:](plug_plugins/vim-fugitive.vim)|fugitive.vim: A Git wrapper so awesome, it should be illegal |
| ★ 7,079 |[ale](https://github.com/w0rp/ale) [:page_facing_up:](plug_plugins/ale.vim)|Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration |
| ★ 6,379 |[vim-surround](https://github.com/tpope/vim-surround) [:page_facing_up:](plug_plugins/vim-surround.vim)|surround.vim: quoting/parenthesizing made simple |
| ★ 4,582 |[emmet-vim](https://github.com/mattn/emmet-vim) [:page_facing_up:](plug_plugins/emmet-vim.vim)|emmet for vim: http://emmet.io/ |
| ★ 4,234 |[ultisnips](https://github.com/SirVer/ultisnips) [:page_facing_up:](plug_plugins/ultisnips.vim)|UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips! |
| ★ 4,212 |[vim-easymotion](https://github.com/easymotion/vim-easymotion) [:page_facing_up:](plug_plugins/vim-easymotion.vim)|Vim motions on speed! |
| ★ 3,722 |[ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) [:page_facing_up:](plug_plugins/ctrlp.vim)|Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder. |
| ★ 3,108 |[fzf.vim](https://github.com/junegunn/fzf.vim) [:page_facing_up:](plug_plugins/fzf.vim)|fzf :heart: vim |
| ★ 2,784 |[vim-markdown](https://github.com/plasticboy/vim-markdown)|Markdown Vim Mode |
| ★ 2,599 |[supertab](https://github.com/ervandew/supertab)|Perform all your vim insert mode completions with Tab |
| ★ 2,484 |[vim-startify](https://github.com/mhinz/vim-startify) [:page_facing_up:](plug_plugins/vim-startify.vim)|:link: The fancy start screen for Vim. |
| ★ 2,424 |[vim-polyglot](https://github.com/sheerun/vim-polyglot) [:page_facing_up:](plug_plugins/vim-polyglot.vim)|A solid language pack for Vim. |
| ★ 2,082 |[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) [:page_facing_up:](plug_plugins/vim-indent-guides.vim)|A Vim plugin for visually displaying indent levels in code |
| ★ 2,020 |[auto-pairs](https://github.com/jiangmiao/auto-pairs)|Vim plugin, insert or delete brackets, parens, quotes in pair |
| ★ 1,912 |[vim-unimpaired](https://github.com/tpope/vim-unimpaired)|unimpaired.vim: Pairs of handy bracket mappings |
| ★ 1,864 |[tabular](https://github.com/godlygeek/tabular) [:page_facing_up:](plug_plugins/tabular.vim)|Vim script for text filtering and alignment |
| ★ 1,530 |[vim-signify](https://github.com/mhinz/vim-signify) [:page_facing_up:](plug_plugins/vim-signify.vim)|:heavy_plus_sign: Show a diff using Vim its sign column. |
| ★ 1,446 |[vim-abolish](https://github.com/tpope/vim-abolish)|abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word |
| ★ 1,346 |[vim-repeat](https://github.com/tpope/vim-repeat)|repeat.vim: enable repeating supported plugin maps with "." |
| ★ 1,319 |[targets.vim](https://github.com/wellle/targets.vim)|Vim plugin that provides additional text objects |
| ★ 1,218 |[nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)|A plugin of NERDTree showing git status |
| ★ 1,066 |[undotree](https://github.com/mbbill/undotree)|The undo history visualizer for VIM |
| ★ 958 |[vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)|A collection of themes for vim-airline |
| ★ 852 |[incsearch.vim](https://github.com/haya14busa/incsearch.vim) [:page_facing_up:](plug_plugins/incsearch.vim)|:flashlight: Improved incremental searching for Vim |
| ★ 794 |[vim-grepper](https://github.com/mhinz/vim-grepper) [:page_facing_up:](plug_plugins/vim-grepper.vim)|:space_invader: Helps you win at grep. |
| ★ 726 |[vim-endwise](https://github.com/tpope/vim-endwise)|endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc |
| ★ 460 |[MatchTagAlways](https://github.com/Valloric/MatchTagAlways) [:page_facing_up:](plug_plugins/MatchTagAlways.vim)|A Vim plugin that always highlights the enclosing html/xml tags |
| ★ 331 |[vim-illuminate](https://github.com/RRethy/vim-illuminate) [:page_facing_up:](plug_plugins/vim-illuminate.vim)|illuminate.vim - Vim plugin for selectively illuminating other uses of the current word under the cursor |
| ★ 301 |[vim-rhubarb](https://github.com/tpope/vim-rhubarb)|rhubarb.vim: GitHub extension for fugitive.vim |
| ★ 203 |[vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty)|:flashlight: [Vim script] JSX syntax pretty highlighting for vim. |
| ★ 195 |[vim-graphql](https://github.com/jparise/vim-graphql)|A Vim plugin that provides GraphQL file detection, syntax highlighting, and indentation. |
| ★ 147 |[vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search)|Start a * or # search from a visual block |
| ★ 127 |[tabnine-vim](https://github.com/zxqfl/tabnine-vim)|Vim client for TabNine |
| ★ 98 |[QFEnter](https://github.com/yssl/QFEnter) [:page_facing_up:](plug_plugins/QFEnter.vim)|Open a Quickfix item in a window you choose. (Vim plugin) |
| ★ 89 |[incsearch-fuzzy.vim](https://github.com/haya14busa/incsearch-fuzzy.vim) [:page_facing_up:](plug_plugins/incsearch-fuzzy.vim)| |
| ★ 63 |[vim-side-search](https://github.com/ddrscott/vim-side-search) [:page_facing_up:](plug_plugins/vim-side-search.vim)|Search context in Vim in a sidebar using `ag` output |
| ★ 60 |[portkey](https://github.com/dsawardekar/portkey) [:page_facing_up:](plug_plugins/portkey.vim)|Navigate files at the speed of Vim. |
| ★ 53 |[incsearch-easymotion.vim](https://github.com/haya14busa/incsearch-easymotion.vim) [:page_facing_up:](plug_plugins/incsearch-easymotion.vim)| |

_That's 41 plugins, holy crap._

_Generated by `rake update_readme` on 2019/03/04._

