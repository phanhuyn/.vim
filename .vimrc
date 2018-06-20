" ===================================================================
" APPEARANCE
" ===================================================================

set number " show line number
syntax on " turn on syntax highlighting
filetype on "file type detection 
set colorcolumn=90 "column at 90

"" pathogen
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
" noremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" ===================================================================
" PLUGINS 
" ===================================================================

" lightline color theme
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
set laststatus=2

" NERDTree
" auto on
autocmd vimenter * NERDTree
" toggle by <C-n>
map <C-n> :NERDTreeToggle<CR>
" ignore some files
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
" show hidden files
let NERDTreeShowHidden=1
" close the NERDtree when open a file
" let NERDTreeQuitOnOpen = 1
" don't focus on NERDtree when open
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" NERDCommenter

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['go']

" ===================================================================
" SETTINGS 
" ===================================================================
" make buffer modifiable
" set modifiable

" set hidden: allow hidden buffer to be switched
set hidden
