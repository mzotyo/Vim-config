" ------------------------------------------------------------------------------
" GIT CONFIGURATIONS:
" ------------------------------------------------------------------------------

" Fugitive git status window
function! GitStatusWindow()
    execute ":vertical Git"
    setlocal winfixwidth
    vertical resize 80
endfun
nnoremap <C-g>                  :call GitStatusWindow()<Enter>

" Changes
command! Diff                   :vert Gdiffsplit
nnoremap <Leader>gd             :Diff<Enter>

" Log
command! Log                    :GV
nnoremap <C-l>                  :Log<Enter>
nnoremap <C-l>b                 :Log HEAD<space>

" Push Pull
command! Upstream               :Git push --set-upstream origin
nnoremap <Leader>gu             :Upstream<space>
command! Push                   :Git push
nnoremap <Leader>gp             :Push<Enter>
command! ForcPush               :Git push -f
nnoremap <Leader>gf             :ForcPush<Enter>
command! Pull                   :Git pull
nnoremap <Leader>gl             :Pull<Enter>

" Blame
command! Blame                  :Git blame
nnoremap <Leader>gb             :Blame<Enter>

" Checkout
command! Checkout               :Git checkout
nnoremap <Leader>gc             :Checkout<space>
command! CreateBranch           :Git checkout -b
nnoremap <Leader>gbr            CreateBranch<space>


" Resolve merge conflicts
nnoremap <C-m>                  :Conflicted<Enter>


" Cherry pick
nnoremap <Leader>gcp            :Git cherry-pick<space>

" Stash
command! Stash                  :Git stash -u
nnoremap <Leader>st             :Stash<Enter>
command! Pop                    :Git stash pop
nnoremap <Leader>sp             :Pop<Enter>
command! Apply                  :Git stash apply
nnoremap <Leader>sa             :Apply<Enter>
command! StashShow              :Git stash show -p
nnoremap <Leader>sw             StashShow<Enter>
command! StashList              :Git stash list
nnoremap <Leader>sl             :StashList<Enter>
command! StashDrop              :Git stash drop stash@{1}
nnoremap <Leader>sd             :StashDrop
