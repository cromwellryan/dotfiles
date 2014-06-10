""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" thoughtbot/vim-rspec
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rspec_command = 'call Send_to_Tmux("spring rspec {spec}\n")'

nnoremap <leader>a :call VimuxRunCommand("spring rspec --fail-fast")<CR>
nnoremap <Leader><Leader>dmg :call VimuxRunCommand("rake db:migrate db:test:prepare")<CR>
nnoremap <leader><leader>a :call VimuxRunCommand("spring rake")<CR>
