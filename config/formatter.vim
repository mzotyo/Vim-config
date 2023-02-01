
" -----------------------------------------------------------
" FORMATTERS:
" -----------------------------------------------------------

" -----------------------------------------------------------
" Typescript and JavaScript prittier
" -----------------------------------------------------------
function! Prettier(currentFile)
    write
    silent execute "!eslint --fix " a:currentFile
endfun

nnoremap <Leader>p             :call Prettier("%")<Enter><Enter>
