#!/bin/bash

alias modg='vim ~/.bashrc.d/??-git.sh'
alias modc='git config --edit'

# use hub instead of git to easily work with github
if have hub; then
    alias git='hub'
fi

# Non-modifying commands
alias gis='git status -sb'
alias gil='git log --date=local --pretty=format:"%C(bold blue)%h %C(green)%an %C(yellow)%ad%x08%x08%x08%x08%x08%x08%x08%x08%C(reset) : %s"'
[[ "$0" == *bash ]] && __git_complete gil _git_log
alias gid='git diff HEAD'
[[ "$0" == *bash ]] && __git_complete gid _git_diff
alias gids='git diff HEAD --staged'
[[ "$0" == *bash ]] && __git_complete gids _git_diff
alias gidw='git diff HEAD --word-diff'
[[ "$0" == *bash ]] && __git_complete gidw _git_diff
alias gidsw='git diff HEAD --word-diff --staged'
[[ "$0" == *bash ]] && __git_complete gidsw _git_diff
alias gidl='gid -R HEAD^1'
[[ "$0" == *bash ]] && __git_complete gidl _git_diff

# Branches
alias gib='git branch'
[[ "$0" == *bash ]] && __git_complete gib _git_branch
alias gic='git checkout'
[[ "$0" == *bash ]] && __git_complete gic _git_checkout

alias gitcb="git branch | grep ^\* | cut -d' ' -f2-"

alias gir='git rebase'
[[ "$0" == *bash ]] && __git_complete gir _git_rebase
alias gim='git merge'
[[ "$0" == *bash ]] && __git_complete gim _git_merge
alias gif='git fetch --all'
[[ "$0" == *bash ]] && __git_complete gif _git_fetch

function cdr() {
    cd "$(git rev-parse --show-toplevel)/$1"
}

function gitpath() {
    git rev-parse --show-toplevel
}
