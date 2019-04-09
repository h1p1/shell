"set up color presets
let s:gray   = 59
let s:red    = '#ff5370'
let s:green  = '#c3e88d'
let s:yellow = '#ffcb6b'
let s:blue   = '#82aaff'
let s:purple = 96
let s:cyan   = '#89ddff'
let s:orange = '#f78c6c'
let s:indigo = '#BB80B3'

"functions to modify color scheme
function! s:HL(group, fg, bg, attr)
  let l:attr = a:attr

  if !empty(a:fg)
    exec 'hi ' . a:group . ' ctermfg=' . a:fg
  endif

  if !empty(a:bg)
    exec 'hi ' . a:group . ' ctermbg=' . a:bg
  endif

  if !empty(a:attr)
    exec 'hi ' . a:group . ' cterm=' . l:attr 
  endif
endfun

"define color scheme
call s:HL('LineNr', s:gray, '', '')
call s:HL('Comment', s:gray, '', '')
" call s:HL('CursorLine', '', s:gray, 'none')
call s:HL('phpClass', '', '', 'bold')

