#Bash aliases
alias ll='ls -lh'
alias c='clear'
alias mroe='more'
alias pdw='pwd'


#screen
alias s='screen -S `whoami` -T linux -s /bin/bash'


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
source ~/lib/git/contrib/completion/git-completion.bash

#misc
alias dotfiles='vim ~/.bash_profile ~/.bashrc ~/.vimrc && source ~/.bash_profile ~/.bashrc ~/.vimrc'


# MacPorts Installer addition on 2009-04-26_at_16:06:47: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7.1/bin:$PATH

export GRAILS_HOME=~/lib/grails
export GROOVY_HOME=~/lib/groovy
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
# export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home

export NODE_PATH=/usr/local/lib/node

export PATH=~/bin:~/lib/android-sdk-mac_86/tools/:$GRAILS_HOME/bin:$GROOVY_HOME/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
export VIM_APP_DIR=/Applications/

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

alias start_tomcat=~/bin/start_tomcat
alias stop_tomcat=~/bin/stop_tomcat

#export PS1="\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "
export PS1="\\h:\\W\$ "

#https://github.com/rupa/z.git
. /Users/alfredomesen/lib/z/z.sh



#bindkey "^A" beginning-of-line                    # ctrl-a  
#bindkey "^E" end-of-line                          # ctrl-e

