# Changes to steady ibeam in xterm
# echo -e -n "\x1b[\x36 q" 
 echo -e -n "\033[6 q"
# [ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null
# Enable colors and change prompt:❮

autoload -U colors && colors
PS1="%{$fg[red]%}[%B%{$fg[green]%}%n%b%{$fg[red]%}@%B%{$fg[blue]%}%M %{$fg[magenta]%}%~%b%{$fg[red]%}]% %B%{$fg[yellow]%} »%{$reset_color%}%b "
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
alias ls="exa -a --group-directories-first --icons"
alias ll="exa -alh --git --group-directories-first --icons"
alias shutdown="shutdown now"
alias df="df -h"
alias free="free -h"
alias vim="nvim"
alias vimrc="nvim $HOME/.config/nvim/init.vim"
alias xterm="xterm -b 5"
alias wp="$HOME/.local/bin/wallpaper"
alias packagesizes="expac -H M '%m\t%n' | sort -h"

# Load zsh-syntax-highlighting and dynamic window title plugin; should be last.
source $HOME/.zsh/termsupport.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
