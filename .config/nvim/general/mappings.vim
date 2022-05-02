" cycle through buffers, helpful with vim-buftabline plugin
nnoremap <C-N> :bnext <CR>
nnoremap <C-P> :bprev <CR>
" close buffer without closing related window. Done through first moving to previous buffer, and
" then closing the current one
nnoremap <C-C> :bp \| bd # <CR>

" clear search highlights with space
map <space> :noh <CR>

nnoremap <C-T> :exe ":normal i" .. strftime("%Y-%m-%d") <CR>

" search for highlighted text in visual mode
vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>
