let g:ack_autoclose = 1
let g:ack_autofold_results = 0
let g:ackpreview = 0

" -----------------------------------------------------------
" CUSTOM COMMANDS:
" -----------------------------------------------------------

command! -nargs=1 Find          :Ack! <args> src
command! -nargs=1 FindProject   :Ack! <args>
command! -nargs=1 FindTest      :Ack! <args> tests
