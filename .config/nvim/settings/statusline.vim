""" Statusline

" chars to display for current mode
let g:currentmode={
      \ 'n'       : '  N ',
      \ 'i'       : '  I ',
      \ 'c'       : '  C ',
      \ 'v'       : '  V ',
      \ 'V'       : ' -V-',
      \ "\<c-v>"  : ' [V]',
      \ 'R'       : '  R ',
      \ 'r'       : ' ?R?',
      \ 't'       : '  T ',
      \ '!'       : '  ! ',
      \ 's'       : ' [S]',
      \ 'S'       : ' -S-',
      \}

" colors to use for current mode
function Getmodecolor()
  if mode() == 'n'
    return "%#StatusNormal#"
  elseif mode() == 'i' || mode() == 'R' || mode() == 'r'
    return "%#StatusInsert#"
  elseif mode() == 'v' || mode() == 'V' || mode() == "\<c-v>"
    return "%#StatusVisual#"
  elseif mode() == 'c'
    return "%#StatusCommand#"
  else
    return "%#StatusOther#"
  endif
endfunction

set statusline=

set statusline+=%{%Getmodecolor()%}       " get mode color
set statusline+=%{g:currentmode[mode()]}  " get mode text
set statusline+=%#Statusline#             " reset statusline color

set statusline+=\ \ %f                    " file path
set statusline+=\ %#StatusDim#%m%r        " modified? Read-only?
set statusline+=%#Statusline#

set statusline+=%=                        " right-hand side
set statusline+=%#StatusDim#              " dimmed text, statusline background
set statusline+=\%c                       " column of current cursor position
