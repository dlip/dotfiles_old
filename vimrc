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
let mapleader = ","
let g:mapleader = ","

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

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=indent,eol,start

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

"Git commands
nmap <silent> <leader>gl :silent Git log --graph --abbrev-commit --date=relative<cr>
nmap <silent> <leader>gs :Gstatus<cr>

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => COLEMAK
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Redesigned mapping for the Colemak layout for Vim 7
" Most ideas ripped off of Shai Coleman's `colemak.vim`
" This alternative version created by TaylanUB
" Revision 2010-04-03
"
" n = Left       ,  i = Right      ,  u = Up    ,  e = Down      
" N = Left*5     ,  I = Right*5    ,  U = Up*5  ,  E = Down*5    
" l = Prev word  ,  y = Next word
" L = Prev WORD  ,  Y = Next WORD
" j = PageUp     ,  h = PageDown              
" - = BOF        ,  _ = EOF        ,  <count>- = Goto line
"
" You can use Tab in place of Esc, to quit insert mode.
" Tab also stops search highlighting, in normal mode.
" Use S-Tab for literal tabs, in insert mode.
" 
" Space appends a space in normal mode.
"
" s/S is now a/A (Alter)
" i/I is now s/S (Stick)
" a/A is now t/T (Tail)
" t/T is now b/B (Before)
" y/Y is now c/C (Copy)
" c/C is now w/W (sWap)
" n/N is now k/K (seeK)
" undo/redo is z/Z (Zap)
" line-Undo is gu  (Great Undo)
"
" Use '\' for 'z'
" Use 'gg' for 'zz'
" Use 'G' for 'L'
"
" inner object is now 'r'
" e.g. dib is now drb
"
" For X clipboard yanking:
" CC is "+yy
" Cc is "*yy
" Cp is "+p
" CP is "+P
" cp is "*p
" cP is "*P
"
" In a help file:
"  <CR>, > = goto tag
"  <BS>, < = back
"  S-Space = PageUp
"    Space = PageDown
"

" Navigation
nnoremap n h|xnoremap n h|onoremap n h|
nnoremap u k|xnoremap u k|onoremap u k|
nnoremap e j|xnoremap e j|onoremap e j|
nnoremap i l|xnoremap i l|onoremap i l|
" Turbo
nnoremap <silent> N @='5h'<CR>|xnoremap <silent> N @='5h'<CR>|onoremap N 5h|
nnoremap <silent> U @='5k'<CR>|xnoremap <silent> U @='5k'<CR>|onoremap U 5k|
nnoremap <silent> E @='5j'<CR>|xnoremap <silent> E @='5j'<CR>|onoremap E 5j|
nnoremap <silent> I @='5l'<CR>|xnoremap <silent> I @='5l'<CR>|onoremap I 5l|
" Word/WORD
nnoremap l b|xnoremap l b|onoremap l b|
nnoremap y w|xnoremap y w|onoremap y w|
nnoremap L B|vnoremap L B|onoremap L B|
nnoremap Y W|vnoremap Y W|onoremap Y W|
" PageUp/PageDown
nnoremap <silent> <expr> j (winheight(0)-1) . "\<C-u>"
nnoremap <silent> <expr> h (winheight(0)-1) . "\<C-d>"
xnoremap <silent> <expr> j (winheight(0)-1) . "\<C-u>"
xnoremap <silent> <expr> h (winheight(0)-1) . "\<C-d>"
" Jump to line
nnoremap - gg|xnoremap - gg|onoremap - gg|
nnoremap _ G|xnoremap _ G|onoremap _ G|
nnoremap G L|
" Insert
nnoremap s i|
nnoremap S I|
" Append
nnoremap t a|
nnoremap T A|
" Substitute
nnoremap a s|
nnoremap A S|
" Yank
nnoremap c y|xnoremap c y|
nnoremap cc yy|xnoremap cc yy|
nnoremap C Y|xnoremap C Y|
" Change
nnoremap w c|xnoremap w c|
nnoremap W C|xnoremap W C|
nnoremap ww cc|xnoremap ww cc|
" Till
nnoremap b t|xnoremap b t|onoremap b t|
nnoremap B T|xnoremap B T|onoremap B T|
" Search Next/Prev
nnoremap k n|xnoremap k n|onoremap k n|
nnoremap K N|xnoremap K N|onoremap K N|
" Undo/Redo
nnoremap z u|xnoremap z :<C-u>undo<CR>|
nnoremap Z <C-r>|xnoremap Z :<C-u>redo<CR>|
nnoremap gz U|xnoremap gz U<C-u>undo<CR>|
" Folds
nnoremap \ z|
" zz
nnoremap gg zz|
" Inner Object
onoremap r i|
" Space
nnoremap <Space> i<Space><Right><Esc>|
" Escape/Tab
nnoremap <silent> <Tab> :nohlsearch<CR>|
vnoremap <Tab> <Esc><Nul>| " <Nul> added to fix select mode problem
inoremap <Tab> <Esc>|
inoremap <S-Tab> <Tab>|
" X clipboard yanking
nnoremap CC "+yy|
nnoremap Cc "*yy|
nnoremap Cp "+p|
nnoremap CP "+P|
nnoremap cp "*p|
nnoremap cP "*P|
" Help-file navigation
au FileType help nnoremap <buffer> < <C-t>|
au FileType help nnoremap <buffer> > <C-]>|
au FileType help nnoremap <buffer> <CR> <C-]>|
au FileType help nnoremap <buffer> <Backspace> <C-t>|
au FileType help nnoremap <buffer> <silent> <expr> <Space> (winheight(0)-1) . "\<C-d>0"|
au FileType help nnoremap <buffer> <silent> <expr> <S-Space> (winheight(0)-1) . "\<C-u>0"|

