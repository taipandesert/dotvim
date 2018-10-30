" use indentation of previous line
setlocal autoindent
" " use intelligent indentation for C
setlocal smartindent
" " configure tabwidth and insert spaces instead of tabs
setlocal tabstop=4        " tab width is 4 spaces
setlocal shiftwidth=4     " indent also with 4 spaces
setlocal expandtab        " expand tabs to spaces
" " wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
setlocal textwidth=120
" " turn syntax highlighting on
setlocal t_Co=256
syntax on
" " highlight matching braces
setlocal showmatch
