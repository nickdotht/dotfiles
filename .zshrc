# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nick/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="alanpeabody"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
# alias gg="gcc -Wall -Wextra -Werror"
alias nn="norminette -R CheckForbiddenSourceHeader"
alias ll="ls -l"
alias la="ls -la"
alias l="ls"

alias gc="git clone"
alias gps="git push"
# The following 3 aliases are for deleting a remote branch
alias gpsd="git push --delete"
alias gpsdo="git push --delete origin"
alias gpsdu="git push --delete upstream"
alias gpl="git pull"
alias gcm="git commit -m"
alias gs="git status"
alias ga="git add"
alias gcl="git clean"
alias gclfd="git clean -fd"
alias gplo="git pull origin"
alias gplom="git pull origin master"
alias gplomn="git pull origin main"
alias gplod="git pull origin develop"
alias gplos="git pull origin staging"
alias gpso="git push origin"
alias gpsom="git push origin master"
alias gpsomn="git push origin main"
alias gpsod="git push origin develop"
alias gpsos="git push origin staging"
alias gplu="git pull upstream"
alias gplum="git pull upstream master"
alias gplumn="git pull upstream main"
alias gpsu="git push upstream"
alias gpsum="git push upstream master"
alias gpsumn="git push upstream main"
alias gl="git log"
# Change latest commit message
alias gcam="git commit --amend"
alias gdf="git diff FETCH_HEAD"
alias gcf="git checkout FETCH_HEAD"
alias gco="git checkout"
alias gcom="git checkout master"
alias gcomn="git checkout main"
alias gcod="git checkout develop"
alias gcos="git checkout staging"
alias gcob="git checkout -b"
alias gcot="git checkout --theirs -- "
alias gcoo="git checkout --ours --"
# For git tagging and Github releasing
alias gt="git tag"
alias gta="git tag -a"
alias gtd="git tag -d"
alias gsh="git show"
# For merging
alias gm="git merge"
alias gmd="git merge develop"
alias gmm="git merge master"
alias gmmn="git merge main"
alias gms="git merge staging"
alias gmnoff="git merge --no-ff"
alias gmff="git merge --ff"
alias gmffd="git merge --ff develop"
alias gmffs="git merge --ff staging"
alias gmffmn="git merge --ff main"
alias gmnoffd="git merge --no-ff develop"
alias gmnoffm="git merge --no-ff master"
alias gmnoffmn="git merge --no-ff main"
alias gmnoffs="git merge --no-ff staging"
alias gma="git merge --abort"
# For selectively merging changes from a remote repo
alias gf="git fetch"
alias gfo="git fetch origin"
alias gfom="git fetch origin master"
alias gfomn="git fetch origin main"
alias gfu="git fetch upstream"
alias gfum="git fetch upstream master"
alias gfumn="git fetch upstream main"
alias gcp="git cherry-pick"
alias gcpn="git cherry-pick -n"
# Undo latest commit
alias grh="git reset HEAD~"
alias grhh="git reset --hard HEAD"
alias gap="git add --patch"
# There's also grv - git remote -v -, gra - git remote add. They were added by
# oh-my-zsh. Pretty cool, eh?
alias grr="git remote remove"
alias grro="git remote remove origin"
alias grru="git remote remove upstream"

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

# Use this when the Android emulator doesn't have the same time as the host
# machine
alias adbdate="adb shell \"date `date +%m%d%H%M%Y.%S`\""

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

# Add schemalex tool to PATH
export PATH=$PATH:~/bin/schemalex

# Add our custom bin directory to path
export PATH=$PATH:~/bin

if [ -n "$DISPLAY" -a "$TERM" = "xterm" ]; then
    export TERM=xterm-256color
fi

# I was gonna use this to define $ANDROID_HOME depending on the OS
# in use but it turns out it's the same among Linux and Mac. So
# I'm leaving this here just in case I need it in the future
# UPDATE: Alright, turns out it depends on the installer... Turns out I need it now
case "$OSTYPE" in
  darwin*)
    # This is for Mac
    export ANDROID_HOME=$HOME/Library/Android/sdk
  ;;
  linux*)
    # This is for Linux
    export ANDROID_HOME=$HOME/Android/Sdk
  ;;
esac

# export ANDROID_HOME=$HOME/Library/Android/sdk

# Add Android Studio to PATH
export PATH=$PATH:~/android-studio/bin

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
export GOPATH=~/go

# Add Flutter to our PATH
export PATH=$PATH:/opt/flutter/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/kilo/.sdkman"
[[ -s "/home/kilo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/kilo/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/:$PATH
export GPG_TTY=$(tty)

case "$OSTYPE" in
  darwin*)
    # This is for Mac
    export JAVA_HOME=/Library/Java/Home
  ;;
  linux*)
    # This is for Linux
    export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
  ;;
esac

export PATH="/usr/local/opt/python@2/bin:$PATH"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export FLYCTL_INSTALL="/home/nick/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"