" -----------------------------------------------------------
" KEY BINDING:
" -----------------------------------------------------------
let mapleader = "-"                                                             " Map leader key

" Toggles file browsing window on and off
nnoremap <C-e>          :NERDTreeToggle<Enter>
nnoremap <C-r>          :NERDTreeFind<Enter>

" Create and navigate tabs
nnoremap <C-t>          :tabnew<Enter>
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

" Goto command line
nnoremap <Enter>         :
