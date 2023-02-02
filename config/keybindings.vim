" -----------------------------------------------------------
" VIM:
" -----------------------------------------------------------
let mapleader = "-"                                                             " Map leader key

" Toggles file browsing window on and off
nnoremap <M-1>                  :NERDTreeToggle<Enter>
nnoremap <M-2>                  :NERDTreeFind<Enter>

" Create and navigate tabs
nnoremap <C-t>                  :tabnew<Enter>
nnoremap <C-h>                  :tabprevious<Enter>
nnoremap <C-l>                  :tabnext<Enter>
nnoremap <C-Left>               :tabprevious<Enter>
nnoremap <C-Right>              :tabnext<Enter>

" Save & exit
nnoremap <C-s>                  :w<Enter>
nnoremap <C-c>                  :wq<Enter>
nnoremap <C-x>                  :q!<Enter>

inoremap <C-s>                  <ESC>:w<Enter>
inoremap <C-c>                  <ESC>:wq<Enter>
inoremap <C-x>                  <ESC>:q!<Enter>

" Distraction free
nnoremap <C-y>                  :Goyo<Enter>
inoremap <C-y>                  <ESC>:Goyo<Enter>

" No highlight
nnoremap <leader>h              :noh<Enter>

" Goto command line
nnoremap <Enter>                :

" ------------------------------------------------------------------------------
" GIT:
" ------------------------------------------------------------------------------

" Changes
nnoremap <Leader>gd             :Diff<Enter>

" Log
nnoremap <M-4>lg                :Log<Enter>
nnoremap <Leader>lb             :LogBranch<Space>

" Push And Pull
nnoremap <Leader>gu             :Upstream<space>
nnoremap <Leader>gp             :Push<Enter>
nnoremap <Leader>gf             :ForcPush<Enter>
nnoremap <Leader>gl             :Pull<Enter>

" Blame
nnoremap <Leader>gb             :Blame<Enter>

" Checkout
nnoremap <Leader>gc             :Checkout<space>
nnoremap <Leader>gbr            :CreateBranch<space>

" Commit
nnoremap <M-3>                  :GitStatus<Enter>
nnoremap <Leader>gs             :Status<Enter>
nnoremap <Leader>ga             :Add<space>*<Enter>
nnoremap <Leader>gt             :Commit<Enter>
nnoremap <Leader>gt             :AmendCommit<Enter>

" Merge Conflicts
nnoremap <Leader>cf             :Conflicted<Enter>

" Cherry Pick
nnoremap <Leader>gcp            :Git cherry-pick<space>

" Stash
nnoremap <Leader>st             :Stash<Enter>
nnoremap <Leader>sp             :Pop<Enter>
nnoremap <Leader>sa             :Apply<Enter>
nnoremap <Leader>sw             :StashShow<Enter>
nnoremap <Leader>sl             :StashList<Enter>
nnoremap <Leader>sd             :StashDrop

" -----------------------------------------------------------
" FIND IN FILES:
" -----------------------------------------------------------
nnoremap <Leader>f              :Find<Space>
nnoremap <Leader>fp             :FindProject<Space>
nnoremap <Leader>ft             :FindTest<Space>
nnoremap <Leader>fw             :Find<Space>"<cword>"<space>src<Enter>

" -----------------------------------------------------------
" LSP:
" -----------------------------------------------------------

" Navigation
nnoremap <leader>d              :Definition<Enter>
nnoremap <leader>dv             :DefinitionVert<Enter>
nnoremap <leader>ds             :DefinitionSplit<Enter>
nnoremap <leader>rf             :References<Enter>

" Refactoring
nnoremap <leader>rn             :Rename<Enter>
nnoremap <leader>fn             :FileRename<Enter>
nnoremap <leader>im             :Import<Enter>
nnoremap <leader>ca             :CodeAction<Enter>

" Navigate Errors
nnoremap <C-n>                  :NextError<Enter>
nnoremap <C-p>                  :PreviousError<Enter>

" Display
nnoremap <leader>dt             :Details<Enter>
nnoremap <leader>hv             :Hover<Enter>
nnoremap <leader>qf             :QuickFix<Enter>:copen<Enter>

" -----------------------------------------------------------
" TERMINAL:
" -----------------------------------------------------------
nnoremap <M-0>                  :call TerminalWindow()<Enter>

" -----------------------------------------------------------
" FORMATTERS:
" -----------------------------------------------------------
nnoremap <Leader>p              :call Prettier("%")<Enter><Enter>

" -----------------------------------------------------------
" SNIPPESTS:
" -----------------------------------------------------------
nnoremap <Leader>cs             :r ~/.vim/code-snippets/<cword><Enter>kdd
