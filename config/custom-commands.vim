" -----------------------------------------------------------
" CUSTOM COMMANDS:
" -----------------------------------------------------------

" Vim theme
command! Dark set background=dark
command! Light set background=light























" Creates command alias
fun! CreateAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
