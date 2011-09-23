set runtimepath=~/.vim,$VIMRUNTIME "Make windows use same path as unix

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on           " Enable syntax highlighting
set so=7            " Set 7 lines to the curors - when moving vertical..
set history=300     " Sets how many lines of history VIM has to remember
set nocompatible    " new vim mode
set autoread        " Set to auto read when a file is changed from the outside
set wildmenu        " Turn on WiLd menu
set wildmode=list:longest,full
set ruler           " Always show current position
set cmdheight=2     " The commandbar height
set ignorecase      " Ignore case when searching
set hlsearch        " Highlight search things
set hid             " Change buffer - without saving
set incsearch       " Make search act like search in modern browsers
set magic           " Set magic on, for regular expressions
set showmatch       " Show matching bracets when text indicator is over them
set mat=1           " How many tenths of a second to blink
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=indent,eol,start

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

let mapleader = "\<space>"
let g:mapleader = "\<space>"

if has("gui_running")
  set guioptions+=LlRrb
  set guioptions-=LlRrb
  set guioptions-=T
  set guioptions-=m
  set t_Co=256
endif

"Persistant undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colemak Key Bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Q
nnoremap q q|       " Record macro
nnoremap Q @q|      " Macros (replay the macro recorded by qq)

" W
nnoremap w "_c|     " Change  
vnoremap w "_c
nnoremap W "_C|     " Change until end of line  
onoremap w iw|      " inner word

" F
nnoremap f f|       " Find next char on line
onoremap f f|        
let g:EasyMotion_leader_key = '<Leader>f'

" P
noremap p ;|        " Repeat last f, t
noremap P ,

" G
nnoremap g g|       " Go to
"Git commands
nmap <silent> <leader>gl :silent Git log --graph --abbrev-commit --date=relative<cr>
nmap <silent> <leader>gs :Gstatus<cr>

" ----------------------------------------------

" A
nnoremap a v|     " Visual mode
nnoremap A V|       " Visual line mode
nnoremap ar viw|     " Visual mode with word preselected

" R
nnoremap r r|       " Replace

" S
nnoremap s i|       " Insert mode
nnoremap S I|       " Insert at beginning of line
vnoremap s gS|  " Selection to visual studio selection
nnoremap <silent> <leader>s :TagbarToggle<cr>

" T
nnoremap t a|       " Append
nnoremap T A|       " Append to end of line
inoremap <C-t> <esc>
vnoremap <C-t> <esc>

" D
nnoremap d d|       " Delete

" ----------------------------------------------

" Z
nnoremap z u|       " Undo
nnoremap Z <C-r>|   " Redo   

" X
nnoremap x "_x|     " Delete char into black hole  
vnoremap x <esc>`.``gvP``P|             " Swap selection for deletion
nnoremap <C-x> "+dd|" Cut into clipboard       

" C
nnoremap c y|       " Copy
onoremap c y
vnoremap c y
nnoremap C y$
nnoremap <C-c> "+Y| " Copy into clipboard      
cnoremap <C-c> <C-y>

" V
nnoremap v ]p|       " Paste
nnoremap V [P
vnoremap v <esc>o<esc>pgvpmvj^d$J`v| " Paste without yank
vnoremap V P
nnoremap <C-v> "+p| " Paste into clipboard      
inoremap <C-v> <esc>]pa
cnoremap <C-v> <C-r>
nnoremap <leader>v :e! ~/.vimrc<cr>| " Fast editing of the .vimrc

" B
onoremap B iB|      " By default use inner brace matching
nnoremap b %|       " Match brace
onoremap b %


" ----------------------------------------------
" ----------------------------------------------

" J
nnoremap j :call SwapParams("forwards")<cr>
vnoremap j <esc>`.``gvP``P|             " Swap selection for deletion

" L
noremap l b|       " Word left 
noremap L zk
nnoremap + zr|     " Open more folds
nmap <leader>l :Calendar<cr>

" U
nnoremap u k|       " Up 
vnoremap u k
nnoremap U 5k|      " 5*Up   
vnoremap U 5k
inoremap <c-u> <esc>bgUeea|    " Make last word uppercase
vnoremap <c-u> U|              " Make uppercase
nnoremap <leader>u <C-W>k|    " Move to split above

" Y
noremap y w|       " Word right 
noremap Y zj
vnoremap y e|      " Forward until end of word
noremap <leader>y :YRShow<cr>

" ----------------------------------------------

" H
nnoremap h za|     " Toggle fold
nnoremap H zR|     " Turn off all folds

nnoremap <c-h> zt| " Scroll cursor to top (minus scrolloff)

" N
nnoremap n h|      " Left  
vnoremap n h
noremap N ^|       " Start of line 
inoremap <C-n> <C-p>| " Word completion
nnoremap <leader>n <C-W>h| " move to split left

" E
nnoremap e j|      " Down  
vnoremap e j
nnoremap E 5j|     " 5*Down   
vnoremap E 5j 
nnoremap <leader>e <C-W>j|   " Move to split below

" I
nnoremap i l|      " Right  
vnoremap i l
noremap I $|       " End of line 
noremap <leader>i <C-W>l|   " Move to split right (not working)

" Indentation text motion
omap ii iB
omap ai aB

" O
nnoremap o o|      " Open new line  

" '
nnoremap ' `

" ----------------------------------------------

" K
nnoremap k n|      " Search next  
nnoremap K N|      " Search prev  
vnoremap k n|      " Search next  
vnoremap K N|      " Search prev  

" M
nnoremap m m|      " Create mark
nnoremap - zm|     " Close more folds

" ,

" .
nnoremap . .|      " Repeat command  

" /
nmap <silent> <leader>/ <Esc>:NERDTreeToggle<CR>

" ----------------------------------------------
" ----------------------------------------------

" Backspace
inoremap <C-BS> <C-w>|  " Insert mode delete word backwards

" Return
" nnoremap <CR> i<CR><Esc>

" Tab (in insert mode we complete with tab)
" nnoremap <tab> ==
" vnoremap <tab> =
" Escape/Tab
nnoremap <silent> <Esc> :nohlsearch<CR>|
" vnoremap <Tab> <Esc><Nul>| " <Nul> added to fix select mode problem
" inoremap <Tab> <Esc>|
" inoremap <S-Tab> <Tab>|

" `
nnoremap ` '

";
nnoremap ; :
vnoremap ; :

":
nnoremap : ;
vnoremap : ;

" Leader
nmap <silent> <leader><leader> <C-^>| "Easily switch between this and last buffer

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
  set background=dark
  colorscheme molokai
else
  set background=dark
  colorscheme vividchalk
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NerdTree Options
let g:NERDTreeQuitOnOpen = 1
let NERDTreeMapOpenExpl='' "Normally e
let NERDTreeMapUpdir='' "Normally u
let NERDTreeMapOpenSplit='' "Normally i

"Move wiki folder on windows
if has('win32')
  let g:vimwiki_list = [{'path': 'C:/Users/dlipscombe.ASSETIC/vimwiki'}]
endif  

"Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1

"Tagbar
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto compile coffeescript
autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow

" When vimrc is edited, reload it
if has('unix')
  autocmd! bufwritepost .vimrc source ~/.vimrc
elseif has('win32')
  autocmd! bufwritepost _vimrc source ~/_vimrc
endif  

