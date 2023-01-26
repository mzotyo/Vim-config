" ------------------------------------------------------------------------------
" GIT CONFIGURATIONS:
" ------------------------------------------------------------------------------
" Git status window
"
"function! GitStatusWindow()
"    execute "G"
"    wincmd L
"    setlocal winfixwidth
"    vertical resize 50
"endfun

function! GitStatusWindow()
    execute ":vertical Git"
    setlocal winfixwidth
    vertical resize 80
endfun

nnoremap <C-g>                  :call GitStatusWindow()<Enter>

" Changes
nnoremap <Leader>gd             :vert Gdiffsplit<Enter>

" Log
nnoremap <C-l>                  :GV<Enter>
nnoremap <C-l>b                 :GV HEAD<space>

" Push Pull
nnoremap <Leader>gu             :Git push --set-upstream origin<space>
nnoremap <Leader>gp             :Git push<Enter>
nnoremap <Leader>gf             :Git push -f<Enter>
nnoremap <Leader>gl             :Git pull<Enter>

" Blame
nnoremap <Leader>gb             :Git blame<Enter>

" Checkout
nnoremap <Leader>gc             :Git checkout<space>
nnoremap <Leader>gbr            :Git checkout -b<space>


" Resolve merge conflicts
nnoremap <C-m>                  :Conflicted<Enter>


" Cherry pick
nnoremap <Leader>gcp            :Git cherry-pick<space>

" Stash
nnoremap <Leader>st             :Git stash -u<Enter>
nnoremap <Leader>sp             :Git stash pop<Enter>
nnoremap <Leader>sa             :Git stash apply<Enter>
nnoremap <Leader>sw             :Git stash show -p<Enter>
nnoremap <Leader>sl             :Git stash list<Enter>
nnoremap <Leader>sd             :Git stash drop stash@{1}

" Load this settings
nnoremap <Leader>gs             :e ~/.vim/plug-config/keybinding-git.vim<Enter>
