" -----------------------------------------------------------
" PLUGINS:
" -----------------------------------------------------------
call plug#begin('~/.vim/bundle')
    Plug 'https://github.com/MattesGroeger/vim-bookmarks'                       " Bokmarking rows
    Plug 'https://github.com/mileszs/ack.vim'                                   " Search files (perl and ack has to be installed first on the operating system)
    Plug 'https://github.com/ashfinal/vim-colors-paper'                         " Color scheme: paper
    Plug 'http://github.com/tpope/vim-surround' 								" Surrounding ysiw)
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

" -----------------------------------------------------------
" BASIC SETTINGS:
" -----------------------------------------------------------
set lines=80 columns=250

set nocompatible                                                                " enter the current millenium
" set autochdir                                                                 " active directory will be the one of selected file

set guioptions-=T                                                               " disables the toolbar
set guioptions-=m                                                               " disables the toolbar
set guioptions-=e                                                               " vim like tabs
set guioptions-=r                                                               " right scrollbars off
set guioptions-=R                                                               " right scrollbars off
set guioptions-=l                                                               " left scrollbars off
set guioptions-=L                                                               " left scrollbars off

set encoding=utf-8
" set guifont=Lucida\ Console:h11
set guifont=Consolas:h12

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

" colorscheme slate
" set background=dark

colorscheme paper
set background=light
" set background=dark

set wildignore+=*/node_modules/*,*/coverage/*,*/dist/*

" -----------------------------------------------------------
" KEY BINDING:
" -----------------------------------------------------------

let mapleader = "-"                                                             " Map leader key

" Toggles file browsing window on and off
nnoremap <C-e>          :NERDTreeToggle<Enter>

" Open init.vim
nnoremap <leader>i      :e C:\Users\magyariz\_vimrc<Enter>
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
inoremap <C-c>          <ESC>:q<Enter>
inoremap <C-x>          <ESC>:tabclose<Enter>

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

" windows
set dir=c:\\tmp,c:\\temp
set backupdir=c:\\tmp,c:\\temp
set udf
set udir=c:\\tmp,c:\\temp

" -----------------------------------------------------------
" SETTINGS:
" -----------------------------------------------------------
source ~/Home/Personal/Vimconfig/plug-config/ack.vim
source ~/Home/Personal/Vimconfig/plug-config/ale.vim
source ~/Home/Personal/Vimconfig/plug-config/autocomplete.vim
source ~/Home/Personal/Vimconfig/plug-config/bookmarks.vim
source ~/Home/Personal/Vimconfig/plug-config/compilers.vim
source ~/Home/Personal/Vimconfig/plug-config/filebrowsing.vim
source ~/Home/Personal/Vimconfig/plug-config/findfiles.vim
source ~/Home/Personal/Vimconfig/plug-config/folding.vim
source ~/Home/Personal/Vimconfig/plug-config/formatter.vim
source ~/Home/Personal/Vimconfig/plug-config/keybinding-git.vim
source ~/Home/Personal/Vimconfig/plug-config/keybinding-markdown.vim
source ~/Home/Personal/Vimconfig/plug-config/keybinding-npm.vim
source ~/Home/Personal/Vimconfig/plug-config/nerd-tree.vim
source ~/Home/Personal/Vimconfig/plug-config/terminal.vim

" setting only for windows vim
source ~/Home/Personal/Vimconfig/plug-config/wvim-enhancements.vim
