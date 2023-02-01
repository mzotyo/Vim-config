" -----------------------------------------------------------
" PLUGINS:
" -----------------------------------------------------------
let g:home_path=expand('~')                                                     " path to home directory
let g:vim_path=g:home_path.'/.vim'                                              " path to .vim directory
let g:bundle_path=g:vim_path.'/bundle'                                          " path to plugin install directory
let g:config_path=g:vim_path.'/config'                                          " path to vim general configuration
let g:plug_config_path=g:vim_path.'/plug-config'                                " path to vim plugin configuration directory

" -----------------------------------------------------------
" BACKUP CONFIGURATION:
" -----------------------------------------------------------
set noswapfile                                                                  " disable creating swap file
set nobackup nowritebackup                                                      " disable backup files

set dir=/tmp,/c/tmp,/c/temp
set backupdir=/tmp,/c/tmp,/c/temp
set udf
set udir=/tmp,/c/tmp,/c/temp

" -----------------------------------------------------------
" SETTINGS:
" -----------------------------------------------------------
execute(':source '.g:vim_path.'/.plugins.vim')
execute(':source '.g:vim_path.'/.config.vim')
