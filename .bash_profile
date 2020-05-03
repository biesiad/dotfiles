stty -ixon

export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Projects/bin/:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
if [[ $(command -v rbenv) ]]; then eval "$(rbenv init -)"; fi

export EDITOR=emacs
export GIT_EDITOR=emacs
export GIT_CEILING_DIRECTORIES=$HOME
export HISTSIZE=1000

if [[ $0 == '-bash' ]]; then
    if [[ -f /usr/local/etc/bash_completion.d/pass ]]; then . /usr/local/etc/bash_completion.d/pass; fi

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
alias dc="docker-compose"
alias drm="docker ps -a | tail +2 | awk '{ print $1 }' | uniq | xargs docker rm -f"

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
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
