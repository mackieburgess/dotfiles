" this isn't ex, I don't want ex mode.
" instead, let Q perform the current line as if it's a shell command
nnoremap Q !!sh<cr>

" they didn't put counts into gt and gT so I had to do this insane shit.
nnoremap <silent> <expr> gt ':<C-U>tabnext ' . ((((v:count1 -1) + tabpagenr()) % tabpagenr('$')) + 1) . '<CR>'
nnoremap <silent> <expr> gT ':<C-U>tabnext ' . (tabpagenr('$') - (((v:count1 - tabpagenr()) + tabpagenr('$')) % tabpagenr('$'))) . '<CR>'

" q: buffer quick-switching (maybe get rid of this because I never use it)
nnoremap <leader>q <cmd>b#<cr>

" cd: change cwd to current file location
nnoremap <leader>cd <cmd>cd %:h<cr><cmd>pwd<cr>

" f: Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ft <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fd <cmd>lua require('telescope').extensions.file_browser.file_browser()<cr>
nnoremap <leader>fj <cmd>lua require('telescope').extensions.file_browser.file_browser({cwd = "~/"})<cr>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>fr <cmd>lua require('telescope.builtin').resume()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fm <cmd>lua require('telescope.builtin').planets()<cr>

" w: windows/panes
" for making panes taller/shorter/narrower/broader in bigger increments
nnoremap <leader>ws <cmd>resize -3<cr>
nnoremap <leader>wt <cmd>resize +3<cr>
nnoremap <leader>wn <cmd>vertical resize -3<cr>
nnoremap <leader>wb <cmd>vertical resize +3<cr>

" <c-u> and <c-w> delete backwards linewise and wordwise.
" These remaps make these actions into "new inserts" so that you can
" undo through them. The same is applied to starting a new line
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
inoremap <cr> <c-g>u<cr>

" makes it very easy to add a capture group to a substitute, press c-e to
" return to end of command
cmap <c-\> \(\)<Left><Left>

" settled for this because I couldn't get counts to work
" TODO: get counts to work
vnoremap > >gv
vnoremap < <gv
