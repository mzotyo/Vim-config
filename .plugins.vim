" -----------------------------------------------------------
" PLUGINS:
" -----------------------------------------------------------
call plug#begin(g:bundle_path)
    Plug 'https://github.com/MattesGroeger/vim-bookmarks'                       " Bokmarking rows
    Plug 'https://github.com/mileszs/ack.vim'                                   " Search files (perl and ack has to be installed first on the operating system)
    Plug 'https://github.com/ashfinal/vim-colors-paper'                         " Color scheme: paper
    Plug 'https://github.com/tpope/vim-surround' 								" Surrounding ysiw)
    Plug 'https://github.com/tpope/vim-repeat', 								" Repeats surround commands
	Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }    " Open file browse
    Plug 'https://github.com/junegunn/goyo.vim'                                 " Distraction free vim
    Plug 'https://github.com/tpope/vim-fugitive'                                " Git tool
    Plug 'https://github.com/mhinz/vim-signify'                                 " Git change marker
    Plug 'https://github.com/christoomey/vim-conflicted'                        " Solve conflicts
    Plug 'https://github.com/junegunn/gv.vim'                                   " Git commit browser
    Plug 'https://github.com/itchyny/lightline.vim'                             " Status line
    Plug 'https://github.com/dense-analysis/ale'                                " LSP client
    Plug 'https://github.com/vim-scripts/loremipsum'                            " Loremipsum generator
    Plug 'https://github.com/alvan/vim-closetag'                                " Auto close html tags
call plug#end()

" If bundle directory does not exists the run the PlugInstall command
autocmd VimEnter * if !isdirectory(g:bundle_path) | PlugInstall | endif
