nnoremap <leader><leader>x :call VimuxRunCommand("elixir " . bufname("%"))<CR>
nnoremap tt :call VimuxRunCommand("mix test")<CR>
nnoremap cmp :call VimuxRunCommand("mix compile")<CR>
