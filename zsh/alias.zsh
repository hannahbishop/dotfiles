alias gcof='git branch | cut -c 3- | fzy | xargs git checkout'
alias gco-='git checkout -'
alias gfixup='findsha | xargs git commit --fixup'

findsha()
{
  eval "git log --oneline | fzy | cut -c -9" 
};
