" quick leader
let mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode          " Airline gives mode
set background=light
if $TERM =~ "-256color"
  set t_Co=256
end

if exists('+colorcolumn')
    set colorcolumn=80
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle goodness
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " be iMproved
filetype off     " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/ZoomWin'
Bundle 'lukaszb/vim-web-indent'
Bundle 'scrooloose/syntastic'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-erlang'
Bundle 'elixir-lang/vim-elixir'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'

" Dash integration
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

colorscheme solarized
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tabs and indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set tabstop=2 shiftwidth=2 " tabs rendered as 2 spaces
set expandtab " expand tabs to spaces (should this be filemode dependent?

set ai "Auto indent
set si "Smart indent

set nobackup
set nowritebackup
set noswapfile

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers & Windows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <C-B> :bn<CR>             " next buffer
nmap <silent> <C-N> :NERDTreeToggle<CR> " show/hide nerdtree 
map <leader>q <esc>:copen<CR>           " Open quick fix

" Fast moving between windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No 'Press Any Key to Contiue BS'
" from: http://vim.wikia.com/wiki/Avoiding_the_%22Hit_ENTER_to_continue%22_prompts
command! -nargs=1 SilentCmd
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Refluxoring
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <leader>k <esc>:'<,'>=G<CR> " Make this perty
map <leader>k =G<CR> " Make it all perty

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Learnin'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>? <esc>:Dash<CR> " Dash to the rescue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Happy viming
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:command! W w
:command! Wq wq

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Happy rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Restart Pow.cx for the Current App
command! PowRestart :SilentCmd touch tmp/restart.txt; touch tmp/.livereload.rb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap % v% " Jump to matching object and visual select stuff between

nnoremap <leader>q :call QuickfixToggle()<cr>
let g:quickfix_is_open = 0
function! QuickfixToggle()
  if g:quickfix_is_open
    cclose
    let g:quickfix_is_open = 0
  else 
    copen
    let g:quickfix_is_open = 1
  endif
endfunction


set rnu " Relative Line numbers --- SEXXY!
set hlsearch " Highlight search matches
set laststatus=2

" leaders with history
nnoremap : q:i
nnoremap / q/i
nnoremap ? q?i

syntax on

vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>
