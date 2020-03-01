set nocompatible
filetype off
syntax on
set number relativenumber

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'ajh17/VimCompletesMe'

call vundle#end()
filetype plugin indent on

"Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Folding
set foldmethod=indent
set foldlevel=99

let python_highlight_all=1
syntax on

nnoremap <space> za

"Adding proper indentation
au Filetype python set
	\ tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ textwidth=79
	\ expandtab
	\ autoindent
	\ fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2


au Bufread, BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespaces /\s\+$/
set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:airline#extensions#tabline#enabled=1

map <C-n> :NERDTreeToggle<CR>
