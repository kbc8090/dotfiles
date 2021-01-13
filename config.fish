set fish_greeting
set TERM "xterm-256color"
set EDITOR "nvim"
set fish_color_normal cyan
set fish_color_autosuggestion black
set fish_color_command green
set fish_color_error red
set fish_color_param cyan
set -U fish_prompt_pwd_dir_length 0

alias ls='exa -a --group-directories-first --icons'
alias ll='exa -alh --group-directories-first --icons'
alias vim='nvim'
alias df='df -h'
alias shutdown='shutdown now'
alias vimrc='nvim $HOME/.config/nvim/init.vim'

function fish_prompt

	set_color red --bold
	printf "["
	set_color green
	printf "%s" "$USER"
	set_color red
	printf "@"
	set_color blue
	printf "%s" "$hostname "
	set_color magenta
	echo -n (prompt_pwd)
	set_color red
	printf "]"
	set_color yellow
	printf " » "
	set_color normal

end

function fish_title
	
	printf "%s" "$USER"
	printf "@"
	printf "%s" "$hostname: "
	printf "%s" "$PWD"

end
