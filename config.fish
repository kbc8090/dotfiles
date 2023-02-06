# echo -e -n "\x1b[\x36 q" # Initial cursor set to steady bar 

set -U fish_greeting

set TERM "xterm-256color"
set LIBGL_ALWAYS_SOFTWARE "true"
set GALLIUM_DRIVER "llvmpipe kitty"
set EDITOR "nvim"
set BROWSER "chromium"
set BAT_THEME "base16-256"
set -gx EXA_ICON_SPACING "2"
# set -x LESS "-X"
set fish_color_normal cyan
set fish_color_autosuggestion black
set fish_color_command green
set fish_color_error red
set fish_color_param cyan
# set -U fish_prompt_pwd_dir_length 0
# set fish_cursor_insert line
set -x MANPAGER "nvim +Man!"
# set -g __fish_git_prompt_showupstream auto
# set -g __fish_git_prompt_showcolorhints
# set -g __fish_git_prompt_use_informative_chars
#
# set -g __fish_git_prompt_show_informative_status 1
# set -g __fish_git_prompt_hide_untrackedfiles 1
#
# set -g __fish_git_prompt_color_branch magenta --bold
# set -g __fish_git_prompt_showupstream "informative"
# set -g __fish_git_prompt_char_upstream_ahead "↑ "
# set -g __fish_git_prompt_char_upstream_behind "↓ "
# set -g __fish_git_prompt_char_upstream_prefix ""
#
# set -g __fish_git_prompt_char_stagedstate "● "
# set -g __fish_git_prompt_char_dirtystate "✚ "
# set -g __fish_git_prompt_char_untrackedfiles "… "
# set -g __fish_git_prompt_char_conflictedstate "✖ "
# set -g __fish_git_prompt_char_cleanstate "✔ "
#
# set -g __fish_git_prompt_color_dirtystate blue
# set -g __fish_git_prompt_color_stagedstate yellow
# set -g __fish_git_prompt_color_invalidstate red
# set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
# set -g __fish_git_prompt_color_cleanstate green --bold
#
alias ls='exa -a --group-directories-first --icons --color=always'
alias ll='exa -alh --group-directories-first --git --icons --color=always'
alias vim='$EDITOR'
alias v='$EDITOR'
alias neovim='nvim'
alias df='df -h'
alias shutdown='shutdown now'
# alias vimrc='nvim $HOME/.config/nvim/'
alias packagesizes="expac -H M '%m\t%n' | sort -h"
alias sx='startx'
alias grep='rg -S'
alias rg='rg -S'
alias fd='fd -H'
alias bat='bat --theme="base16-256"'
alias du='du -h'
alias sdn='shutdown now'
alias pacup='sudo pacman -Syyu'
alias fishy='$EDITOR $HOME/.config/fish/config.fish'
alias config='cd $HOME/.config'
alias home='cd $HOME'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push -u'
alias gb='git blame'
alias gd='git diff'
alias cstar='$EDITOR $HOME/.config/starship.toml'

# function fish_prompt
# 	set_color red
# 	printf "["
# 	set_color green --bold
# 	printf "%s" "$USER"
# 	set_color normal
# 	set_color red
# 	printf "@"
# 	set_color blue --bold
# 	printf "%s" "$hostname "
# 	set_color magenta
# 	printf (prompt_pwd)
# 	set_color normal
# 	set_color red
# 	printf "]"
# 	set_color normal
# 	printf (fish_git_prompt)
# 	set_color yellow --bold
# 	printf " » "
# #	set_color yellow
# #	printf "➤"
# #	set_color green
# #	printf "➤ "
# 	#set_color yellow --bold
# #	printf " ➤➤➤ "
# 	set_color normal
#
# end

function fish_title
  printf "%s" "$USER"
  printf "@"
  printf "%s" "$hostname: "
  printf "%s" "$PWD"
end

starship init fish | source
