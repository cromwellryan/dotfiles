export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin

export NODE_PATH="/usr/local/lib/node_modules"

alias ctags="`brew --prefix`/bin/ctags"
alias updatepow="curl get.pow.cx | sh"
alias labrador-start="cd $HOME/.labrador && bundle exec rails s -e production -p 7488"
alias pg-start="postgres -D /usr/local/var/postgres"
alias ebash="vim ~/dotfiles/.bashrc"
alias evim="vim ~/dotfiles/.vimrc"
alias v="vim"
alias cpath="pwd | pbcopy"
alias cproj="cd ~/projects"
alias cdot="cd ~/dotfiles"
alias xx="exit"

############################
# tmuxinator
############################
export EDITOR='vim'

#Git-Svn is sad about perl moving in xcode
export PERL5LIB="/Applications/Xcode.app/Contents/Developer/Library/Perl/5.16/darwin-thread-multi-2level"

############################
# Git
############################
alias g="git"
alias ga="git add"
alias gap="git add -p"
alias gb="git branch"
alias gc="git commit"
alias gcm="git commit -m"
alias go="git checkout"
alias gco="git checkout"
alias gf="git fetch"
alias gcb="git checkout -b"
alias gmv="git mv"
alias gp="git push"
alias gs="git status"
alias gsh="git show"
alias gh="git hist"
alias gup="git-up"

alias gd="git diff"
alias grb="git rebase"
alias gcp="git cherry-pick"

############################
# Conveniences
############################

function mcd() {
  mkdir $1
  cd $1
}

function cdl() {
  cd $1
  ls
}


function wreck() {
  pushd .

  WRECKDIR=`mktemp -d /tmp/wreckXXXXXXXXX` && {
    cd $WRECKDIR
  }
}

export TERM="xterm-256color"
export PATH=/usr/local/bin:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
