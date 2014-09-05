# Make sure /usr/local/bin is first so that homebrew packages take precedence
export PATH=/usr/local/bin:$PATH:~/bin:~/dev/scripts

# Git autocomplete and prompt modification
. ~/dev/git/contrib/completion/git-completion.bash
. ~/dev/git/contrib/completion/git-prompt.sh

# boring colorless prompt
# PS1='\w$(__git_ps1 " (%s)") \$ '

# super sexy colorful prompt
PS1='\[\e[1;32m\]\w\]\e[m\]\[\e[1;34m\]$(__git_ps1 " (%s)")\]\e[m\] \[\e[1;32m\]\$\]\e[m\] '

# set up some aliases
alias ls='ls -G'
alias ll='ls -l'

grep1() { awk -v pattern="${1:?pattern is empty}" 'NR==1 || $0~pattern' "${2:?filename is empty}"; }
grep2() { awk -v pattern="${1:?pattern is empty}" 'NR==1 || NR==2 || $0~pattern' "${2:?filename is empty}"; }

# for python virtualenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
