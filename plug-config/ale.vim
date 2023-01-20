" -----------------------------------------------------------
" Linting JavaScripts And TypeScript:
" -----------------------------------------------------------
"
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'typescript': ['tslint', 'prettier'],
\   'typescriptreact': ['tslint', 'prettier'],
\   'java': [ 'uncrustify'],
\   'html': [ 'prettier'],
\   'css': [ 'prettier'],
\   'json': [ 'fixjson']
\}

let g:ale_linters = {
\   'html': [ 'htmlhint'],
\   'css': [ 'stylelint'],
\   'typescript': ['tsserver', 'tslint'],
\   'typescriptreact': ['tsserver', 'tslint']
\}

let g:ale_javascript_prettier_standard_executable='eslint'
let g:ale_typescript_prettier_standard_executable='eslint'

" -----------------------------------------------------------
" Typescrpt LSP:
" -----------------------------------------------------------
let g:ale_typescript_tsserver_use_global=1
let g:ale_typescript_tsserver_config_path = ''
let g:ale_typescript_tsserver_executable = 'tsserver'

" -----------------------------------------------------------
" HTML:
" -----------------------------------------------------------

" -----------------------------------------------------------
" Java LSP:
" -----------------------------------------------------------

" Java Language Server
"  1. Clone: `git clone https://github.com/georgewfraser/java-language-server`
"  2. Run: `./scripts/link_linux.sh`
"     The link_linux.sh script requires jdk-18
"  3. Copy: `cp ./scripts/dist/linux ./dist`
"  4. Run: mvn package -DskipTests


" Java Language Server Client
" https://github.com/dense-analysis/ale/blob/master/doc/ale-java.txt
let g:ale_java_javalsp_executable = '/root/java-language-server/dist/lang_server_linux.sh'

" -----------------------------------------------------------
" General Configurations:
" -----------------------------------------------------------

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1


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

" Quickfix list instead of the loclist
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" -----------------------------------------------------------
" Navigation:
" -----------------------------------------------------------

" Navigation
nnoremap <leader>df             :ALEGoToDefinition<Enter>

" You can jump back to the position you were at before going to a reference of
" something with jump motions like CTRL-o. (CTRL+i jumps forward)
nnoremap <leader>rf             :ALEFindReferences -relative<Enter>

" -----------------------------------------------------------
" Refactoring:
" -----------------------------------------------------------
nnoremap <leader>rn             :ALERename<Enter>
nnoremap <leader>fn             :ALEFileRename<Enter>
nnoremap <leader>im             :ALEImport<Enter>
nnoremap <leader>ca             :ALECodeAction<Enter>

" -----------------------------------------------------------
" Display:
" -----------------------------------------------------------
nnoremap <leader>dt             :ALEDetail<Enter>
nnoremap <leader>hv             :ALEHover<Enter>
nnoremap <leader>qf             :ALEPopulateQuickfix<Enter>
