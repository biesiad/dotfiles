# stty -ixon

source /usr/share/zsh-antigen/antigen.zsh 2&> /dev/null
source /usr/local/share/antigen/antigen.zsh 2&> /dev/null
source /usr/local/share/antigen.zsh 2&> /dev/null

antigen apply

export COMPLETION_WAITING_DOTS="true"

export EDITOR=emacs
export GIT_EDITOR=emacs
export GIT_CEILING_DIRECTORIES=$HOME
export HISTSIZE=1000
export JAVA_HOME=~/.sdkman/candidates/java/12.0.2-open
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH=$JAVA_HOME/bin:$PATH
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
if [[ $(command -v rbenv) ]]; then eval "$(rbenv init -)"; fi

function get_current_branch () {
    git branch | awk '/^\*/ { print $2 }'
}

function glf () {
    branch=$(git branch | awk '/^\*/ { print $2 }')
    git pull origin +$branch:$branch
}

alias ll="ls -l"
alias la="ls -a"
alias l="ll"

alias rc="bundle exec rails console"
alias rr="bundle exec rake routes"
alias be="bundle exec"
alias bi="bundle install"

alias gst="git status"
alias gco='git checkout'
alias gcl='git clean -f `git rev-parse --show-toplevel`'
alias gc="git commit --no-verify"

alias dc="docker-compose"
alias drm="docker ps -a | tail +2 | awk '{ print $1 }' | uniq | xargs docker rm -f"

alias ys="yarn start"
alias yt="yarn test"
alias ylf="yarn lint --fix"
alias httpserver="ruby -run -ehttpd . -p8000"
alias e="emacs"
alias ooo='emacs ~/Notes/appen/1on1/$(ls ~/Notes/appen/1on1 | fzf -i)'
alias jira='open https://appen.atlassian.net/browse/get_current_branch'
alias cdtmp="cd ~/tmp"

if [ -f ~/.appenrc ]; then
    source ~/.appenrc;
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/gbiesiadecki/.sdkman"
[[ -s "/Users/gbiesiadecki/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/gbiesiadecki/.sdkman/bin/sdkman-init.sh"

