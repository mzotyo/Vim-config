" -----------------------------------------------------------
" PLUGINS:
" -----------------------------------------------------------
call plug#begin('~/.vim/bundle')
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
call plug#end()

autocmd VimEnter *
    \|if !isdirectory('~/.vim/bundle')
    \|  PlugInstall
    \|endif

" -----------------------------------------------------------
" BASIC SETTINGS:
" -----------------------------------------------------------
" set autochdir                                                                 " active directory will be the one of selected file

set encoding=utf-8                                                              " UTF-8 character set

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

set cursorline
" set cc=130                                                                    " set an 130 column border for good coding style

packloadall

colorscheme slate
set background=dark

" colorscheme paper
" set background=dark
" set background=light

" -----------------------------------------------------------
" KEY BINDING:
" -----------------------------------------------------------

let mapleader = "-"                                                             " Map leader key

" Toggles file browsing window on and off
nnoremap <C-e>          :NERDTreeToggle<Enter>

" Open init.vim
nnoremap <leader>i      :e ~/.vimrc<Enter>
nnoremap <leader>s      :source %<Enter>

" Create and navigate tabs
nnoremap <C-t>          :tabnew<Enter>
nnoremap <C-Left>       :tabprevious<Enter>
nnoremap <C-Right>      :tabnext<Enter>
nnoremap <C-h>          :tabprevious<Enter>
nnoremap <C-l>          :tabnext<Enter>

" Save & exit
nnoremap <C-s>          :w<Enter>
nnoremap <C-c>          :wq<Enter>
nnoremap <C-x>          :q!<Enter>

inoremap <C-s>          <ESC>:w<Enter>
inoremap <C-c>          <ESC>:wq<Enter>
inoremap <C-x>          <ESC>:q!<Enter>

" Distraction free
nnoremap <C-y>          :Goyo<Enter>
inoremap <C-y>          <ESC>:Goyo<Enter>

" No highlight
nnoremap <leader>h      :noh<Enter>

" -----------------------------------------------------------
" BACKUP:
" -----------------------------------------------------------
set noswapfile                                                                  " disable creating swap file
set nobackup nowritebackup                                                      " disable backup files

" linux
set dir=/tmp,/c/tmp,/c/temp
set backupdir=/tmp,/c/tmp,/c/temp
set udf
set udir=/tmp,/c/tmp,/c/temp

" -----------------------------------------------------------
" SETTINGS:
" -----------------------------------------------------------
source ~/.vim/plug-config/ack.vim
source ~/.vim/plug-config/ale.vim
source ~/.vim/plug-config/autocomplete.vim
source ~/.vim/plug-config/bookmarks.vim
source ~/.vim/plug-config/compilers.vim
source ~/.vim/plug-config/filebrowsing.vim
source ~/.vim/plug-config/findfiles.vim
source ~/.vim/plug-config/folding.vim
source ~/.vim/plug-config/formatter.vim
source ~/.vim/plug-config/keybinding-git.vim
source ~/.vim/plug-config/keybinding-markdown.vim
source ~/.vim/plug-config/keybinding-npm.vim
source ~/.vim/plug-config/nerd-tree.vim
source ~/.vim/plug-config/terminal.vim
