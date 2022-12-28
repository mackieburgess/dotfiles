set termguicolors
set background=dark
set t_Co=256

let g:sonokai_style = 'andromeda'

colorscheme sonokai

if g:colors_name == "sonokai"
  hi StatusNormal  ctermfg=235 ctermbg=107 guifg=#2b2d3a guibg=#9ed06c
  hi StatusInsert  ctermfg=235 ctermbg=110 guifg=#2b2d3a guibg=#6dcae8
  hi StatusVisual  ctermfg=235 ctermbg=215 guifg=#2b2d3a guibg=#f89860
  hi StatusCommand ctermfg=235 ctermbg=176 guifg=#2b2d3a guibg=#bb97ee
  hi StatusOther   ctermfg=235 ctermbg=250 guifg=#2b2d3a guibg=#e1e3e4
  hi StatusDim     ctermfg=246 ctermbg=237 guifg=#949494 guibg=#393e53
  hi ColorCol                  ctermbg=237               guibg=#393e53
endif

" colourcolumn matching
match ColorCol /\%80v./
