source /usr/share/zsh-antigen/antigen.zsh 2&> /dev/null
source /usr/local/share/antigen/antigen.zsh 2&> /dev/null
source /usr/local/share/antigen.zsh 2&> /dev/null

antigen use oh-my-zsh
antigen theme kolo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen apply

bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

COMPLETION_WAITING_DOTS="true"

export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Projects/bin/:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
if [[ $(command -v rbenv) ]]; then eval "$(rbenv init -)"; fi

export EDITOR=emacs
export GIT_EDITOR=emacs
export GIT_CEILING_DIRECTORIES=$HOME

export NOTES=~/Notes

alias ll="ls -l"
alias la="ls -a"
alias l="ll"
alias rc="bundle exec rails console"
alias rr="bundle exec rake routes"
alias be="bundle exec"
alias bi="bundle install"
alias gcl='git clean -f `git rev-parse --show-toplevel`'
alias glf='git_pull_force'
alias dcu="docker-compose up"
alias dce="docker-compose exec"
alias dcr="docker-compose run --rm"
alias dcd="docker-compose down"
alias dcb="docker-compose build"
alias dcd="docker-compose run"
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
alias notes="cd $NOTES"
alias gmaster="git checkout master"

if [ -f ~/.figureeightrc ]; then source ~/.figureeightrc; fi

export branch() {
    git branch | grep "*" | cut -c3-
}

git_delete_all_branches() {
    for branch in $(git branch | grep -v "*" | grep -v "master" | grep -v "sandbox"); do
        echo -n "Delete $branch? [y/N] "
        read answer
        if [[ $answer == 'y' ]]; then
            git branch -D $branch
        fi
    done
}

git_pull_force() {
    branch=${1:-$(git branch | grep "*" | cut -c3-)}
    git pull origin +$branch:$branch
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/bin:$PATH"
