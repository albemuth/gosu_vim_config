# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="albemuth"


# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

bindkey "^[[3~" delete-char


#GIT aliases
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout '
alias gx='gitx --all &'
alias gk='git log --graph --abbrev-commit --pretty=oneline --decorate'
#source ~/lib/git/contrib/completion/git-completion.bash


#misc
alias dotfiles='vim ~/.zshrc ~/.vimrc && source ~/.zshrc'


export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7.1/bin:$PATH

export GRAILS_HOME=~/lib/grails
export GROOVY_HOME=~/lib/groovy
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export REBEL_HOME=/Applications/ZeroTurnaround/JRebel
export CATALINA_HOME=~/lib/tomcat
export TM_BUNDLES=~/Library/Application\ Support/TextMate/Bundles
export EDITOR="/usr/bin/vim"
export NODE_PATH=/usr/local/lib/node
export VIM_APP_DIR=/Applications/

export PATH=~/bin:~/lib/android-sdk-mac_86/tools/:$GRAILS_HOME/bin:$GROOVY_HOME/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


#https://github.com/rupa/z.git
. /Users/alfredomesen/lib/z/z.sh

