" display line numbers
set nu

""" INDENTATIONS AND STUFF
filetype plugin indent on
" display tabs as 2 spaces
set tabstop=2
" when entering a tab, insert spaces instead
set expandtab
set wrap
set linebreak
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set formatoptions=cq
set textwidth=80
set shiftwidth=2
" .py files should indent in groups of 4 spaces
autocmd FileType python setlocal shiftwidth=4 tabstop=4 slkdfj sdlkfj sdflkj sdl
" indentLine, plugin that shows help lines for indentation. Take file from
" after/plugin/ and put it in .vim/plugin to install.
" https://github.com/Yggdroot/indentLine.git

""" VISUAL GUIDES
" I/R/V = insert/replace/visual mode
" s/e = start/exit
let beam_shape = "\<Esc>[6 q"
let underline_shape = "\<Esc>[4 q"
let block_shape = "\<Esc>[2 q"
let &t_SI = beam_shape
let &t_SR = underline_shape
let &t_EI = block_shape
" color first column after maximum textwidth
set colorcolumn=+1

" when exiting insert mode, change cursor to normal mode after 1ms
set ttimeout
set ttimeoutlen=1
set ttyfast
