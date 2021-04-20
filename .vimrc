" display line numbers
set nu

""" INDENTATIONS
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
" indentLine, plugin that shows help lines for indentation. Take file from
" after/plugin/ and put it in .vim/plugin to install.
" https://github.com/Yggdroot/indentLine.git

""" CURSOR OPTIONS
" I/R/V = insert/replace/visual mode
" s/e = start/exit
let beam_shape = "\<Esc>[6 q"
let underline_shape = "\<Esc>[4 q"
let block_shape = "\<Esc>[2 q"
let &t_SI = beam_shape
let &t_SR = underline_shape
let &t_EI = block_shape
