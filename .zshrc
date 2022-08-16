# Changes to steady ibeam in xterm
# echo -e -n "\x1b[\x36 q" 
 echo -e -n "\033[6 q"
 export EDITOR=nvim
 export BROWSER=chromium
 export LESS="-X"
 export CLICOLOR=1
 export LSCOLORS=GxFxCxDxBxegedabagaced
 export MANPAGER="nvim -c 'set ft=man' -"
 export MANPAGER="nvim +Man!"
 export EXA_ICON_SPACING=2
# [ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null
# Enable colors and change prompt:❮

autoload -U colors && colors
PS1="%{$fg[red]%}[%B%{$fg[green]%}%n%b%{$fg[red]%}@%B%{$fg[blue]%}%M %{$fg[magenta]%}%~%b%{$fg[red]%}]% %{$fg[yellow]%} »%{$reset_color%} "
#PS1="%B%{$fg[red]%}[%{$fg[green]%}%n%{$fg[red]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%} »%b "
#PS1="%B%{$fg[green]%}❮%{$fg[yellow]%}❮%{$fg[red]%}❮%{$fg[green]%} %n%{$fg[red]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~ %{$fg[red]%}% ❯%{$fg[yellow]%}❯%{$fg[green]%}❯%{$reset_color%}%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Alias
alias ls="exa -a --group-directories-first --icons --color=always"
alias ll="exa -alh --git --group-directories-first --icons --color=always"
alias shutdown="shutdown now"
alias df="df -h"
alias free="free -h"
alias vim="nvim"
alias vimrc="nvim $HOME/.config/nvim/init.vim"
alias xterm="xterm -b 5"
alias wp="$HOME/.local/bin/wallpaper"
alias packagesizes="expac -H M '%m\t%n' | sort -h"
alias sx="startx"
alias grep="rg"
#alias cat="bat --theme Material-Theme-Palenight"
alias bat="bat --theme Material-Theme-Palenight"
alias sdn="shutdown now"
alias pacup="sudo pacman -Syyu"
alias updaterepos='sudo reflector --verbose -c US --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'

# Load zsh-syntax-highlighting and dynamic window title plugin; should be last.
source $HOME/.zsh/termsupport.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
