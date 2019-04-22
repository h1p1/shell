"set up color presets
let s:white       = 15
let s:gray        = 59
let s:yellow      = 226
let s:lightyellow = 229
let s:blue        = 27
let s:lightblue   = 39

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

" vim
call s:HL('LineNr', s:gray, '', '')
call s:HL('TabLineFill', s:lightblue, '', '')
call s:HL('TabLine', s:white, s:lightblue, '')
call s:HL('TabLineSel', s:gray, s:yellow, '')
call s:HL('StatusLine', s:lightyellow, '', '')
call s:HL('StatusLineNC', s:lightblue, '', '')
call s:HL('VertSplit', s:lightblue, '', '')
call s:HL('Visual', s:lightyellow, s:lightblue, '')
call s:HL('Normal', s:white, '', '')

" default
call s:HL('Comment', s:gray, '', 'italic')
call s:HL('Constant', s:lightyellow, '', '')
call s:HL('String', s:lightyellow, '', 'italic')
call s:HL('Number', s:lightyellow, '', '')
call s:HL('Identifier', s:yellow, '', '')
call s:HL('Function', s:yellow, '', '')
call s:HL('Statement', s:blue, '', '')
call s:HL('Conditional', s:blue, '', '')
call s:HL('Repeat', s:blue, '', '')
call s:HL('Label', s:blue, '', '')
call s:HL('Operator', s:yellow, '', '')
call s:HL('Keyword', s:blue, '', '')
call s:HL('Exception', s:blue, '', '')
call s:HL('Type', s:blue, '', '')
call s:HL('Special', s:lightblue, '', '')
call s:HL('Delimiter', s:yellow, '', '')

" php
call s:HL('phpClassNamespaceSeparator', s:lightblue, '', '')
call s:HL('phpInclude', s:blue, '', '')
call s:HL('phpUseClass', s:lightblue, '', '')
call s:HL('phpUseNamespaceSeparator', s:lightblue, '', '')
call s:HL('phpClass', s:yellow, '', 'bold')
call s:HL('phpFunction', s:lightblue, '', 'italic')
call s:HL('phpMethod', s:lightblue, '', '')
call s:HL('phpMemberSelector', s:yellow, '', '')
call s:HL('phpVarSelector', s:yellow, '', '')

function! PhpSyntaxOverride()
  syn keyword phpInclude namespace contained nextgroup=phpUseClass skipwhite skipempty
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" html
call s:HL('htmlTagName', s:lightblue, '', '')
call s:HL('htmlArg', s:yellow, '', '')

" blade
call s:HL('bladeKeyword', s:blue, '', '')
call s:HL('bladeDelimiter', s:blue, '', '')
