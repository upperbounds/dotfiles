ZSH=$HOME/.oh-my-zsh
export DEFAULT_USER=`whoami`

if [[ -n ${INSIDE_EMACS} ]]; then
    export TERM=xterm-256color
else
    export SOLARIZED_THEME=light
    plugins=(git ssh-agent gem brew aws terraform rake rvm emacs docker docker-compose podman)
    # source $ZSH/oh-my-zsh.sh
    # RPS1="$PR_MAGENTA(%D{%m-%d %H:%M:%S})$PR_NO_COLOR"
    # eval `gdircolors $HOME/.dircolors.conf  `
    # export ZSH_THEME="agnoster"
    eval "$(starship init zsh)"	
fi

for config_file (~/.zsh/*.zsh) source $config_file

if [ -e $HOME/.zshrc-local ]; then
    source $HOME/.zshrc-local
fi

# export ZPLUG_HOME=/usr/local/opt/zplug
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "supercrabtree/k"

# override builtin functions (preexec, precmd, etc.)
source ~/.zsh/functions.zsh-overrides

fpath=(~/.zsh/completion /usr/local/share/zsh-completions $fpath)
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

### ZNT's installer added snippet ###
fpath=( "$fpath[@]" "$HOME/.config/znt/zsh-navigation-tools" )
autoload n-aliases n-cd n-env n-functions n-history n-kill n-list n-list-draw n-list-input n-options n-panelize
autoload znt-usetty-wrapper znt-history-widget znt-cd-widget znt-kill-widget
alias naliases=n-aliases ncd=n-cd nenv=n-env nfunctions=n-functions nhistory=n-history
alias nkill=n-kill noptions=n-options npanelize=n-panelize
zle -N znt-history-widget
# bindkey '^R' znt-history-widget
setopt AUTO_PUSHD HIST_IGNORE_DUPS PUSHD_IGNORE_DUPS
### END ###

alias random-playlist='mpc listall | sort -R | head -100 > ~/.mpd-ditto/playlists/random.m3u'

source "${HOME}/.zgen/zgen.zsh"
alias ffp="ffplay -autoexit"

alias ls='eza'
alias cat='bat'

# export BAT_THEME="gruvbox-light"
export BAT_THEME="Catppuccin Latte"

alias ec="emacsclient -n"

zgen load zsh-users/zaw
zgen load willghatch/zsh-zaw-mpd
zgen load paulirish/git-open
zgen load zdharma/fast-syntax-highlighting

bindkey '^R' zaw-history
bindkey -M filterselect '^R' down-line-or-history
bindkey -M filterselect '^S' up-line-or-history
bindkey -M filterselect '^E' accept-search

zstyle ':filter-select:highlight' matched fg=green
zstyle ':filter-select' max-lines 15
zstyle ':filter-select' case-insensitive yes
zstyle ':filter-select' extended-search yes

export PROJECT_HOME=$HOME/projects
export SHOW_AWS_PROMPT=false

eval "$(direnv hook zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
