
" ================================================== "
" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ "
" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ "
" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ "
" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ "
" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ "
" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ "
" ================================================== "

set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

	Plug 'drewtempelmeyer/palenight.vim'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'itchyny/lightline.vim'
	Plug 'ryanoasis/vim-devicons'
	Plug 'norcalli/nvim-colorizer.lua'
	"Plug 'vim-airline/vim-airline'
	"Plug 'vim-airline/vim-airline-themes'
	Plug 'connorholyday/vim-snazzy'
	Plug 'morhetz/gruvbox'
	Plug 'ajmwagar/vim-deus'
	Plug 'patstockwell/vim-monokai-tasty'
	Plug 'preservim/nerdtree'
	Plug 'joshdick/onedark.vim'
	Plug 'kaicataldo/material.vim'
	Plug 'justinmk/vim-syntax-extra'
	Plug 'ayu-theme/ayu-vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'arcticicestudio/nord-vim'
	Plug 'liuchengxu/space-vim-dark'
	Plug 'yegappan/mru'

call plug#end()

let g:material_theme_style = 'palenight'
let g:SnazzyTransparent = 1
let g:dracula_italic = 0
let ayucolor="light"
colorscheme space-vim-dark
filetype plugin on
syntax on
set shiftwidth=3
set tabstop=3
set softtabstop=3
set noerrorbells
set smartindent
set nowrap
set ignorecase
set smartcase
set number 
set mouse=a
set encoding=UTF-8
set cursorline
set wildmode=longest,list,full
set wildmenu
set termguicolors
set splitright
set splitbelow
set t_Co=256
set noswapfile
set nobackup
set incsearch
set clipboard=unnamedplus
set title
set noshowmode
set showtabline=2
set cmdheight=1
set scrolloff=2
set ttyfast
let g:netrw_browse_split=3
lua require'colorizer'.setup()
highlight Normal guibg=NONE ctermbg=NONE
highlight Search gui=standout,underline guibg=inverse guifg=inverse
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

nnoremap cw ciw
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> <C-j> <C-w>h
nnoremap <silent> <C-k> <C-w>l
nnoremap <silent> <TAB> :tabn<CR>
nnoremap <silent> <S-TAB> :tabp<CR>
nnoremap <silent> <M-j> :vertical resize-3<CR>
nnoremap <silent> <M-k> :vertical resize+3<CR>
nnoremap <silent> <F9> :NERDTreeToggle<CR>

autocmd! BufEnter * call ToggleCursorLine()
function! ToggleCursorLine()
	if (bufname("%") =~ "NERD_Tree_")
		highlight CursorLine guibg='#374152'
		autocmd BufEnter,FileType nerdtree setlocal statusline=%#Normal#
	else
		setlocal cursorline
		highlight clear Cursorline
		highlight CursorLineNr term=bold cterm=bold gui=bold guifg='#f78c6c' guibg=NONE
		highlight LineNr guibg=NONE
		highlight VertSplit guibg=NONE
		highlight SignColumn guibg=NONE
	endif
endfunction

let NERDTreeShowHidden = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeHighlightCursorline = 1
let g:webdevicons_enable_nerdtree = 1


let g:lightline = {
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'readonly', 'filename', 'modified' ] ]
			\ },
			\  'colorscheme': 'palenight',
			\  'component_function': {
			\    'filetype': 'MyFiletype',
			\    'fileformat': 'MyFileformat',
			\ },
			\  'tab_component_function': {
			\	  'tabnum': 'LightlineWebDevIcons',
			\	},
			\  'tabline': {
			\    'right': [ [ 'absolutepath', 'modified' ] ]
			\ },
\ }

let g:lightline.separator = { 'left': "\uE0b0", 'right': "\uE0b2" }
let g:lightline.subseparator = { 'left': '', 'right': '' }

function! LightlineWebDevIcons(n)
	let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
	return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction

autocmd VimEnter * call SetupLightlineColors()
function SetupLightlineColors() abort
	let l:palette = lightline#palette()
	let l:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
	let l:palette.insert.middle = l:palette.normal.middle
	let l:palette.replace.middle = l:palette.normal.middle
	let l:palette.visual.middle = l:palette.normal.middle
	let l:palette.inactive.middle = l:palette.normal.middle
	let l:palette.tabline.middle = l:palette.normal.middle
	call lightline#colorscheme()
endfunction

function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'base16_snazzy'
"let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
"let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
"let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
"let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
"let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
"let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
"let g:airline#extensions#tabline#tab_min_count = 1     " minimum of 2 tabs needed to display the tabline                                  
"let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
"let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
"let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline

autocmd BufNewFile,BufRead * if &ft == '' | set ft=config | endif
autocmd BufNewFile,BufRead *.conf set ft=config
autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' | exe "normal! g`\"" | endif
