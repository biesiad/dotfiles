export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Projects/bin/:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
if [[ $(command -v rbenv) ]]; then eval "$(rbenv init -)"; fi

export EDITOR=emacs
export GIT_EDITOR=emacs
export GIT_CEILING_DIRECTORIES=$HOME

. ~/.git_prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '


alias ll="ls -l"
alias la="ls -a"
alias l="ll"
alias rc="bundle exec rails console"
alias rr="bundle exec rake routes"
alias be="bundle exec"
alias bi="bundle install"
alias gcl='git clean -f `git rev-parse --show-toplevel`'
alias glf='git_pull_force'
alias gco='git checkout'
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
alias gmaster="git checkout master"

# export fco () {
#   git checkout $(git branch | fzf --height=7 --query=$1 --layout=reverse --inline-info)
# }

# export branch() {
#     git branch | grep "*" | cut -c3-
# }

# git_delete_all_branches() {
#     for branch in $(git branch | grep -v "*" | grep -v "master" | grep -v "sandbox"); do
#         echo -n "Delete $branch? [y/N] "
#         read answer
#         if [[ $answer == 'y' ]]; then
#             git branch -D $branch
#         fi
#     done
# }

# git_pull_force() {
#     branch=${1:-$(git branch | grep "*" | cut -c3-)}
#     git pull origin +$branch:$branch
# }

if [ -f ~/.figureeightrc ]; then
  source ~/.figureeightrc;
fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/gbiesiadecki/.sdkman"
[[ -s "/Users/gbiesiadecki/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/gbiesiadecki/.sdkman/bin/sdkman-init.sh"
