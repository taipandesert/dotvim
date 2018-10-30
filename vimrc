call pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=menu

set number
if has("gui_running")
	colorscheme badwolf
else
    "colorscheme solarized
    colorscheme zenburn
    set background=dark
endif

"nice list of colorschemes
"colorscheme vim badwolf, molokai
" gruvbox
" textmate16
" codeschool
" distinguished
" github
" railscasts
" jellybeans
" twilight
" candy
" tomorrow*
set wrap
set linebreak

" highlight current line
set cursorline 

" Turn on the WiLd menu
set wildmenu

" This is a pretty cool feature I didn't know Vim had. You know how Vim automatically autocompletes things like filenames when you, for instance, run :e ~/.vim<TAB>? Well it will provide a graphical menu of all the matches you can cycle through if you turn on wildmenu.

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set gfn=Monaco:h16

" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" number of visual spaces per tab
set tabstop=4

" tabstop is the number of spaces a tab counts for. So, when Vim opens a file and reads a <TAB> character, it uses that many spaces to visually show the <TAB>

" number of spaces in tabs when editing
set softtabstop=4

" softabstop is the number of spaces a tab counts for when editing. So this value is the number of spaces that is inserted when you hit <TAB> and also the number of spaces that are removed when you backspace.

" tabs are spaces
set expandtab

" expandtab turns <TAB>s into spaces. That's it. So <TAB> just becomes a shortcut for 'insert four spaces'.
" Taken together, these are great options for editing files in languages that prefer spaces over tabs, since this ensures no <TAB>s are actually used. I spend most of my day in python and bash, where spaces are the norm. I like it, since it means my source code looks the same on every machine.

set shiftwidth=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable folding
set foldenable

" open most folds by defaults
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" fold based on indent level
set foldmethod=manual

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" search as characters are entered
set incsearch

" highlights matches
set hlsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ultisnips settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Skeletons
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufRead, BufNewFile *.c 0read ~/.vim/skeletons/skeleton.c setft=c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" load NERDTree on startup
"autocmd VimEnter * NERDTree
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
"let loaded_nerd_tree=1
"Show hidden files in NerdTree
let NERDTreeShowHidden=0
"let NERDTreeShowFiles=1
" let NERDTreeWinPos=1
" can have values left or right
let g:NERDTreeChDirMode=2
map <F5> :NERDTree
":source .vim/abbreviations.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pymode settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:pymode = 1
let g:pymode_options = 1
let g:pymode_options_max_line_length = 79
let g:pymode_doc = 0
let g:pymode_doc_bind = 'K'
" :PymodeRun -- Run current buffer or selectio
let g:pymode_run = 1

let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_rope = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('autocmd')
      autocmd BufNewFile *.c 0read ~/.vim/skeletons/skeleton.c
      autocmd BufRead *.c set filetype=c
      autocmd BufEnter *.rkt colorscheme gruvbox
      au BufRead,BufNewFile *.txt set wm=2 tw=80
      au BufReadPost *.rkt,*.rktl set filetype=scheme tw=102
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd Filetype gitcommit setlocal spell textwidth=72
   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdCommenter settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=","
set timeout timeoutlen=1500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent loadview
augroup END


