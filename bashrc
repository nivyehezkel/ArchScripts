#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias ??='readlink -f'
alias g='gvim -o'
alias rambox='~/.Rambox/rambox'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[01;32m\]\$(parse_git_branch)\[\033[00m\] \[\033[01;35m\]\u@\h \[\033[01;36m\]\W \[\033[00m\]$ "
