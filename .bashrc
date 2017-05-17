# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -laG'

alias be='bundle exec'
alias ber='bundle exec ruby'

# fzf
alias gco='git co $(git br | fzf)'
alias his='$(history | fzf)'
alias cdf='cd $(ls | fzf)'
# https://github.com/junegunn/fzf/wiki/Examples#opening-files

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}
# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
fo() {
  local out file key
  IFS=$'\n' out=($(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e))
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

# https://github.com/junegunn/fzf/wiki/Examples#changing-directory
# fd - cd to selected directory
fd() {
  DIR=`find * -maxdepth 0 -type d -print 2> /dev/null | fzf-tmux` \
    && cd "$DIR"
}




# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)


# tmux
alias tmuxa='tmux attach -t 0'

# function
function mkdircd () { mkdir -p "$@" && cd "$@"; }
function fg () {
  find ./ -type f -print | xargs grep "$1";
}

function vimppn () {
  vim "./lib/${1//:://}.pm"
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


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
