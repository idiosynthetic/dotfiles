# .zshrc

## Modularity makes things nice.
ZSHRCDIR=~/.zsh
export INTRACOMD=/bhf

## User specific aliases and functions

###
### Interface
###

## Command prompt
source $ZSHRCDIR/promptrc

## Aliases
source $ZSHRCDIR/aliasrc

## Completion Control
source $ZSHRCDIR/completionrc

## Various options
source $ZSHRCDIR/optrc

###
### Environemnt
###
source $ZSHRCDIR/envrc

###
### Various Things to Run
###
source $ZSHRCDIR/runrc


### COLORS ###
fg_green=$'%{\e[0;32m%}'
fg_blue=$'%{\e[0;34m%}'
fg_cyan=$'%{\e[0;36m%}'
fg_red=$'%{\e[0;31m%}'
fg_brown=$'%{\e[0;33m%}'
fg_purple=$'%{\e[0;35m%}'
#
fg_light_gray=$'%{\e[0;37m%}'
fg_dark_gray=$'%{\e[1;30m%}'
fg_light_blue=$'%{\e[1;34m%}'
fg_light_green=$'%{\e[1;32m%}'
fg_light_cyan=$'%{\e[1;36m%}' fg_light_red=$'%{\e[1;31m%}'
fg_light_purple=$'%{\e[1;35m%}'
fg_no_colour=$'%{\e[0m%}'
#
fg_white=$'%{\e[1;37m%}'
fg_black=$'%{\e[0;30m%}'
#
#### PROMPT ###
PS1="${fg_white}[${fg_blue}%n${fg_red}@${fg_green}%m${fg_light_gray}:${fg_cyan}%2d${fg_white}]${fg_light_gray}%# "
#get pretty colors
eval $(dircolors -b ~/.dir_colors)

export GREP_OPTIONS='--color=auto'

case $TERM in
    xterm*)
        precmd() {print -Pn "\e]0;%n@%m: %~\a"}
		ssh() {
			print -Pn "\e]0;$@\a";
			/usr/bin/ssh "$@";
			print -Pn "\e]0;%n@%m: %~\a";
		}
        ;;
esac

