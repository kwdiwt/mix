# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

PS1='\W\$ '

# set true color
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi

source ~/.bin/z.sh

stty -ixon

bind -x '"\el":ls'

alias ..='cd ..'
alias ...='cd ..;cd ..'
alias ls='ls --color=auto'
alias ll='ls --color=auto -hl'
alias diff='diff --color'
alias grep='grep --color -ni'
alias nw='source ~/.bin/splitWin.sh'

alias vi='nvim'
alias gst='git status'
alias gc='git checkout'
alias gd='git diff'
alias gb='git branch'
alias gp='git push'
alias gl='git pull'

LANG='en_US.UTF-8'

# npm package
export CHROMEDRIVER_CDNURL=http://npm.taobao.org/mirrors/chromedriver
export PATH=$HOME/.yarn/bin:$PATH

# flutter
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH=$HOME/software/flutter/bin:$PATH

# go
export GOPATH=$HOME/.go
export GO111MODULE=on
export GOPROXY=https://goproxy.io

# java and maven configure
# export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/jre/
# export M2_HOME=/usr/local/apache-maven-3.5.2
# export M2=$M2_HOME/bin
# export MAVEN_OPTS="-Xms256m -Xmx512m"
# export PATH=$M2:$PATH
