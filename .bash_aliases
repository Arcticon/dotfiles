# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF --color=auto'
alias gl='git log --pretty="format:%h _%an_ %s"'
alias updateFirmware='fwupdmgr get-updates && fwupdmgr update'
alias cpu1='watch -n 0.1 "lscpu | grep MHz"'
alias cpu2='watch -n 0.1 "cat /proc/cpuinfo | grep MHz"'
alias c='code'