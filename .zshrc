#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

. /Library/Python/2.7/site-packages/powerline/bindings/zsh/powerline.zsh

export EDITOR='vim'

# alias vi ='/usr/local/bin/vim'

# alias anaconda environment
alias anaconda='export PATH="/Users/heath/Software/anaconda/bin:$PATH"'

# back up the old path
export PATH_OLD=$PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

alias chrome='open -a "Google Chrome"'


