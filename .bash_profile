# HOMEBREW Options
export HOMEBREW_GITHUB_API_TOKEN=b3239a24315c30b0d43058339cd9d1ddcca6fc01
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# GOPATH
export GOPATH=$HOME/golang

#Add Brews, Postgres and RVM 
PATH=$HOME/.rvm/bin:/usr/local/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin:$GOPATH/bin:$PATH

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Prompt Colours
OFF="\[\033[0m\]"
BLACK="\[\033[0;30m\]"
DARK_GRAY="\[\033[1;30m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]" 
LIGHT_CYAN="\[\033[1;36m\]"
RED="\[\033[0;31m\]"
LIGHT_RED="\[\033[1;31m\]"
PURPLE="\[\033[0;35m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
LIGHT_GRAY="\[\033[0;37m\]"
WHITE="\[\033[1;37m\]"

# Bash Colors
export CLICOLOR=1
export LS_OPTIONS="--color=auto"

# Git Completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Git Prompt
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh

  # PS1 VIRTUALENV + GIT + Custom Colors
  # PS1="${LIGHT_CYAN}\u${OFF}@${LIGHT_PURPLE}\h${OFF}:${LIGHT_GREEN}\W${OFF}"
  # PS1+='$(__git_ps1 "( %s)")\$ '
  # export PS1
  
  PROMPT_COMMAND='__git_ps1 "${VIRTUAL_ENV:+[$YELLOW`basename $VIRTUAL_ENV`$OFF]}$LIGHT_CYAN\u$OFF@$LIGHT_PURPLE\h$OFF:$LIGHT_GREEN\W$OFF" "\\\$ "'
  # PROMPT_COMMAND+='__git_ps1 "${VIRTUAL_ENV:+[$YELLOW`basename $VIRTUAL_ENV`$OFF]}$LIGHT_CYAN\u$OFF@$LIGHT_PURPLE\h$OFF:$LIGHT_GREEN\W$OFF" "\\\$ "'

  # Git Prompt Options
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_SHOWSTASHSTATE=1
  #GIT_PS1_SHOWUPSTREAM="verbose name"
  GIT_PS1_DESCRIBE_STYLE="branch"
  GIT_PS1_SHOWCOLORHINTS=1 #Colors
fi

# GO Completion
if [ -f `brew --prefix`/etc/bash_completion.d/go-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/go-completion.bash
fi

# Aliases
alias tree='tree -C'
alias reload_bash='source ~/.bash_profile'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# .net CORE
if [ -f $HOME/.dnx/dnvm/dnvm.sh ]; then
    source $HOME/.dnx/dnvm/dnvm.sh 
fi

# Mono
export MONO_GAC_PREFIX="/usr/local"

