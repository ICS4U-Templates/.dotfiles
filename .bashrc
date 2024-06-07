# Created by: Mr Coxall
# Created on: Sept-2020
# .bashrc file

parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\n\[\033[1;30m\]┌ \[\033[0;34m\]$(hostname) \[\e[38;5;135m\]$(pwd)\n\[\033[1;30m\]└ \[\033[0;34m\]mr-coxall\[\e[38;5;27m\]\[\033[33m\]$(parse_git_branch) ↦ \[\e[0m\]'

PROMPT_DIRTRIM=1 #shows just the current directory name
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
