set background=light
set guifont=Lucida_Console:h19
set number
set relativenumber
set noshowmode
syntax on
set nocompatible
filetype plugin indent on
"set the default shell to be bash instead of zsh
set shell=bash\ -i
" set backspace=indent,eol,starta
set confirm
set mouse=n
call plug#begin()

"LATEX support
Plug 'lervag/vimtex'

Plug 'tomasiser/vim-code-dark'

Plug 'dracula/vim'

Plug 'joshdick/onedark.vim'

Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline-themes'

Plug 'Yggdroot/indentLine'

Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'ayu-theme/ayu-vim'

Plug 'dhruvasagar/vim-table-mode'

Plug 'junegunn/goyo.vim'

Plug 'mbbill/undotree'

Plug 'wookayin/imagepaste.vim'

Plug 'cocopon/iceberg.vim'

Plug 'skywind3000/asyncrun.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'takac/vim-hardtime'

Plug 'vimwiki/vimwiki'

"vimrc improvements
Plug 'tpope/vim-vinegar'

Plug 'dense-analysis/ale'



Plug 'francoiscabrol/ranger.vim'
" may be useful to do something like: alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

" Trims unnecessary spaces, required for plasticboy
Plug 'godlygeek/tabular'

" https://vimawesome.com/plugin/instant-markdown-vim
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" Markdown syntax highlighing support
"Plug 'https://github.com/plasticboy/vim-markdown'

" Decent theme, also consider Nordic
Plug 'Rigellute/rigel'

" A Vim Plugin for Lively Previewing Pandoc PDF Output - :LLPStartPreview
"Plug 'ragon000/vim-pandoc-live-preview', { 'for': ['md', 'pandoc'] }

" Colored bar replacing mode display
Plug 'itchyny/lightline.vim'

"Tpope vim-commentary - gcc to comment out a line. gc to comment the target of
"a motion (such as gcap for a paragraph)
Plug 'tpope/vim-commentary'

" Replaces netrw, may not be necessary - use g - h to toggle hidden files in
" netrw, use d to add a new directory, use % to create a new file at current
" location, use vim +Ex from bash/zsh to open netrw in current directory
" Plug 'preservim/nerdtree'

call plug#end()

syntax enable
set laststatus=2
set noshowmode

let g:livepreview_previewer = 'skim'
let g:indentLine_concealcursor="nv"
let g:netrw_liststyle = 3

let g:hardtime_default_on = 1
"let g:deoplete#enable_at_startup = 1
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_view_general_options_latexmk = '-r 1'
let g:deoplete#enable_at_startup = 1

let g:vimwiki_list = [{'path': '~/Google\ Drive\ \(coleblax@gmail.com\)/VimWiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"start with nerdtree open if vim is invoked without any files
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:netrw_browse_split = 1


filetype plugin on

set statusline+=%F
set ttimeoutlen=5


" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

let g:instant_markdown_autostart = 0


let g:hardtime_default_on = 1

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set t_Co=256
set cursorline

let ayucolor="dark"
colorscheme codedark
let g:airline_theme='onehalfdark'
"colorscheme ayu
