export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/usr/local/bin:$PATH

export NODE_PATH="/usr/local/lib/node_modules"

alias ctags="`brew --prefix`/bin/ctags"
alias updatepow="curl get.pow.cx | sh"
alias labrador-start="cd $HOME/.labrador && bundle exec rails s -e production -p 7488"
alias pg-start="postgres -D /usr/local/var/postgres"
alias ebash="vim ~/dotfiles/.bashrc"
alias evim="vim ~/dotfiles/.vimrc"


#Git-Svn is sad about perl moving in xcode
export PERL5LIB="/Applications/Xcode.app/Contents/Developer/Library/Perl/5.16/darwin-thread-multi-2level"

##############
# Git
##############
alias g='git'
alias gap='git add -p'
alias gco='git checkout'
alias gc="git commit"
alias gs="git status"
alias gcp="git cherry-pick"


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

function cdproj() {
  cd ~/projects
}

function wreck() {
  pushd .

  WRECKDIR=`mktemp -d /tmp/wreckXXXXXXXXX` && { 
    cd $WRECKDIR
  }
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
