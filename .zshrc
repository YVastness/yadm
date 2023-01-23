# __  ____   __  _________  _   _ ____   ____     _  _   
#|  \/  \ \ / / |__  / ___|| | | |  _ \ / ___|  _| || |_ 
#| |\/| |\ V /    / /\___ \| |_| | |_) | |     |_  ..  _|
#| |  | | | |    / /_ ___) |  _  |  _ <| |___  |_      _|
#|_|  |_| |_|   /____|____/|_| |_|_| \_\\____|   |_||_|  

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# robbyrussell
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
#  禁用oh-my-zsh自动升级
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to automatically update without prompting.
#如果没有禁用自动更新，则不会出现确认提示，而是 Oh My Zsh 会在自动更新到期时不询问的情况下进行更新。
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# 这个设置告诉 Oh My Zsh 应该多久自动更新一次（以天为单位）。如果禁用自动更新，则此设置没有任何影响。
export UPDATE_ZSH_DAYS=31

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo ubuntu emoji-clock emoji)
# Save the location of the current completion dump file.
if [ -z "$ZSH_COMPDUMP" ]; then
  ZSH_COMPDUMP="${ZDOTDIR:-${ZSH}}/cache/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
fi
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='colorls'
alias l="ls -l"
alias ll='ls -al'
alias la='ls -a'
alias lt='ls --tree'
alias ra='ranger'
alias lg='lazygit'
alias vi='nvim'
alias cat='batcat'
alias diff='delta -n'
alias du='dust'
alias df='duf'
alias lzd='lazydocker'
alias tmux="TERM=screen-256color-bce tmux"
alias j='z'
# 由于政策原因，所有源自 Debian 的autojump发行版都需要手动激活
. ~/.config/z/z.sh

#默认使用编辑器
export EDITOR=/usr/bin/nvim
######################################################################
###FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#Append this line to ~/.zshrc to enable fzf keybindings for Zsh:
# source ~/.fzf/shell/key-bindings.zsh
#Append this line to ~/.zshrc to enable fuzzy auto-completion for Zsh:
#source /usr/share/doc/fzf/examples/completion.zsh
# 这行配置开启 fd 查找隐藏文件 及忽略 .git 文件等
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude={.git,.idea,.sass-cache,node_modules,build} . ~/.config /home / '
#export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
#该环境变量定义了 fzf 的参数
export FZF_DEFAULT_OPTS='--height 90% --bind ctrl-j:down,ctrl-k:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_COMPLETION_TRIGGER='\'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
######################################################################
###GO
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export PATH=$HOME/go/bin:$PATH
###starship
eval "$(starship init zsh)"
###lunarvim
export PATH="~/.local/bin:$PATH"
###nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node/
export NVM_IOJS_ORG_MIRROR=http://npm.taobao.org/mirrors/iojs
###java
#set java env
export JAVA_HOME=/usr/lib/jdk/jdk1.8.0_351
export JRE_HOME=${JAVA_HOME}/jre    
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib    
export PATH=${JAVA_HOME}/bin:$PATH
###pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_DIR="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
