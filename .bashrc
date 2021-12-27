#!/bin/bash

# use vim keybindings in command line
set -o vi

# define colors and font settings
green="\[\e[32m\]"
blue="\[\e[34m\]"
default_white="\[\e[39m\]"
reset_font="\[\e[0m\]"
bold_on="\[\e[1m\]"
bold_off="\[\e[21m\]"

# when debugging bash with -x, show line number instead of pluses
export PS4='Line ${LINENO}: '
export PS1="${bold_on}${green}\u${default_white}:${blue}\w${reset_font}$ "
export EDITOR=vim

alias ls='ls --color=always'
alias ll='ls -la --color=always'
alias c='clear'
alias ac='. .venv/bin/activate'
alias de='deactivate'
alias vim='nvim.appimage'
# a tree command that skips common "bloaters"
tree_ignore_cases="__pycache__|*.pyo|dist|*egg-info|*.d|*.rmeta|*.rlib|*.so"
alias tre='tree -C --matchdirs -I "${tree_ignore_cases}"'
# a grep command that skips common "bloaters"
gre_cmd='grep --color --exclude-dir=__pycache__ --exclude-dir=.git '
gre_cmd+='--exclude-dir=dist --exclude-dir=.mypy_cache '
gre_cmd+='--exclude-dir=.venv* --exclude=*.pyo'
alias gre="$gre_cmd"
alias grep='grep --color'

function jsonify() {
  if [ $# -ne 1 ]; then
    echo "Takes one input argument: the name of the file to jsonify"
    return 1
  fi
  new_file_name="./jsonify_out"
  filename="$1"
  # replace all single quotes with double quotes
  sed "s/'/\"/g" "${filename}" > "${new_file_name}"
  echo "jq-readable file written to ${new_file_name}"
}

git config --global alias.unstage 'reset HEAD --'
git config --global alias.logg 'log --graph --all --decorate --pretty=oneline --abbrev-commit'

export PATH+="$PATH:/home/magnus/.cargo/bin"
