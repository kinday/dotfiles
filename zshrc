# If you come from bash you might have to change your $PATH.
export N_PREFIX=~/.npm-global
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Generate prerelease Node package version
# $ npm-dev-version 7
# npm version 7.0.0-dev.1a2b3c4d
function npm-dev-version {
  SEGMENT="MAJOR"
  MAJOR="0"
  MINOR="0"
  PATCH="0"
  for i in $(echo $1 | tr "." "\n")
  do
    case "$SEGMENT" in
      MAJOR)
        SEGMENT="MINOR"
        MAJOR=$i
      ;;
      MINOR)
        SEGMENT="PATCH"
        MINOR=$i
      ;;
      PATCH)
        SEGMENT=""
        PATCH=$i
      ;;
    esac
  done
  VERSION="$MAJOR.$MINOR.$PATCH"
  npm version $VERSION-dev.$(git rev-parse --short HEAD)
}

alias coverage="open coverage/lcov-report/index.html"
alias vimrc="vim ~/.vimrc"

ZSH_THEME="punctual"

# Use case-sensitive completion.
CASE_SENSITIVE="true"

# Plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-autosuggestions
  docker
  docker-compose
  git
  npm
  yarn-autocompletions
)

source $ZSH/oh-my-zsh.sh

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
