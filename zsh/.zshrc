# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Path to zsh customizations
export ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="smt2"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx git docker docker-workday docker-local bundler chef vagrant table rbenv dev-env)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

PATH=$HOME/.rbenv/bin:$HOME/bin:/usr/local/bin:$GOPATH/bin:$PATH # Add rbenv to PATH for scripting
#PATH=$HOME/.rvm/bin:/usr/local/bin:$PATH # Add rvm to PATH for scripting

eval "$(rbenv init -)"

unsetopt correct_all
alias ap='PROJECT_ROOT=~/code/cba-deploy /Users/eklein/code/workstation/docker-ansible/bin/docker-ansible-playbook -u eklein'

export EDITOR=vim
export TERM=xterm-256color
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}
