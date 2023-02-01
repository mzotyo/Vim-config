" ------------------------------------------------------------------------------
" GIT CONFIGURATIONS:
" ------------------------------------------------------------------------------

" Fugitive git status window
function! GitStatusWindow()
    execute ":vertical Git"
    setlocal winfixwidth
    vertical resize 80
endfun
" ------------------------------------------------------------------------------
"  Git Status:
command! Status                 :call GitStatusWindow()
nnoremap <C-g>                  :Status<Enter>

" ------------------------------------------------------------------------------
" Changes:
command! Diff                   :vert Gdiffsplit
nnoremap <Leader>gd             :Diff<Enter>

" ------------------------------------------------------------------------------
" Log:
command! Log                    :GV
nnoremap <C-l>                  :Log<Enter>

command! -nargs=1 LogBranch     :GV HEAD <args>
nnoremap <C-l>b                 :LogBranch<Space>

" ------------------------------------------------------------------------------
" Push And Pull:
command! -nargs=1 Upstream      :Git push --set-upstream origin <args>
nnoremap <Leader>gu             :Upstream<space>

command! Push                   :Git push
nnoremap <Leader>gp             :Push<Enter>

command! ForcPush               :Git push -f
nnoremap <Leader>gf             :ForcPush<Enter>

command! Pull                   :Git pull
nnoremap <Leader>gl             :Pull<Enter>

" ------------------------------------------------------------------------------
" Blame:
command! Blame                  :Git blame
nnoremap <Leader>gb             :Blame<Enter>

" ------------------------------------------------------------------------------
" Checkout:
command! -nargs=1 Checkout      :Git checkout <args>
nnoremap <Leader>gc             :Checkout<space>

command! -nargs=1 CreateBranch  :Git checkout -b <args>
nnoremap <Leader>gbr            CreateBranch<space>


" ------------------------------------------------------------------------------
" Merge Conflicts:
nnoremap <C-m>                  :Conflicted<Enter>


" ------------------------------------------------------------------------------
" Cherry Pick:
nnoremap <Leader>gcp            :Git cherry-pick<space>

" ------------------------------------------------------------------------------
" Stash:
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
