let g:ack_autoclose = 1
let g:ack_autofold_results = 0
let g:ackpreview = 0

command! -nargs=1 Find          :Ack! <args> src
nnoremap <Leader>f              :Find<Space>

command! -nargs=1 FindProject   :Ack! <args>
nnoremap <Leader>fp             :FindProject<Space>

command! -nargs=1 FindTest      :Ack! <args> tests
nnoremap <Leader>ft             :FindTest<Space>

nnoremap <Leader>fw             :Find<Space>"<cword>"<space>src<Enter>
