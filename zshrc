ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="agnoster"
export DEFAULT_USER="colin"
export DE=gnome

plugins=(git ssh-agent zsh-syntax-highlighting gem brew bundler heroku rake rvm tmux)

for config_file (~/.zsh/*.zsh) source $config_file

if [ -e $HOME/.zshrc-local ]; then
    source $HOME/.zshrc-local
fi

# run after local because local because user bin should
# take absolute priority
export PATH=~/sandbox4/bin:$HOME/bin:$HOME/.cabal/bin:$PATH

# override builtin functions (preexec, precmd, etc.)
source ~/.zsh/functions.zsh-overrides

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#
alias vi=vim
export EDITOR=vim
alias beg='bundle exec guard'

fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

RPS1="$PR_MAGENTA(%D{%m-%d %H:%M:%S})$PR_NO_COLOR"
eval `gdircolors $HOME/.dircolors.conf  `

#source $HOME/.rvm/scripts/rvm
#PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

PYTHONSTARTUP=$HOME/.python.py
export PYTHONSTARTUP
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

