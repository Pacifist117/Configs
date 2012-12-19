# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pacifist/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
PROMPT="$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}> "
RPROMPT="%{$fg[yellow]%}%1~ %{$reset_color%}"


LANG=en_US.UTF-8
alias ssh='TERM=xterm-256color ssh'
#alias pm-suspend='sudo pm-suspend && i3lock -c 000000'
alias latexmkspeciale="grep -l '\\documentclass' *tex | xargs latexmk -pdf -pvc -silent"
