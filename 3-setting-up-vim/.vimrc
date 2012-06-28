:filetype plugin on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99

map <leader>g :GundoToggle<CR>

syntax on
filetype on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'


au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

map <leader>n :NERDTreeToggle<CR>


map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>


nmap <leader>a <Esc>:Ack!

:set number

" highlighting the current line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline "cursorcolumn
" set cursorline " cursorcolumn


set tabstop=4 shiftwidth=4 softtabstop=4

if bufwinnr(1)
	map + <C-W>+
	map - <C-W>-
	map < <C-W><
	map > <C-W>>

	endif

colo ron 

