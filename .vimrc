set nocompatible
syntax on
filetype plugin indent on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching fileswhen tab complete
set wildmenu

" Highlight all search while typing
set hlsearch
set incsearch

" Highlight cursor line in insert mode 
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" Enable mouse scroll and select to enter visual mode
" set mouse=a

"Information on the following setting can be found with
"":help set
set tabstop=4
set expandtab
autocmd FileType make set noexpandtab
set autoindent
set shiftwidth=4  "this is the level of autoindent, adjust to taste
set softtabstop=4
set ruler
set number
set backspace=indent,eol,start
set visualbell

" Move between windows open in vim more smoothly (just hold Ctrl then h,j,k,l)
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tab for autocomplete
inoremap <Tab> <C-n>

" The ESC key is a bit far. Type two j's rapidly to exit INSERT
inoremap jj <ESC>
inoremap JJ <ESC>
inoremap Jj <ESC>
inoremap jJ <ESC>

nnoremap ; :

" Tweaks for browsing
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
  autocmd VimEnter * wincmd p " move cursor to right panel
augroup END

" Download and install nord from https://www.nordtheme.com/docs
colorscheme nord
