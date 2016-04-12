# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -laG'

alias be='bundle exec'
alias ber='bundle exec ruby'

# function
function mkdircd () { mkdir -p "$@" && cd "$@"; }
function fg () {
  find ./ -type f -print | xargs grep "$1";
}

# git
source ~/dotfiles/git-prompt.sh
source ~/dotfiles/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
#PS1='[\u@\h \W]$(__git_ps1 "[\[\033[32m\]%s\[\033[0m\]]")\$ '
#PS1='\u@\h \W$(__git_ps1 "[\[\033[32m\]%s\[\033[0m\]]")\$ '
#PS1='\h:\W \u$(__git_ps1 "(\[\033[32m\]%s\[\033[0m\])")\$ '
PS1='\u:\W $(__git_ps1 "(\[\033[32m\]%s\[\033[0m\])")\$ '

alias gfp='git fetch -p'

..g() {
  cd `git rev-parse --show-toplevel`
}


# Source local definitions
if [ -f ~/.bashrc.local ] ; then
  . ~/.bashrc.local
fi

