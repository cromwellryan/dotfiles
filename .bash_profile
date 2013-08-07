source ~/.bashrc

alias labrador-start="cd $HOME/.labrador && bundle exec rails s -e production -p 7488"
alias pg-start="postgres -D /usr/local/var/postgres"
alias ga="git add -p"
alias gc="git commit"
alias gs="git status"

export NODE_PATH="/usr/local/lib/node_modules"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function mcd() {
  mkdir $1
  cd $1
}
