" quick leader
let mapleader = ","
nnoremap ; :
vnoremap ; :

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle goodness
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " be iMproved
filetype off     " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Clean Code
Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-surround'

" UI
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Nav
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-misc'

" Ruby
Plugin 'thoughtbot/vim-rspec'

" Language Support
Plugin 'sheerun/vim-polyglot'

" Markdown
" Support *.md so that ftplugin/markdown.vim is autoloaded
Plugin 'tpope/vim-markdown'

Plugin 'chrisbra/csv.vim'

Plugin 'vim-scripts/LargeFile'

:imap jj <Esc>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Docker!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'ekalinin/Dockerfile.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bling/vim-airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git & Github
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'

map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>go :Gbrowse<CR>

Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'mhinz/vim-signify'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" epmatsw/ag.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'rking/ag.vim'

nnoremap \ :Ag<SPACE>

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
        \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mattn/emmet-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'mattn/emmet-vim'

" Only use emmet with html/css

imap <C-k> <c-y>,

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" benmills/vimux
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'benmills/vimux'

let g:VimuxUseNearestPane = 1
" Setup filetype specific <leader>a commands in ftplugin

nnoremap vlc :call VimuxRunLastCommand()<CR>
nmap vmp :VimuxPromptCommand<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jgdavey/vim-turbux
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jgdavey/vim-turbux'

let g:no_turbux_mappings = 1
map <leader>t <Plug>SendTestToTmux
map <leader>s <Plug>SendFocusedTestToTmux
let g:turbux_command_rspec = 'bundle exec spring rspec'
let g:turbux_command_cucumber = 'bundle exec spring cucumber'
let g:turbux_command_teaspoon = 'jasmine-node'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" christoomey/vim-tmux-navigator
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'christoomey/vim-tmux-navigator'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" kien/ctrlp.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'kien/ctrlp.vim'

let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_use_caching = 0 " Disable caching since Ag is blazin'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Valloric/YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe'
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mattn/gist-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tabs and indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2 shiftwidth=2 " tabs rendered as 2 spaces
set expandtab " expand tabs to spaces (should this be filemode dependent?

set ai "Auto indent
"set si "Smart indent

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
nmap <leader>gwh :topleft  vnew<CR>
nmap <leader>gwl :botright vnew<CR>
nmap <leader>gwk :topleft  new<CR>
nmap <leader>gwj :botright new<CR>
" " buffer
nmap <leader>gh  :leftabove  vnew<CR>
nmap <leader>gl  :rightbelow vnew<CR>
nmap <leader>gk  :leftabove  new<CR>
nmap <leader>gj  :rightbelow new<CR>

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
:nnoremap <Leader><Leader>s /<C-r><C-w>
:nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

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
:command! Q q
:command! Wq wq
:command! WQ q
:command! E ene

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
" ApiBlueprint support
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'kylef/apiblueprint.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tpope/vim-rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-rails'

nnoremap <LEADER>av :AV<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Happy writing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'junegunn/goyo.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Run buffers quickly
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'thinca/vim-quickrun'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Happy rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Restart Pow.cx for the Current App
command! PowRestart :SilentCmd touch tmp/restart.txt; touch tmp/.livereload.rb

" Capistrano tasks are ruby files
au BufNewFile,BufRead *.cap set filetype=ruby
au BufNewFile,BufRead *.rabl set filetype=ruby

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

map <leader><leader>O !open %<CR>

call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" API Blueprint
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au BufNewFile,BufRead *.apib set filetype=apiblueprint

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

filetype plugin indent on
set exrc
