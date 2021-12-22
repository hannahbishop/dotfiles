alias gcof='git branch | cut -c 3- | fzy | xargs git checkout'
alias gco-='git checkout -'
alias gfixup='findsha | xargs git commit --fixup'

findsha()
{
  git log --oneline | fzy | cut -c -9 
};

# Parameters
# $1: commit message
# gch // Git Commit Hers
gch()
{
        MESSAGE=$(printf "[%s] - %s" $(grep -o "SXM-[0-9]*" <<< $(git rev-parse --abbrev-ref HEAD)) $1)
        git commit -m $MESSAGE 
};

# Stolen pretty git graph stuff from stack overflow
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
