function git-poooosh() {
  git push && git push origin :$1 && git branch -d $1
}
alias gpp='git-poooosh'
