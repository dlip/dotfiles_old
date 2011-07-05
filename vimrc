"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set up pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

" Sets how many lines of history VIM has to remember
set history=300

"new vim mode
set nocompatible

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<space>"
let g:mapleader = "\<space>"

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
" nmap <leader>w :w!<cr>
command! W :w

" Fast editing of the .vimrc
if has('unix')
  map <leader>e :e! ~/.vimrc<cr>
elseif has('win32')
  map <leader>e :e! ~/_vimrc<cr>
endif  

" When vimrc is edited, reload it
if has('unix')
  autocmd! bufwritepost .vimrc source ~/.vimrc
elseif has('win32')
  autocmd! bufwritepost _vimrc source ~/_vimrc
endif  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu 
set wildmode=list:longest,full

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set ignorecase "Ignore case when searching

set hlsearch "Highlight search things

set hid "Change buffer - without saving

set incsearch "Make search act like search in modern browsers

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them

set mat=1 "How many tenths of a second to blink


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

" Set font according to system
if has('mac')
  set gfn=Consolas:h14
  set shell=/bin/bash
elseif has('win32')
  set gfn=Bitstream\ Vera\ Sans\ Mono:h10
elseif has('unix')
  set gfn=Monospace\ 10
  set shell=/bin/bash
endif

if has("gui_running")
  set guioptions+=LlRrb
  set guioptions-=LlRrb
  set guioptions-=T
  set guioptions-=m
  set t_Co=256
  set background=dark
  colorscheme molokai
else
  set background=dark
  colorscheme vividchalk
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <left> :tabprev<cr>
map <right> :tabnext<cr>

" Scroll thru buffers with up/down
map <up> :bp<cr>
map <down> :bn<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => auto commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto compile coffeescript
autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show yankring
nmap <leader>y :YRShow<cr>

"NerdTree Options
let g:NERDTreeQuitOnOpen = 1
nmap <silent> <leader>/ <Esc>:NERDTreeToggle<CR>

"Easily switch between this and last buffer
nmap <silent> <leader><leader> <C-^>

"Map ctrl-c ctrl-x and ctrl-v to system clipboard copy/cut/paste
vnoremap <C-X> "+x
vnoremap <C-C> "+y
map      <C-V> "+gP

nmap <leader>l :Calendar<cr>
"Stop delete/change from yanking
"nnoremap d "_d
"vnoremap d "_d
"nnoremap D "_D
"vnoremap D "_D
"nnoremap c "_c
"vnoremap c "_c
"nnoremap C "_C
"vnoremap C "_C

"Move wiki folder on windows
if has('win32')
  let g:vimwiki_list = [{'path': 'C:/Users/dlipscombe.ASSETIC/vimwiki'}]
endif  
