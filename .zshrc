# .zshrc

alias ls='ls --color=tty -F'
alias df='df -h'
alias du='du -h'
alias ll='ls -l'
alias grep='grep --color=auto'

autoload -U compinit
compinit

setopt autolist         # List possible completions
setopt automenu         # But after that switch between possible
setopt nonomatch        # nomatch is stupid and should be shot
setopt nobeep           # beep is even worse and should be burned

HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE

bindkey -e

autoload -U colors && colors
PS1="[%{$fg[blue]%}%n%{$fg[red]%}@%{$fg[green]%}%m%{$reset_color%}:%{$fg[cyan]%}%2d%{$reset_color%}]%# "

eval $(dircolors -b ~/.dircolors-solarized-ansi-light)

