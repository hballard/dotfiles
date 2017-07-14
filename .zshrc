# Executes commands at the start of an interactive session.
#
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# open ssl fix
export OPENSSL_INCLUDE_DIR=`brew --prefix openssl`/include
export OPENSSL_LIB_DIR=`brew --prefix openssl`/lib
export DEP_OPENSSL_INCLUDE=`brew --prefix openssl`/include

# back up the old path
export PATH_OLD=$PATH

alias anacondainit='export PATH="/Users/heath/Software/anaconda/bin:$PATH"'

# # turn anaconda off by restoring the backed up path
alias anacondaexit='export PATH=$PATH_OLD'

# Add mamp to end of path
alias mampinit='export PATH="${PATH}:/Applications/MAMP/Library/bin"'
alias mampexit='export PATH=$PATH_OLD'

# Powerline settings
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# set vim as default editor and also alias vi command
export EDITOR='nvim'
alias vi='/usr/local/bin/nvim'

# fix docker init path
alias dockerinit='bash "/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh"'

# Set GOPATH
export GOPATH=$HOME/Code/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

###nvm package manager for node
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _npm_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

. /usr/local/etc/profile.d/z.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval $(/usr/libexec/path_helper -s)

export PYTHONDONTWRITEBYTECODE=true

export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
