export PATH=$PATH:~/bin

# Git autocomplete and prompt modification
. ~/dev/git/contrib/completion/git-completion.bash
. ~/dev/git/contrib/completion/git-prompt.sh
PS1='\w$(__git_ps1 " (%s)") \$ '

# set up some aliases
alias ls='ls -G'
alias ll='ls -l'

grep1() { awk -v pattern="${1:?pattern is empty}" 'NR==1 || $0~pattern' "${2:?filename is empty}"; }
grep2() { awk -v pattern="${1:?pattern is empty}" 'NR==1 || NR==2 || $0~pattern' "${2:?filename is empty}"; }
