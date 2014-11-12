nnoremap <leader><leader>x :call VimuxRunCommand("elixir " . bufname("%"))<CR>
nnoremap <leader>a :call VimuxRunCommand("mix test")<CR>
