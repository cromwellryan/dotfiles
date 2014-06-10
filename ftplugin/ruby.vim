""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" thoughtbot/vim-rspec
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rspec_command = 'call Send_to_Tmux("spring rspec {spec}\n")'

"map <Leader>t :call RunCurrentSpecFile()<CR>
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>

nnoremap <leader>a :call VimuxRunCommand("spring rspec --fail-fast")<CR>
nnoremap <Leader><Leader>dmg :call VimuxRunCommand("rake db:migrate")<CR>
