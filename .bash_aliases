alias la="gls -lap --color=auto --group-directories-first"
alias lh="gls -lhp --color=auto --group-directories-first"
alias rm='rm -i'
alias ..='cd ..'
alias ack='ack -Q'
alias tmux='tmux -2'
alias tmuxl='tmux list-sessions'
alias tmuxa='tmux attach-session -d -t'
alias gits='git status'
alias gitb='git branch'
alias gitl="git log --branches --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias hgs='hg status'
alias hgsu='hg summary'
alias vim='vim -p'

alias flushdns='sudo killall -HUP mDNSResponder'
alias mysqlstart='sudo mysql.server start'
alias mysqlstop='sudo mysql.server stop'
alias apachestart='sudo apachectl start'
alias apachestop='sudo apachectl stop'
alias redisstart='launchctl start homebrew.mxcl.redis'
alias redisstop='launchctl stop homebrew.mxcl.redis'

alias devstart='redisstart && mysqlstart && apachestart'
alias devstop='apachestop && mysqlstop && redisstop'
