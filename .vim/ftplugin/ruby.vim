""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" thoughtbot/vim-rspec
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rspec_command = 'call Send_to_Tmux("bundle exec spring rspec {spec}\n")'

nnoremap <Leader><Leader>dbmg :call VimuxRunCommand("bundle exec rake db:migrate db:test:prepare")<CR>
