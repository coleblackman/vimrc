set background=light
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

"vimrc improvementsj
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
let ayucolor="light"
colorscheme ayu
