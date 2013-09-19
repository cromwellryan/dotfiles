source ~/.bashrc

alias updatepow="curl get.pow.cx | sh"
alias labrador-start="cd $HOME/.labrador && bundle exec rails s -e production -p 7488"
alias pg-start="postgres -D /usr/local/var/postgres"

##############
# Git
##############
alias ga="git add -p"
alias gc="git commit"
alias gs="git status"

export NODE_PATH="/usr/local/lib/node_modules"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##############
# term stuff
##############

alias cpath="pwd | pbcopy"

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
