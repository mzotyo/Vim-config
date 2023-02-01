" -----------------------------------------------------------
" CUSTOM COMMANDS:
" -----------------------------------------------------------

" fun! CreateAlias(from, to)
"   exec 'cnoreabbrev <expr> '.a:from
"         \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
"         \ .'? ("'.a:to.'") : ("'.a:from.'"))'
" endfun
"
" call CreateAlias('Ack', 'Finding')

" Vim theme
command! Dark                   set background=dark
command! Light                  set background=light
command! GitSettings            execute(':e '.g:config_path."/keybinding-git.vim")
command! VimSettings            execute(':e '.g:vimrc_path)
