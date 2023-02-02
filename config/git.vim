" ------------------------------------------------------------------------------
" GIT CONFIGURATIONS:
" ------------------------------------------------------------------------------

" Fugitive git status window
function! GitStatusWindow()
    execute ":vertical Git"
    setlocal winfixwidth
    vertical resize 80
endfun

" -----------------------------------------------------------
" CUSTOM COMMANDS:
" -----------------------------------------------------------

" Changes
command! Diff                   :vert Gdiffsplit

" Log
command! Log                    :GV
command! -nargs=1 LogBranch     :GV HEAD <args>

" Push And Pull
command! -nargs=1 Upstream      :Git push --set-upstream origin <args>
command! Push                   :Git push
command! ForcePush              :Git push -f
command! Pull                   :Git pull

" Blame
command! Blame                  :Git blame

" Checkout
command! -nargs=1 Checkout      :Git checkout <args>
command! -nargs=1 CreateBranch  :Git checkout -b <args>

" Commit
command! GitStatus              :call GitStatusWindow()
command! Status                 :Git status
command! -nargs=1 Add           :Git add <args>
command! Commit                 :Git commit
command! AmendCommit            :Git commit --amend

" Stash
command! -nargs=1 Stash         :Git stash -u -m <args>
command! Pop                    :Git stash pop
command! Apply                  :Git stash apply
command! -nargs=1 StashShow     :Git stash show -p stash@{<args>}
command! StashList              :Git stash list
command! -nargs=1 StashDrop     :Git stash drop stash@{<args>}
