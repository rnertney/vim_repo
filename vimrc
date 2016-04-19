"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""$source: $         
""$Revision: 1.5 $
""$Date: 2007/08/24 17:34:45 $
""$Author: chrisar $
""
""Purpose: This is the GVim configuration file
""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
syn on
set nocompatible

"Add for case insensitive search
set ignorecase smartcase

"Show cursor position all the time
set ruler

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-semicondensed--13-120-75-75-c-60-iso8859-1
 "set guifont=9x15

 " change dir to whatever file i'm working on
set autochdir

" Make command line two lines high
set ch=2

" When <TAB> is hit, put 3 spaces in
set expandtab
set tabstop=3
set shiftwidth=3
set hlsearch
" Match up braces, parenthesis etc - hit <SHIFT> %
set showmatch

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>


set nu

highlight Normal guibg=grey13 guifg=white
highlight LineNr guifg=grey43


command! E execute "NERDTree"
command! Shell execute "ConqueTerm tcsh"
command! Home execute "cd Z:\\"
command! Cohome execute "cd X:\\"
command! Techsup execute "cd V:\\"
command! Bcapps execute "cd Y:\\"
command! Local execute "cd C:\\users\\robn\\Desktop"
command! Tagbar execute "TagbarToggle"
nmap <F8> :TagbarToggle<CR>



let g:tagbar_type_vhdl = {
      \ 'ctagstype': 'vhdl',
      \ 'kinds' : [
      \'d:prototypes',
      \'b:package bodies',
      \'e:entities',
      \'a:architectures',
      \'t:types',
      \'p:processes',
      \'f:functions',
      \'r:procedures',
      \'c:constants',
      \'T:subtypes',
      \'r:records',
      \'C:components',
      \'P:packages',
      \'l:locals'
      \]
      \}
set backspace=indent,eol,start

filetype plugin indent on
filetype indent on
set et

" The next is your tab stop. Lot of people like to keep it 4.
set sw=2
set smarttab

"unhighlight on esc
nnoremap <esc> :noh<return><esc>

" This is for the multiple  marking
let g:mwDefaultHighlightingPalette = 'extended' 
let g:mwHistAdd = '/@'
let g:mwAutoSaveMarks = 0 
nmap <Leader>M <Plug>MarkToggle 
nmap <Leader>N <Plug>MarkAllClear

nmap <F3> <C-\>s!



vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

