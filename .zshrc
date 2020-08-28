# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


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

# Prompt
#
#autoload -Uz promptinit
#promptinit
#prompt pws
source ~/Apps/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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
# replacement for programs
alias cat='bat'
alias vim='nvim'

# Environmen variables
#
#(find them in ~/.zshenv)

# Final scripts
source ~/Apps/k/k.sh
source ~/Apps/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
source ~/Apps/zsh-autosuggestions/zsh-autosuggestions.zsh
