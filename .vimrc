" quick leader
let mapleader = ","
nnoremap ; :
vnoremap ; :

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle goodness
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " be iMproved
filetype off     " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Clean Code
Bundle 'scrooloose/syntastic'
Bundle 'kchmck/vim-coffee-script'
Bundle 'oscarh/vimerl'
Bundle 'elixir-lang/vim-elixir'

" UI
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Nav
Bundle 'scrooloose/nerdtree'
Bundle 'xolox/vim-misc'

" Dash integration
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" Ruby
Bundle 'thoughtbot/vim-rspec'
Bundle 'jgdavey/tslime.vim'

Bundle 'chrisbra/csv.vim'

filetype plugin indent on

:imap jj <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bling/vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git & Github
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-fugitive'

map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>

Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'mhinz/vim-signify'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" epmatsw/ag.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'epmatsw/ag.vim'

nnoremap \ :Ag<SPACE>

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mattn/emmet-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'mattn/emmet-vim'

" Only use emmet with html/css
let g:user_emmet_install_global = 0
autocmd FileType html,erb,css EmmetInstall

imap <C-k> <c-y>,

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" thoughtbot/vim-rspec
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rspec_command = 'call Send_to_Tmux("spring rspec {spec}\n")'

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" christoomey/vim-tmux-navigator
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'christoomey/vim-tmux-navigator'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" kien/ctrlp.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'kien/ctrlp.vim'

let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_use_caching = 0 " Disable caching since Ag is blazin'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Valloric/YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Valloric/YouCompleteMe'
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mattn/gist-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set noshowmode             " Airline gives mode

syntax enable
set background=dark
colorscheme Tomorrow-Night

if exists('+colorcolumn')
  set colorcolumn=80
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tabs and indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2 shiftwidth=2 " tabs rendered as 2 spaces
set expandtab " expand tabs to spaces (should this be filemode dependent?

set ai "Auto indent
set si "Smart indent

set nobackup
set nowritebackup
set noswapfile

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" add new lines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers & Windows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <C-B> :bn<CR>             " next buffer
nmap <silent> <C-N> :NERDTreeToggle<CR> " show/hide nerdtree
map <leader>q <esc>:copen<CR>           " Open quick fix

" window
nmap <leader>swh :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk :topleft  new<CR>
nmap <leader>swj :botright new<CR>
" " buffer
nmap <leader>sh  :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk  :leftabove  new<CR>
nmap <leader>sj  :rightbelow new<CR>

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
" Make this perty
vmap <leader>k <esc>:'<,'>=G<CR>

" Make it all perty
map <leader>k gg=G''<CR>

" Search and Replace word under cursor
:nnoremap <Leader>S :%s/\<<C-r><C-w>\>//g<Left><Left>

" Grep (Ag) word under cursor
:nnoremap <Leader><Leader>S :Ag <C-r><C-w>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Learnin'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>? <esc>:Dash<CR> " Dash to the rescue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Happy viming
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:command! W w
:command! Wq wq
:command! WQ q

" Auto reload vimrc
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Write Buffer if Necessary
"
" Writes the current buffer if it's needed, unless we're the in QuickFix mode.
" Source: https://github.com/mutewinter/dot_vim/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! WriteBufferIfNecessary()
  if &modified && filewritable(expand('%')) && !&readonly
    :write
  endif
endfunction
command! WriteBufferIfNecessary call WriteBufferIfNecessary()

function! CRWriteIfNecessary()
  if &filetype == "qf"
    " Execute a normal enter when in Quickfix list.
    execute "normal! \<enter>"
  else
    WriteBufferIfNecessary
    :redraw!
  endif
endfunction

" Clear the search buffer when hitting return
" Idea for MapCR from http://git.io/pt8kjA
function! MapCR()
  nnoremap <silent> <enter> :call CRWriteIfNecessary()<CR>
endfunction
call MapCR()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tpope/vim-rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-rails'

nnoremap <LEADER>av :AV<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Happy rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Restart Pow.cx for the Current App
command! PowRestart :SilentCmd touch tmp/restart.txt; touch tmp/.livereload.rb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap % v% " Jump to matching object and visual select stuff between
command! NF :NERDTreeFind

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

nnoremap <leader><leader>o :call SystemOpenCurrentFile()<cr>
function! SystemOpenCurrentFile()
  :SilentCmd open %
endfunction


set relativenumber  " Relative line numbers
set number          " makes current line show linear line number
set hlsearch        " Highlight search matches
set laststatus=2
set clipboard=unnamed


vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>
