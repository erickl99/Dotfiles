" Some sensible options
set nocompatible
set encoding=utf-8
set number relativenumber
set wildmode=longest,list,full
set splitbelow splitright
set smartcase
set linebreak
set autoindent

" By appending ** to your path variable, vim will recursively search the current
" directory to find files.
set path+=**

" Adds the ability to find matching angle brackets with % while in normal mode
set mps+=<:>

" Enable the use of syntax highlighting. It seems you cannot use a custom color 
" them without this line.
syntax enable

" Customizing defaults of PaperColor 
" See https://github.com/NLKNguyen/papercolor-theme#%EF%B8%8F-user-customization for more.
set background=dark
let g:PaperColor_Theme_Options = {
\   'theme': {
\     'default': {
\       'allow_bold': 1,
\       'allow_italic': 1,
\       'transparent_background': 1
\     }
\   }
\ }
colorscheme PaperColor

let mapleader = " "

" Make it easier to move between plit windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Shortcuts to open vimrc file and source it, respectively.
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Autocmd to create an html template
augroup filetype_html
	autocmd!
	autocmd FileType html nnoremap <leader>h :-1r! sed -n 2,15p ~/coding/.templates<CR>?title<CR>3hi
augroup END
