ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="agnoster"
export DEFAULT_USER="colin"
export DE=gnome

plugins=(git ssh-agent zsh-syntax-highlighting)

for config_file (~/.zsh/*.zsh) source $config_file

if [ -e $HOME/.zshrc-local ]; then
    source $HOME/.zshrc-local
fi

# run after local because local because user bin should
# take absolute priority
export PATH=$HOME/bin:$PATH

# override builtin functions (preexec, precmd, etc.)
source ~/.zsh/functions.zsh-overrides

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

RPS1="$PR_MAGENTA(%D{%m-%d %H:%M:%S})$PR_NO_COLOR"
eval `dircolors $HOME/.dircolors.conf  `
