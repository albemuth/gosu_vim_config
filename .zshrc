# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export CONFIG_DIR=$HOME/gosu_vim_config
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"
#export ZSH_THEME="pygmalion"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
 export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git grunt)

source $ZSH/oh-my-zsh.sh
alias sudo='nocorrect sudo'

#function git_prompt_info() {
  #ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  #echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
#}
# Customize to your needs...

bindkey "^[[3~" delete-char

if [ -f $CONFIG_DIR/.aliases ]; then
    . $CONFIG_DIR/.aliases
fi

if [ -f $CONFIG_DIR/.exports ]; then
    . $CONFIG_DIR/.exports
fi

if [ -f ~/.profile ]; then
    . ~/.profile
fi


export EDITOR=vim
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  alias copy='xsel -ib'
  alias pbpaste='xclip -selection clipboard -o'
  alias pbcopy='xclip -selection clipboard'
  /usr/bin/xmodmap ~/.xmodmaprc 2> /dev/null
  alias python='python3'
  alias pip='pip3'
fi

