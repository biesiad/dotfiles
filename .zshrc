# stty -ixon

source /usr/share/zsh-antigen/antigen.zsh 2&> /dev/null
source /usr/local/share/antigen/antigen.zsh 2&> /dev/null
source /usr/local/share/antigen.zsh 2&> /dev/null

antigen use oh-my-zsh
antigen theme kolo
antigen apply

export COMPLETION_WAITING_DOTS="true"

export EDITOR=emacs
export GIT_EDITOR=emacs
export GIT_CEILING_DIRECTORIES=$HOME
export HISTSIZE=1000
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home
export JAVA_HOME=~/.sdkman/candidates/java/12.0.2-open
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Projects/bin/:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
if [[ $(command -v rbenv) ]]; then eval "$(rbenv init -)"; fi

export PATH=$JAVA_HOME/bin:$PATH
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

alias ll="ls -l"
alias la="ls -a"
alias l="ll"

alias rc="bundle exec rails console"
alias rr="bundle exec rake routes"
alias be="bundle exec"
alias bi="bundle install"

alias gst="git status"
alias gco='git checkout'
gcof () {
    git checkout $(git branch | fzf --height=7 --query=$1 --layout=reverse --inline-info)
}
alias gcl='git clean -f `git rev-parse --show-toplevel`'
alias gc="git commit --no-verify"

alias dc="docker-compose"
alias drm="docker ps -a | tail +2 | awk '{ print $1 }' | uniq | xargs docker rm -f"

alias ys="yarn start"
alias yt="yarn test"
alias ylf="yarn lint --fix"
alias httpserver="ruby -run -ehttpd . -p8000"
alias e="emacs"
alias notes="e ~/Notes"
alias ooo="emacs ~/Notes/appen/1on1"
alias jira="open https://appen.atlassian.net/browse/$(git branch | awk '/\*/ { print $2 }')"
alias cdtmp="cd ~/tmp"

if [ -f ~/.appenrc ]; then
    source ~/.appenrc;
fi

# PATH=/usr/local/opt/make/libexec/gnubin:/usr/local/opt/gnu-getopt/bin:/Users/gbiesiadecki/.sdkman/candidates/java/current/bin:/Users/gbiesiadecki/FigureEight/apache-maven-3.5.4/bin:/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home/bin:/Users/gbiesiadecki/.nvm/versions/node/v10.16.3/bin:/Users/gbiesiadecki/.rbenv/shims:/Users/gbiesiadecki/.rbenv/bin:/Users/gbiesiadecki/Projects/bin/:/usr/local/bin:/Users/gbiesiadecki/Library/Python/3.6/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/MacGPG2/bin:/opt/X11/bin:/Applications/Wireshark.app/Contents/MacOS:/Users/gbiesiadecki/.antigen/bundles/robbyrussell/oh-my-zsh/lib:/Users/gbiesiadecki/.antigen/bundles/zsh-users/zsh-syntax-highlighting:/Users/gbiesiadecki/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/gbiesiadecki/.sdkman"
[[ -s "/Users/gbiesiadecki/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/gbiesiadecki/.sdkman/bin/sdkman-init.sh"

