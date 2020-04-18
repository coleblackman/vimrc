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

"LATEX support
Plug 'lervag/vimtex'

Plug 'skywind3000/asyncrun.vim'

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
