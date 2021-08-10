export ZSH="/Users/jeremycade/.oh-my-zsh"

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "dracula/zsh", as:theme
zplug "plugins/git",   from:oh-my-zsh

if ! zplug check; then
    zplug install
fi

zplug load 

source $ZSH/oh-my-zsh.sh

# Secrets and Additional bits
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
