# Disable Ctrl-s and Ctrl-q
stty -ixon

# Autocd
shopt -s autocd

# append to the history file, don't overwrite it
shopt -s histappend

#parallel history
history -a

# Infinite history
HISTSIZE= HISTFILESIZE=

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[$(tput bold)\]\[\033[38;5;15m\][\[\033[38;5;1m\]\u\[\033[38;5;15m\]@\[\033[38;5;2m\]\h\[\033[38;5;15m\] \[\033[38;5;1m\]\$(pwd)\[\033[38;5;15m\]]\[\033[38;5;15m\]\$(parse_git_branch) \$ \[\e[0m\]"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias gl='git log --pretty="format:%h _%an_ %s"'
alias updateFirmware='fwupdmgr get-updates && fwupdmgr update'
alias cpu1='watch -n 0.1 "lscpu | grep MHz"'
alias cpu2='watch -n 0.1 "cat /proc/cpuinfo | grep MHz"'

export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
export EDITOR="vim"
export VISUAL="$EDITOR"
