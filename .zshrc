# Executes commands at the start of an interactive session.
#
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# open ssl fix - may not need this, try init below them
alias initopenssl='export OPENSSL_INCLUDE_DIR="$(brew --prefix openssl)"/include \
  export OPENSSL_LIB_DIR="$(brew --prefix openssl)"/lib \
  export DEP_OPENSSL_INCLUDE="$(brew --prefix openssl)"/include \
  export CFLAGS="-I$(brew --prefix openssl)/include" \
  export LDFLAGS="-L$(brew --prefix openssl)/lib"'

# start and stop postgres
alias psql-server-start='pg_ctl -D /usr/local/var/postgres start'
alias psql-server-stop='pg_ctl -D /usr/local/var/postgres stop'

# tmuxinator completions
source ~/.bin/tmuxinator.zsh

# Anaconda stuff
# back up the old path
#export PATH_OLD=$PATH

#alias initanaconda='export PATH="/Users/heath/Software/anaconda3/bin:$PATH"'

# # turn anaconda off by restoring the backed up path
#alias exitanaconda='export PATH=$PATH_OLD'

# set vim as default editor and also alias vi command
export EDITOR='nvim'
export VISUAL='nvim'
alias vi='/usr/local/bin/nvim'

# intialize docker completion
autoload -Uz compinit; compinit

# Set GOPATH
export GOPATH=$HOME/Code/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

###nvm package manager for node
alias nvm='unalias nvm node npm && export NVM_DIR=~/.nvm && source $(brew --prefix nvm)/nvm.sh && nvm'
alias node='unalias nvm node npm && export NVM_DIR=~/.nvm && source $(brew --prefix nvm)/nvm.sh && node'
alias npm='unalias nvm node npm && export NVM_DIR=~/.nvm && source $(brew --prefix nvm)/nvm.sh && npm'

###-begin-npm-completion-###
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

# Initialize fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Initialize iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval $(/usr/libexec/path_helper -s)

# Stop python from creating bytecode files
export PYTHONDONTWRITEBYTECODE=true

## alias command to update all python packages with pip
alias pip-upgrade-all="pip freeze — local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U"

# These are all for auto-completion
alias pyenv='unalias pyenv && export PYTHON_CONFIGURE_OPTS="--enable-framework" && export PYENV_VIRTUALENV_DISABLE_PROMPT=1 && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)" && pyenv'
alias pipenv='unalias pipenv && eval "$(_PIPENV_COMPLETE=source-zsh pipenv)" && pipenv'
alias pew='unalias pew && source $(pew shell_config) && pew'
