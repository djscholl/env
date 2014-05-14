export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/bin/"

alias ls="ls -G"
alias ll="ls -l"
alias l="ls"
alias la="ll -a"

# git stuff & command prompt
. ~/bin/git/contrib/completion/git-completion.bash
. ~/bin/git/contrib/completion/git-prompt.sh
PS1='\W$(__git_ps1 " (%s)") \$ '
