if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias lhd="ls -ld */"
alias lhl="ls -lh --color | egrep '^l|total'"
alias la="ls -lhpa"
alias lh="ls -lhp"
alias rm='rm -i'
alias ..='cd ..'
alias ack='ack -aQ'
alias tmux='tmux -2'
alias tmuxl='tmux list-sessions'
alias tmuxa='tmux attach-session -d -t'
alias gits='git status'
alias gitb='git branch'
alias vim='vim -p'
