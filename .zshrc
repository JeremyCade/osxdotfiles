export ZSH="/Users/jeremycade/.oh-my-zsh"
export ZPLUG_HOME=/usr/local/opt/zplug

source $ZSH/oh-my-zsh.sh
source $ZPLUG_HOME/init.zsh

zplug "dracula/zsh", as:theme
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/thefuck", from:oh-my-zsh

if ! zplug check; then
    zplug install
fi

zplug load 

# Secrets and Additional bits
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
