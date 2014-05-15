export PATH=$PATH:~/bin

# Git autocomplete and prompt modification
. ~/bin/git/contrib/completion/git-completion.bash
. ~/bin/git/contrib/completion/git-prompt.sh
PS1='\w$(__git_ps1 " (%s)") \$ '

# set up some aliases
alias ls='ls -G'
alias ll='ls -l'
