export TERM=xterm-256color

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# append to the history file, don't overwrite it
shopt -s histappend

source ~/.git-completion.bash

function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

if [ -f ~/.bash_colors ]; then
    . ~/.bash_colors
fi

USER="${BBlue}\u${NC}"
AT="${BBlue}@${NC}"
HOST="${BBlue}\h${NC}"
DIR="${BYellow}\w${NC}"
PROMPT="${White}\$${NC}"

BRANCH="${BBlue}%s${NC}"
DIRTY="${BYellow}\$(parse_git_dirty)${NC}"
GIT="\$(__git_ps1 \"${BBlue}:${NC}${BRANCH}${DIRTY}\")"


export PS1="${USER}${AT}${HOST} ${DIR}${GIT} ${PROMPT} "

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# set custom umask
umask 0022
# allow Ctrl-S and Ctrl-Q
stty -ixon
export EDITOR=vim
export PATH=$PATH:$HOME/bin
