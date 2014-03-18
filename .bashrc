export TERM=xterm-256color

# append to the history file, don't overwrite it
shopt -s histappend
# Resize the window if necessary
shopt -s checkwinsize

source ~/.bash_colors

USER="${BBlue}\u${NC}"
AT="${BBlue}@${NC}"
HOST="${BBlue}\h${NC}"
DIR="${BYellow}\$(working_directory)${NC}"
PROMPT="${BBlue}>${NC}"
BRANCH="${BBlue}%s${NC}"
DIRTY="${BYellow}\$(parse_git_dirty)${NC}"
GIT="\$(__git_ps1 \"${BBlue}:${NC}${BRANCH}${DIRTY}\")"

export PS1="${USER}${AT}${HOST} ${DIR}${GIT} ${PROMPT} "

source ~/.git-completion.bash
source ~/.bash_functions
source ~/.bash_aliases

# set custom umask
umask 0022
stty -ixon
export EDITOR=vim

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
