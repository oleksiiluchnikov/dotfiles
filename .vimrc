" ,?nmir
" w  "'`.
" ::~  _;
" ( - <-{
" ]'  _ ,  --=========e> oleksii_luchikov!
" ^V  ./
"Y\_  7-
"   |V  `
" [Global]
syntax on

" set <leader> to <space>
let mapleader=" "

" wait until either the complete mapping or key sequence has been received
set timeoutlen=200

" the length of time Vim waits after you stop typing before it triggers
set updatetime=750

" enables filetype detection
filetype plugin on

" show line numbers
set number relativenumber

" set cursorline
" show a visual line under the cursor's current line

set showmatch
" show the matching part of the pair for [] {} and ()

set hlsearch
" enable higligting search results

set incsearch
" enable incremental search

set t_Co=256
" set terminal colors to 256

set ignorecase
" you nearly always want this

set smartcase
" case-sensitive if search contains an uppercase character

set mousehide
" hide mouse when in vim

set termencoding=utf-8
" set default of terminal encoding to utf-8

set novisualbell
" disable vim sounds

set t_vb=
" set backspace=indent,eol,start whichwrap+=<,>,[,]

set showtabline=1

set nowrap
" disable wrap

set nobackup
" disable backup

set noswapfile
" disable Vim from autoswap

set encoding=utf-8
" default encoding to utf-8

set fileencodings=utf8,cp1251
" allow that file encodings

set clipboard=unnamed
" enable OSX clipboard

set ruler
" set visual border for 80 columns

set hidden
" set that modified files don't be saved

set splitright
" set new panes on right side of screen

filetype plugin indent on

set tabstop=4
" show existing tab with 4 spaces width

set shiftwidth=4
" when indenting with '>', use 4 spaces width
set expandtab
" On pressing tab, insert 4 spaces


" =============================================================================I
"                               vim-plug
" =============================================================================
call plug#begin('~/.vim/plugged')
" set path to pluggins

" [lf](https://github.com/gokcehan/lf) integration in vim and neovim
Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'

" Syntax support
" =============================================================================

" Python
Plug 'vim-scripts/ShowFunc.vim'

" css
" -----------------------------------------------------------------------------

Plug 'ap/vim-css-color'
" display hex css colors


" editorconfig
" -----------------------------------------------------------------------------
Plug 'editorconfig/editorconfig-vim'


" plist
" --------------------------------------

Plug 'darfink/vim-plist'


" clojure
" --------------------------------------

Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-highlight'


" zscript
" -----------------------------------------------------------------------------

Plug 'marrub--/vim-zscript'
" support zscript language for ZBrush
Plug 'srcery-colors/srcery-vim'

Plug 'gruvbox-community/gruvbox'
" vim-be-good: vim game for speed practicing
" -----------------------------------------------------------------------------

" file manager
Plug 'lambdalisue/fern.vim'
" Disable netrw.



" vim-gitgutter: show git diff in gutter
" -----------------------------------------------------------------------------

Plug 'airblade/vim-gitgutter'
" 'set -g focus-events on' if tmux

" better refresh
set updatetime=100

" -----------------------------------------------------------------------------


" Better Whitespace
" -----------------------------------------------------------------------------
Plug 'ntpeters/vim-better-whitespace'

nnoremap <leader>sw :StripWhitespace<cr>
" cursorcross.vim: crossline cursor
" -----------------------------------------------------------------------------
Plug 'mtth/cursorcross.vim'


" Split-Term: encchanced terminal emulator for nvim
" -----------------------------------------------------------------------------
Plug 'voldikss/vim-floaterm'
" neoterm: advanced terminal for nvim
" -----------------------------------------------------------------------------
Plug 'kassio/neoterm'

" save current file and run python on it in terminal window directly below

" nnoremap <leader>tl :<c-u>exec v:count.'Tclear'<cr>
" 3<leader>tl will clear neoterm-3.

" vim-hardtime: disable hjkl
" -----------------------------------------------------------------------------
Plug 'takac/vim-hardtime'

let g:hardtime_default_on = 0
" Autoload Plugin on startup
let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*" ]
" ignore NERDTree
"

" Appereance
" ------------------------------------------------------------------------------


" Soft theme for your eyes


" vim-arirline: better status bar
" -----------------------------------------------------------------------------

Plug 'vim-airline/vim-airline'

set statusline=

set statusline+=%(%{&buflisted?bufnr('%'):''}\ >\ %)

set statusline+=%<
" Truncate line here

set statusline+=%f\
" File path, as typed or relative to current directory

set statusline+=%{&modified?'+\ ':''}

set statusline+=%{&readonly?'🔒':''}

set statusline+=%=
" Separation point between left and right aligned items

set statusline+=\ %{&filetype!=#''?&filetype:'none'}

set statusline+=%(\ %{(&bomb\|\|&fileencoding!~#'^$\\\|utf-8'?'\ '.&fileencoding.(&bomb?'-bom':''):'')
  \.(&fileformat!=#(has('win32')?'dos':'unix')?'\ '.&fileformat:'')}%)

set statusline+=%(\ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)

set statusline+=\ %{&number?'':printf('%2d,',line('.'))}
" Line number

set statusline+=%-2v
" Virtual column number

set statusline+=\ %2p%%
" Percentage through file in lines as in |CTRL-G|


" FuzzyFinder: fuzzy search through dirs and files
" -----------------------------------------------------------------------------

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
" resize window

let $FZF_DEFAULT_OPTS='--reverse'
" sort in reverse order

"    vim-quicklink: fetch google without leaving Vim
" -----------------------------------------------------------------------------

Plug 'christoomey/vim-quicklink'


"    VimWiki: manage wiki base with Vim
" -----------------------------------------------------------------------------

"    vim-bujo: todo listst for project
" -----------------------------------------------------------------------------

" Plug 'vuciv/vim-bujo'

" -----------------------------------------------------------------------------
"    Goyo: distraction free writing
" -----------------------------------------------------------------------------

Plug 'junegunn/goyo.vim' " distraction free writing


"    vim-easymotion: vim on speeds
" -----------------------------------------------------------------------------

Plug 'easymotion/vim-easymotion'


"    incsearh: better incsearch
" -----------------------------------------------------------------------------

Plug 'haya14busa/incsearch.vim'


" execute script in blender
" -----------------------------------------------------------------------------

Plug 'mipmip/vim-run-in-blender'


"    incsearch: better incsearch
" -----------------------------------------------------------------------------

Plug 'haya14busa/incsearch-easymotion.vim'


"    ripgrep: grep, but better
" -----------------------------------------------------------------------------

Plug 'BurntSushi/ripgrep'


"    neuron: support of neron app from Vim
" -----------------------------------------------------------------------------

" Plug 'ihsanturk/neuron.vim'


"    vim-lexical: custom spellchecker
" -----------------------------------------------------------------------------

Plug 'reedes/vim-lexical'


"    neco-vipython3 /Users/oleksii_luchnikov/.vimrc
" -----------------------------------------------------------------------------

Plug 'Shougo/neco-vim'


"    vim-figitive
" -----------------------------------------------------------------------------

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'


"    vim-figitive
" -----------------------------------------------------------------------------

Plug 'tpope/vim-fugitive'

" noremap \gs :!gst<cr>
" noremap \gc :Gcommit<cr>
" noremap \ga :Gwrite<cr>
" noremap \gl :Glog<cr>
" noremap \gd :Gdiff<cr>
" noremap \gb :Gblame<cr>
" fugitive shortcuts


"    vim-customcpt: autocompletion from custom json
" -----------------------------------------------------------------------------

Plug 'jsit/vim-customcpt'


"     UltiSnips: powerfull snippets engine
" -----------------------------------------------------------------------------

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
" c-j c-k for moving in snippet

let g:UltiSnipsRemoveSelectModeMappings = 0
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']


"    vim-autopep8: show list of snippets from UltiSnips
" -----------------------------------------------------------------------------

Plug 'tell-k/vim-autopep8', {'for': 'python'}


call plug#end()


let g:python3_host_prog = expand("/usr/local/bin/python3")
let g:ruby_host_prog= expand("/usr/bin/ruby")
let g:node_host_prog = expand("/usr/local/bin/node")
" set paths to providers

autocmd VimEnter,BufEnter * if (&filetype == 'netrw' && &number == 0) | set norelativenumber | endif

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
" Custom style for jss, html, css

autocmd WinEnter,FocusGained * :setlocal number relativenumber
autocmd WinLeave,FocusLost   * :setlocal number norelativenumber

autocmd WinEnter,FocusGained term://* :setlocal nonumber
au WinEnter,FocusGained * :vertical resize 85
" Killing feature to autoresize wins for small monitor"


syntax on


highlight ColorColumn ctermbg=235 guibg=red


let colorcolumn=join(range(80,999),",")
" ----------------------------------------------------------------------------
"    Mappings
" ----------------------------------------------------------------------------

" }}}
nmap oo m`o<ESC>``

nmap OO m`O<ESC>``
" insert newline without entering insert mode


nnoremap S :keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>
" better split line with indention

" nnoremap <C-N> :bnext<CR>
" nnoremap <C-P> :bprev<CR>

" jump through paragraphs
" nnoremap } }/\S<CR>:nohlsearch<CR>
" nnoremap { {{/\S<CR>:nohlsearch<CR>


" -----------------------------------------------------------------------------
"    Aliases
" -----------------------------------------------------------------------------


" edit config
" --------------------------------------

command! Evimrc e ~/.vimrc
" edit .vimrc

command! Esnippets e ~/.vim/UltiSnips/
" edit UltiSnips

command! EvimPlug e ~/.vim/plugged/
" edit vim plugins



command! Ekarabiner e ~/.config/karabiner.edn
" edit karabiner.edn

command! EKeyboadMaestro e ~/Library/Application\ Support/Keyboard\ Maestro/
" edit keyboard maestro.plist

command! Notes e ~/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/notes/
" edit keyboard maestro.plist


command! Ezshrc e ~/.zshrc
" edit .zshrc


command! Svimrc source ~/.vimrc
" update .vimrc

command! Dotfiles e ~/.dotfiles/
" Workspace
" --------------------------------------

command! Develop e ~/projects/
" edit ~/projects

command! Zk e ~/zettelkasten/kasten/index.md
" open Zk index



command! Do e ~/zettelkasten/kasten/do\ today.md
" open todo list


let g:limelight_conceal_ctermfg='black'

let g:netrw_banner=0
" diable netrw_banner

" VimEnter
" -------------------------------------
" autocmd! VimEnter *
"     \ e ~/zettelkasten/kasten/ |
"     \ vsplit |
"     \ e ~/zettelkasten/kasten/do\ today.md |
"     \ split |
"     \ wincmd j |
"     \ TermOpen
" open terminal on start

let g:cursorcross_no_map_CR=1


set termguicolors

let g:gruvbox_contrast_dark="soft"
let g:gruvbox_colors = {
    \ "dark0_hard":       ["#1c1c1c", 234],
    \ "dark0":            ["#2a2804", 235],
    \ "dark0_soft":       ["#303010", 236],
    \ "dark1":            ["#3a3a2a", 237],
    \ "dark2":            ["#4e4e2e", 239],
    \ "dark3":            ["#626242", 241],
    \ "dark4":            ["#767656", 243],
    \ "dark4_256":        ["#767656", 243],
    \ "gray_245":         ["#8a8a8a", 245],
    \ "gray_244":         ["#808080", 244],
    \ "light0_hard":      ["#ffffd7", 230],
    \ "light0":           ["#ffff7f", 229],
    \ "light0_soft":      ["#ffff87", 228],
    \ "light1":           ["#d4be98", 223],
    \ "light2":           ["#bcbc9c", 250],
    \ "light3":           ["#a8a888", 248],
    \ "light4":           ["#949474", 246],
    \ "light4_256":       ["#949474", 246],
    \ "bright_red":       ['#d75f5f', 167],
    \ "bright_green":     ["#afaf00", 142],
    \ "bright_yellow":    ["#b39f47", 214],
    \ "bright_blue":      ["#375473", 109],
    \ "bright_purple":    ["#d787af", 175],
    \ "bright_aqua":      ["#87af87", 108],
    \ "bright_orange":    ["#ff8700", 208],
    \ "neutral_red":      ["#af0000", 124],
    \ "neutral_green":    ["#87af00", 106],
    \ "neutral_yellow":   ["#d78700", 172],
    \ "neutral_blue":     ["#5f8787", 66] ,
    \ "neutral_purple":   ["#af5f87", 132],
    \ "neutral_aqua":     ["#5faf87", 72] ,
    \ "neutral_orange":   ["#d75f00", 166],
    \ "faded_red":        ["#870000", 88] ,
    \ "faded_green":      ["#878700", 100],
    \ "faded_yellow":     ["#af8700", 136],
    \ "faded_blue":       ["#005f87", 24] ,
    \ "faded_purple":     ["#875f87", 96] ,
    \ "faded_aqua":       ["#5f875f", 65] ,
    \ "faded_orange":     ["#af5f00", 130],
    \ "bg0":              ["#212020", 235],
    \ "bg1":              ["#3a3a3a", 237],
    \ "bg2":              ["#4e4e3e", 239],
    \ "bg3":              ["#626262", 241],
    \ "bg4":              ["#767676", 243],
    \ "gray":             ["#5d5348", 245],
    \ "fg0":              ["#ffffaf", 229],
    \ "fg1":              ["#ab987c", 223],
    \ "fg2":              ["#bcbc9c", 250],
    \ "fg3":              ["#a8a888", 248],
    \ "fg4":              ["#949474", 246],
    \ "fg4_256":          ["#949474", 246],
    \ "red":              ["#b24a3b", 167],
    \ "green":            ["#908d33", 142],
    \ "yellow":           ["#bc9942", 214],
    \ "blue":             ["#66817e", 255],
    \ "purple":           ["#ad757f", 175],
    \ "aqua":             ["#7b926f", 108],
    \ "orange":           ["#b87332", 108]
\}

colorscheme gruvbox
nnoremap <leader><leader> :FloatermNew<CR>python3 %

""highlight OverLength ctermbg=red ctermfg=white guibg=#592929
""match OverLength /\%81v.\+/

highlight mdProject   ctermfg=cyan guifg=#00ffff
highlight mdTask ctermfg=red  guifg=#ff0000
