" easily get filename
" ... without directories
nmap <leader>fn :let @+=expand('%:t')<cr>
" ... with directories
nmap <leader>fp :let @+=@%<cr>
