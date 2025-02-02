ZSH=$HOME/.oh-my-zsh
export DEFAULT_USER=`whoami`

if [[ -n ${INSIDE_EMACS} ]]; then
    export TERM=xterm-256color
else
    export ZSH_THEME="agnoster"
fi

export DE=gnome

plugins=(git ssh-agent gem brew bundler aws terraform rake rvm tmux emacs docker docker-compose)

for config_file (~/.zsh/*.zsh) source $config_file

if [ -e $HOME/.zshrc-local ]; then
    source $HOME/.zshrc-local
fi

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "supercrabtree/k"

# source $(brew --prefix)/share/antigen
#antigen bundle Vifon/deer
#autoload -U deer
#zle -N deer
#bindkey '\ek' deer

# run after local because local because user bin should
# take absolute priority
#export PATH=~/sandbox4/bin:$HOME/bin:$HOME/.cabal/bin:$PATH:$HOME/anaconda/bin:/usr/local/atlassian-cli-6.1.0

# override builtin functions (preexec, precmd, etc.)
source ~/.zsh/functions.zsh-overrides

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

#export EDITOR=emacsclient
alias beg='bundle exec guard'

fpath=(~/.zsh/completion /usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

RPS1="$PR_MAGENTA(%D{%m-%d %H:%M:%S})$PR_NO_COLOR"
eval `gdircolors $HOME/.dircolors.conf  `

#source $HOME/.rvm/scripts/rvm
#PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting

# export WORKON_HOME=$HOME/.virtualenvs
# export PIP_VIRTUALENV_BASE=$WORKON_HOME
# export PIP_RESPECT_VIRTUALENV=true

# PYTHONSTARTUP=$HOME/.python.py
# export PYTHONSTARTUP
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

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
alias ladybug-dito-sync='rsync -avhSP --stats --exclude=".*"  /Volumes/ladybug  /Volumes/magpie/'
source "${HOME}/.zgen/zgen.zsh"

# CHROME='/Applications/Google Chrome.app/Contents/MacOS/Google Chrome'
CHROME='/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary'
CHROME_DEV_PROFILE="/Users/$USER/Library/Application Support/Google/ChromeDevel"
#alias chrome-devel="open -a $CHROME --args \"--user-data-dir=$CHROME_DEV_PROFILE --remote-debugging-port=9222\""

export CHROME CHROME_DEV_PROFILE
#$CHROME --user-data-dir=$CHROME_DEV_PROFILE --remote-debugging-port=9222

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias ls='exa'
alias cat='bat'

alias ec="emacsclient -n"
alias calibre-add='/Applications/calibre.app/Contents/console.app/Contents/MacOS/calibredb add'
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

alias mpc-info="mpc -f '%title% %artist% %album% %file%'"
BOOT_JVM_OPTIONS="-client -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xmx2g -XX:MaxMetaspaceSize=500m -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xverify:none"

export BOOT_JVM_OPTIONS

# export LDFLAGS='-L/usr/local/opt/mysql@5.6/lib'
# export CPPFLAGS='-I/usr/local/opt/mysql@5.6/include'

# export JAVA_HOME=`/usr/libexec/java_home -v 9.0.4`
export JAVA_HOME=`/usr/libexec/java_home -v 11.0.5`
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/opt/texinfo/bin:$PATH"
# export PATH="/Users/colin/.cargo/bin:$PATH"
# source $HOME/projects/zaw/zaw.zsh

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

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
source ~/bin/tmuxinator.zsh

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects

export DOCKER_BUILDKIT=1

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

gam() { "/Users/colin/bin/gam/gam" "$@" ; }

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# opam configuration
test -r /Users/colin/.opam/opam-init/init.zsh && . /Users/colin/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"
export SHOW_AWS_PROMPT=false

export PATH="/Applications/Racket/bin:$PATH"
export FLUTTER_HOME=$HOME/projects/flutter
export PATH=$PATH:$FLUTTER_HOME/bin
eval "$(direnv hook zsh)"
