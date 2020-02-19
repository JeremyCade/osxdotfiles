# GOPATH
export GOPATH=$HOME/golang

# DOTNET Runtime
export ASPNETCORE_ENVIRONMENT=Development
export FrameworkPathOverride=/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/4.6.2-api/

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

# AWS CLI Completition
complete -C aws_completer aws

# dotnet Completition
_dotnet_bash_complete()
{
  local word=${COMP_WORDS[COMP_CWORD]}

  local completions
  completions="$(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}")"

  COMPREPLY=( $(compgen -W "$completions" -- "$word") )
}

complete -f -F _dotnet_bash_complete dotnet

# Git Completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Git Prompt
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh

  if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]]; then
    PROMPT_COMMAND='update_terminal_cwd; __git_ps1 "${VIRTUAL_ENV:+[$YELLOW`basename $VIRTUAL_ENV`$OFF]}$LIGHT_CYAN\u$OFF@$LIGHT_BLUE\h$OFF:$LIGHT_GREEN\W$OFF" "\\\$ "'
  else
    PROMPT_COMMAND='__git_ps1 "${VIRTUAL_ENV:+[$YELLOW`basename $VIRTUAL_ENV`$OFF]}$LIGHT_CYAN\u$OFF@$LIGHT_BLUE\h$OFF:$LIGHT_GREEN\W$OFF" "\\\$ "'
  fi

  # Git Prompt Options
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_SHOWSTASHSTATE=1
  GIT_PS1_SHOWUPSTREAM="auto"
  GIT_PS1_DESCRIBE_STYLE="branch"
  GIT_PS1_SHOWCOLORHINTS=1 #Colors
fi

# Google Cloud
if [ -f `brew --prefix`/Caskrook/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc ]; then
    . `brew --prefix`/Caskrook/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc 
fi

if [ -f `brew --prefix`/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ]; then
    . `brew --prefix`/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
fi


# Thefuck
eval "$(thefuck --alias)"

# Default Aliases
alias tree='tree -C'
alias reload_bash='source ~/.bash_profile'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias serve='python3 -m http.server'
alias la='ls -aln'
alias ll='ls -ln'

# Secrets and Additional bits
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
