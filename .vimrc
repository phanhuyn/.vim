" ===================================================================
" APPEARANCE
" ===================================================================

set number " show line number
syntax on " turn on syntax highlighting
filetype on "file type detection 
set colorcolumn=90 "column at 90

" pathogen
execute pathogen#infect() 

" SOLARIZE THEME
syntax enable
set background=dark
colorscheme solarized

" ???
" set showcmd
" set ruler

" highlight search
set hlsearch

" ===================================================================
" KEYS
" ===================================================================

" Map leader key to space
let mapleader=" "

" <leader>s to reload config (default leader key: "\")
map <leader>s :source ~/.vimrc<CR> 

" re-open a file with <leader><leader>
nnoremap <Leader><Leader> :e#<CR>

" cancel a search with double ESCAPE
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" ===================================================================
" PLUGINS 
" ===================================================================

" lightline color theme
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
set laststatus=2
