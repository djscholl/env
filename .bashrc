# Make sure /usr/local/bin is first so that homebrew packages take precedence
export PATH=/usr/local/bin:$PATH:~/bin:~/dev/scripts

# Git autocomplete and prompt modification
. ~/dev/git/contrib/completion/git-completion.bash
. ~/dev/git/contrib/completion/git-prompt.sh


# set up some aliases
alias ls='ls -G'
alias ll='ls -l'

grep1() { awk -v pattern="${1:?pattern is empty}" 'NR==1 || $0~pattern' "${2:?filename is empty}"; }
grep2() { awk -v pattern="${1:?pattern is empty}" 'NR==1 || NR==2 || $0~pattern' "${2:?filename is empty}"; }

# for python virtualenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
LIME_YELLOW=$(tput setaf 190)
YELLOW=$(tput setaf 3)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

# boring colorless prompt
# PS1='\w$(__git_ps1 " (%s)") \$ '

# super sexy colorful prompt
PS1='\[${GREEN}\]\w\[${BLUE}\]$(__git_ps1 " (%s)") \$ \[${NORMAL}\]'

# colorful prompt with time
PS1='\[${CYAN}\]\w\[${MAGENTA}\]$(__git_ps1 " (%s)") \[${YELLOW}\]\D{%F %T %z}\n\[${CYAN}\]\$ \[${NORMAL}\]'
