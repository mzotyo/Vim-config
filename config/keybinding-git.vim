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

command! ForcePush              :Git push -f
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
" Commit:
command! GitStatus              :call GitStatusWindow()
nnoremap <C-g>                  :GitStatus<Enter>

command! Status                 :Git status
nnoremap <Leader>gs             :Status<Enter>

command! -nargs=1 Add           :Git add <args>
nnoremap <Leader>ga             :Add<space>*<Enter>

command! Commit                 :Git commit
nnoremap <Leader>gt             :Commit<Enter>

command! AmendCommit            :Git commit --amend
nnoremap <Leader>gt             :AmendCommit<Enter>

" ------------------------------------------------------------------------------
" Merge Conflicts:
nnoremap <C-m>                  :Conflicted<Enter>

" ------------------------------------------------------------------------------
" Cherry Pick:
nnoremap <Leader>gcp            :Git cherry-pick<space>

" ------------------------------------------------------------------------------
" Stash:
command! -nargs=1 Stash         :Git stash -u -m <args>
nnoremap <Leader>st             :Stash<Enter>

command! Pop                    :Git stash pop
nnoremap <Leader>sp             :Pop<Enter>

command! Apply                  :Git stash apply
nnoremap <Leader>sa             :Apply<Enter>

command! -nargs=1 StashShow     :Git stash show -p stash@{<args>}
nnoremap <Leader>sw             StashShow<Enter>

command! StashList              :Git stash list
nnoremap <Leader>sl             :StashList<Enter>

command! -nargs=1 StashDrop     :Git stash drop stash@{<args>}
nnoremap <Leader>sd             :StashDrop
