# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export CONFIG_DIR=$HOME/gosu_vim_config
USE_OMZ=1
#
# Set USE_OMZ=1 to load oh-my-zsh (e.g. `USE_OMZ=1 zsh`)
# Default: skip OMZ for faster load times
if [[ "${USE_OMZ}" == "1" ]]; then
  export ZSH_THEME=""
  export DISABLE_AUTO_UPDATE="true"
  export DISABLE_AUTO_TITLE="true"
  plugins=()
  source $ZSH/oh-my-zsh.sh
fi

# Prompt: folder_name|git_branch $
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '|%b'
setopt PROMPT_SUBST
PROMPT='%F{cyan}%1~%f%F{yellow}${vcs_info_msg_0_}%f %F{green}$%f '

alias sudo='nocorrect sudo'

bindkey "^[[3~" delete-char
bindkey "^R" history-incremental-search-backward

# History — was unset without OMZ; OMZ previously configured these automatically
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE SHARE_HISTORY

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
export BROWSER="/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  alias copy='xsel -ib'
  alias pbpaste='xclip -selection clipboard -o'
  alias pbcopy='xclip -selection clipboard'
  /usr/bin/xmodmap ~/.xmodmaprc 2> /dev/null
  alias python='python3'
  alias pip='pip3'
fi


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Remove WindowsPowerShell entries from PATH
clean_path() {
  path=("${(@)path:#*[Ww]indows[Pp]ower[Ss]hell*}")
  path=("${(@)path:#*Program Files/PowerShell*}")
  path=("${(@)path:#*AppData/Roaming/npm}")
}
#clean_path

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export WIN=/mnt/c/Users/alfredomesn/

eval $(dircolors ~/.dircolors)
eval "$(zoxide init zsh)"
# Hardcoded GOPATH — replaced `$(go env GOPATH)` which cost ~280ms per shell start
export PATH="$HOME/go/bin:$PATH"

# # Start gnome-keyring for Copilot CLI vault support
# if ! pgrep -u "$USER" gnome-keyring-daemon >/dev/null 2>&1; then
#   eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets 2>/dev/null)
# fi
# export GNOME_KEYRING_CONTROL=/run/user/$UID/keyring

# Unset all env vars from temp
unset_claude() {
  unset CLAUDE_CODE_USE_FOUNDRY
  unset ANTHROPIC_FOUNDRY_BASE_URL
  unset ANTHROPIC_DEFAULT_SONNET_MODEL
  unset ANTHROPIC_DEFAULT_HAIKU_MODEL
  unset ANTHROPIC_DEFAULT_OPUS_MODEL
  unset ANTHROPIC_FOUNDRY_API_KEY
  echo "temp vars unset"
}


# >>> foundry-launcher (claude) >>>
export CLAUDE_CODE_USE_FOUNDRY="1"
export ANTHROPIC_FOUNDRY_RESOURCE="claude-code-wsus2-resource"
export ANTHROPIC_FOUNDRY_API_KEY="$(cat "/home/alfredomesen/.foundry/secrets/anthropic_foundry_api_key")"
export ANTHROPIC_DEFAULT_SONNET_MODEL="claude-sonnet-4-5"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="claude-haiku-4-5"
export ANTHROPIC_DEFAULT_OPUS_MODEL="claude-opus-4-5"
# <<< foundry-launcher (claude) <<<

alias lintfix="pnpm exec eslint --fix"

# pnpm
export PNPM_HOME="/home/alfredomesen/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
alias latest_screenshot='ls -t "/mnt/c/Users/alfredomesn/OneDrive - Microsoft/Pictures/Screenshots" | grep -v "^desktop" | head -1 | xargs -I{} echo "/mnt/c/Users/alfredomesn/OneDrive - Microsoft/Pictures/Screenshots/{}"'

# compinit — skipped from /etc/zsh/zshrc via skip_global_compinit=1 in ~/.zshenv
# (global compinit ran on every interactive shell with no caching, ~2s cost)
# Now runs with cached dump, only rescanning $fpath when dump is >24h old
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

# Force Copilot CLI to use X11 clipboard (syncs to Windows) instead of Wayland
alias copilot="WAYLAND_DISPLAY= copilot"

# Launch mitmweb in Windows Firefox instead of the default browser
alias mitmfox='BROWSER="/mnt/c/Program Files/Mozilla Firefox/firefox.exe" mitmweb'
