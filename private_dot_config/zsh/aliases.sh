#!/bin/sh

alias tx='tar --extract --file'
alias wget-any='wget --tries=5 --retry-connrefused --timeout=60 --waitretry=60 --read-timeout=360 --max-redirect=10 --protocol-directories'

# taskfile
# -------------------
alias t='task'

# rust-related
# -------------------
alias cr='cargo'
alias crr='cargo run'
alias crb='cargo build'

# git
# ------------------
alias g='git'
# REMINDER: git also available as g
# git logs a cool-looking tree of oneleined commits
alias ggraph='git log --oneline --all --graph --decorate'
# git logs cool-looking tree of every commit with metadata (author and stuff)
alias ggraph-w-authors='git log --all --graph --decorate'
alias gfetch='git fetch --all --tags --prune-tags'
alias greset='git reset --hard'
alias gclean='git clean -fdx'
alias gsd='git diff --submodule=log'
alias glog='git log --oneline --decorate --graph'
alias glog-self='git log --author="$(git config user.name)"'

alias gsu='git submodule update'
alias gsf='git submodule update --force --rebase'
alias glog-lines='function _search_by_lines(){git log -L"$2","$3":"$1";};_search_by_lines'

alias v='vim'
alias fk='flatpak'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cz='chezmoi'
alias zl='zellij'

alias zcc="zig cc"
alias zcxx="zig c++"

alias journalctl-last-log="sudo journalctl -b -1 -e"
