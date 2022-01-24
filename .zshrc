export ZSH="/Users/jeremycade/.oh-my-zsh"
export ZPLUG_HOME=/usr/local/opt/zplug

source $ZSH/oh-my-zsh.sh
source $ZPLUG_HOME/init.zsh

# Set Dracula as the theme
zplug "dracula/zsh", as:theme

# Setup plugins
zplug "plugins/aws", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/docker-componse", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/golang", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh
zplug "plugins/thefuck", from:oh-my-zsh

# Check if we need to install anything.
if ! zplug check; then
    zplug install
fi

# Load it all.
zplug load 

# Secrets and Additional bits
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
