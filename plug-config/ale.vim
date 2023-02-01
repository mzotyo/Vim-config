" -----------------------------------------------------------
" Linting JavaScripts And TypeScript:
" -----------------------------------------------------------
"
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'javascriptreact': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'tslint'],
\   'typescriptreact': ['prettier', 'tslint'],
\   'java': [ 'uncrustify'],
\   'html': [ 'prettier'],
\   'css': [ 'prettier'],
\   'json': [ 'fixjson']
\}

let g:ale_linters = {
\   'html': [ 'htmlhint'],
\   'css': [ 'stylelint'],
\   'typescript': ['tslint', 'tsserver'],
\   'typescriptreact': ['tslint', 'tsserver']
\}

" -----------------------------------------------------------
" General Configurations:
" -----------------------------------------------------------

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1


" When set to `1`, only the linters from |g:ale_linters| and |b:ale_linters|
" will be enabled. The default behavior for ALE is to enable as many linters
" as possible, unless otherwise specified.
let g:ale_linters_explicit = 1

" Automatic imports from external modules.
let g:ale_completion_autoimport = 1

" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1

" ALE for displaying error information in the status bar.
let g:airline#extensions#ale#enabled = 1

" Locallist list instead of the loclist
let g:ale_open_list = 0
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0

" Shows suggestions alog the error messages
let g:ale_lsp_suggestions = 1

" When this option is set to `1`, ALE will show code actions and rename
" capabilities in the right click mouse menu when there's a LSP server or
" tsserver available
"
" This feature is only supported in GUI versions of Vim.
let g:ale_popup_menu_enabled = 1

" If enabled, this option will tell tsserver to find and replace text in
" comments when calling |ALERename
let g:ale_rename_tsserver_find_in_comments = 1

" If enabled, this option will tell tsserver to find and replace text in
" strings when calling |ALERename|.
let g:ale_rename_tsserver_find_in_strings = 1

" When this option is set to `1`, balloon messages will be displayed for
" problems or hover information if available.
" let g:ale_set_balloons = has('gui_running') ? 'hover' : 0
let g:ale_set_balloons = 1


"  ALE will use the following highlight groups for problems:
"
"  |ALEError|        - Items with `'type': 'E'`
"  |ALEWarning|      - Items with `'type': 'W'`
"  |ALEInfo.|        - Items with `'type': 'I'`
"  |ALEStyleError|   - Items with `'type': 'E'` and `'sub_type': 'style'`
"  |ALEStyleWarning| - Items with `'type': 'W'` and `'sub_type': 'style'`
let g:ale_set_highlights = 1

" When this option is set to `1`, the |sign| column will be populated with
" signs marking where problems appear in the file.
let g:ale_set_signs = 1

" When this option is set to `1`, Vim with |popupwin| will use a
" floating window for ALEDetail output.
let g:ale_detail_to_floating_preview = 1

" -----------------------------------------------------------
" Navigation:
" -----------------------------------------------------------

" Navigation
command  Definition             :ALEGoToDefinition
nnoremap <leader>d              :Definition<Enter>

command  DefinitionVert         :ALEGoToDefinition -vsplit
nnoremap <leader>dv             :DefinitionVert<Enter>

command  DefinitionSplit        :ALEGoToDefinition -split
nnoremap <leader>ds             :DefinitionSplit<Enter>

" You can jump back to the position you were at before going to a reference of
" something with jump motions like CTRL-o. (CTRL+i jumps forward)
command  References             :ALEFindReferences -relative
nnoremap <leader>rf             :References<Enter>

" -----------------------------------------------------------
" Refactoring:
" -----------------------------------------------------------
command  Rename                 :ALERename
nnoremap <leader>rn             :Rename<Enter>

command  FileRename             :ALEFileRename
nnoremap <leader>fn             :FileRename<Enter>

command  Import                 :ALEImport
nnoremap <leader>im             Import<Enter>

command  CodeAction             :ALECodeAction
nnoremap <leader>ca             CodeAction<Enter>

" -----------------------------------------------------------
" Navigate errors:
" -----------------------------------------------------------
command  NextError              :ALENextWrap
nnoremap <C-n>                  :NextError<Enter>
command  PreviousError          :ALEPreviousWrap
nnoremap <C-p>                  :PreviousError<Enter>

" -----------------------------------------------------------
" Display:
" -----------------------------------------------------------
command  Details                :ALEDetail
nnoremap <leader>dt             :Details<Enter>

command  Hover                  :ALEHover
nnoremap <leader>hv             :Hover<Enter>

command  QuickFix               :ALEPopulateQuickfix
nnoremap <leader>qf             :QuickFix<Enter>:copen<Enter>
