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
  colored-man-pages
  command-not-found
  copypath
  npm
  pip
  python
  golang
  nvm
  tmux
  colorize
  node
  rust
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

# Rust config and completions
fpath+=~/.zfunc

# Brew completions
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

autoload -Uz compinit
compinit -i


source $ZSH/oh-my-zsh.sh

export PYTHON_CONFIGURE_OPTS="--enable-framework"

# export HOMEBREW_NO_INSTALL_CLEANUP=TRUE
export HOMEBREW_NO_ENV_HINTS=TRUE

# Go config and completions
export GOPATH=$HOME/Code/libraries/go

# fzf config and completions
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

cdf() {
  local dir
  dir=$(find $PWD -type d | fzf)
  [ -n "$dir" ] && cd "$dir"
}

# Python config and completions

eval "$(pyenv init -)"
eval "$(pyenv init --path)"

# eval "$(register-python-argcomplete pipx)"
#

export OPENAI_API_KEY=sk-JTKmlfXcogGcxLRkQlRL4X6C_G-iPNORVtCrN7TDF7T3BlbkFJf50t4dS5EhmUsiSOoCH_45LtZ8w88oAw2u21cGydEA

# Install nvm
 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

# Zsh completions and other goodies
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# plugin comfig for zsh-autocomplete
# zstyle ':autocomplete:*' widget-style menu-select
# bindkey -M menuselect '\r' accept-line
