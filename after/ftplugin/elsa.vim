setlocal shiftwidth=2 softtabstop=2 expandtab
setlocal autoindent

" Indent the current line if the previous line ends with a colon.
function GetElsaIndent(lnum)
  if getline(prevnonblank(a:lnum)) =~ ":\s*$"
    return indent(a:lnum) + shiftwidth()
  endif
  return -1
endfunction

setlocal indentexpr=GetElsaIndent(v:lnum)
