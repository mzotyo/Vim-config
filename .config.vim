" -----------------------------------------------------------
" BASIC SETTINGS:
" -----------------------------------------------------------
set encoding=utf-8

set nowrap
set number relativenumber                                                       " add line numbers

syntax enable                                                                   " enable syntax and plugins (for netrw)
filetype plugin on                                                              " reocgnizing the file type
filetype plugin indent on                                                       " allow auto-indenting depending on file type

set autoread                                                                    " automatically loads external file changes

set autoindent                                                                  " indent a new line the same amount as the line just typed
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab                     " tabulator behaviour

set showmatch                                                                   " show matching
set ignorecase                                                                  " case insensitive

set hlsearch                                                                    " highlight search
set incsearch                                                                   " incremental search
set splitright                                                                  " split to the right of the current window
set splitbelow                                                                  " split below the current window

set cursorline
"set cc=130                                                                     " set an 130 column border for good coding style

packloadall

"Colorscheme:
colorscheme paper
"colorscheme slate
set background=light
"set background=dark

" -----------------------------------------------------------
" SOURCING SETTING FILES:
" -----------------------------------------------------------
execute(':source '.g:plug_config_path.'/ack.vim')
execute(':source '.g:plug_config_path.'/ale.vim')
execute(':source '.g:plug_config_path.'/bookmarks.vim')
execute(':source '.g:plug_config_path.'/closetag.vim')
execute(':source '.g:plug_config_path.'/light-line.vim')
execute(':source '.g:plug_config_path.'/loremipsum.vim')
execute(':source '.g:plug_config_path.'/nerd-tree.vim')

execute(':source '.g:config_path.'/autocomplete.vim')
execute(':source '.g:config_path.'/custom-commands.vim')
execute(':source '.g:config_path.'/filebrowsing.vim')
execute(':source '.g:config_path.'/findfiles.vim')
execute(':source '.g:config_path.'/folding.vim')
execute(':source '.g:config_path.'/formatter.vim')
execute(':source '.g:config_path.'/git.vim')
execute(':source '.g:config_path.'/keybindings.vim')
execute(':source '.g:config_path.'/terminal.vim')
