# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
#LANG=en_US.utf8

#export LANG

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="agnoster"
#export ZSH_THEME="powerline"
export DEFAULT_USER="colin"
export DE=gnome

# Example aliases
# alias zshconfig="mate ~/.zshrc
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks # DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ssh-agent zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export JDK_HOME=/usr/lib/jvm/jdk1.6.0_33
export PATH=$JDK_HOME/bin:$PATH

alias python=python2

NODE_PATH=/usr/local/lib/node_modules

PATH=$HOME/sandbox/bin/:$HOME/bin:$PATH
export PATH=~/apps/apache-maven-2.2.1/bin:$HOME/.gem/ruby/1.9.1/bin:$PATH

RPS1="$PR_MAGENTA(%D{%m-%d %H:%M:%S})$PR_NO_COLOR"
alias gsr='git svn rebase'
#eval `dircolors $HOME/ls-colors-solarized/dircolors`
eval `dircolors $HOME/.dircolors-solarized/dircolors.ansi-light `
alias membership_prod='mysql -hmysql5.nymetro.com -umembership -pd15m3mb3r -P3306 nym_membership'
alias krang_prod='mysql -hdb1.nymetro.com -urokrangdb -pre@d0nly -P3306 nymetro'
alias membership_qa='mysql -h mysql.qa.nymetro.com -P3308 -umembership -pd15m3mb3r nym_membership'
alias membership_stg='mysql -h mysql.stg.nymetro.com -P3308 -umembership -pd15m3mb3r nym_membership'
alias clj='nocorrect clj'
alias rtl_prod='mysql -hmysql5.nymetro.com -urtl -prat3th3s3l00ks -P3306 rtl'
alias urr_prod='mysql -hmysql5.nymetro.com -uurr -purr3@dy -P3306 urr'
alias menupages_prod='mysql -hmysql.nymetro.com -umenupages -pmenUpage5@dm1n -P3307 menupagesprod'
alias menupages_qa='mysql -hmysql.qa.nymetro.com -umenupages -pmenUpage5@dm1n -P3307 menupagesprod'
alias clicktracker='mysql -h mysql5.nymetro.com   -P3306 -uclick_tracker  -p'cl1quTr@cker#prod' click_tracker'
#alias fashioncms = "mysql -hmysql5.nymetro.com -P3306 -p'fA$hunCMs' -ufashioncms fashion_cms"
alias dv="dirs -v"  
alias vi=vim
alias cls="echo -ne '\033c'"
export JAVA_HOME=$JDK_HOME
export PATH=~/apps/vault-cli-2.4.18/bin:$PATH

export NODE_PATH=/usr/lib/node_modules


startcq() {
    ~/cq-5/crx-quickstart/server/serverctl start
}

stopcq() {
    ~/cq-5/crx-quickstart/server/serverctl stop
}
