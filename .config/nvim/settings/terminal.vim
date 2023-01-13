augroup terminal
  autocmd TermOpen * startinsert
  autocmd TermOpen * set rnu& nu&
  autocmd TermOpen * set signcolumn=no
augroup END

" easily return to normal mode
tnoremap <C-[> <C-\><C-n>

" quickly exit a terminal
tnoremap <C-w>q <C-\><C-n><C-w>q

" quickly pop up (my terminal panes are often on the bottom)
tnoremap <C-w>k <C-\><C-n><C-w>k

" open a quick terminal at the bottom of the screen
" accepts a count for the number of lines
nnoremap <expr> <leader>to '<cmd>' . (v:count ? v:count : 12) . "new +te<cr>"
