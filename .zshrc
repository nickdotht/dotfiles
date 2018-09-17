# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="alanpeabody"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias gg="gcc -Wall -Wextra -Werror"
alias nn="norminette -R CheckForbiddenSourceHeader"
alias ll="ls -l"
alias la="ls -la"
alias l="ls"

alias gc="git clone"
alias gps="git push"
alias gpl="git pull"
alias gcm="git commit -m"
alias gs="git status"
alias ga="git add"
alias gplo="git pull origin"
alias gpso="git push origin"
alias gplu="git pull upstream"
alias gpsu="git push upstream"
alias gl="git log"
# Undo latest commit
alias gr="git reset HEAD~"
# Change latest commit message
alias gcam="git commit --amend"
alias gf="git fetch"
alias gfo="git fetch origin"
alias gdf="git diff FETCH_HEAD"
alias gcf="git checkout FETCH_HEAD"

alias md="mkdir"
alias rf="rm -rf"
alias cl="clear"

alias gg="gcc -Wall -Wextra -Werror"
alias g11="g++ -Wall -Wextra -Werror -std=c++11"
alias g14="g++ -Wall -Wextra -Werror -std=c++14"

alias hexod="hexo clean && hexo g && hexo d"
alias hexos="hexo s"

alias rns="react-native start"
alias rnra="react-native run-android"
alias rnri="react-native run-ios"
alias rnl="react-native link"
alias rnla="react-native log-android"
alias rnli="react-native log-ios"

alias flutter-run="flutter run --pid-file /tmp/flutter.pid"

alias emu="LD_PRELOAD='/usr/lib/x86_64-linux-gnu/libstdc++.so.6' ~/Android/Sdk/tools/emulator -netdelay none -netspeed full -avd"

# Reloads the react native app in a device from a terminal
alias adbr="adb shell am broadcast -a react.native.RELOAD"

# Preferred editor for local and remote sessions
export VISUAL=vim
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR="$VISUAL"
else
	export EDITOR="$VISUAL"
fi

export PATH=$PATH:/opt/deadbeef

export PATH=$PATH:/opt/processing
export PATH=$PATH:/opt/colorado
export PATH=$PATH:/opt/kotlinc/bin

# Add our custom bin directory to path
export PATH=$PATH:~/bin

if [ -n "$DISPLAY" -a "$TERM" = "xterm" ]; then
    export TERM=xterm-256color
fi

# That's for Linux
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# That's for mac
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

export PATH="$HOME/.yarn/bin:$PATH"

# Maven configurations
export M2_HOME=/opt/apache-maven-3.2.2
export M2=$M2_HOME/bin
export PATH=$M2:$PATH 

# Add go to our PATH
export PATH=$PATH:/usr/local/go/bin

# Add Flutter to our PATH
export PATH=$PATH:/opt/flutter/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/kilo/.sdkman"
[[ -s "/home/kilo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/kilo/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/usr/local/mysql/bin:$PATH
