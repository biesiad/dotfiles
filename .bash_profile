export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Projects/bin/:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
if [[ $(command -v rbenv) ]]; then eval "$(rbenv init -)"; fi

export EDITOR=emacs
export GIT_EDITOR=emacs
export GIT_CEILING_DIRECTORIES=$HOME

if [[ $0 == '-bash' ]]; then
  . ~/.git-completion.bash
  . ~/.git_prompt.sh

  export GIT_PS1_SHOWDIRTYSTATE=1
  PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
  export PS1='${PS1X}$(__git_ps1 " (%s)")\$ '
fi

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
alias glf='BRANCH=${1:-$(git branch | grep "*" | cut -c3-)}; git pull origin +$BRANCH:$BRANCH'
alias grh="git reset --hard"
alias gcm="git checkout master"
alias grh="git reset --hard"
alias gmaster="git checkout master"
grm () {
    for branch in $(git branch | grep -v "*" | grep -v "master" | grep -v "sandbox"); do
        echo -n "Delete $branch? [y/N] "
        read answer
        if [[ $answer == 'y' ]]; then
            git branch -D $branch
        fi
    done
}

alias dcu="docker-compose up"
alias dce="docker-compose exec"
alias dcr="docker-compose run --rm"
alias dcd="docker-compose down"
alias dcb="docker-compose build"
alias dcd="docker-compose run"
alias drm="docker ps -a | tail +2 | awk '{ print $1 }' | uniq | xargs docker rm -f"
alias dsc="docker-sync clean"
alias dst="docker-sync start --foreground"
alias dss="docker-sync stop"

alias httpserver="ruby -run -ehttpd . -p8000"
alias ppjson="python -m json.tool | highlight"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f ~/.figureeightrc ]; then
  source ~/.figureeightrc;
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/gbiesiadecki/.sdkman"
[[ -s "/Users/gbiesiadecki/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/gbiesiadecki/.sdkman/bin/sdkman-init.sh"
