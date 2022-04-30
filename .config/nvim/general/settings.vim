" set hidden                              " Required to keep multiple buffers open multiple buffers
" set nowrap                              " Display long lines as just one line
" set pumheight=10                        " Makes popup menu smaller
" set ruler				  " Show the cursor position all the time
" set cmdheight=2                         " More space for displaying messages
" set tabstop=2                           " Insert 2 spaces for a tab
" set shiftwidth=2                        " Change the number of space characters inserted for indentation
" set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
" set smartindent                         " Makes indenting smart
" set autoindent                          " Good auto indent
" set background=dark                     " tell vim what the background color looks like
" set showtabline=2                       " Always show tabs
" set noshowmode                          " We don't need to see things like -- INSERT -- anymore
" set nobackup                            " This is recommended by coc
" set nowritebackup                       " This is recommended by coc
" set updatetime=300                      " Faster completion
" set timeoutlen=500                      " By default timeoutlen is 1000 ms
" set formatoptions-=cro                  " Stop newline continution of comments

" remove syntax enable to enable lsp linter live updates
" syntax enable                           " Enables syntax highlighing
set conceallevel=0                      " So that I can see `` in markdown files
" set cursorline                          " Enable highlighting of the current line
" set cursorlineopt=number                " Just highlight the line number, not entire line.
set encoding=utf-8                      " The encoding displayed
set expandtab                           " Converts tabs to spaces
set fileencoding=utf-8                  " The encoding written to file
set iskeyword+=-                        " treat dash separated words as a word text object
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
"set clipboard=unnamedplus               " Copy paste between vim and everything else
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
colorscheme peachpuff                   " works with floating windows

set textwidth=100

" display tabs
set list
set listchars=tab:>-
