# COLORS
RESET="\[\033[0m\]"
GREEN="\[\033[1;32m\]"
BLUE="\[\033[1;34m\]"
YELLOW="\[\033[1;33m\]"

# GIT
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
export PS1="$GREEN\u@\h$RESET:$BLUE\w$YELLOW\$(__git_ps1)$RESET \$ "
