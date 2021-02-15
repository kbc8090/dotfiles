echo -e -n "\x1b[\x36 q" # Initial cursor set to steady bar 

set fish_greeting
set TERM "st-256color"
set EDITOR "nvim"
set -x LESS "-X"
set EXA_ICON_SPACING "0"
set fish_color_normal cyan
set fish_color_autosuggestion black
set fish_color_command green
set fish_color_error red
set fish_color_param cyan
set -U fish_prompt_pwd_dir_length 0
set fish_cursor_insert line

alias ls='exa -a --group-directories-first --icons'
alias ll='exa -alh --group-directories-first --git --icons'
alias vim='nvim'
alias df='df -h'
alias shutdown='shutdown now'
alias vimrc='nvim $HOME/.config/nvim/init.vim'
alias packagesizes="expac -H M '%m\t%n' | sort -h"
alias sx='startx'
alias grep='rg'
alias bat='bat --theme=palenight'
alias du='du -h'
alias sdn='shutdown now'

function fish_prompt

	set_color red
	printf "["
	set_color green --bold
	printf "%s" "$USER"
	set_color normal
	set_color red
	printf "@"
	set_color blue --bold
	printf "%s" "$hostname "
	set_color magenta
	printf (prompt_pwd)
	set_color normal
	set_color red
	printf "]"
	set_color normal
	set_color red --bold
	printf " ➤"
	set_color yellow
	printf "➤"
	set_color green
	printf "➤ "
	#set_color yellow --bold
#	printf " ➤➤➤ "
	set_color normal

end

function fish_title
	
	printf "%s" "$USER"
	printf "@"
	printf "%s" "$hostname: "
	printf "%s" "$PWD"

end
