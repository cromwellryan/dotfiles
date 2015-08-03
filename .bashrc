export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:./node_modules/.bin

export NODE_PATH="/usr/local/lib/node_modules"
export JAVA_HOME="/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

############################
# colors for output
############################
NC='\e[0m'      # No Color
red='\e[0;31m'
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
orange='\e[0;33m'
yellow='\e[1;33m'
white='\e[1;37m'
lgray='\e[0;37m'
dgray='\e[1;30m'
lblue='\e[1;34m'
lgreen='\e[1;32m'
lcyan='\e[1;36m'
lred='\e[1;31m'
lpurple='\e[1;35m'

function kill-that-habit() {
  echo -e "${red}Stop ${lgreen}that ${yellow}jackass${NC}"
}

alias updatepow="curl get.pow.cx | sh"
alias labrador-start="cd $HOME/.labrador && bundle exec rails s -e production -p 7488"
alias pg-start="postgres -D /usr/local/var/postgres"

alias dot="cd ~/dotfiles"
alias ebash="vim ~/dotfiles/.bashrc"
alias evim="vim ~/dotfiles/.vimrc"
alias v="vim"
alias cpath="pwd | pbcopy"
alias p="cd ~/projects"
alias xx="exit"
alias :q=kill-that-habit
alias :Q=kill-that-habit
alias ll="ls -ahl"
alias l="ls -l"

# mostly tmuxinator, but others like it too.
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
alias gbt="git branch --track"
alias gc="git commit"
alias go="git checkout"
alias gob="git checkout -b"
alias gco="git checkout"
alias gf="git fetch"
alias gmv="git mv"
alias gmf="git merge --ff-only"
alias gp="git push"
alias gpu="git push -u"
alias gs="git status"
alias gsh="git show"
alias gh="git hist"
alias gup="git pull --rebase && git remote update origin --prune"
alias gfuckit="git reset --hard HEAD@{upstream}"
alias branch="git symbolic-ref --short HEAD 2> /dev/null"
alias cbranch="git symbolic-ref --short HEAD 2> /dev/null | pbcopy"

alias gd="git diff"
alias grb="git rebase"
alias gcp="git cherry-pick"

alias gpp='git-poooosh'

############################
# Conveniences
############################

alias gpg=gpg2
function mcd() {
  mkdir $1
  cd $1
}

function cdl() {
  cd $1
  ls
}

# Examples:
# whats-listening-to 8000
function whats-listening-to() {
  lsof -i tcp:$1
}

function wreck() {
  pushd .

  WRECKDIR=`mktemp -d /tmp/wreckXXXXXXXXX` && {
    cd $WRECKDIR
  }
}

function tree() {
  find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
}

function clear-dns-cache() {
  sudo killall -HUP mDNSResponder
}

export TERM="xterm-256color"
export PATH=/usr/local/bin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

############################
# startup gpg-agent
############################
GPG_AGENT=$(which gpg-agent)
GPG_TTY=`tty`
export GPG_TTY

if [ -f ${GPG_AGENT} ]; then
    . ~/.bash_gpg
fi
