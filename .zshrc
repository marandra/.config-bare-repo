# History options
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt INC_APPEND_HISTORY

# ZLE vi stile
bindkey -v

# Other options
#
setopt correct
setopt no_beep
setopt auto_cd

# Completion
#
# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1
# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
# autojump
source /home/marcelo/.autojump/etc/profile.d/autojump.sh
#
autoload -Uz compinit
compinit
#_comp_options+=(globdots)  # include hidden files
# allow source bash completion scripts
autoload bashcompinit
bashcompinit

# Prompt
#
#autoload -Uz promptinit
#promptinit
#prompt pws

# Aliases
#
alias gitdot='/usr/bin/git --git-dir=$HOME/.config-bare-repo/ --work-tree=$HOME'
#
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
#
alias refresh='source ~/.zshrc'
alias open='mimeo'
alias pstatus='pueue status'
alias pclean='pueue clean'
alias padd='pueue add --'
#
alias cat='bat'
alias vim='nvim'
alias vimdiff='nvim -d'
alias icat='kitty +kitten icat'

# Environmen variables
#
#(find them in ~/.zshenv)

# Final scripts
source ~/Apps/k/k.sh
source ~/Apps/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
source ~/Apps/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(dircolors ~/.dir_colors)";

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/marcelo/Apps/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/marcelo/Apps/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/marcelo/Apps/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/marcelo/Apps/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


source /home/marcelo/.config/broot/launcher/bash/br
eval "$(starship init zsh)"
