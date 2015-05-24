#
# Executes commands at the start of an interactive session.
#
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# back up the old path
export PATH_OLD=$PATH


alias anacondainit='export PATH="/Users/heath/Software/anaconda/bin:$PATH"'


# # turn anaconda off by restoring the backed up path
alias anacondaexit='export PATH=$PATH_OLD'

. /Library/Python/2.7/site-packages/powerline/bindings/zsh/powerline.zsh

export EDITOR='vim'

# alias vi ='/usr/local/bin/vim'

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Set GOPATH
export GOPATH=$HOME/Code/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
