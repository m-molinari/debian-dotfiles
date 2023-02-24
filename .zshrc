#######################################################################
# zshrc
#######################################################################

# Set up the prompt
#
export PS1='%F{red}% ┌─%F{green}%n@%m %F{red}%]─[%F{blue}% %~%F{red}% ]
%F{red}% └──╼ %F{yellow}% $ '

# Package zsh-autosuggestions
#
if [[ -e /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Package zsh-syntax-highlighting
#
if [[ -e /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Default Prompt
#
#autoload -Uz promptinit
#promptinit
#prompt adam1

# Use keybindings
#
bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
#
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Ignore from history
#
setopt histignorealldups sharehistory

# Use modern completion system
#
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Alias definitions
#
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
[ -f ~/.bash_aliases_home ] && source ~/.bash_aliases_home

# functions
#
[ -f ~/.bash_functions ] && source ~/.bash_functions

# enable color support of ls and also add handy aliases
#
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

