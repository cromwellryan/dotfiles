export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias updatepow="curl get.pow.cx | sh"
alias labrador-start="cd $HOME/.labrador && bundle exec rails s -e production -p 7488"
alias pg-start="postgres -D /usr/local/var/postgres"

alias ga="git add -p"
alias gc="git commit"
alias gs="git status"

export NODE_PATH="/usr/local/lib/node_modules"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#Git-Svn is sad about perl moving in xcode
export PERL5LIB="/Applications/Xcode.app/Contents/Developer/Library/Perl/5.16/darwin-thread-multi-2level"


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

