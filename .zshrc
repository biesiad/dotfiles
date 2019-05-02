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

. ~/.bash_profile
