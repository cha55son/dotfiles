if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias la="ls -lha --color | egrep '^d|total' && ls -lha --color | egrep -v '^d|total'"
alias lh="ls -lh --color | egrep '^d|total' && ls -lh --color | egrep -v '^d|total'"
alias rm='rm -i'
alias ..='cd ..'
alias ack='ack -aQ'
alias tmux='tmux -2'
alias gits='git status'
