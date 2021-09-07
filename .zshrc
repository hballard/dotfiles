# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh" 
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
  zsh-nvm
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  colored-man-pages
  npm
  pip
  python
)

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
  export VISUAL='nvim'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconfig="vi ~/.zshrc"
alias ohmyzshconfig="vi ~/.oh-my-zsh"

if [[ -n "$TMUX" ]]; then
  alias vi="nvim"
else
  alias vi="tmux new-session 'nvim'"
fi

if [[ -n "$TMUX" ]]; then
  alias lvim="lvim"
else
  alias lvim="tmux new-session 'lvim'"
fi

# User configuraation

autoload -Uz compinit
compinit -i

source $ZSH/oh-my-zsh.sh

# Python config and completions
export PYTHON_CONFIGURE_OPTS="--enable-framework"

eval "$(pyenv init -)"

eval "$(register-python-argcomplete pipx)"

eval "$(pipenv --completion)"

source $(pew shell_config)

# Ruby config and completions
eval "$(rbenv init -)"

# Go config and completions
export GOPATH=$HOME/Code/libraries/go

# fzf config and completions
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# Rust config and completions
# fpath+=~/.zfunc
# rustup completions zsh cargo > ~/.zfunc/_cargo
# rustup completions zsh > ~/.zfunc/_rustup

# qt settings
export QTPATH=$HOME/Code/libraries/Qt/6.1.1/clang_64
export PATH="$QTPATH/bin:$PATH"
export LDFLAGS="-L$QTPATH/lib"
export CPPFLAGS="-I$QTPATH/include"

# Created by `userpath` on 2019-11-25 04:24:39
export PATH="$PATH:/Users/$USER/.local/bin"

