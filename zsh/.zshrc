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
plugins=(osx git docker docker-workday docker-local bundler table dev-env)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

#export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

function ec2() {
  source ~/.ec2/$1/env
}

GOPATH=/Users/eli.klein/code/go; export GOPATH;

PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$PATH
#PATH=$HOME/.rvm/bin:/usr/local/bin:$PATH # Add rvm to PATH for scripting

#eval "$(rbenv init -)"

unsetopt correct_all
alias 'pushmaster'='git pull && git push origin master'
alias 'pm'='pushmaster'
alias 'spm'='git stash && pm && git stash pop'
alias 'vr'='vagrant destroy -f && vagrant up'
alias 'gs'='gst'
alias 'gst'='git status'
export DOCKER_ANSIBLE_HOME="/Users/eli.klein/code/workstation/docker-ansible"
alias ap="PROJECT_ROOT=~/code/cba-deploy ${DOCKER_ANSIBLE_HOME}/bin/docker-ansible-playbook -u eli.klein"
alias di="PROJECT_ROOT=~/code/cba-deploy ${DOCKER_ANSIBLE_HOME}/bin/dynamic-inventory"
alias hp='hub pull-request'

export EDITOR=vim

function kb() {
  ln -sf ~/.chef/knife-$1.rb ~/.chef/knife.rb
}

export TERM=xterm-256color
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

PATH="/usr/local/lib/python2.7/site_packages;/Users/eli.klein/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/Users/eli.klein/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/Users/eli.klein/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/Users/eli.klein/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/Users/eli.klein/perl5"; export PERL_MM_OPT;
GITHUB_USER=eli-klein
GITHUB_EMAIL=eli.klein@workday.com


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

mop_auth () {
          cat ~/.mop-passwd
}

`for f in /Users/eli.klein/code/workstation/support/*.zsh; do source $f; done`
