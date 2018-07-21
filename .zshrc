source /usr/share/zsh-antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme kolo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen apply

bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

COMPLETION_WAITING_DOTS="true"

export PATH="/usr/local/bin:$PATH"

export EDITOR=vim
export GIT_EDITOR=vim

alias ll="ls -l"
alias la="ls -a"
alias l="ll"
alias rc="bundle exec rails console"
alias rr="bundle exec rake routes"
alias be="bundle exec"
alias bi="bundle install"
alias gcl='git clean -f `git rev-parse --show-toplevel`'
alias dcu="docker-compose up"
alias dce="docker-compose exec"
alias dcd="docker-compose down"
alias dcb="docker-compose build"
alias httpserver="ruby -run -ehttpd . -p8000"
alias grh="git reset --hard"
alias gcm="git checkout master"
alias grh="git reset --hard"
alias ppjson="python -m json.tool | highlight"
alias dsync="docker-sync start --foreground"
alias drm="docker ps -a | tail +2 | awk '{ print $1 }' | uniq | xargs docker rm -f"
alias dsc="docker-sync clean"
alias dst="docker-sync start --foreground"
alias dss="docker-sync stop"

export GIT_CEILING_DIRECTORIES=$HOME

