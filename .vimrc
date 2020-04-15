syntax on
set nocompatible
filetype plugin indent on
"set the default shell to be bash instead of zsh
set shell=bash\ -i
" set backspace=indent,eol,starta
set confirm
set mouse=n

colorscheme nord
call plug#begin()

Plug 'skywind3000/asyncrun.vim'

Plug 'vimwiki/vimwiki'

" Trims unnecessary spaces, required for plasticboy
Plug 'godlygeek/tabular'

" Markdown syntax highlighing support
"Plug 'https://github.com/plasticboy/vim-markdown'

" Decent theme, also consider Nordic
Plug 'Rigellute/rigel'

" A Vim Plugin for Lively Previewing Pandoc PDF Output - :LLPStartPreview
Plug 'ragon000/vim-pandoc-live-preview', { 'for': ['md', 'pandoc'] }

" Colored bar replacing mode display
Plug 'itchyny/lightline.vim'

" Replaces netrw, may not be necessary - use g - h to toggle hidden files in
" netrw, use d to add a new directory, use % to create a new file at current
" location, use vim +Ex from bash/zsh to open netrw in current directory
" Plug 'preservim/nerdtree'

call plug#end()

set termguicolors
syntax enable
colorscheme rigel
set laststatus=2
set noshowmode

let g:livepreview_previewer = 'skim'

"let g:vimwiki_list = [{'path': '~/vimwiki/',
"                      \ 'syntax': 'markdown', 'ext': '.md'}]


"start with nerdtree open if vim is invoked without any files
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:netrw_browse_split = 1

set statusline+=%F
set ttimeoutlen=5
