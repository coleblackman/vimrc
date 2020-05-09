"~/.config/nvim/init.vim
"You can time travel in vim - :earlier 36s or :later 1m
"<C-w> then HJKL swaps splits
let g:netrw_liststyle = 3

let g:netrw_browse_split = 1

nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

call plug#begin()

	"Quick scope changes the color of the first letter of each word"
	Plug 'unblevable/quick-scope'

	Plug 'psliwka/vim-smoothie'

	Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
		let g:instant_markdown_mathjax = 1
		let g:instant_markdown_autostart = 0

	let g:livepreview_previewer = 'skim'

	"==THEME=="
	Plug 'w0ng/vim-hybrid'

	Plug 'vimwiki/vimwiki'
		
	let g:vimwiki_list = [{'path': '~/Google\ Drive\ \(coleblax@gmail.com\)/VimWiki/',
			      \ 'syntax': 'markdown', 'ext': '.md'}]


	Plug 'junegunn/goyo.vim'

	Plug 'vimwiki/vimwiki'

	Plug 'wookayin/imagepaste.vim'

	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'

	"Vim latex support
	Plug 'lervag/vimtex'
		let g:vimtex_view_general_viewer = 'open'
		let g:vimtex_view_general_options = '-a Skim'	

	Plug 'itchyny/lightline.vim'
	let g:lightline = {
	      \ 'colorscheme': 'nord',
	      \ }

	Plug 'bling/vim-bufferline'

	"Plug 'neoclide/coc.nvim', {'branch': 'release'}

	"Plug 'ryanoasis/vim-devicons'
	

call plug#end()

set termguicolors
set incsearch
set splitright
set nohlsearch

syntax enable

set clipboard+=unnamedplus
set noshowmode
set wildmenu
set wildmode=longest:list,full

colorscheme hybrid

set number
set relativenumber
set hidden
set linebreak

if has('gui_running')
	nnoremap <esc> :noh<return><esc>
end
