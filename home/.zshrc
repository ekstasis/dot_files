#
# Executes commands at the start of an interactive session.
#

# ZSH Options
setopt auto_cd

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Prompt (Prezto)
autoload prompt && prompt steeef

# Editor
bindkey -v
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# Less
export LESS='-g -i -M -R' 

# Source Aliases
source ~/.aliases

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#zstyle ‘:completion:*’ verbose yes
#zstyle ‘:completion:*:descriptions’ format ‘%B%d%b’
#zstyle ‘:completion:*:messages’ format ‘%d’
#zstyle ‘:completion:*:warnings’ format ‘No matches for: %d’
#zstyle ‘:completion:*’ group-name ”

# Paths 
path=(~/bin $path)

# Functions
#
# fn_dir=~/.zsh/functions
# [[ -d $fn_dir ]] || print ERROR:  $fn_dir does not exist.  Custom functions won\'t be loaded ...
# [[ $fpath = *$fn_dir* ]] || fpath=($fn_dir $fpath); print Added $fn_dir to \$fpath
# autoload ${fpath[1]}/*(:t)

## Python & Conda ##
#==========#
# . /Users/babymice/Programming/miniconda3/etc/profile.d/conda.sh
# conda activate base

