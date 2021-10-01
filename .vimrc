""" FOR NVIM, ADD BELOW LINES TO ~/.config/nvim/init.vim
"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath=&runtimepath
"source ~/.vimrc


""" LINE NUMBERS, FOLDS
set number
autocmd FileType python setlocal foldmethod=indent

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
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2
" indentLine, plugin that shows help lines for indentation. Take file from
" after/plugin/ and put it in .vim/plugin to install.
" https://github.com/Yggdroot/indentLine.git

""" VISUAL GUIDES
" I/R/V = insert/replace/visual mode
" S/E = start/exit
let beam_shape = "\<Esc>[6 q"
let underline_shape = "\<Esc>[4 q"
let block_shape = "\<Esc>[2 q"
let &t_SI = beam_shape
let &t_SR = underline_shape
let &t_EI = block_shape
" color first column after maximum textwidth
set colorcolumn=+1
" highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=blue guibg=red
match ExtraWhitespace /\s\+$/
" highlight searches and clear highlight with space
set hlsearch
hi Search ctermfg=Black ctermbg=Green
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" when exiting insert mode, change cursor to normal mode after 1ms
set ttimeout
set ttimeoutlen=1
set ttyfast
