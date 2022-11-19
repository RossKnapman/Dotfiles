###########################
# ZSH Customisation Stuff #
###########################
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
export TERM=xterm-256color
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


alias rm="echo 'Use del instead'"
alias del="trash"


################
# Editor Stuff #
################
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
alias vim=/usr/bin/nvim


##############
# Path Stuff #
##############
export PATH="$HOME/Scripts:$PATH"
export PATH="$HOME/go/bin:$PATH"
export GOPATH="$HOME/go"


################
# Python Stuff #
################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tp/adj619h/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tp/adj619h/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tp/adj619h/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tp/adj619h/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export SAGE_ROOT=$HOME/sage


################
# Config Stuff #
################

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
