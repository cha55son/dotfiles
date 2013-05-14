alias ls="ls -lhG"
alias lhd="ls -d */"
alias lhl="ls -G | egrep '^l|total'"
alias la="ls -pa"
alias lh="ls -p"
alias rm='rm -i'
alias ..='cd ..'
alias ack='ack -aQ'
alias tmux='tmux -2'
alias tmuxl='tmux list-sessions'
alias tmuxa='tmux attach-session -d -t'
alias gits='git status'
alias gitb='git branch'
alias vim='vim -p'

alias flushdns='sudo killall -HUP mDNSResponder'
alias mysqlstart='sudo mysql.server start'
alias mysqlstop='sudo mysql.server stop'
alias apachestart='sudo apachectl start'
alias apachestop='sudo apachectl stop'

alias devstart='mysqlstart && apachestart'
alias devstop='apachestop && mysqlstop'
